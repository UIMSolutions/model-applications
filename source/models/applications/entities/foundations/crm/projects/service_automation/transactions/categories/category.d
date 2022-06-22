module models.applications.foundations.crm.projects.service_automation.transactions.categories.category;

@safe:
import models.applications;

// Business transaction categories to classify costs and revenue.
class DAPLTransactionCategory : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who modified the record."]),
      "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
    ])
    .addValues([
      StateCodeAttribute, // Status of the Transaction Category
      StatusCodeAttribute // Reason for the status of the Transaction Category
    ])
    .addValues([
      "utcConversionTimeZoneCode": StringAttribute, //Time zone code that was in use when the record was created."]),
      "billingType": StringAttribute, //Select the default billing type of project transactions in this category. Valid values are Chargeable, Non chargeable or Complimentary. Only chargeable transactions will add to an invoice total"]),
      "billingType_display": StringAttribute, //"]),
      "defaultUnit": StringAttribute, //"]),
      "unitGroup": StringAttribute, //Select the unit schedule that is associated with the transaction category."]),
    ]);    
  }

  override string entityClass() { return "aplTransactionCategory"; }
  override string entityClasses() { return "aplTransactionCategories"; }

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
auto APLTransactionCategory() { return new DAPLTransactionCategory; } 
auto APLTransactionCategory(Json json) { return new DAPLTransactionCategory(json); } 

version(test_library) {
  unittest {
    
    assert(APLTransactionCategory);

  auto entity = APLTransactionCategory;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}