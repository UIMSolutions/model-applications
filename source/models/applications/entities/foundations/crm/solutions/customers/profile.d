module models.applications.foundations.crm.solutions.customers.profile;

@safe:
import models.applications;

// A person or organization that either performed or has the potential to engage in a business activity.
class DAPLCustomerProfile : DOOPEntity {
  this() { super();
    this.addValues([
      "createdOnBehalfBy": StringAttribute, // Shows who created the record on behalf of another user."]),
      "modifiedOnBehalfBy": StringAttribute, // Shows who last updated the record on behalf of another user."]),
      "overriddenCreatedOn": StringAttribute, // Date and time that the record was migrated."]),
      "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
      "ownerId": StringAttribute, // Owner Id"]),
      "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
      "owningBusinessUnitId": BusinessUnitIdAttribute, // Unique identifier for the business unit that owns the record"]),
      "owningUser": StringAttribute, // Unique identifier of the user that owns the activity."]),
      "owningTeam": StringAttribute, // Unique identifier for the team that owns the record."]),
      "timeZoneRuleVersionNumber": NumberAttribute, // For internal use only."]),
      "utcConversionTimeZoneCode": StringAttribute, // Time zone code that was in use when the record was created."]),
      "versionNumber": NumberAttribute, // Version Number"]),
      "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the entity with respect to the base currency."]),
      "accountNumber": NumberAttribute, // Type an ID number or code for the customer to quickly search and identify the customer in system views."]),
      "affiliations": StringAttribute, // Different affiliations associated with the customer."]),
      "alumniOf": StringAttribute, // Alumni customer is a part of."]),
      "anniversary": StringAttribute, // Date of the customer's wedding or service anniversary for use in customer gift programs or other communications."]),
      "assistantName": StringAttribute, // Name of the customer's assistant."]),
      "awards": StringAttribute, // List of award(s) received by the customer."]),
      "billingAddress": StringAttribute, // Billing address of the customer."]),
      "birthDate": DateAttribute, // 
      "childrenNames": StringAttribute, // Customer's children name(s)."]),
      "churnScore": StringAttribute, // Churn score of the customer."]),
      "companyName": StringAttribute, // Company name of the customer."]),
      "countryOrRegion": StringAttribute, // 
      "culture": StringAttribute, // The culture of the customer."]),
      "currencyName": StringAttribute, // 
      "customerId": StringAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
      "customerIdType": StringAttribute, // The type of customer, either Account or Contact."]),
      "customerProfileId": StringAttribute, // Unique identifier for entity instances"]),
      "department": StringAttribute, // The department or business unit where the customer works in the parent company or business."]),
      "description": StringAttribute, // Additional information to describe the customer, such as an excerpt from the company's website."]),
      "donotBulkEmail": StringAttribute, // Select whether the customer accepts bulk email sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the customer can be added to marketing lists, but will be excluded from the email."]),
      "doNotBulkPostalMail": StringAttribute, // Select whether the customer accepts bulk postal mail sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the customer can be added to marketing lists, but will be excluded from the letters."]),
      "doNotContact": StringAttribute, // Select whether the customer allows direct contact from Microsoft Dynamics 365 Customer Insights. If Do Not Contact is selected, Microsoft Dynamics 365 Customer Insights will not contact the customer."]),
      "doNotEmail": StringAttribute, // Select whether the customer allows direct email sent from Microsoft Dynamics 365 Customer Insights. If Do Not Allow is selected, Microsoft Dynamics 365 Customer Insights will not send the email."]),
      "doNotFax": StringAttribute, // Select whether the customer allows faxes. If Do Not Allow is selected, the customer will be excluded from any fax activities distributed in marketing campaigns."]),
      "doNotPhone": StringAttribute, // Select whether the customer accepts phone calls. If Do Not Allow is selected, the customer will be excluded from any phone call activities distributed in marketing campaigns."]),
      "doNotPostalMail": StringAttribute, // Select whether the customer allows direct mail. If Do Not Allow is selected, the customer will be excluded from letter activities distributed in marketing campaigns."]),
      "educationCode": StringAttribute, // Highest level of education of the customer."]),
      "employeeIdentifier": StringAttribute, // The employee ID or number for the customer for reference in orders, service cases, or other communications with the customer's organization."]),
      "employmentStartDate": DateAttribute, // Employment start date of the customer for reference in with the customer's organization."]),
      "engagementScore": StringAttribute, // Engagement score of the customer."]),
      "facebookProfile": StringAttribute, // Facebook profile url of the customer."]),
      "familyStatus": StringAttribute, // 
      "familyStatus_display": StringAttribute, // 
      "fax": StringAttribute, // Fax number to send fax to the customer."]),
      "firstName": StringAttribute, // The customer's first name to make sure the customer is addressed correctly in sales calls, email, and marketing campaigns."]),
      "firstNamePronunciation": StringAttribute, // The customer's first name pronunciation to make sure the customer is pronounced correctly in sales calls, email, and marketing campaigns."]),
      "fraudScore": StringAttribute, // Calculated fraud score of the customer."]),
      "FTPSiteUrl": UrlAttribute, // The URL for the contact's FTP site to enable users to access data and share documents."]),
      "gamerTag": StringAttribute, // The gamertag from the Xbox world of the customer."]),
      "gender": StringAttribute, // The customer's gender to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns."]),
      "gender_display": StringAttribute, // 
      "hasChildren": StringAttribute, // Specify whether the customer has any children for reference in follow-up phone calls and other communications."]),
      "hasPets": StringAttribute, // Specify whether the customer has any pets for reference in follow-up phone calls and other communications."]),
      "hobbies": StringAttribute, // List down the hobbies of the customer."]),
      "homeOwnershipType": StringAttribute, // Specify the type of home owned by the customer."]),
      "homePhone": StringAttribute, // Home phone number for this customer."]),
      "industryCode": StringAttribute, // Select the customer's primary industry for use in marketing segmentation and demographic analysis."]),
      "industryCode_display": StringAttribute, // 
      "influencerScore": StringAttribute, // Calculated influencer score of the customer."]),
      "instagramHandle": StringAttribute, // Instagram handle of the customer."]),
      "interests": StringAttribute, // List down all the interests of this customer."]),
      "isGovernment": BooleanAttribute, // Specify if the customer belongs to or works for government."]),
      "isLead": BooleanAttribute, // 
      "isPublicSector": BooleanAttribute, // Specify if the customer works in public sector."]),
      "jobTitle": StringAttribute, // The job title of the customer to make sure the customer is addressed correctly in sales calls, email, and marketing campaigns."]),
      "knownSince": StringAttribute, // Specify the date since when the customer is known."]),
      "language": StringAttribute, // Specify the language(s) the customer can interact with."]),
      "lastName": StringAttribute, // The customer's last name to make sure the customer is addressed correctly in sales calls, email, and marketing campaigns."]),
      "lastNamePronunciation": StringAttribute, // The customer's last name pronunciation to make sure the customer is pronounced correctly in sales calls, email, and marketing campaigns."]),
      "lifeTimeValue": StringAttribute, // Calculated life time value of the customer."]),
      "linkedInProfile": StringAttribute, // LinkedIn profile url of the customer."]),
      "mailingAddress": StringAttribute, // Mailing address of the customer."]),
      "middleName": StringAttribute, // The customer's middle name or initial to make sure the customer is addressed correctly."]),
      "middleNamePronunciation": StringAttribute, // The customer's middle name or initial pronunciation to make sure the customer is pronounced correctly."]),
      "mobilePhone": StringAttribute, // The mobile phone number for the customer."]),
      "nameAlias": StringAttribute, // Alternate name of the customer that can be used as their alias."]),
      "namePrefix": StringAttribute, // Any prefix assigned to the customer's name."]),
      "nameSuffix": StringAttribute, // Any suffix assigned to the customer's name."]),
      "nationality": StringAttribute, // Nationality of the customer."]),
      "nickName": StringAttribute, // Nick name of the customer."]),
      "notes": StringAttribute, // Any additional information about the customer."]),
      "numberOfChildren": StringAttribute, // The number of children the customer has for reference in follow-up phone calls and other communications."]),
      "pinterestId": StringAttribute, // Pinterest identifier of the customer."]),
      "POBoxAddress": StringAttribute, // PO Box address of the customer."]),
      "postalCode": StringAttribute, // Postal code of the customer."]),
      "preferredCallTime": TimeAttribute, // 
      "preferredCallTime_display": StringAttribute, // 
      "preferredContactMethodCode": StringAttribute, // 
      "preferredContactMethodCode_display": StringAttribute, // 
      "preferredName": StringAttribute, // Preferred name of the customer to be used in communication."]),
      "primaryEmail": StringAttribute, // Primary email address of the customer."]),
      "primaryPhone": StringAttribute, // Primary contact phone number of the customer."]),
      "profileImage": StringAttribute, // Profile image url location of the customer."]),
      "profileSubtype": StringAttribute, // Profile subtype to define the customer."]),
      "profileType": StringAttribute, // Profile type to define the customer."]),
      "profileType_display": StringAttribute, // 
      "salutation": StringAttribute, // The salutation of the customer to make sure the customer is addressed correctly in sales calls, email messages, and marketing campaigns."]),
      "satisfactionScore": StringAttribute, // Calculated satisfaction score of the customer."]),
      "secondaryEmail": StringAttribute, // Secondary email address of the customer."]),
      "sentimentScore": StringAttribute, // Calculated sentiment score of the customer."]),
      "shippingAddress": StringAttribute, // Shipping address of the customer."]),
      "spouseName": StringAttribute, // The name of the customer's spouse or partner for reference during calls, events, or other communications with the contact."]),
      "systemOfOrigin": StringAttribute, // Origin source of the customer data."]),
      "tags": StringAttribute, // Any tags associated with the customer."]),
      "totalLifetimeSpendAmount": StringAttribute, // Value of the Total Lifetime Spend Amount in transaction currency."]),
      "totallifetimespendamount_Base": StringAttribute, // Value of the Total Lifetime Spend Amount in base currency."]),
      "totalTransactionCount": StringAttribute, // Value of the total number of transactions performed by the customer."]),
      "twitterHandle": StringAttribute, // Twitter account name / handle of the customer."]),
      "version": StringAttribute, // Denotes latest version of the customer profile for manual tracking."]),
      "websiteUrl": UrlAttribute, // Website url to identify the customer."]),
      "workAddress": StringAttribute, // Work address of the customer."]),
      "workPhone": StringAttribute, // Work phone number of the customer."]),
      "stateCode": StateCodeAttribute, // Status of the CustomerProfile"]),
      "stateCode_display": StringAttribute, // 
      "statusCode": StatusCodeAttribute, //Reason for the status of the CustomerProfile"]),
      "statusCode_display": StringAttribute, // 
      "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the entity."]),
    ]);
  }

  override string entityClass() { return "aplCustomerProfile"; }
  override string entityClasses() { return "aplCustomerProfiles"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

   // mixin(GetEntity!("campaign", "campaignId", "APLCustomerProfile"));
}
auto APLCustomerProfile() { return new DAPLCustomerProfile; } 
auto APLCustomerProfile(Json json) { return new DAPLCustomerProfile(json); } 

version(test_library) {
  unittest {
    
    assert(APLCustomerProfile);

  auto entity = APLCustomerProfile;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}