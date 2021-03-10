using DevExpress.Data.Filtering;
using DevExpress.Web;
using DevExpress.Xpo;
using EventsDB;
using EventsDB.Populate;
using pct.BizRulez;
using pct.BizRulez.Helpers;
using pct.BizRulez.Results;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sample_3_10 {
  public partial class VenuesRooms : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected override void OnInit(EventArgs e) {
      base.OnInit(e);

      unitOfWork = new UnitOfWork();

      if (venueSource != null && roomSource != null && capacitySource != null)
        venueSource.Session = roomSource.Session = capacitySource.Session = unitOfWork;
    }

    UnitOfWork unitOfWork;

    protected override void OnUnload(EventArgs e) {
      base.OnUnload(e);

      if (unitOfWork != null) {
        unitOfWork.Dispose();
        unitOfWork = null;
      }
    }

    protected void roomGrid_BeforePerformDataSelect(object sender, EventArgs e) {
      var key = (sender as ASPxGridView).GetMasterRowKeyValue();
      roomSource.Criteria = new BinaryOperator("Venue.Oid", key).ToString();
    }

    protected void capacityGrid_BeforePerformDataSelect(object sender, EventArgs e) {
      var key = (sender as ASPxGridView).GetMasterRowKeyValue();
      capacitySource.Criteria = new BinaryOperator("Room.Oid", key).ToString();
    }

    protected void venueGrid_RowInserted(object sender, DevExpress.Web.Data.ASPxDataInsertedEventArgs e) {
      unitOfWork.CommitChanges();
    }

    protected void venueGrid_RowUpdated(object sender, DevExpress.Web.Data.ASPxDataUpdatedEventArgs e) {
      unitOfWork.CommitChanges();
    }

    protected void venueGrid_RowDeleted(object sender, DevExpress.Web.Data.ASPxDataDeletedEventArgs e) {
      unitOfWork.CommitChanges();
    }

    protected void roomGrid_RowInserted(object sender, DevExpress.Web.Data.ASPxDataInsertedEventArgs e) {
      unitOfWork.CommitChanges();
    }

    protected void roomGrid_RowUpdated(object sender, DevExpress.Web.Data.ASPxDataUpdatedEventArgs e) {
      unitOfWork.CommitChanges();
    }

    protected void roomGrid_RowDeleted(object sender, DevExpress.Web.Data.ASPxDataDeletedEventArgs e) {
      unitOfWork.CommitChanges();
    }

    protected void capacityGrid_RowInserted(object sender, DevExpress.Web.Data.ASPxDataInsertedEventArgs e) {
      unitOfWork.CommitChanges();
    }

    protected void capacityGrid_RowUpdated(object sender, DevExpress.Web.Data.ASPxDataUpdatedEventArgs e) {
      unitOfWork.CommitChanges();
    }

    protected void capacityGrid_RowDeleted(object sender, DevExpress.Web.Data.ASPxDataDeletedEventArgs e) {
      unitOfWork.CommitChanges();
    }

    protected void roomGrid_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e) {
      e.NewValues["Venue!Key"] = (sender as ASPxGridView).GetMasterRowKeyValue();
    }

    protected void capacityGrid_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e) {
      e.NewValues["Room!Key"] = (sender as ASPxGridView).GetMasterRowKeyValue();
    }

    //protected void venueGrid_RowValidating(object sender, DevExpress.Web.Data.ASPxDataValidationEventArgs e) {
    //  if (!String.Equals(e.NewValues["Name"], "Valid Name")) {
    //    e.Errors[venueGrid.Columns["Name"]] = "The name is not valid";
    //    e.RowError = "Something went wrong";
    //  }
    //}

    protected void venueGrid_RowValidating(object sender, DevExpress.Web.Data.ASPxDataValidationEventArgs e) {
      RowValidating(sender, e, @"EventsDB.Venue");
    }

    protected void roomGrid_RowValidating(object sender, DevExpress.Web.Data.ASPxDataValidationEventArgs e) {
      // e.NewValues is incomplete because it only contains the fields that are included
      // as columns in the grid edit form. Need to add stuff required by the
      // validation process.
      e.NewValues["Venue"] = unitOfWork.GetObjectByKey<Venue>((sender as ASPxGridView).GetMasterRowKeyValue());
      RowValidating(sender, e, @"EventsDB.Room");
    }

    protected void capacityGrid_RowValidating(object sender, DevExpress.Web.Data.ASPxDataValidationEventArgs e) {
      // e.NewValues is incomplete because it only contains the fields that are included
      // as columns in the grid edit form. Need to add stuff required by the
      // validation process.
      var room = unitOfWork.GetObjectByKey<Room>((sender as ASPxGridView).GetMasterRowKeyValue());
      e.NewValues["Room"] = room;
      RowValidating(sender, e, @"EventsDB.RoomCapacity");

      // In the demo business logic, the capacity records can invalidate the room if more
      // than one capacity is assigned for the same setup type assigned. So I need to validate the room
      // here as well. The algorithm also needs the Oid of the edited row.
      e.NewValues["Oid"] = e.Keys["Oid"];
      var results = DemoDatabase.BizRulezChecker.Check("save", new RoomValidationProxy(room, e.NewValues));

      if (results.Count() > 0) {
        foreach (var item in results) {
          if (item.Status == ResultStatus.Fail) {
            if (string.IsNullOrEmpty(e.RowError))
              e.RowError = item.ErrorInfo;
            else
              e.RowError += (Environment.NewLine + item.ErrorInfo);
          }
        }
      }
    }

    private static void RowValidating(object sender, DevExpress.Web.Data.ASPxDataValidationEventArgs e, string typename) {
      var grid = sender as ASPxGridView;

      var results = DemoDatabase.BizRulezChecker.Check("save",
        new OrderedDictionaryValidationProxy(e.NewValues, typename));

      if (results.Count() > 0) {
        StringBuilder rowErrors = new StringBuilder();

        foreach (var result in results) {
          if (result.Status == ResultStatus.Fail) {
            if (result.Rule.AffectedFieldNames.Count() > 0) {
              foreach (var fieldName in result.Rule.AffectedFieldNames) {
                var column = grid.Columns[fieldName];
                if (column != null) {
                  if (e.Errors.ContainsKey(column))
                    e.Errors[column] += (Environment.NewLine + result.ErrorInfo);
                  else
                    e.Errors.Add(column, result.ErrorInfo);
                }
              }
            }
            else {
              rowErrors.AppendLine(result.ErrorInfo);
            }
          }
        }

        if (rowErrors.Length > 0)
          e.RowError = rowErrors.ToString();
        else
          e.RowError = "Errors were found during data validation";
      }
    }


    public class RoomValidationProxy : ICheckable {
      public RoomValidationProxy(Room room, OrderedDictionary newCapacityValues) {
        this.newCapacityValues = newCapacityValues;
        this.room = room;
      }

      private OrderedDictionary newCapacityValues;
      private Room room;

      string ICheckable.ObjectTypeId {
        get { return @"EventsDB.Room"; }
      }

      object ICheckable.ValueByName(string name) {
        switch (name) {
          case "Name":
            return room.Name;
          case "Venue":
            return room.Venue;
          case "Bookings":
            return room.Bookings;
          case "Capacities":
            return GetCapacities(room.Capacities, newCapacityValues).ToList();
          default:
            return null;
        }
      }

      private IEnumerable<object> GetCapacities(XPCollection<RoomCapacity> origColl, OrderedDictionary newCapacityValues) {
        foreach (var roomCapacity in origColl)
          if (roomCapacity.Oid != (Guid)newCapacityValues["Oid"])
            yield return roomCapacity;
        yield return new OrderedDictionaryValidationProxy(newCapacityValues, @"EventsDB.RoomCapacity");
      }
    }

    protected void capacityGrid_CellEditorInitialize(object sender, ASPxGridViewEditorEventArgs e) {
      if (e.Column.Name == "roomSetupColumn") {
        if (e.Editor is ASPxComboBox comboBox) {
          comboBox.DataSource = Enum.GetNames(typeof(RoomSetup));
          comboBox.DataBind();
        }
      }
    }
  }
}