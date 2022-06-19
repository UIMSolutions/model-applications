module models.applications.slas.item;

@safe:
import uim.entities;

// Contains information about a tracked support KPI for a specific customer.
class DAPLSLAItem : DOOPEntity {
  this() { super();
    this.addValues([
      "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
      "relatedField": StringAttribute, // Select the service level agreement (SLA) key performance indicator (KPI) that this SLA Item is created for."]),
      "SLAId": UUIDAttribute, //Unique identifier for SLA associated with SLA Item."]),
      "exchangeRate": StringAttribute, // Exchange rate between the currency associated with the SLA Item record and the base currency."]),
      "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the SLA Item record."]),
      "applicableWhenXml": StringAttribute, // Condition for SLA item"]),
      "successConditionsXml": StringAttribute, // Condition for SLA item"]),
      "solutionId": UUIDAttribute, // Unique identifier of the associated solution."]),
      "componentState": StringAttribute, // For internal use only."]),
      "componentState_display": StringAttribute, // 
      "overwriteTime": TimeAttribute, // For internal use only."]),
      "isManaged": BooleanAttribute, // For internal use only."]),
      "SLAItemIdUnique": StringAttribute, // For internal use only."]),
      "sequenceNumber": NumberAttribute, // Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address."]),
      "failureAfter": StringAttribute, // Select how soon the success criteria must be met until the SLA item is considered failed and failure actions are initiated. The actual duration is based on the business hours as specified in the associated SLA record."]),
      "warnAfter": StringAttribute, // Select how soon the success criteria must be met before warning actions are initiated. The actual duration is based on the business hours as specified in the associated SLA record."]),
      "owningUserId": UserIdAttribute, // Unique identifier of the user who owns the SLA Item record."]),
      "ownerId": UUIDAttribute, // Owner Id"]),
      "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
      "workflowId": UUIDAttribute, // Workflow associated with the SLA Item."]),
      "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
    ]);
  }

  override string entityClass() { return "aplSLAItem"; }
  override string entityClasses() { return "aplSLAItems"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLSLAItem() { return new DAPLSLAItem; } 
auto APLSLAItem(Json json) { return new DAPLSLAItem(json); } 

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(APLSLAItem);
  
  auto entity = APLSLAItem;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}