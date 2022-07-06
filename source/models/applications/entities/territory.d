module models.applications.territory;

@safe:
import models.applications;

// Territory represents sales regions.
class DTerritoryEntity : DOOPEntity {
  mixin(EntityThis!("TerritoryEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the territory.
        "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who last modified the territory.
        "organizationId": UUIDAttribute, // Unique identifier for the organization	applicationCommon
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created.
        "managerId": UUIDAttribute, // Unique identifier of the manager of the territory.
        "entityImageId": UUIDAttribute, // applicationCommon
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the territory with respect to the base currency.
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the territory.
      ])
      .registerPath("applications_territories");
  }
}
mixin(EntityCalls!("TerritoryEntity"));

version(test_library) {
  unittest {
    
    assert(TerritoryEntity);
  
  auto entity = TerritoryEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}