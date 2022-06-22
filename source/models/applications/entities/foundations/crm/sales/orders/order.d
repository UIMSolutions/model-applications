module models.applications.foundations.crm.sales.orders.order;

@safe:
import models.applications;

// Quote that has been accepted.
class DAPLOrder : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "ownerId": UUIDAttribute, // Owner Id"]),
      "ownerIdTypeCode": StringAttribute, // The type of owner, either User or Team."]),
      "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
      "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
      "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "salesOrderId": UUIDAttribute, // Unique identifier of the order."]),
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
      "customerId": UUIDAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
      "customerIdType": StringAttribute, // The type of customer, either Account or Contact."]),
      "dateFulfilled": StringAttribute, // Enter the date that all or part of the order was shipped to the customer."]),
      "discountAmount": StringAttribute, // Type the discount amount for the order if the customer is eligible for special savings."]),
      "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "discountAmountBase": StringAttribute, // Value of the Order Discount Amount in base currency."]),
      "discountPercentage": PercentageAttribute, // Type the discount rate that should be applied to the Detail Amount field to include additional savings for the customer in the order."]),
      "freightAmount": StringAttribute, // Type the cost of freight or shipping for the products included in the order for use in calculating the Total Amount field."]),
      "freightAmountBase": StringAttribute, // Value of the Freight Amount in base currency."]),
      "freightTermsCode": StringAttribute, // Select the freight terms to make sure shipping charges are processed correctly."]),
      "freightTermsCode_display": StringAttribute, // 
      "isPriceLocked": BooleanAttribute, // Select whether prices specified on the invoice are locked from any further updates."]),
      "lastBackofficeSubmit": StringAttribute, // Enter the date and time when the order was last submitted to an accounting or ERP system for processing."]),
      "opportunityId": UUIDAttribute, // Choose the related opportunity so that the data for the order and opportunity are linked for reporting and analytics."]),
      "orderNumber": NumberAttribute, // Shows the order number for customer reference and to use in search. The number cannot be modified."]),
      "paymentTermsCode": StringAttribute, // Select the payment terms to indicate when the customer needs to pay the total amount."]),
      "paymentTermsCode_display": StringAttribute, // 
      "priceLevelId": UUIDAttribute, // Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices."]),
      "pricingErrorCode": StringAttribute, // Select the type of pricing error, such as a missing or invalid product, or missing quantity."]),
      "pricingErrorCode_display": StringAttribute, // 
      "priorityCode": StringAttribute, // Select the priority so that preferred customers or critical issues are handled quickly."]),
      "priorityCode_display": StringAttribute, // 
      "quoteId": UUIDAttribute, // Choose the related quote so that order data and quote data are linked for reporting and analytics."]),
      "requestDeliveryBy": UserIdAttribute, // Enter the delivery date requested by the customer for all products in the order."]),
      "shippingMethodCode": StringAttribute, // Select a shipping method for deliveries sent to this address."]),
      "shippingMethodCode_display": StringAttribute, // 
      "shipToAddressId": UUIDAttribute, // Unique identifier of the shipping address."]),
      "submitDate": DateAttribute, // Enter the date when the order was submitted to the fulfillment or shipping center."]),
      "submitStatus": StringAttribute, // Type the code for the submitted status in the fulfillment or shipping center system."]),
      "submitStatusDescription": StringAttribute, // Type additional details or notes about the order for the fulfillment or shipping center."]),
      "totalAmount": StringAttribute, // Shows the total amount due, calculated as the sum of the products, discounts, freight, and taxes for the order."]),
      "totalAmountBase": StringAttribute, // Value of the Total Amount in base currency."]),
      "totalAmountLessFreight": StringAttribute, // Shows the total product amount for the order, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount due for the order."]),
      "totalAmountLessFreightBase": StringAttribute, // Value of the Total Pre-Freight Amount in base currency."]),
      "totalDiscountAmount": StringAttribute, // Shows the total discount amount, based on the discount price and rate entered on the order."]),
      "totalDiscountAmountBase": StringAttribute, // Value of the Total Discount Amount in base currency."]),
      "totalLineItemAmount": StringAttribute, // Shows the sum of all existing and write-in products included on the order, based on the specified price list and quantities."]),
      "totalLineItemAmountBase": StringAttribute, // Value of the Total Detail Amount in base currency."]),
      "totalLineItemDiscountAmount": StringAttribute, // Shows the total of the Manual Discount amounts specified on all products included in the order. This value is reflected in the Detail Amount field on the order and is added to any discount amount or rate specified on the order."]),
      "totalLineItemDiscountAmountBase": StringAttribute, // Value of the Total Line Item Discount Amount in base currency."]),
      "totalTax": StringAttribute, // Shows the Tax amounts specified on all products included in the order, included in the Total Amount due calculation for the order."]),
      "totalTaxBase": StringAttribute, // Value of the Total Tax in base currency."]),
      "willCall": StringAttribute, // Select whether the products included in the order should be shipped to the specified address or held until the customer calls with further pick-up or delivery instructions."]),
      "onHoldTime": TimeAttribute, // Shows the duration in minutes for which the order was on hold."]),
      "lastOnHoldTime": TimeAttribute, // Contains the date time stamp of the last on hold time."]),
      "SLAId": UUIDAttribute, //Choose the service level agreement (SLA) that you want to apply to the sales order record."]),
      "SLAInvokedId": UUIDAttribute, // Last SLA that was applied to this sales order. This field is for internal use only."]),
      "entityImageId": UUIDAttribute, // 
      "accountId": AccountIdAttribute, // Shows the parent account related to the record. This information is used to link the sales order to the account selected in the Customer field for reporting and analytics."]),
      "contactId": ContactIdAttribute, // Shows the parent contact related to the record. This information is used to link the contract to the contact selected in the Customer field for reporting and analytics."]),
      "campaignId": UUIDAttribute, // Shows the campaign that the order was created from."]),
    ])
    .addValues([
      StateCodeAttribute, // Shows whether the order is active, submitted, fulfilled, canceled, or invoiced. Only active orders can be edited.
      StatusCodeAttribute // Select the order's status.
    ])
    .addValues([
      "shipToCity": StringAttribute, //Type the city for the customer's shipping address."]),
      "shipToComposite": StringAttribute, //Shows the complete Ship To address."]),
      "shipToContactName": StringAttribute, //Type the primary contact name at the customer's shipping address."]),
      "shipToCountry": StringAttribute, //Type the country or region for the customer's shipping address."]),
      "shipToFax": StringAttribute, //Type the fax number for the customer's shipping address."]),
      "shipToFreightTermsCode": StringAttribute, //Select the freight terms to make sure shipping orders are processed correctly."]),
      "shipToFreightTermsCode_display": StringAttribute, //"]),
      "shipToLine1": StringAttribute, //Type the first line of the customer's shipping address."]),
      "shipToLine2": StringAttribute, //Type the second line of the customer's shipping address."]),
      "shipToLine3": StringAttribute, //Type the third line of the shipping address."]),
      "shipToName": StringAttribute, //Type a name for the customer's shipping address, such as 'Headquarters' or 'Field office', to identify the address."]),
      "shipToPostalCode": StringAttribute, //Type the ZIP Code or postal code for the shipping address."]),
      "shipToStateOrProvince": StringAttribute, //Type the state or province for the shipping address."]),
      "shipToTelephone": StringAttribute, //Type the phone number for the customer's shipping address."]),
    ]);      
  }

  override string entityClass() { return "aplOrder"; }
  override string entityClasses() { return "aplOrders"; }

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
auto APLOrder() { return new DAPLOrder; } 
auto APLOrder(Json json) { return new DAPLOrder(json); } 

version(test_library) {
  unittest {
    
    assert(APLOrder);

  auto entity = APLOrder;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}