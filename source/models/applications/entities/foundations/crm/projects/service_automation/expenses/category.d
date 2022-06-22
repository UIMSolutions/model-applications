module models.applications.foundations.crm.projects.service_automation.expenses.category;

@safe:
import models.applications;

// Main container that holds expense category information.
class DAPLExpenseCategory : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who modified the record."]),
      "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "expenseCategoryuId": UUIDAttribute, // Select the Transaction Category associated with Expense Category."]),
      "expenseType": StringAttribute, // Enter the type of expense"]),
      "expenseType_display": StringAttribute, // 
      "receiptRequired": StringAttribute, // Shows whether the expense entry requires a receipt."]),
      "receiptRequired_display": StringAttribute, // projectServiceAutomation"]),
    ])
    .addValues([
      StateCodeAttribute, // Status of the Expense Category
      StatusCodeAttribute // Reason for the status of the Expense Category
    ]);    
  }

  override string entityClass() { return "aplExpenseCategory"; }
  override string entityClasses() { return "aplExpenseCategories"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("organization", "organizationId", "APLOrganization"));
}
auto APLExpenseCategory() { return new DAPLExpenseCategory; } 
auto APLExpenseCategory(Json json) { return new DAPLExpenseCategory(json); } 

version(test_library) {
  unittest {
    
    assert(APLExpenseCategory);

  auto entity = APLExpenseCategory;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}