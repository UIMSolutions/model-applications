module models.applications.foundations.crm.sales.quotes.quote;

@safe:
import models.applications;

// Formal offer for products and/or services, proposed at specific prices and related payment terms, which is sent to a prospective customer.
class DAPLQuote : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "ownerId": UUIDAttribute, // Owner Id"]),
      "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
      "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
      "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
      "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "quoteId": UUIDAttribute, // Unique identifier of the quote."]),
      "emailAddress": StringAttribute, // The primary email address for the entity."]),
      "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
      "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
      "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
      "billToAddressId": UUIDAttribute, // Unique identifier of the billing address."]),
      "billToCity": StringAttribute, // Type the city for the customer's billing address."]),
      "billToComposite": StringAttribute, // Shows the complete Bill To address."]),
      "billToContactName": StringAttribute, // Type the primary contact name at the customer's billing address."]),
      "billToCountry": StringAttribute, // Type the country or region for the customer's billing address."]),
      "billToFax": StringAttribute, // Type the fax number for the customer's billing address."]),
      "billToLine1": StringAttribute, // Type the first line of the customer's billing address."]),
      "billToLine2": StringAttribute, // Type the second line of the customer's billing address."]),
      "billToLine3": StringAttribute, // Type the third line of the billing address."]),
      "billToName": StringAttribute, // Type a name for the customer's billing address, such as 'Headquarters' or 'Field office', to identify the address."]),
      "billToPostalCode": StringAttribute, // Type the ZIP Code or postal code for the billing address."]),
      "billToStateOrProvince": StringAttribute, // Type the state or province for the billing address."]),
      "billToTelephone": StringAttribute, // Type the phone number for the customer's billing address."]),
      "closedOn": TimestampAttribute, // Enter the date when the quote was closed to indicate the expiration, revision, or cancellation date."]),
      "customerId": UUIDAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
      "customerIdType": StringAttribute, // The type of customer, either Account or Contact."]),
      "discountAmount": StringAttribute, // Type the discount amount for the quote if the customer is eligible for special savings."]),
      "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "discountAmountBase": StringAttribute, // Value of the Quote Discount Amount in base currency."]),
      "discountPercentage": PercentageAttribute, // Type the discount rate that should be applied to the Detail Amount field to include additional savings for the customer in the quote."]),
      "effectiveFrom": StringAttribute, // Enter the date when the quote pricing is effective or was first communicated to the customer."]),
      "effectiveTo": StringAttribute, // Enter the expiration date or last day the quote pricing is effective for the customer."]),
      "expiresOn": TimestampAttribute, // Enter the date a decision or order is due from the customer to indicate the expiration date of the quote."]),
      "freightAmount": StringAttribute, // Type the cost of freight or shipping for the products included in the quote for use in calculating the Total Amount field."]),
      "freightAmountBase": StringAttribute, // Value of the Freight Amount in base currency."]),
      "freightTermsCode": StringAttribute, // Select the freight terms to make sure shipping charges are processed correctly."]),
      "freightTermsCode_display": StringAttribute, // 
      "opportunityId": UUIDAttribute, // Choose the opportunity that the quote is related to for reporting and analytics."]),
      "paymentTermsCode": StringAttribute, // Select the payment terms to indicate when the customer needs to pay the total amount."]),
      "paymentTermsCode_display": StringAttribute, // 
      "priceLevelId": UUIDAttribute, // Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices."]),
      "pricingErrorCode": StringAttribute, // Pricing error for the quote."]),
      "pricingErrorCode_display": StringAttribute, // 
      "quoteNumber": NumberAttribute, // Shows the quote number for customer reference and searching capabilities. The number cannot be modified."]),
      "requestDeliveryBy": UserIdAttribute, // Enter the delivery date requested by the customer for all products in the quote."]),
      "revisionNumber": NumberAttribute, // Shows the version number of the quote for revision history tracking."]),
      "shippingMethodCode": StringAttribute, // Select a shipping method for deliveries sent to this address."]),
      "shippingMethodCode_display": StringAttribute, // 
      "shipToAddressId": UUIDAttribute, // Unique identifier of the shipping address."]),
      "shipToCity": StringAttribute, // Type the city for the customer's shipping address."]),
      "shipToComposite": StringAttribute, // Shows the complete Ship To address."]),
      "shipToContactName": StringAttribute, // Type the primary contact name at the customer's shipping address."]),
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
      "stateCode": StateCodeAttribute, // Shows whether the quote is draft, active, won, or closed. Only draft quotes can be edited."]),
      "stateCode_display": StringAttribute, // 
      "statusCode": StatusCodeAttribute, //Select the quote's status."]),
      "statusCode_display": StringAttribute, // 
      "totalAmount": StringAttribute, // Shows the total amount due, calculated as the sum of the products, discounts, freight, and taxes for the quote."]),
      "totalAmountBase": StringAttribute, // Value of the Total Amount in base currency."]),
      "totalAmountLessFreight": StringAttribute, // Shows the total product amount for the quote, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount due for the quote."]),
      "totalAmountLessFreightBase": StringAttribute, // Value of the Total Pre-Freight Amount in base currency."]),
      "totalDiscountAmount": StringAttribute, // Shows the total discount amount, based on the discount price and rate entered on the quote."]),
      "totalDiscountAmountBase": StringAttribute, // Value of the Total Discount Amount in base currency."]),
      "totalLineItemAmount": StringAttribute, // Shows the sum of all existing and write-in products included on the quote, based on the specified price list and quantities."]),
      "totalLineItemAmountBase": StringAttribute, // Value of the Total Detail Amount in base currency."]),
      "totalLineItemDiscountAmount": StringAttribute, // Shows the total of the Manual Discount amounts specified on all products included in the quote. This value is reflected in the Detail Amount field on the quote and is added to any discount amount or rate specified on the quote"]),
      "totalLineItemDiscountAmountBase": StringAttribute, // Value of the Total Line Item Discount Amount in base currency."]),
      "totalTax": StringAttribute, // Shows the total of the Tax amounts specified on all products included in the quote, included in the Total Amount due calculation for the quote."]),
      "totalTaxBase": StringAttribute, // Value of the Total Tax in base currency."]),
      "willCall": StringAttribute, // Select whether the products included in the quote should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions."]),
      "onHoldTime": TimeAttribute, // Shows the duration in minutes for which the quote was on hold."]),
      "lastOnHoldTime": TimeAttribute, // Contains the date time stamp of the last on hold time."]),
      "SLAId": UUIDAttribute, //Choose the service level agreement (SLA) that you want to apply to the quote record."]),
      "SLAInvokedId": UUIDAttribute, // Last SLA that was applied to this quote. This field is for internal use only."]),
      "accountId": AccountIdAttribute, // Unique identifier of the account with which the quote is associated."]),
      "contactId": ContactIdAttribute, // Unique identifier of the contact associated with the quote."]),
      "campaignId": UUIDAttribute, // Shows the campaign that the order was created from."]),
    ]);
  }

  override string entityClass() { return "aplQuote"; }
  override string entityClasses() { return "aplQuotes"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("account", "accountId", "APLAccount"));
  // mixin(GetEntity!("campaign", "campaignId", "APLCampaign"));
  // mixin(GetEntity!("contact", "contactId", "APLContact"));
}
auto APLQuote() { return new DAPLQuote; } 
auto APLQuote(Json json) { return new DAPLQuote(json); } 

version(test_library) {
  unittest {
    
    assert(APLQuote);

  auto entity = APLQuote; 
    
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}