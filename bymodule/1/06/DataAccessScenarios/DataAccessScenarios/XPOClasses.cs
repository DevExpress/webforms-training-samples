using System;
using DevExpress.Xpo;
namespace Countries {
  [Persistent("SubRegions")]
  public class SubRegion : XPLiteObject {
    int fId;
    [Key]
    public int Id {
      get { return fId; }
      set { SetPropertyValue<int>("Id", ref fId, value); }
    }
    Region fRegion;
    [Association("Regions-SubRegions")]
    [Persistent("RegionId")]
    public Region Region {
      get { return fRegion; }
      set { SetPropertyValue<Region>("Region", ref fRegion, value); }
    }
    string fName;
    [Size(50)]
    public string Name {
      get { return fName; }
      set { SetPropertyValue<string>("Name", ref fName, value); }
    }
    public SubRegion(Session session) : base(session) { }
    public SubRegion() : base(Session.DefaultSession) { }
    public override void AfterConstruction() { base.AfterConstruction(); }

    [Association("SubRegion-Countries")]
    public XPCollection<Country> Countries {
      get {
        return GetCollection<Country>("Countries");
      }
    }
  }

  [Persistent("Regions")]
  public class Region : XPLiteObject {
    int fId;
    [Key]
    public int Id {
      get { return fId; }
      set { SetPropertyValue<int>("Id", ref fId, value); }
    }
    string fName;
    [Size(50)]
    public string Name {
      get { return fName; }
      set { SetPropertyValue<string>("Name", ref fName, value); }
    }
    public Region(Session session) : base(session) { }
    public Region() : base(Session.DefaultSession) { }
    public override void AfterConstruction() { base.AfterConstruction(); }

    [Association("Regions-SubRegions")]
    public XPCollection<SubRegion> SubRegions {
      get {
        return GetCollection<SubRegion>("SubRegions");
      }
    }
  }

  [Persistent("Countries")]
  public class Country : XPLiteObject {
    int fId;
    [Key]
    public int Id {
      get { return fId; }
      set { SetPropertyValue<int>("Id", ref fId, value); }
    }
    SubRegion fSubRegion;
    [Association("SubRegion-Countries")]
    [Persistent("SubRegionId")]
    public SubRegion SubRegion {
      get { return fSubRegion; }
      set { SetPropertyValue<SubRegion>("SubRegion", ref fSubRegion, value); }
    }
    string fShortName;
    [Size(50)]
    public string ShortName {
      get { return fShortName; }
      set { SetPropertyValue<string>("ShortName", ref fShortName, value); }
    }
    string fOfficialName;
    [Size(255)]
    public string OfficialName {
      get { return fOfficialName; }
      set { SetPropertyValue<string>("OfficialName", ref fOfficialName, value); }
    }
    string fCurrency;
    [Size(255)]
    public string Currency {
      get { return fCurrency; }
      set { SetPropertyValue<string>("Currency", ref fCurrency, value); }
    }
    string fCapital;
    [Size(50)]
    public string Capital {
      get { return fCapital; }
      set { SetPropertyValue<string>("Capital", ref fCapital, value); }
    }
    byte[] fFlagImage;
    public byte[] FlagImage {
      get { return fFlagImage; }
      set { SetPropertyValue<byte[]>("FlagImage", ref fFlagImage, value); }
    }
    float fArea;
    public float Area {
      get { return fArea; }
      set { SetPropertyValue<float>("Area", ref fArea, value); }
    }
    decimal fGDP;
    public decimal GDP {
      get { return fGDP; }
      set { SetPropertyValue<decimal>("GDP", ref fGDP, value); }
    }
    int fPopulation;
    public int Population {
      get { return fPopulation; }
      set { SetPropertyValue<int>("Population", ref fPopulation, value); }
    }
    string fLanguages;
    [Size(50)]
    public string Languages {
      get { return fLanguages; }
      set { SetPropertyValue<string>("Languages", ref fLanguages, value); }
    }
    public Country(Session session) : base(session) { }
    public Country() : base(Session.DefaultSession) { }
    public override void AfterConstruction() { base.AfterConstruction(); }
  }

}
