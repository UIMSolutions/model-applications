module models.applications.pricelists.pricelist;

@safe:
import uim.entities;

// Entity that defines pricing levels.
class DAPLPriceList : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": StringAttribute, // Unique identifier of the delegate user who created the pricelevel."]),
      "modifiedOnBehalfBy": StringAttribute, // Unique identifier of the delegate user who last modified the pricelevel."]),
      "organizationId": StringAttribute, // Unique identifier for the organization"]),
      "versionNumber": NumberAttribute, // Version Number"]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "name": StringAttribute, // Name of the price list."]),
      "beginDate": DateAttribute, // Date on which the price list becomes effective."]),
      "description": StringAttribute, // Description of the price list."]),
      "endDate": DateAttribute, // Date that is the last day the price list is valid."]),
      "freightTermsCode": StringAttribute, // Freight terms for the price list."]),
      "freightTermsCode_display": StringAttribute, // 
      "paymentMethodCode": StringAttribute, // Payment terms to use with the price list."]),
      "paymentMethodCode_display": StringAttribute, // 
      "shippingMethodCode": StringAttribute, // Method of shipment for products in the price list."]),
      "shippingMethodCode_display": StringAttribute, // 
      "stateCode": StateCodeAttribute, // Status of the price list."]),
      "stateCode_display": StringAttribute, // 
      "statusCode": StatusCodeAttribute, //Reason for the status of the price list."]),
      "statusCode_display": StringAttribute, // 
      "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "transactionCurrencyId": StringAttribute, // Unique identifier of the currency associated with the price level."]),
      "copiedFromPriceLevel": StringAttribute, // Shows the price level that this price level was copied from."]),
      "entity": StringAttribute, // Select the entity for this price level."]),
      "entity_display": StringAttribute, // 
      "module": StringAttribute, // Select the context for this price level i.e whether it is sales prices, cost prices or purchase prices"]),
      "module_display": StringAttribute, // 
      "timeUnit": StringAttribute, // Select the default unit of role based time on this price list"]),
    ]);
  }

  override string entityClass() { return "aplPriceList"; }
  override string entityClasses() { return "aplPriceLists"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLPriceList() { return new DAPLPriceList; } 
auto APLPriceList(Json json) { return new DAPLPriceList(json); } 

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(APLPriceList);

  auto entity = APLPriceList;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}