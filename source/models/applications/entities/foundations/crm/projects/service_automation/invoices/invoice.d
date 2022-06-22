module models.applications.foundations.crm.projects.service_automation.invoices.invoice;

@safe:
import models.applications;

// Order that has been billed.
class DAPLInvoice : DOOPEntity {
  mixin(EntityThis!("APLInvoice"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        ContactIdAttribute, // Unique identifier of the contact associated with the invoice.
        OwnerIdAttribute, // Owner Id
        StateCodeAttribute, // Shows whether the invoice is active, paid, or canceled. Paid and canceled invoices are read-only and can't be edited unless they are reactivated.
        StatusCodeAttribute // Select the invoice's status.
      ])
      .addValues([
        "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user.
        "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record.
        "ownerIdType": StringAttribute, // The type of owner, either User or Team.
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record
        "owningUserId": UserIdAttribute, // Unique identifier for the user that owns the record.
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record.
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only.
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created.
        "invoiceId": UUIDAttribute, // Unique identifier of the invoice.
        "emailAddress": StringAttribute, // The primary email address for the entity.
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity.
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located.
        "customerId": UUIDAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities.
        "customerIdType": StringAttribute, // The type of customer, either Account or Contact.
        "dateDelivered": StringAttribute, // Enter the date when the products included in the invoice were delivered.
        "discountAmount": StringAttribute, // Type the discount amount for the invoice if the customer is eligible for special savings.
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
        "discountAmountBase": StringAttribute, // Value of the Invoice Discount Amount in base currency.
        "discountPercentage": PercentageAttribute, // Type the discount rate that should be applied to the Detail Amount field, for use in calculating the Pre-Freight Amount and Total Amount values for the invoice.
        "dueDate": DateAttribute, // Enter the date by which the invoice should be paid by the customer.
        "freightAmount": StringAttribute, // Type the cost of freight or shipping for the products included in the invoice for use in calculating the total amount due.
        "freightAmountBase": StringAttribute, // Value of the Freight Amount in base currency.
        "invoiceNumber": NumberAttribute, // Shows the identifying number or code of the invoice.
        "isPriceLocked": BooleanAttribute, // Select whether prices specified on the invoice are locked from any further updates.
        "lastBackofficeSubmit": StringAttribute, // Enter the date and time when the invoice was last submitted to an accounting or ERP system for processing.
        "opportunityId": UUIDAttribute, // Choose the opportunity that the invoice is related to for reporting and analytics.
        "paymentTermsCode": StringAttribute, // Select the payment terms to indicate when the customer needs to pay the total amount.
        "paymentTermsCode_display": StringAttribute, // 
        "priceLevelId": UUIDAttribute, // Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices.
        "pricingErrorCode": StringAttribute, // Type of pricing error for the invoice.
        "pricingErrorCode_display": StringAttribute, // 
        "priorityCode": StringAttribute, // Select the priority so that preferred customers or critical issues are handled quickly.
        "priorityCode_display": StringAttribute, // 
        "salesOrderId": UUIDAttribute, // Choose the order related to the invoice to make sure the order is fulfilled and invoiced correctly.
        "SLAId": UUIDAttribute, //Choose the service level agreement (SLA) that you want to apply to the invoice record.
        "SLAInvokedId": UUIDAttribute, // Last SLA that was applied to this invoice. This field is for internal use only.
        "onHoldTime": TimeAttribute, // Shows the duration in minutes for which the invoice was on hold.
        "lastOnHoldTime": TimeAttribute, // Contains the date time stamp of the last on hold time.
        "entityImageId": UUIDAttribute, // 
        "accountId": AccountIdAttribute, // Unique identifier of the account with which the invoice is associated.
        "billToContactName": StringAttribute, // Type the primary contact name at the customer's billing address.
        "hasCorrections": StringAttribute, // Indicates if this invoice contains corrections to previous invoices.
        "orderType": StringAttribute, // Whether the invoice is for an Item- based Order or a Work-based Project Contract
        "orderType_display": StringAttribute, // 
        "projectInvoiceStatus": StringAttribute, // Project specific status
        "projectInvoiceStatus_display": StringAttribute, // 
        "shippingMethodCode": StringAttribute, //Select a shipping method for deliveries sent to this address.
        "shippingMethodCode_display": StringAttribute, //
        "shipToCity": StringAttribute, //Type the city for the customer's shipping address.
        "shipToComposite": StringAttribute, //Shows the complete Ship To address.
        "shipToCountry": StringAttribute, //Type the country or region for the customer's shipping address.
        "shipToFax": StringAttribute, //Type the fax number for the customer's shipping address.
        "shipToFreightTermsCode": StringAttribute, //Select the freight terms to make sure shipping orders are processed correctly.
        "shipToFreightTermsCode_display": StringAttribute, //
        "shipToLine1": StringAttribute, //Type the first line of the customer's shipping address.
        "shipToLine2": StringAttribute, //Type the second line of the customer's shipping address.
        "shipToLine3": StringAttribute, //Type the third line of the shipping address.
        "shipToName": StringAttribute, //Type a name for the customer's shipping address, such as 'Headquarters' or 'Field office', to identify the address.
        "shipToPostalCode": StringAttribute, //Type the ZIP Code or postal code for the shipping address.
        "shipToStateOrProvince": StringAttribute, //Type the state or province for the shipping address.
        "shipToTelephone": StringAttribute, //Type the phone number for the customer's shipping address.
        "totalAmount": StringAttribute, //Shows the total amount due, calculated as the sum of the products, discount, freight, and taxes for the invoice.
        "totalAmountBase": StringAttribute, //Value of the Total Amount in base currency.
        "totalAmountLessFreight": StringAttribute, //Shows the total product amount due, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount due for the invoice.
        "totalAmountLessFreightBase": StringAttribute, //Value of the Total Pre-Freight Amount in base currency.
        "totalDiscountAmount": StringAttribute, //Shows the total discount amount, based on the discount price and rate entered on the invoice.
        "totalDiscountAmountBase": StringAttribute, //Value of the Total Discount Amount in base currency.
        "totalLineItemAmount": StringAttribute, //Shows the sum of all existing and write-in products included on the invoice, based on the specified price list and quantities.
        "totalLineItemAmountBase": StringAttribute, //Value of the Total Detail Amount in base currency.
        "totalLineItemDiscountAmount": StringAttribute, //Shows the Manual Discount amounts specified on all products included in the invoice. This value is reflected in the Detail Amount field on the invoice and is added to any discount amount or rate specified on the invoice.
        "totalLineItemDiscountAmountBase": StringAttribute, //Value of the Total Line Item Discount Amount in base currency.
        "totalTax": StringAttribute, //Shows the total of the Tax amounts specified on all products included in the invoice, included in the Total Amount due calculation for the invoice.
        "totalTaxBase": StringAttribute, //Value of the Total Tax in base currency.
        "willCall": StringAttribute, //Select whether the products included in the invoice should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions.
        "traversedPath": StringAttribute, //A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.
        "billToCity": StringAttribute, //Type the city for the customer's billing address.
        "billToComposite": StringAttribute, //Shows the complete Bill To address.
        "billToCountry": StringAttribute, //Type the country or region for the customer's billing address.
        "billToFax": StringAttribute, //Type the fax number for the customer's billing address.
        "billToLine1": StringAttribute, //Type the first line of the customer's billing address.
        "billToLine2": StringAttribute, //Type the second line of the customer's billing address.
        "billToLine3": StringAttribute, //Type the third line of the billing address.
        "billToName": StringAttribute, //Type a name for the customer's billing address, such as 'Headquarters' or 'Field office', to identify the address.
        "billToPostalCode": StringAttribute, //Type the ZIP Code or postal code for the billing address.
        "billToStateOrProvince": StringAttribute, //Type the state or province for the billing address.
        "billToTelephone": StringAttribute, //Type the phone number for the customer's billing address.
      ])    
      .registerPath("applications_invoices");
  }
}
mixin(EntityCalls!("APLInvoice"));

version(test_library) {
  unittest {
    
    assert(APLInvoice);

  auto entity = APLInvoice;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}