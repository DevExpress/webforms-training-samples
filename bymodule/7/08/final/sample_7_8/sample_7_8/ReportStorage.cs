using DevExpress.Data.Filtering;
using DevExpress.Xpo;
using DevExpress.XtraReports.UI;
using DevExpress.XtraReports.Web.Extensions;
using EventsDB;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace sample_7_8 {
  public class StoredReport : EventsDBBaseClass {
    public StoredReport(Session session)
      : base(session) {
    }

    private string url;
    public string Url {
      get {
        return url;
      }
      set {
        SetPropertyValue("Url", ref url, value);
      }
    }

    private byte[] layout;
    public byte[] Layout {
      get {
        return layout;
      }
      set {
        SetPropertyValue("Layout", ref layout, value);
      }
    }
  }

  public class XpoReportStorageWebExtension : ReportStorageWebExtension {
    public override bool CanSetData(string url) {
      using (var uow = new UnitOfWork())
        return uow.FindObject<StoredReport>(new BinaryOperator("Url", url)) != null;
    }

    public override byte[] GetData(string url) {
      using (var uow = new UnitOfWork()) {
        var sr = uow.FindObject<StoredReport>(new BinaryOperator("Url", url));
        return sr != null ? sr.Layout : null;
      }
    }

    public override Dictionary<string, string> GetUrls() {
      using (var uow = new UnitOfWork()) {
        var result = new Dictionary<string, string>();
        foreach (var url in (from sr in new XPQuery<StoredReport>(uow) select sr.Url))
          result.Add(url, url);
        return result;
      }
    }

    public override bool IsValidUrl(string url) {
      return true;
    }

    private void InternalSetData(XtraReport report, StoredReport storedReport) {
      using (var stream = new MemoryStream()) {
        report.SaveLayoutToXml(stream);
        storedReport.Layout = stream.GetBuffer();
      }
    }

    public override void SetData(XtraReport report, string url) {
      using (var uow = new UnitOfWork()) {
        var sr = uow.FindObject<StoredReport>(new BinaryOperator("Url", url));
        InternalSetData(report, sr);
        uow.CommitChanges();
      }
    }

    public override string SetNewData(XtraReport report, string defaultUrl) {
      using (var uow = new UnitOfWork()) {
        var sr = new StoredReport(uow) { Url = defaultUrl };
        InternalSetData(report, sr);
        uow.CommitChanges();
      }
      return defaultUrl;
    }

    public void InitReport<T>(string url) where T : XtraReport, new() {
      var bytes = GetData(url);
      if (bytes == null) {
        var report = new T();

        SetNewData(report, url);
      }
    }
  }
}