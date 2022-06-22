module models.applications.foundations.crm.services.entitlements.entitlement;

@safe:
import models.applications;

// 
class DAPLEntitlement : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": StringAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": StringAttribute, // Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "ownerId": UUIDAttribute, // Owner Id"]),
      "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
      "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
      "owningUserId": StringAttribute, // Unique identifier of the user that owns the activity."]),
      "owningTeamId": StringAttribute, // Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "entitlementId": UUIDAttribute, // Unique identifier for entity instances"]),
      "emailAddress": StringAttribute, // The primary email address for the entity."]),
      "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
      "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
      "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "allocationTypeCode": StringAttribute, // Select the type of entitlement terms."]),
      "allocationTypeCode_display": StringAttribute, // 
      "customerId": UUIDAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
      "customerIdType": StringAttribute, // The type of customer, either Account or Contact."]),
      "decreaseRemainingOn": StringAttribute, // Select whether to decrease the remaining terms when the case is created or when it is resolved."]),
      "decreaseRemainingOn_display": StringAttribute, // 
      "endDate": DateAttribute, // Enter the date when the entitlement ends."]),
      "entitlementTemplateId": UUIDAttribute, // Unique identifier for Entitlement Template associated with Entitlement."]),
      "SLAId": UUIDAttribute, //Choose the service level agreement (SLA) associated with the entitlement."]),
      "startDate": DateAttribute, // Enter the date when the entitlement starts."]),
      "totalTerms": StringAttribute, // Type the total number of entitlement terms."]),
      "isDefault": BooleanAttribute, // Shows whether this entitlement is the default one for the specified customer."]),
      "accountId": AccountIdAttribute, // Unique identifier for Account associated with Entitlement."]),
      "contactId": ContactIdAttribute, // Unique identifier for Contact associated with Entitlement."]),
      "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the contact with respect to the base currency."]),
      "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the contact."]),
    ])
    .addValues([
      StateCodeAttribute, // For internal use only.
      StatusCodeAttribute // Select the reason code that explains the status of the entitlement.
    ])
    .addValues([
      "kbAccessLevel": StringAttribute, //Select the access someone will have to the knowledge base on the portal."]),
      "kbAccessLevel_display": StringAttribute, //"]),
      "remainingTerms": StringAttribute, //Type the total number of entitlement terms that are left."]),
      "restrictCaseCreation": StringAttribute, //Tells whether case creation is restricted based on entitlement terms."]),
    ]);     
  }

  override string entityClass() { return "aplEntitlement"; }
  override string entityClasses() { return "aplEntitlements"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("account", "accountId", "APLAccount"));
  // mixin(GetEntity!("contact", "contactId", "APLContact"));

}
auto APLEntitlement() { return new DAPLEntitlement; } 
auto APLEntitlement(Json json) { return new DAPLEntitlement(json); } 

version(test_library) {
  unittest {
    
    assert(APLEntitlement);
  
  auto entity = APLEntitlement;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}