module models.applications.foundations.crm.projects.rating_value;

@safe:
import models.applications;

// A unique value associated with a rating model that allows providing a user friendly rating value..
class DAPLRatingValue : DOOPEntity {
  mixin(EntityThis!("APLRatingValue"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the Rating Value
        StatusCodeAttribute // Reason for the status of the Rating Value
      ])
      .addValues([ // individual values
        "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who modified the record."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "ratingValueId": UUIDAttribute, // Unique identifier of the rating value."]),
        "ratingModel": StringAttribute, // Select the model that this rating value is associated with."]),
        "value": StringAttribute, // Type a rating value which is unique to the rating model it is associated with and lies within the range specified on the model."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the ratingvalue with respect to the base currency."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Exchange rate for the currency associated with the RatingValue with respect to the base currency."]),
        "isDefault": BooleanAttribute, // 
      ])
      .registerPath("APLRatingValue");
  }
}
mixin(EntityCalls!("APLRatingValue"));

version(test_library) {
  unittest {
    assert(APLRatingValue);
  
  auto entity = APLRatingValue;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}