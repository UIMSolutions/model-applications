module models.applications.foundations.crm.services.contracts.contract;

@safe:
import models.applications;

// Agreement to provide customer service during a specified amount of time or number of cases.
class DAPLContract : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": UserIdAttribute, // Date and time that the record was migrated."]),
      "importSequenceNumber": UserIdAttribute, // Sequence number of the import that created this record."]),
      "ownerId": UserIdAttribute, // Owner Id"]),
      "ownerIdType": UserIdAttribute, // The type of owner, either User or Team."]),
      "owningBusinessUnit": UserIdAttribute, // Unique identifier for the business unit that owns the record"]),
      "owningUserId": UserIdAttribute, // Unique identifier of the user that owns the activity."]),
      "owningTeamId": UserIdAttribute, // Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": UserIdAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": UserIdAttribute, // Time zone code that was in use when the record was created."]),
      "contractId": UserIdAttribute, // Unique identifier of the contract."]),
      "emailAddress": UserIdAttribute, // The primary email address for the entity."]),
      "title": UserIdAttribute, // Type a title or name for the contract that indicates the purpose of the contract."]),
      "activeOn": UserIdAttribute, // Enter the date when the contract becomes active."]),
      "allotmentTypeCode": UserIdAttribute, // Type of allotment that the contract supports."]),
      "allotmentTypeCode_display": UserIdAttribute, // 
      "billingCustomerId": UserIdAttribute, // Select the customer account or contact to which the contract should be billed to provide a quick link to address and other customer details."]),
      "billingCustomerIdType": UserIdAttribute, // The type of billing customer, either Account or Contact."]),
      "billingEndOn": UserIdAttribute, // Enter the end date for the contract's billing period to indicate the period for which the customer must pay for a service."]),
      "billingFrequencyCode": UserIdAttribute, // Select the billing schedule of the contract to indicate how often the customer should be invoiced."]),
      "billingFrequencyCode_display": UserIdAttribute, // 
      "billingStartOn": UserIdAttribute, // Enter the start date for the contract's billing period to indicate the period for which the customer must pay for a service. This defaults to the same date that is selected in the Contract Start Date field."]),
      "billToAddress": UserIdAttribute, // Choose which address to send the invoice to."]),
      "cancelOn": UserIdAttribute, // Shows the date and time when the contract was canceled."]),
      "contractLanguage": UserIdAttribute, // Type additional information about the contract, such as the products or services provided to the customer."]),
      "contractNumber": UserIdAttribute, // Shows the number for the contract for customer reference and searching capabilities. You cannot modify this number."]),
      "contractServiceLevelCode": UserIdAttribute, // Select the level of service that should be provided for the contract based on your company's definition of bronze, silver, or gold."]),
      "contractServiceLevelCode_display": UserIdAttribute, // 
      "contractTemplateAbbreviation": UserIdAttribute, // Shows the abbreviation of the contract template selected when the contract is created."]),
      "contractTemplateId": UserIdAttribute, // Choose the contract template that should be used to determine the terms of the contract, such as allotment type, available hours, and billing frequency."]),
      "customerId": UserIdAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
      "customerIdType": UserIdAttribute, // The type of customer, either Account or Contact."]),
      "duration": UserIdAttribute, // Shows for the duration of the contract, in days, based on the contract start and end dates."]),
      "effectivityCalendar": UserIdAttribute, // Days of the week and times during which customer service support is available for the duration of the contract."]),
      "expiresOn": UserIdAttribute, // Enter the date when the contract expires."]),
      "netPrice": UserIdAttribute, // Shows the total charge to the customer for the service contract, calculated as the sum of values in the Net field for each existing contract line related to the contract."]),
      "transactionCurrencyId": UserIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "exchangeRate": UserIdAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "netPriceBase": UserIdAttribute, // Value of the Net Price in base currency."]),
      "originatingContract": UserIdAttribute, // Choose the original contract that this contract was created from. This information is used to track renewal history."]),
      "serviceAddress": UserIdAttribute, // Choose the address for the customer account or contact where the services are provided."]),
      "totalDiscount": UserIdAttribute, // Shows the total discount applied to the contract's service charges, calculated as the sum of values in the Discount fields for each existing contract line related to the contract."]),
      "totalDiscountBase": UserIdAttribute, // Value of the Total Discount in base currency."]),
      "totalPrice": UserIdAttribute, // Shows the total service charge for the contract, before any discounts are credited. This is calculated as the sum of values in the Total Price field for each existing contract line related to the contract."]),
      "totalPriceBase": UserIdAttribute, // Value of the Total Price in base currency."]),
      "useDiscountAsPercentage": UserIdAttribute, // Select whether the discounts entered on contract lines for this contract should be entered as a percentage or a fixed dollar value."]),
      "entityImageId": UserIdAttribute, // 
      "accountId": UserIdAttribute, // Unique identifier of the account with which the contract is associated."]),
      "billingAccountId": UserIdAttribute, // Unique identifier of the account to which the contract is to be billed."]),
      "billingContactId": UserIdAttribute, // Unique identifier of the contact to whom the contract is to be billed."]),
      "contactId": UserIdAttribute, // Unique identifier of the contact specified for the contract."]),
    ])
    .addValues([
      StateCodeAttribute, // Shows whether the contract is in draft, invoiced, active, on hold, canceled, or expired. You can edit only the contracts that are in draft status.
      StatusCodeAttribute // Select the contract's status.
    ]);    
  }

  override string entityClass() { return "aplContract"; }
  override string entityClasses() { return "aplContracts"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("account", "accountId", "APLAccount"));
  // mixin(GetEntity!("contact", "contactId", "APLContact"));
}
auto APLContract() { return new DAPLContract; } 
auto APLContract(Json json) { return new DAPLContract(json); } 

version(test_library) {
  unittest {
    
    assert(APLContract);
  
  auto entity = APLContract;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}