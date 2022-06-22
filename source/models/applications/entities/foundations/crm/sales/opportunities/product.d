module models.applications.foundations.crm.sales.opportunities.product;

@safe:
import models.applications;

// Association between an opportunity and a product.
class DAPLOpportunityProduct : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "owner": UUIDAttribute, // Owner Id"]),
      "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
      "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
      "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
      "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "opportunityProduct": UUIDAttribute, // Unique identifier of the opportunity product."]),
      "baseAmount": StringAttribute, // Shows the total price of the opportunity product, based on the price per unit, volume discount, and quantity."]),
      "transactionCurrency": UUIDAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "baseAmountBase": StringAttribute, // Value of the Amount in base currency."]),
      "extendedAmount": StringAttribute, // Shows the total amount due for the opportunity product, calculated on the Amount value minus the Manual Discount amount."]),
      "extendedAmountBase": StringAttribute, // Value of the Extended Amount in base currency."]),
      "isPriceOverridden": BooleanAttribute, // Select whether the pricing on the opportunity product reflects an override of the product catalog pricing."]),
      "isProductOverridden": BooleanAttribute, // For system use only."]),
      "lineItemNumber": NumberAttribute, // Type the line item number for the opportunity product to easily identify the product in the opportunity documents and make sure it's listed in the correct order."]),
      "manualDiscountAmount": StringAttribute, // Type the manual discount amount for the opportunity product to deduct any negotiated or other savings from the product total."]),
      "manualDiscountAmountBase": StringAttribute, // Value of the Manual Discount Amount in base currency."]),
      "opportunity": UUIDAttribute, // Unique identifier of the opportunity with which the opportunity product is associated."]),
      "opportunityStateCode": StringAttribute, // Select the status of the opportunity product."]),
      "opportunityStateCode_display": StringAttribute, // 
      "parentBundle": UUIDAttribute, // Choose the parent bundle associated with this product"]),
      "productAssociation": UUIDAttribute, // Unique identifier of the product line item association with bundle in the opportunity"]),
      "productTypeCode": StringAttribute, // Product Type"]),
      "productTypeCode_display": StringAttribute, // 
      "pricePerUnit": StringAttribute, // Shows the price per unit of the opportunity product, based on the price list specified on the parent opportunity."]),
      "pricePerUnitBase": StringAttribute, // Value of the Price Per Unit in base currency."]),
      "pricingErrorCode": StringAttribute, // Select the pricing error for the opportunity product."]),
      "pricingErrorCode_display": StringAttribute, // 
      "productDescription": StringAttribute, // Type a detailed product description or additional notes about the opportunity product, such as talking points or product updates, that will assist the sales team when they discuss the product with the customer."]),
      "productName": StringAttribute, // Calculated field that will be populated by name and description of the product."]),
      "product": UUIDAttribute, // Choose the product to include on the opportunity to link the product's pricing and other information to the opportunity."]),
      "quantity": StringAttribute, // Type the amount or quantity of the product the customer would like to purchase."]),
      "tax": StringAttribute, // Type the tax amount to be applied on the opportunity product."]),
      "taxBase": StringAttribute, // Value of the Tax in base currency."]),
      "uoM": UUIDAttribute, // Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen."]),
      "volumeDiscountAmount": StringAttribute, // Shows the discount amount per unit if a specified volume is purchased. Configure volume discounts in the Product Catalog in the Settings area."]),
      "volumeDiscountAmountBase": StringAttribute, // Value of the Volume Discount in base currency."]),
      "sequenceNumber": NumberAttribute, // Shows the ID of the data that maintains the sequence."]),
      "propertyConfigurationStatus": StringAttribute, // Status of the property configuration."]),
      "propertyConfigurationStatus_display": StringAttribute, // 
      "entityImage": UUIDAttribute, // 
      "opportunityProductName": StringAttribute, // Opportunity Product Name. Added for 1:n Referential relationship"]),
      "parentBundleIdRef": StringAttribute, // Choose the parent bundle associated with this product"]),
    ]);
  }

  override string entityClass() { return "aplOpportunityProduct"; }
  override string entityClasses() { return "aplOpportunityProducts"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLOpportunityProduct() { return new DAPLOpportunityProduct; } 
auto APLOpportunityProduct(Json json) { return new DAPLOpportunityProduct(json); } 

version(test_library) {
  unittest {
    
    assert(APLOpportunityProduct);
  
  auto entity = APLOpportunityProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}