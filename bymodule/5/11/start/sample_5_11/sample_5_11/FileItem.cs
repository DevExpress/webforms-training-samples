using System;
using DevExpress.Xpo;
using DevExpress.Data.Filtering;
using System.Collections.Generic;
using System.ComponentModel;
namespace sample_5_11 {

  public class FileItem : XPObject {
    int fParentId;
    public int ParentId {
      get { return fParentId; }
      set { SetPropertyValue<int>("ParentId", ref fParentId, value); }
    }
    string fName;
    [Size(50)]
    public string Name {
      get { return fName; }
      set { SetPropertyValue<string>("Name", ref fName, value); }
    }
    DateTime fLastWriteTime;
    public DateTime LastWriteTime {
      get { return fLastWriteTime; }
      set { SetPropertyValue<DateTime>("LastWriteTime", ref fLastWriteTime, value); }
    }
    byte[] fContent;
    [Size(SizeAttribute.Unlimited)]
    public byte[] Content {
      get { return fContent; }
      set { SetPropertyValue<byte[]>("Content", ref fContent, value); }
    }
    bool fIsFolder;
    public bool IsFolder {
      get { return fIsFolder; }
      set { SetPropertyValue<bool>("IsFolder", ref fIsFolder, value); }
    }
    public FileItem(Session session) : base(session) { }
  }

}
