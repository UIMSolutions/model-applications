module models.applications.foundations.bookables.resources.categories.association;

@safe:
import models.applications;

// Association entity to model the categorization of resources.
class DAPLBookableResourceCategoryAssociation : DOOPEntity {
  mixin(EntityThis!("APLBookableResourceCategoryAssociation"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Status of the Resource Category Assn"]),
        StatusCodeAttribute, //Reason for the status of the Resource Category Assn"]),
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
        "bookableResourceCategoryAssnId": UUIDAttribute, // Unique identifier of the resource and category association."]),
        "resource": StringAttribute, // Shows the resource associated with the category."]),
        "resourceCategory": StringAttribute, // Choose a category to associate with the resource."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the bookableresourcecategoryassn with respect to the base currency."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Exchange rate for the currency associated with the BookableResourceCategoryAssn with respect to the base currency."]),
      ])
      .registerPath("applications_bookableresourcecategoryassociation");
  }
}
mixin(EntityCalls!("APLBookableResourceCategoryAssociation"));

version(test_library) {
  unittest {
    assert(APLBookableResourceCategoryAssociation);
  
  auto entity = APLBookableResourceCategoryAssociation;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}