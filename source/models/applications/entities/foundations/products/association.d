module models.applications.foundations.products.association;

@safe:
import models.applications;

// Instance of a product added to a bundle or kit.
class DAPLProductAssociation : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
      "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "associatedProduct": StringAttribute, // Select a product to add to the bundle or kit."]),
      "productId": UUIDAttribute, // Select a bundle or a kit."]),
      "quantity": StringAttribute, // Type the quantity of the products added to the bundle or kit."]),
      "productIsRequired": StringAttribute, // Select whether the associated product is required or optional."]),
      "productIsRequired_display": StringAttribute, // f"]),
      "uoMId": UUIDAttribute, // Shows the unit of the product association."]),
      "stateCode": StateCodeAttribute, // Shows whether the associated product is active or inactive."]),
      "stateCode_display": StringAttribute, // f"]),
      "statusCode": StatusCodeAttribute, //Select the associated product's status."]),
      "statusCode_display": StringAttribute, // f"]),
      "propertyCustomizationStatus": StringAttribute, // Shows whether the item has properties that can be customized."]),
      "propertyCustomizationStatus_display": StringAttribute, // f"]),
      "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "transactionCurrencyId": CurrencyIdAttribute, // Shows the currency associated with the record."]),
    ]);
  }

  override string entityClass() { return "aplProductAssociation"; }
  override string entityClasses() { return "aplProductAssociations"; }

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
auto APLProductAssociation() { return new DAPLProductAssociation; } 
auto APLProductAssociation(Json json) { return new DAPLProductAssociation(json); } 

version(test_library) {
  unittest {
    
    assert(APLProductAssociation);
  
  auto entity = APLProductAssociation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}