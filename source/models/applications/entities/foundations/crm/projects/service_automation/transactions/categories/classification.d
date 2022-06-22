module models.applications.foundations.crm.projects.service_automation.transactions.categories.classification;

@safe:
import models.applications;

// Entity used to associate a category broadly as time, expense or material.
class DAPLTransactionCategoryClassification : DOOPEntity {
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
      StateCodeAttribute, // Status of the Transaction Category Classification
      StatusCodeAttribute // Reason for the status of the Transaction Category Classification
    ])
    .addValues([
      "utcConversionTimeZoneCode": StringAttribute, //Time zone code that was in use when the record was created.
      "transactionCategory": StringAttribute, //
      "transactionClassification": StringAttribute, //
      "transactionClassification_display": StringAttribute, //
    ]);    
  }

  override string entityClass() { return "aplTransactionCategoryClassification"; }
  override string entityClasses() { return "aplTransactionCategoryClassifications"; }

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
auto APLTransactionCategoryClassification() { return new DAPLTransactionCategoryClassification; } 
auto APLTransactionCategoryClassification(Json json) { return new DAPLTransactionCategoryClassification(json); } 

version(test_library) {
  unittest {
    
    assert(APLTransactionCategoryClassification);

  auto entity = APLTransactionCategoryClassification;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}