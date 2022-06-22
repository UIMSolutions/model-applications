module models.applications.foundations.products.product;

@safe:
import models.applications;

// Information about products and their pricing information.
class DAPLProduct : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the product."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who last modified the product."]),
      "organizationId": UUIDAttribute, // Unique identifier for the organization"]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
      "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
      "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "vendorId": UUIDAttribute, // Unique identifier of vendor supplying the product."]),
      "validFromDate": DateAttribute, // Date from which this product is valid."]),
      "validToDate": DateAttribute, // Date to which this product is valid."]),
      "currentCost": StringAttribute, // Current cost for the product item. Used in price calculations."]),
      "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the product."]),
      "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the product with respect to the base currency."]),
      "currentCostBase": StringAttribute, // Value of the Current Cost in base currency."]),
      "defaultUoMId": UUIDAttribute, // Default unit for the product."]),
      "defaultUoMScheduleId": UUIDAttribute, // Default unit group for the product."]),
      "isKit": BooleanAttribute, // Information that specifies whether the product is a kit."]),
      "isStockItem": BooleanAttribute, // Information about whether the product is a stock item."]),
      "parentProductId": UUIDAttribute, // Specifies the parent product family hierarchy."]),
      "price": StringAttribute, // List price of the product."]),
      "priceBase": StringAttribute, // Value of the List Price in base currency."]),
      "productStructure": StringAttribute, // Product Structure."]),
      "productStructure_display": StringAttribute, // 
      "productNumber": NumberAttribute, // User-defined product ID."]),
      "productTypeCode": StringAttribute, // Type of product."]),
      "productTypeCode_display": StringAttribute, // 
      "productUrl": UrlAttribute, // URL for the Website associated with the product."]),
      "quantityDecimal": DecimalAttribute, // Number of decimal places that can be used in monetary amounts for the product."]),
      "quantityOnHand": StringAttribute, // Quantity of the product in stock."]),
      "size": StringAttribute, // Product size."]),
      "standardCost": StringAttribute, // Standard cost of the product."]),
      "standardCostBase": StringAttribute, // Value of the Standard Cost in base currency."]),
      "stateCode": StateCodeAttribute, // Status of the product."]),
      "stateCode_display": StringAttribute, // 
      "statusCode": StatusCodeAttribute, //Reason for the status of the product."]),
      "statusCode_display": StringAttribute, // 
      "stockVolume": StringAttribute, // Stock volume of the product."]),
      "stockWeight": StringAttribute, // Stock weight of the product."]),
      "supplierName": StringAttribute, // Name of the product's supplier."]),
      "vendorName": StringAttribute, // Name of the product vendor."]),
      "vendorPartNumber": NumberAttribute, // Unique part identifier in vendor catalog of this product."]),
      "hierarchyPath": StringAttribute, // Hierarchy path of the product."]),
      "priceLevelId": UUIDAttribute, // Select the default price list for the product."]),
      "subjectId": UUIDAttribute, // Select a category for the product."]),
      "entityImageId": UUIDAttribute, // 
      "createdByExternalParty": StringAttribute, // Shows the external party who created the record."]),
      "modifiedByExternalParty": StringAttribute, // Shows the external party who modified the record."]),
    ]);
  }

  override string entityClass() { return "aplProduct"; }
  override string entityClasses() { return "aplProducts"; }

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
auto APLProduct() { return new DAPLProduct; } 
auto APLProduct(Json json) { return new DAPLProduct(json); } 

version(test_library) {
  unittest {
    
    assert(APLProduct);
  
  auto entity = APLProduct;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}