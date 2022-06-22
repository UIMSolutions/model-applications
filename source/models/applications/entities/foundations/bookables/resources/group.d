module models.applications.foundations.bookables.resources.group;

@safe:
import models.applications;

// Associates resources with resource groups that they are a member of.
class DAPLBookableResourceGroup : DOOPEntity {
  mixin(EntityThis!("APLBookableResourceGroup"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Status of the Bookable Resource Group
        StatusCodeAttribute // Reason for the status of the Bookable Resource Group      
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
        "bookableResourceGroupId": UUIDAttribute, // Unique identifier of the resource group."]),
        "childResource": StringAttribute, // The child resource that is a part of the group."]),
        "fromDate": DateAttribute, // Enter the group membership start date."]),
        "parentResource": StringAttribute, // The parent resource that is a part of the group."]),
        "toDate": DateAttribute, // Enter the group membership end date."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the bookableresourcegroup with respect to the base currency."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Exchange rate for the currency associated with the BookableResourceGroup with respect to the base currency."]),
      ])
      .registerPath("applications_accounts");
  }
}
mixin(EntityCalls!("APLBookableResourceGroup"));

version(uim_entities) {
  unittest {
    assert(APLBookableResourceGroup);
  
  auto entity = APLBookableResourceGroup;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}