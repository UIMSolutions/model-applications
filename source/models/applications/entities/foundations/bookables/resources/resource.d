module models.applications.foundations.bookables.resources.resource;

@safe:
import models.applications;

static this() {
  createEntities[DAPLBookableResource.namespace] = (Json json) => APLBookableResource(json); 
  createEntities["aplBookableResource"] = (Json json) => APLBookableResource(json); 
  createEntities["bookableResource"] = (Json json) => APLBookableResource(json); 
}

// Resource that has capacity which can be allocated to work.
class DAPLBookableResource : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record."]),
      "ownerId": UUIDAttribute, // Owner Id"]),
      "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
      "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
      "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
      "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "bookableResourceId": UUIDAttribute, // Unique identifier of the resource."]),
      "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
      "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
      "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "accountId": AccountIdAttribute, // Select the account that represents this resource."]),
      "calendarId": UUIDAttribute, // Specifies the working days and hours of the resource."]),
      "contactId": ContactIdAttribute, // Select the contact that represents this resource."]),
      "resourceType": StringAttribute, // Select whether the resource is a user, equipment, contact, account, generic resource or a group of resources."]),
      "resourceType_display": StringAttribute, // 
      "timeZone": StringAttribute, // Specifies the timezone for the resource's working hours."]),
      "userId": UUIDAttribute, // Select the user who represents this resource."]),
      "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the bookableresource with respect to the base currency."]),
      "transactionCurrencyId": CurrencyIdAttribute, // Exchange rate for the currency associated with the BookableResource with respect to the base currency."]),
    ])
    .addValues([
      StateCodeAttribute, // Status of the Bookable Resource
      StatusCodeAttribute // Reason for the status of the Bookable Resource
    ]); 
  }

  override string entityClass() { return "aplBookableResource"; }
  override string entityClasses() { return "aplBookableResources"; }

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
auto APLBookableResource() { return new DAPLBookableResource; } 
auto APLBookableResource(Json json) { return new DAPLBookableResource(json); } 

version(test_library) {
  unittest {
    
    assert(APLBookableResource);
  
  auto entity = APLBookableResource;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}