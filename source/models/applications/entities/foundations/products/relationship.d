module models.applications.foundations.products.relationship;

@safe:
import models.applications;

// Information about the selling relationship between two products, including the relationship type, such as up-sell, cross-sell, substitute, or accessory.
class DAPLProductRelationship : DOOPEntity {
  this() { super();
    this.addValues([
      "productSubstituteId": UUIDAttribute, // Shows the unique identifier of the product relationship."]),
      "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
      "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "productId": UUIDAttribute, // Shows the product that the relationship is defined for."]),
      "salesRelationshipType": StringAttribute, // Select the type of the product relationship."]),
      "salesRelationshipType_display": StringAttribute, // 
      "stateCode": StateCodeAttribute, // Select the product relationship's status."]),
      "stateCode_display": StringAttribute, // 
      "statusCode": StatusCodeAttribute, //Shows whether the product relationship is active or inactive."]),
      "statusCode_display": StringAttribute, // 
      "substitutedProductId": UUIDAttribute, // Select the related product that the relationship needs to be defined for."]),
      "direction": StringAttribute, // Select whether the relationship is unidirectional or bidirectional."]),
      "direction_display": StringAttribute, // 
      "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "transactionCurrencyId": CurrencyIdAttribute, // Shows the currency associated with the record."]),
    ]);
  }

  override string entityClass() { return "aplProductRelationship"; }
  override string entityClasses() { return "aplProductRelationships"; }

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
auto APLProductRelationship() { return new DAPLProductRelationship; } 
auto APLProductRelationship(Json json) { return new DAPLProductRelationship(json); } 

version(test_library) {
  unittest {
    
    assert(APLProductRelationship);
  
  auto entity = APLProductRelationship;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}