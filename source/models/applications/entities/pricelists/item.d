module models.applications.pricelists.item;

@safe:
import uim.entities;

// Information about how to price a product in the specified price level, including pricing method, rounding option, and discount type based on a specified product unit.
class DAPLPriceListItem : DOOPEntity {
  this() { super();
    this.addValues([
      "productPriceLevelId": StringAttribute, // Unique identifier of the price list."]),
      "createdOnBehalfBy": StringAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": StringAttribute, // Shows who last updated the record on behalf of another user."]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "processId": StringAttribute, // Contains the id of the process associated with the entity."]),
      "stageId": StringAttribute, // Contains the id of the stage where the entity is located."]),
      "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "amount": StringAttribute, // Monetary amount for the price list."]),
      "transactionCurrencyId": StringAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "amountBase": StringAttribute, // Value of the Amount in base currency."]),
      "organizationId": StringAttribute, // Unique identifier of the organization associated with the price list."]),
      "percentage": PercentageAttribute, // Percentage for the price list."]),
      "priceLevelId": StringAttribute, // Unique identifier of the price level associated with this price list."]),
      "pricingMethodCode": StringAttribute, // Pricing method applied to the price list."]),
      "pricingMethodCode_display": StringAttribute, // 
      "productId": StringAttribute, // Product associated with the price list."]),
      "productNumber": NumberAttribute, // User-defined product number."]),
      "quantitySellingCode": StringAttribute, // Quantity of the product that must be sold for a given price level."]),
      "quantitySellingCode_display": StringAttribute, // 
      "roundingOptionAmount": StringAttribute, // Rounding option amount for the price list."]),
      "roundingOptionAmountBase": StringAttribute, // Value of the Rounding Amount in base currency."]),
      "roundingOptionCode": StringAttribute, // Option for rounding the price list."]),
      "roundingOptionCode_display": StringAttribute, // 
      "roundingPolicyCode": StringAttribute, // Policy for rounding the price list."]),
      "roundingPolicyCode_display": StringAttribute, // 
      "uoMId": StringAttribute, // Unique identifier of the unit for the price list."]),
      "uoMScheduleId": StringAttribute, // Unique identifier of the unit schedule for the price list."]),
    ]);
  }

  override string entityClass() { return "aplPriceListItem"; }
  override string entityClasses() { return "aplPriceListItems"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLPriceListItem() { return new DAPLPriceListItem; } 
auto APLPriceListItem(Json json) { return new DAPLPriceListItem(json); } 

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(APLPriceListItem);
  
  auto entity = APLPriceListItem;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}