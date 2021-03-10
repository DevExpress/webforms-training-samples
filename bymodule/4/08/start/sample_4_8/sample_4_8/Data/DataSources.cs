using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Xml.Linq;
using System.Drawing;

namespace MasterDetailGrids.Data {
  public class DataSources {
    protected DataSources() {
      LoadDataSources();
    }

    private static object creationLock = new object();
    private static DataSources instance;
    public static DataSources Instance {
      get {
        if (instance == null) {
          lock (creationLock) {
            if (instance == null)
              instance = new DataSources();
          }
        }
        return instance;
      }
    }

    private List<Car> cars;
    public List<Car> Cars {
      get {
        return cars;
      }
    }

    private void LoadDataSources() {
      LoadCars();
    }

    private void LoadCars() {
      using (var stream =
                    Assembly.GetExecutingAssembly().GetManifestResourceStream("sample_4_8.Data.Cars.xml")) {

        var doc = XDocument.Load(stream);

        cars =
          (from car in doc.Root.Elements("Cars")
           select new Car {
             Id = (int)car.Element("ID"),
             Trademark = (string)car.Element("Trademark"),
             Model = (string)car.Element("Model"),
             HP = (int)car.Element("HP"),
             Liter = (double)car.Element("Liter"),
             Cyl = (int)car.Element("Cyl"),
             Category = (string)car.Element("Category"),
             Description = (string)car.Element("Description"),
             Hyperlink = (string)car.Element("Hyperlink"),
             Price = (decimal)car.Element("Price"),
             ImageBytes = Base64ToBytes((string)car.Element("Picture"))
           }).ToList();
      }
    }

    private static byte[] Base64ToBytes(string base64String) {
      return Convert.FromBase64String(base64String);
    }

    public Image Base64ToImage(string base64String) {
      var bytes = Base64ToBytes(base64String);
      var stream = new MemoryStream(bytes, 0, bytes.Length);
      stream.Write(bytes, 0, bytes.Length);
      stream.Position = 0;
      return Image.FromStream(stream);
    }

    #region Data types
    public class Car {
      public int Id { get; set; }
      public string Trademark { get; set; }
      public string Model { get; set; }
      public int HP { get; set; }
      public double Liter { get; set; }
      public int Cyl { get; set; }
      public string Category { get; set; }
      public string Description { get; set; }
      public string Hyperlink { get; set; }
      public decimal Price { get; set; }
      public System.Drawing.Image Image { get; set; }
      public byte[] ImageBytes { get; set; }
    }
    #endregion
  }
}