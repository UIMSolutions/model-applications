module models.applications.position;

@safe:
import models.applications;

// Position of a user in the hierarchy
class DPositionEntity : DOOPEntity {
  mixin(EntityThis!("PositionEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        StateCodeAttribute, // Shows whether the entity is active or inactive. Inactive entities are read-only and can't be edited unless they are reactivated.
        StatusCodeAttribute // Select the entity's status.
      ])
      .addValues([ // individual values
        "organizationId": UUIDAttribute, // Unique identifier for the organization
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": IntegerAttribute, // Time zone code that was in use when the record was created.
        "parentPositionId": UUIDAttribute, // Parent position.
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the position with respect to the base currency.
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the position.
      ])
      .registerPath("applications_positions");
  }
}
mixin(EntityCalls!("PositionEntity"));

version(test_library) {
  unittest {    
    assert(PositionEntity);

    auto entity = PositionEntity;
  }
}