module models.applications.foundations.crm.services.entitlements.contract;

@safe:
import models.applications;

// 
class DAPLEntitlementContact : DOOPEntity {
  this() { super();
    this.addValues([
      "entitlementContactId": ContactIdAttribute, // Unique identifier of the contacts for the entitlements."]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "contactId": ContactIdAttribute, // 
      "entitlementId": UUIDAttribute, // 
    ]);
  }

  override string entityClass() { return "aplEntitlementContact"; }
  override string entityClasses() { return "aplEntitlementContacts"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
  
  // mixin(GetEntity!("contact", "contactId", "APLContact"));
}
auto APLEntitlementContact() { return new DAPLEntitlementContact; } 
auto APLEntitlementContact(Json json) { return new DAPLEntitlementContact(json); } 

version(test_library) {
  unittest {
    
    assert(APLEntitlementContact);
  
  auto entity = APLEntitlementContact;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}