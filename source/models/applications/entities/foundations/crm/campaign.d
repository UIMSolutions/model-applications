module models.applications.foundations.crm.campaign;

@safe:
import models.applications;

// Container for campaign activities and responses, sales literature, products, and lists to create, plan, execute, and track the results of a specific marketing campaign through its life.
class DAPLCampaign : DOOPEntity {
  mixin(EntityThis!("APLCampaign"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        CampaignIdAttribute, // Unique identifier of the campaign."]), 
        OwnerIdAttribute, // Owner Id"]), 
        StateCodeAttribute, // Shows the status of the campaign. By default, campaigns are active and can't be deactivated.
        StatusCodeAttribute // Select the campaign's status.
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
        "emailAddress": StringAttribute, // The primary email address for the entity."]), 
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]), 
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]), 
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]), 
        "actualEnd": StringAttribute, // Enter the date when the campaign was closed or completed."]), 
        "actualStart": StringAttribute, // Enter the actual start date and time for the campaign."]), 
        "budgetedCost": StringAttribute, // Type the amount budgeted for the campaign to define a limit for how much you can spend."]), 
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]), 
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]), 
        "budgetedCostBase": StringAttribute, // Value of the Budget Allocated in base currency."]), 
        "codeName": StringAttribute, // Type a number or other tracking code to identify the campaign. If no value is entered, a code will be generated automatically."]), 
        "expectedResponse": StringAttribute, // Type the expected response rate for the campaign as a full number between 0 and 100."]), 
        "expectedRevenue": StringAttribute, // Type the expected revenue for the campaign for return on investment projections and post-campaign reporting."]), 
        "expectedRevenueBase": StringAttribute, // Value of the Estimated Revenue in base currency."]), 
        "isTemplate": BooleanAttribute, // Select whether the campaign is a template that can be copied when you create future campaigns."]), 
        "message": StringAttribute, // Type the promotional message or marketing copy for the campaign."]), 
        "objective": StringAttribute, // Type the objective of the campaign, including products, services, discounts, and pricing."]), 
        "otherCost": StringAttribute, // Type the sum of any miscellaneous campaign costs not included in the campaign activities to make sure the actual cost of the campaign is calculated correctly."]), 
        "otherCostBase": StringAttribute, // Value of the Miscellaneous Costs in base currency."]), 
        "promotionCodeName": StringAttribute, // Type a promotional code to track sales related to the campaign or allow customers to redeem a discount offer."]), 
        "proposedEnd": StringAttribute, // Enter the date when the campaign is scheduled to end."]), 
        "proposedStart": StringAttribute, // Enter the date when the campaign is scheduled to start."]), 
        "totalActualCost": StringAttribute, // Shows the sum of the amounts entered in the Total Cost of Campaign Activities and Miscellaneous Costs fields."]), 
        "totalActualCostBase": StringAttribute, // Value of the Total Cost of Campaign in base currency."]), 
        "totalCampaignActivityActualCost": StringAttribute, // Shows the sum of the values entered in the Actual Cost field on all campaign activities related to the campaign."]), 
        "totalCampaignActivityActualCostBase": StringAttribute, // Value of the Total Cost of Campaign Activities in base currency."]), 
        "typeCode": StringAttribute, // Select the type of the campaign."]), 
        "typeCode_display": StringAttribute, //  
        "priceListId": UUIDAttribute, // Choose the price list associated with this item to make sure the products associated with the campaign are offered at the correct prices."]), 
        "entityImageId": UUIDAttribute, //  
      ])
      .registerPath("applications_campaigns");
  }
}
mixin(EntityCalls!("APLCampaign"));

version(test_library) {
  unittest {
    assert(APLCampaign);

  auto entity = APLCampaign;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}