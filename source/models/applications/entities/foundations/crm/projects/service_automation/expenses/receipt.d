module models.applications.foundations.crm.projects.service_automation.expenses.receipt;

@safe:
import models.applications;

// Table that contains expense receipt information.
class DAPLExpenseReceipt : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "ownerId": UUIDAttribute, // Owner Id"]),
      "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
      "owningUserId": UserIdAttribute, // Unique identifier for the user that owns the record."]),
      "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "expenseReceiptId": UUIDAttribute, // Unique identifier for entity instances"]),
      "expenseId": UUIDAttribute, // Shows the ID of the expense entry."]),
    ])
    .addValues([
      StateCodeAttribute, // Status of the Expense Receipt
      StatusCodeAttribute // Reason for the status of the Expense Receipt
    ])
    .addValues([
      "ownerIdType": StringAttribute, //The type of owner, either User or Team."]),
      "utcConversionTimeZoneCode": StringAttribute, //Time zone code that was in use when the record was created."]),
    ]);
  }

  override string entityClass() { return "aplExpenseReceipt"; }
  override string entityClasses() { return "aplExpenseReceipts"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLExpenseReceipt() { return new DAPLExpenseReceipt; } 
auto APLExpenseReceipt(Json json) { return new DAPLExpenseReceipt(json); } 

version(test_library) {
  unittest {
    
    assert(APLExpenseReceipt);

  auto entity = APLExpenseReceipt;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}