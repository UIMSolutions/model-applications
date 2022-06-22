module models.applications.foundations.crm.sales.competitors.product;

@safe:
import models.applications;

// Association between a competitor and a product offered by the competitor.
class DAPLCompetitorProduct : DOOPEntity {
  this() { super();
    this.addValues([
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "competitorId": UUIDAttribute, // 
      "productId": UUIDAttribute, // 
    ]);
  }

  override string entityClass() { return "aplCompetitorProduct"; }
  override string entityClasses() { return "aplCompetitorProducts"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLCompetitorProduct() { return new DAPLCompetitorProduct; } 
auto APLCompetitorProduct(Json json) { return new DAPLCompetitorProduct(json); } 

version(test_library) {
  unittest {
    
    assert(APLCompetitorProduct);

  auto entity = APLCompetitorProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}