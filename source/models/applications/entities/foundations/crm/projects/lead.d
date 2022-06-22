module models.applications.foundations.crm.projects.lead;

@safe:
import models.applications;

// Prospect or potential sales opportunity. Leads are converted into accounts, contacts, or opportunities when they are qualified.
class DAPLLead : DOOPEntity {
 mixin(EntityThis!("APLLead"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),"ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),"owningUserId": UserIdAttribute, // Unique identifier for the user that owns the record."]),
        "owningTeamId": TeamIdAttribute, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
        "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
        "fullName": StringAttribute, // Combines and shows the lead's first and last names so the full name can be displayed in views and reports."]),
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "parentAccountId": UUIDAttribute, // Choose an account to connect this lead to, so that the relationship is visible in reports and analytics."]),
        "parentContactId": ContactIdAttribute, // Choose a contact to connect this lead to, so that the relationship is visible in reports and analytics."]),
        "address1AddressId": UUIDAttribute, // Unique identifier for address 1."]),
        "address1AddressTypeCode": StringAttribute, // Select the primary address type."]),
        "address1AddressTypeCode_display": StringAttribute, // "address1City": StringAttribute, // Type the city for the primary address."]),
        "address1Composite": StringAttribute, // Shows the complete primary address."]),
        "address1Country": StringAttribute, // Type the country or region for the primary address."]),
        "address1County": StringAttribute, // Type the county for the primary address."]),
        "address1Fax": StringAttribute, // Type the fax number associated with the primary address."]),
        "address1Latitude": StringAttribute, // Type the latitude value for the primary address for use in mapping and other applications."]),
        "address1Line1": StringAttribute, // Type the first line of the primary address."]),
        "address1Line2": StringAttribute, // Type the second line of the primary address."]),
        "address1Line3": StringAttribute, // Type the third line of the primary address."]),
        "address1Longitude": StringAttribute, // Type the longitude value for the primary address for use in mapping and other applications."]),
        "address1Name": StringAttribute, // Type a descriptive name for the primary address, such as Corporate Headquarters."]),
        "address1PostalCode": StringAttribute, // Type the ZIP Code or postal code for the primary address."]),
        "address1PostOfficeBox": StringAttribute, // Type the post office box number of the primary address."]),
        "address1ShippingMethodCode": StringAttribute, // Select a shipping method for deliveries sent to this address."]),
        "address1ShippingMethodCode_display": StringAttribute, // "address1StateOrProvince": StringAttribute, // Type the state or province of the primary address."]),
        "address1Telephone1": StringAttribute, // Type the main phone number associated with the primary address."]),
        "address1Telephone2": StringAttribute, // Type a second phone number associated with the primary address."]),
        "address1Telephone3": StringAttribute, // Type a third phone number associated with the primary address."]),
        "address1UPSZone": StringAttribute, // Type the UPS zone of the primary address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS."]),
        "address1UTCOffset": StringAttribute, // Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address."]),
        "address2AddressId": UUIDAttribute, // Unique identifier for address 2."]),
        "address2AddressTypeCode": StringAttribute, // Select the secondary address type."]),
        "address2AddressTypeCode_display": StringAttribute, // "address2City": StringAttribute, // Type the city for the secondary address."]),
        "address2Composite": StringAttribute, // Shows the complete secondary address."]),
        "address2Country": StringAttribute, // Type the country or region for the secondary address."]),
        "address2County": StringAttribute, // Type the county for the secondary address."]),
        "address2Fax": StringAttribute, // Type the fax number associated with the secondary address."]),
        "address2Latitude": StringAttribute, // Type the latitude value for the secondary address for use in mapping and other applications."]),
        "address2Line1": StringAttribute, // Type the first line of the secondary address."]),
        "address2Line2": StringAttribute, // Type the second line of the secondary address."]),
        "address2Line3": StringAttribute, // Type the third line of the secondary address."]),
        "address2Longitude": StringAttribute, // Type the longitude value for the secondary address for use in mapping and other applications."]),
        "address2Name": StringAttribute, // Type a descriptive name for the secondary address, such as Corporate Headquarters."]),
        "address2PostalCode": StringAttribute, // Type the ZIP Code or postal code for the secondary address."]),
        "address2PostOfficeBox": StringAttribute, // Type the post office box number of the secondary address."]),
        "address2ShippingMethodCode": StringAttribute, // Select a shipping method for deliveries sent to this address."]),
        "address2ShippingMethodCode_display": StringAttribute, // "address2StateOrProvince": StringAttribute, // Type the state or province of the secondary address."]),
        "address2Telephone1": StringAttribute, // Type the main phone number associated with the secondary address."]),
        "address2Telephone2": StringAttribute, // Type a second phone number associated with the secondary address."]),
        "address2Telephone3": StringAttribute, // Type a third phone number associated with the secondary address."]),
        "address2UPSZone": StringAttribute, // Type the UPS zone of the secondary address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS."]),
        "address2UTCOffset": StringAttribute, // Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address."]),
        "budgetAmount": StringAttribute, // Information about the budget amount of the lead's company or organization."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "budgetAmountBase": StringAttribute, // Value of the Budget Amount in base currency."]),
        "budgetStatus": StringAttribute, // Information about the budget status of the lead's company or organization."]),
        "budgetStatus_display": StringAttribute, // "companyName": StringAttribute, // Type the name of the company associated with the lead. This becomes the account name when the lead is qualified and converted to a customer account."]),
        "confirmInterest": StringAttribute, // Select whether the lead confirmed interest in your offerings. This helps in determining the lead quality."]),
        "customerId": UUIDAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": StringAttribute, // The type of customer, either Account or Contact."]),
        "decisionMaker": StringAttribute, // Select whether your notes include information about who makes the purchase decisions at the lead's company."]),
        "doNotBulkEMail": StringAttribute, // Select whether the lead accepts bulk email sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the lead can be added to marketing lists, but will be excluded from the email."]),
        "doNotEMail": StringAttribute, // Select whether the lead allows direct email sent from Microsoft Dynamics 365."]),
        "doNotFax": StringAttribute, // Select whether the lead allows faxes."]),
        "doNotPhone": StringAttribute, // Select whether the lead allows phone calls."]),
        "doNotPostalMail": StringAttribute, // Select whether the lead allows direct mail."]),
        "doNotSendMM": StringAttribute, // Select whether the lead accepts marketing materials, such as brochures or catalogs. Leads that opt out can be excluded from marketing initiatives."]),
        "EMailAddress1": StringAttribute, // Type the primary email address for the lead."]),
        "EMailAddress2": StringAttribute, // Type the secondary email address for the lead."]),
        "EMailAddress3": StringAttribute, // Type a third email address for the lead."]),
        "estimatedAmount": StringAttribute, // Type the estimated revenue value that this lead will generate to assist in sales forecasting and planning."]),
        "estimatedAmountBase": StringAttribute, // Value of the Est. Value in base currency."]),
        "estimatedCloseDate": DateAttribute, // Enter the expected close date for the lead, so that the sales team can schedule timely follow-up meetings to move the prospect to the next sales stage."]),
        "estimatedValue": StringAttribute, // Type a numeric value of the lead's estimated value, such as a product quantity, if no revenue amount can be specified in the Est. Value field. This can be used for sales forecasting and planning."]),
        "evaluateFit": StringAttribute, // Select whether the fit between the lead's requirements and your offerings was evaluated."]),
        "fax": StringAttribute, // Type the fax number for the primary contact for the lead."]),
        "firstName": StringAttribute, // Type the first name of the primary contact for the lead to make sure the prospect is addressed correctly in sales calls, email, and marketing campaigns."]),
        "industryCode": StringAttribute, // Select the primary industry in which the lead's business is focused, for use in marketing segmentation and demographic analysis."]),
        "industryCode_display": StringAttribute, // "initialCommunication": StringAttribute, // Choose whether someone from the sales team contacted this lead earlier."]),
        "initialCommunication_display": StringAttribute, // "jobTitle": StringAttribute, // Type the job title of the primary contact for this lead to make sure the prospect is addressed correctly in sales calls, email, and marketing campaigns."]),
        "lastName": StringAttribute, // Type the last name of the primary contact for the lead to make sure the prospect is addressed correctly in sales calls, email, and marketing campaigns."]),
        "lastUsedInCampaign": StringAttribute, // Shows the date when the lead was last included in a marketing campaign or quick campaign."]),
        "leadQualityCode": StringAttribute, // Select a rating value to indicate the lead's potential to become a customer."]),
        "leadQualityCode_display": StringAttribute, // "leadSourceCode": StringAttribute, // Select the primary marketing source that prompted the lead to contact you."]),
        "leadSourceCode_display": StringAttribute, // "masterId": UUIDAttribute, // Unique identifier of the master lead for merge."]),
        "merged": StringAttribute, // Tells whether the lead has been merged with another lead."]),
        "middleName": StringAttribute, // Type the middle name or initial of the primary contact for the lead to make sure the prospect is addressed correctly."]),
        "mobilePhone": StringAttribute, // Type the mobile phone number for the primary contact for the lead."]),
        "need": StringAttribute, // Choose how high the level of need is for the lead's company."]),
        "need_display": StringAttribute, // "numberOfEmployees": StringAttribute, // Type the number of employees that work at the company associated with the lead, for use in marketing segmentation and demographic analysis."]),
        "pager": StringAttribute, // Type the pager number for the primary contact for the lead."]),
        "participatesInWorkflow": StringAttribute, // Shows whether the lead participates in workflow rules."]),
        "preferredContactMethodCode": StringAttribute, // Select the preferred method of contact."]),
        "preferredContactMethodCode_display": StringAttribute, // "priorityCode": StringAttribute, // Select the priority so that preferred customers or critical issues are handled quickly."]),
        "priorityCode_display": StringAttribute, // "purchaseProcess": StringAttribute, // Choose whether an individual or a committee will be involved in the purchase process for the lead."]),
        "purchaseProcess_display": StringAttribute, // "qualificationComments": StringAttribute, // Type comments about the qualification or scoring of the lead."]),
        "revenue": StringAttribute, // Type the annual revenue of the company associated with the lead to provide an understanding of the prospect's business."]),
        "revenueBase": StringAttribute, // Value of the Annual Revenue in base currency."]),
        "salesStage": StringAttribute, // Select the sales stage of this lead to aid the sales team in their efforts to convert this lead to an opportunity."]),
        "salesStage_display": StringAttribute, // "salesStageCode": StringAttribute, // Select the sales process stage for the lead to help determine the probability of the lead converting to an opportunity."]),
        "salesStageCode_display": StringAttribute, // "salutation": StringAttribute, // Type the salutation of the primary contact for this lead to make sure the prospect is addressed correctly in sales calls, email messages, and marketing campaigns."]),
        "scheduleFollowupProspect": StringAttribute, // Enter the date and time of the prospecting follow-up meeting with the lead."]),
        "scheduleFollowUpQualify": StringAttribute, // Enter the date and time of the qualifying follow-up meeting with the lead."]),
        "SIC": StringAttribute, // Type the Standard Industrial Classification (SIC) code that indicates the lead's primary industry of business for use in marketing segmentation and demographic analysis."]),
        "telephone1": StringAttribute, // Type the work phone number for the primary contact for the lead."]),
        "telephone2": StringAttribute, // Type the home phone number for the primary contact for the lead."]),
        "telephone3": StringAttribute, // Type an alternate phone number for the primary contact for the lead."]),
        "purchaseTimeFrame": StringAttribute, // Choose how long the lead will likely take to make the purchase, so the sales team will be aware."]),
        "purchaseTimeFrame_display": StringAttribute, // "webSiteUrl": UrlAttribute, // Type the website URL for the company associated with this lead."]),
        "SLAId": UUIDAttribute, //Choose the service level agreement (SLA) that you want to apply to the Lead record."]),
        "SLAInvokedId": UUIDAttribute, // Last SLA that was applied to this case. This field is for internal use only."]),
        "onHoldTime": TimeAttribute, // Shows how long, in minutes, that the record was on hold."]),
        "lastOnHoldTime": TimeAttribute, // Contains the date and time stamp of the last on hold time."]),
        "followEmail": StringAttribute, // Information about whether to allow following email activity like opens, attachment views and link clicks for emails sent to the lead."]),
        "timeSpentByMeOnEmailAndMeetings": StringAttribute, // Total time spent for emails (read and write) and meetings by me in relation to the lead record."]),
        "entityImageId": UUIDAttribute, // 
        "accountId": AccountIdAttribute, // Unique identifier of the account with which the lead is associated."]),
        "contactId": ContactIdAttribute, // Unique identifier of the contact with which the lead is associated."]),
        "yomiCompanyName": StringAttribute, // Type the phonetic spelling of the lead's company name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the prospect."]),
        "yomiFirstName": StringAttribute, // Type the phonetic spelling of the lead's first name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the prospect."]),
        "yomiFullName": StringAttribute, // Combines and shows the lead's Yomi first and last names so the full phonetic name can be displayed in views and reports."]),
        "yomiLastName": StringAttribute, // Type the phonetic spelling of the lead's last name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the prospect."]),
        "yomiMiddleName": StringAttribute, // Type the phonetic spelling of the lead's middle name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the prospect."]),
        "campaignId": UUIDAttribute, // Choose the campaign that the lead was generated from to track the effectiveness of marketing campaigns and identify communications received by the lead."]),
        "relatedObjectId": UUIDAttribute, // Related Campaign Response."]),
        "originatingCaseId": UUIDAttribute, // This attribute is used for Sample Service Business Processes."]),
        "qualifyingOpportunityId": UUIDAttribute, // Choose the opportunity that the lead was qualified on and then converted to."]),
        "GDPROptOut": StringAttribute, // Describes whether lead is opted out or not"]),"orderType": StringAttribute, // Whether the Opportunity created when qualifying this Lead is for an Item- based or a Work-based sale"]),"orderType_display": StringAttribute, //     
      ])
      .addValues([
        StateCodeAttribute, // Shows whether the lead is open, qualified, or disqualified. Qualified and disqualified leads are read-only and can't be edited unless they are reactivated.
        StatusCodeAttribute // Type a subject or descriptive name, such as the expected order, company name, or marketing source list, to identify the lead.
      ]);      
  }

  override string entityClass() { return "aplLead"; }
  override string entityClasses() { return "aplLeads"; }

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
auto APLLead() { return new DAPLLead; } 
auto APLLead(Json json) { return new DAPLLead(json); } 

version(test_library) {
  unittest {
    
    assert(APLLead);
  
  auto entity = APLLead;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}