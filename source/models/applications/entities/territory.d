module models.applications.territory;

@safe:
import uim.entities;

// Territory represents sales regions.
class DAPLTerritory : DOOPEntity {
  mixin(EntityThis!("APLTerritory"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the territory."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who last modified the territory."]),
        "organizationId": UUIDAttribute, // Unique identifier for the organization	applicationCommon"]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created."]),
        "managerId": UUIDAttribute, // Unique identifier of the manager of the territory."]),
        "entityImageId": UUIDAttribute, // applicationCommon"]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the territory with respect to the base currency."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the territory."]),
      ])
      .registerPath("apl_territories");
  }
}
mixin(EntityCalls!("APLTerritory"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(APLTerritory);
  
  auto entity = APLTerritory;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}