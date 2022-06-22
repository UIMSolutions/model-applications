module models.applications.foundations.bookables.resources.bookings.booking;

@safe:
import models.applications;

// Represents the line details of a resource booking.
class DAPLBookableResourceBooking : DOOPEntity {
  mixin(EntityThis!("APLBookableResourceBooking"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the Bookable Resource Booking
        StatusCodeAttribute // Reason for the status of the Bookable Resource Booking
      ])
      .addValues([ // individual values
        "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "bookableResourceBookingId": UUIDAttribute, // Unique identifier of the resource booking."]),
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "bookingStatus": StringAttribute, // Select the status of the booking."]),
        "bookingType": StringAttribute, // Select whether the booking is solid or liquid. Solid bookings are firm and cannot be changed whereas liquid bookings can be changed."]),
        "bookingType_display": StringAttribute, // 
        "duration": StringAttribute, // Enter the duration of the booking."]),
        "endTime": TimeAttribute, // Enter the end date and time of the booking."]),
        "header": StringAttribute, // Shows the reference to the booking header record that represents the summary of bookings."]),
        "resource": StringAttribute, // Shows the resource that is booked."]),
        "startTime": TimeAttribute, // Enter the start date and time of the booking."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the bookableresourcebooking with respect to the base currency."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Exchange rate for the currency associated with the BookableResourceBooking with respect to the base currency."]),
      ])
      .registerPath("applications_bookableresourcebookings");
  }
}
mixin(EntityCalls!("APLBookableResourceBooking"));

version(test_library) {
  unittest {
    
    assert(APLBookableResourceBooking);
  
  auto entity = APLBookableResourceBooking;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}