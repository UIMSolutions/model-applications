module models.applications.foundations.crm.projects.service_automation.transactions.categories.hierarchy_element;
@safe:
import models.applications;

// Hierarchical relationship of the transaction category with a root node.
class DAPLTransactionCategoryHierarchyElement : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the record."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who modified the record."]),
      "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "childCategory": StringAttribute, // 
      "parentCategory": StringAttribute, // 
    ])
    .addValues([
      OwnerIdAttribute,
      StateCodeAttribute, // Status of the Transaction Category Hierarchy Element
      StatusCodeAttribute // Reason for the status of the Transaction Category Hierarchy Element
    ]);      
  }

  override string entityClass() { return "aplTransactionCategoryHierarchyElement"; }
  override string entityClasses() { return "aplTransactionCategoryHierarchyElements"; }

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
auto APLTransactionCategoryHierarchyElement() { return new DAPLTransactionCategoryHierarchyElement; } 
auto APLTransactionCategoryHierarchyElement(Json json) { return new DAPLTransactionCategoryHierarchyElement(json); } 

version(test_library) {
  unittest {
    
    assert(APLTransactionCategoryHierarchyElement);

  auto entity = APLTransactionCategoryHierarchyElement;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}