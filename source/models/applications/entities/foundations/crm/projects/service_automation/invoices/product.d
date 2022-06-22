module models.applications.foundations.crm.projects.service_automation.invoices.product;

@safe:
import models.applications;

// Line item in an invoice containing detailed billing information for a product.
class DAPLInvoiceProduct : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "ownerId": UUIDAttribute, // Owner Id"]),
      "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
      "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
      "owningUserId": UserIdAttribute, // Unique identifier for the user that owns the record."]),
      "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "invoiceDetailId": UUIDAttribute, // Unique identifier of the invoice product line item."]),
      "actualDeliveryOn": TimestampAttribute, // Enter the date when the invoiced product was delivered to the customer."]),
      "baseAmount": StringAttribute, // Shows the total price of the invoice product, based on the price per unit, volume discount, and quantity."]),
      "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "baseAmountBase": StringAttribute, // Value of the Amount in base currency."]),
      "extendedAmount": StringAttribute, // Shows the total amount due for the invoice product, based on the sum of the unit price, quantity, discounts, and tax."]),
      "extendedAmountBase": StringAttribute, // Value of the Extended Amount in base currency."]),
      "invoiceId": UUIDAttribute, // Unique identifier of the invoice associated with the invoice product line item."]),
      "invoiceIsPriceLocked": StringAttribute, // Information about whether invoice product pricing is locked."]),
      "invoiceStateCode": StringAttribute, // Status of the invoice product."]),
      "invoiceStateCode_display": StringAttribute, // 
      "isCopied": BooleanAttribute, // Select whether the invoice product is copied from another item or data source."]),
      "isPriceOverridden": BooleanAttribute, // Select whether the price per unit is fixed at the value in the specified price list or can be overridden by users who have edit rights to the invoice product."]),
      "isProductOverridden": BooleanAttribute, // Select whether the product exists in the Microsoft Dynamics 365 product catalog or is a write-in product specific to the parent invoice."]),
      "lineItemNumber": NumberAttribute, // Type the line item number for the invoice product to easily identify the product in the invoice and make sure it's listed in the correct order."]),
      "manualDiscountAmount": StringAttribute, // Type the manual discount amount for the invoice product to deduct any negotiated or other savings from the product total."]),
      "manualDiscountAmountBase": StringAttribute, // Value of the Manual Discount in base currency."]),
      "parentBundleId": UUIDAttribute, // Choose the parent bundle associated with this product"]),
      "productAssociationId": UUIDAttribute, // Unique identifier of the product line item association with bundle in the invoice"]),
      "productTypeCode": StringAttribute, // Product Type"]),
      "productTypeCode_display": StringAttribute, // 
      "pricePerUnit": StringAttribute, // Type the price per unit of the invoice product. The default is the value in the price list specified on the parent invoice for existing products."]),
      "pricePerUnitBase": StringAttribute, // Value of the Price Per Unit in base currency."]),
      "pricingErrorCode": StringAttribute, // Pricing error for the invoice product line item."]),
      "pricingErrorCode_display": StringAttribute, // 
      "productDescription": StringAttribute, // Type a name or description to identify the type of write-in product included in the invoice."]),
      "productName": StringAttribute, // Calculated field that will be populated by name and description of the product."]),
      "productId": UUIDAttribute, // Choose the product to include on the invoice."]),
      "quantity": StringAttribute, // Type the amount or quantity of the product included in the invoice's total amount due."]),
      "quantityBackordered": StringAttribute, // Type the amount or quantity of the product that is back ordered for the invoice."]),
      "quantityCancelled": StringAttribute, // Type the amount or quantity of the product that was canceled for the invoice line item."]),
      "quantityShipped": StringAttribute, // Type the amount or quantity of the product that was shipped."]),
      "salesRepId": UUIDAttribute, // Choose the user responsible for the sale of the invoice product."]),
      "shippingTrackingNumber": NumberAttribute, // Type a tracking number for shipment of the invoiced product."]),
      "shipToCity": StringAttribute, // Type the city for the customer's shipping address."]),
      "shipToCountry": StringAttribute, // Type the country or region for the customer's shipping address."]),
      "shipToFax": StringAttribute, // Type the fax number for the customer's shipping address."]),
      "shipToFreightTermsCode": StringAttribute, // Select the freight terms to make sure shipping orders are processed correctly."]),
      "shipToFreightTermsCode_display": StringAttribute, // 
      "shipToLine1": StringAttribute, // Type the first line of the customer's shipping address."]),
      "shipToLine2": StringAttribute, // Type the second line of the customer's shipping address."]),
      "shipToLine3": StringAttribute, // Type the third line of the shipping address."]),
      "shipToName": StringAttribute, // Type a name for the customer's shipping address, such as 'Headquarters' or 'Field office', to identify the address."]),
      "shipToPostalCode": StringAttribute, // Type the ZIP Code or postal code for the shipping address."]),
      "shipToStateOrProvince": StringAttribute, // Type the state or province for the shipping address."]),
      "shipToTelephone": StringAttribute, // Type the phone number for the customer's shipping address."]),
      "tax": StringAttribute, // Type the tax amount for the invoice product."]),
      "taxBase": StringAttribute, // Value of the Tax in base currency."]),
      "uoMId": UUIDAttribute, // Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen."]),
      "volumeDiscountAmount": StringAttribute, // Shows the discount amount per unit if a specified volume is purchased. Configure volume discounts in the Product Catalog in the Settings area."]),
      "volumeDiscountAmountBase": StringAttribute, // Value of the Volume Discount in base currency."]),
      "willCall": StringAttribute, // Select whether the invoice product should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions."]),
      "sequenceNumber": NumberAttribute, // Shows the ID of the data that maintains the sequence."]),
      "propertyConfigurationStatus": StringAttribute, // Status of the property configuration."]),
      "propertyConfigurationStatus_display": StringAttribute, // 
      "invoiceDetailName": StringAttribute, // Invoice Detail Name. Added for 1:n Referential relationship"]),
      "salesOrderDetailId": UUIDAttribute, // Unique identifier for Order Line associated with Invoice Line."]),
      "parentBundleIdRef": StringAttribute, // Choose the parent bundle associated with this product"]),
      "billingMethod": StringAttribute, // Billing method for the project invoice line. Valid values are Time and Material and Fixed Price"]),
      "billingMethod_display": StringAttribute, // 
      "chargeableAmount": StringAttribute, // The amount from included line details that is chargeable."]),
      "chargeableAmountBase": StringAttribute, // Value of the Chargeable Amount in base currency."]),
      "complimentaryAmount": StringAttribute, // The amount from included line details that is complimentary and won't be charged."]),
      "complimentaryAmountBase": StringAttribute, // Value of the Complimentary Amount in base currency."]),
      "contractLine": StringAttribute, // Deprecated) Shows the project contract line for this invoice line."]),
      "contractLineAmount": StringAttribute, // Amount from the related project contract line if present."]),
      "contractLineAmountBase": StringAttribute, // Value of the project contract line amount in base currency."]),
      "invoicedTillDate": DateAttribute, // Amount already invoiced to customer for the same project contract line."]),
      "invoicedTillDateBase": StringAttribute, // Value of the Amount Previously Invoiced in base currency."]),
      "nonChargeableAmount": StringAttribute, // The amount from included line details that is non-chargeable."]),
      "nonChargeableAmountBase": StringAttribute, // Value of the Non Chargeable Amount in base currency."]),
      "project": StringAttribute, // Shows the project for this invoice line."]),
    ]);
  }

  override string entityClass() { return "aplInvoiceProduct"; }
  override string entityClasses() { return "aplInvoiceProducts"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto APLInvoiceProduct() { return new DAPLInvoiceProduct; } 
auto APLInvoiceProduct(Json json) { return new DAPLInvoiceProduct(json); } 

version(test_library) {
  unittest {
    
    assert(APLInvoiceProduct);

  auto entity = APLInvoiceProduct;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}