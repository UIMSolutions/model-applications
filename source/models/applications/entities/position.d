module models.applications.position;

@safe:
import uim.entities;

// Position of a user in the hierarchy
class DAPLPosition : DOOPEntity {
  mixin(EntityThis!("APLPosition"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who modified the record."]),
        "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
        "stateCode": IntegerAttribute, // Status of the Position"]),
        "stateCode_display": StringAttribute, // 
        "statusCode": IntegerAttribute, // Reason for the status of the Position"]),
        "statusCode_display": StringAttribute, // 
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created."]),
        "parentPositionId": UUIDAttribute, // Parent position."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the position with respect to the base currency."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the position."]),
      ])
      .registerPath("applications_positions");
  }
}
mixin(EntityCalls!("APLPosition"));

version(test_library) {
  unittest {
    
    assert(APLPosition);

  auto entity = APLPosition;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}