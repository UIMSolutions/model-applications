module models.applications.foundations.crm.sales.opportunities.close;

@safe:
import models.applications;

// Activity that is created automatically when an opportunity is closed, containing information such as the description of the closing and actual revenue.
class DAPLOpportunityClose : DOOPEntity {
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
      "activityId": UUIDAttribute, // Unique identifier of the activity."]),
      "activityTypeCode": StringAttribute, // Type of activity."]),
      "isBilled": BooleanAttribute, // Information regarding whether the fax activity was billed as part of resolving a case."]),
      "isRegularActivity": BooleanAttribute, // Information regarding whether the activity is a regular activity type or event type."]),
      "isWorkflowCreated": BooleanAttribute, // Information regarding whether the activity was created from a workflow rule."]),
      "priorityCode": StringAttribute, // Priority of the activity."]),
      "priorityCode_display": StringAttribute, // 
      "regardingObjectId": UUIDAttribute, // Unique identifier of the object with which the activity is associated."]),
      "sortDate": DateAttribute, // Shows the date and time by which the activities are sorted."]),
      "isMapiPrivate": BooleanAttribute, // For internal use only."]),
      "seriesId": UUIDAttribute, // Uniqueidentifier specifying the id of recurring series of an instance."]),
      "sentOn": TimestampAttribute, // Date and time when the activity was sent."]),
      "senderMailboxId": UUIDAttribute, // Unique identifier of the mailbox associated with the sender of the email message."]),
      "deliveryLastAttemptedOn": TimestampAttribute, // Date and time when the delivery of the activity was last attempted."]),
      "exchangeItemId": UUIDAttribute, // The message id of activity which is returned from Exchange Server."]),
      "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
      "processId": UUIDAttribute, // Unique identifier of the Process."]),
      "stageId": UUIDAttribute, // Unique identifier of the Stage."]),
      "SLAId": UUIDAttribute, //Choose the service level agreement (SLA) that you want to apply to the case record."]),
      "SLAInvokedId": UUIDAttribute, // Last SLA that was applied to this case. This field is for internal use only."]),
      "onHoldTime": TimeAttribute, // Shows how long, in minutes, that the record was on hold."]),
      "lastOnHoldTime": TimeAttribute, // Contains the date and time stamp of the last on hold time."]),
      "serviceId": UUIDAttribute, // Unique identifier of the service with which the opportunity close activity is associated."]),
      "competitorId": UUIDAttribute, // Unique identifier of the competitor with which the opportunity close activity is associated."]),
      "opportunityId": UUIDAttribute, // Unique identifier of the opportunity closed."]),
    ])
    .addValues([
      StateCodeAttribute, // Shows whether the opportunity close activity is open, completed, or canceled. By default, opportunity close activities are completed unless the opportunity is reactivated, which updates them to canceled.
      StatusCodeAttribute // Reason for the status of the opportunity close activity.
    ])
    .addValues([
      "actualRevenue": StringAttribute, // Actual revenue generated for the opportunity.
      "actualRevenueBase": StringAttribute, // Value of the Actual Revenue in base currency.
      "exchangeWebLink": StringAttribute, // Shows the web link of Activity of type email."]),
      "BCC": StringAttribute, // Enter the recipients that are included in the letter distribution, but are not displayed to other recipients."]),
      "CC": StringAttribute, // Enter the recipients that should be copied on the letter."]),
      "postponeActivityProcessingUntil": StringAttribute, // For internal use only."]),
      "organizer": StringAttribute, // The user who is in charge of coordinating or leading the activity."]),
      "requiredAttendees": StringAttribute, // Enter the account, contact, lead, user, or other equipment resources that are required to attend the recurring appointment."]),
      "optionalAttendees": StringAttribute, // Enter the account, contact, lead, user, or other equipment resources that are not needed at the recurring appointment, but can optionally attend."]),
      "customers": StringAttribute, // Customer with which the activity is associated."]),
      "partners": StringAttribute, // Outsource vendor with which activity is associated."]),
      "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
      "traversedPath": StringAttribute, // For internal use only."]),
      "deliveryPriorityCode": StringAttribute, // Priority of delivery of the activity to the email server.
      "deliveryPriorityCode_display": StringAttribute, // 
      "regardingObjectTypeCode": StringAttribute, // The name of the entity linked by regardingObjectId
      "scheduledEnd": StringAttribute, // Scheduled end time of the activity.
      "scheduledStart": StringAttribute, // Scheduled start time of the activity.
      "resources": StringAttribute, // Users or facility/equipment that are required for the activity.
      "community": StringAttribute, // Shows how contact about the activity originated, such as from Twitter or Facebook. This field is read-only.
      "community_display": StringAttribute, // 
      "leftVoiceMail": StringAttribute, // Left the voice mail
      "subject": StringAttribute, // Subject associated with the activity.
      "scheduledDurationMinutes": StringAttribute, // Scheduled duration of the activity, specified in minutes.
      "actualDurationMinutes": StringAttribute, // Actual duration of the activity in minutes.
      "actualEnd": StringAttribute, // Actual end time of the activity.
      "actualStart": StringAttribute, // Actual start time of the activity.
      "category": StringAttribute, // Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function.
      "subcategory": StringAttribute, // Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function.
      "activityAdditionalParams": StringAttribute, // Additional information provided by the external application as JSON. For internal use only.
      "to": StringAttribute, // Person who is the receiver of the activity.
      "from": StringAttribute, // Person who the activity is from.
      "instanceTypeCode": StringAttribute, // Type of instance of a recurring series.
      "instanceTypeCode_display": StringAttribute, // 
      "opportunityIdType": StringAttribute, // The name of the entity linked by opportunityId
      "createdByExternalParty": StringAttribute, // Shows the external party who created the record.
      "modifiedByExternalParty": StringAttribute, // Shows the external party who modified the record.
    ]);     
  }

  override string entityClass() { return "aplOpportunityClose"; }
  override string entityClasses() { return "aplOpportunityCloses"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("activity", "activityId", "APLActivity"));
}
auto APLOpportunityClose() { return new DAPLOpportunityClose; } 
auto APLOpportunityClose(Json json) { return new DAPLOpportunityClose(json); } 

version(test_library) {
  unittest {
    
    assert(APLOpportunityClose);
  
  auto entity = APLOpportunityClose;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}