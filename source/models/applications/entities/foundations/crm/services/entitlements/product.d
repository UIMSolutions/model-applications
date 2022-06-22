module models.applications.foundations.crm.services.entitlements.product;


@safe:
import models.applications;

// The root entity for portal Ideas.
class DAPLEntitlementProduct : DOOPEntity {
  this() { super();
    this.addValues([
      "entitlementProductId": UUIDAttribute, // Unique identifier of the contacts for the entitlements."]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "productId": UUIDAttribute, // 
      "entitlementId": UUIDAttribute, // 
    ]);
  }

  override string entityClass() { return "aplEntitlementProduct"; }
  override string entityClasses() { return "aplEntitlementProducts"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLEntitlementProduct() { return new DAPLEntitlementProduct; } 
auto APLEntitlementProduct(Json json) { return new DAPLEntitlementProduct(json); } 

version(test_library) {
  unittest {
    
    assert(APLEntitlementProduct);
  
  auto entity = APLEntitlementProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}