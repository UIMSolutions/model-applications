module models.applications.foundations.crm.sales.orders.close;

@safe:
import models.applications;

// Activity generated automatically when an order is closed.
class DAPLOrderClose : DOOPEntity {
  mixin(EntityThis!("APLOrderClose"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([ // fix values
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Shows whether the order close activity is open, completed, or canceled. By default, order close activities are completed.
        StatusCodeAttribute // Reason for the status of the order close activity.
      ])
      .addValues([ // individual values
        "createdOnBehalfBy": UserIdAttribute, // Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UserIdAttribute, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, // Sequence number of the import that created this record."]),
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
        "regardingObjectTypeCode": StringAttribute, // The name of the entity linked by regardingObjectId"]),
        "scheduledEnd": StringAttribute, // Scheduled end time of the activity."]),
        "scheduledStart": StringAttribute, // Scheduled start time of the activity."]),
        "sortDate": DateAttribute, // Shows the date and time by which the activities are sorted."]),
        "isMapiPrivate": BooleanAttribute, // For internal use only."]),
        "organizer": StringAttribute, // The user who is in charge of coordinating or leading the activity."]),
        "requiredAttendees": StringAttribute, // Enter the account, contact, lead, user, or other equipment resources that are required to attend the recurring appointment."]),
        "optionalAttendees": StringAttribute, // Enter the account, contact, lead, user, or other equipment resources that are not needed at the recurring appointment, but can optionally attend."]),
        "seriesId": UUIDAttribute, // Uniqueidentifier specifying the id of recurring series of an instance."]),
        "BCC": StringAttribute, // Enter the recipients that are included in the letter distribution, but are not displayed to other recipients."]),
        "CC": StringAttribute, // Enter the recipients that should be copied on the letter."]),
        "sentOn": TimestampAttribute, // Date and time when the activity was sent."]),
        "senderMailboxId": UUIDAttribute, // Unique identifier of the mailbox associated with the sender of the email message."]),
        "deliveryLastAttemptedOn": TimestampAttribute, // Date and time when the delivery of the activity was last attempted."]),
        "exchangeItemId": UUIDAttribute, // The message id of activity which is returned from Exchange Server."]),
        "exchangeWebLink": StringAttribute, // Shows the web link of Activity of type email."]),
        "postponeActivityProcessingUntil": StringAttribute, // For internal use only."]),
        "customers": StringAttribute, // Customer with which the activity is associated."]),
        "partners": StringAttribute, // Outsource vendor with which activity is associated."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Unique identifier of the currency associated with the activitypointer."]),
        "exchangeRate": StringAttribute, // Exchange rate for the currency associated with the activitypointer with respect to the base currency."]),
        "traversedPath": StringAttribute, // For internal use only."]),
        "processId": UUIDAttribute, // Unique identifier of the Process."]),
        "stageId": UUIDAttribute, // Unique identifier of the Stage."]),
        "SLAId": UUIDAttribute, //Choose the service level agreement (SLA) that you want to apply to the case record."]),
        "SLAInvokedId": UUIDAttribute, // Last SLA that was applied to this case. This field is for internal use only."]),
        "onHoldTime": TimeAttribute, // Shows how long, in minutes, that the record was on hold."]),
        "lastOnHoldTime": TimeAttribute, // Contains the date and time stamp of the last on hold time."]),
        "serviceId": UUIDAttribute, // Unique identifier of the service with which the order close activity is associated."]),
        "orderNumber": NumberAttribute, // Order number."]),
        "revision": StringAttribute, // Order revision number."]),
        "salesOrderId": UUIDAttribute, // Unique identifier of the order with which the order close activity is associated."]),
        "salesOrderIdType": StringAttribute, // The name of the entity linked by salesOrderId"]),
        "createdByExternalParty": StringAttribute, // Shows the external party who created the record."]),
        "modifiedByExternalParty": StringAttribute, // Shows the external party who modified the record."]),
        "subject": StringAttribute, // Subject associated with the activity."]),
        "scheduledDurationMinutes": StringAttribute, // Scheduled duration of the activity, specified in minutes."]),
        "actualDurationMinutes": StringAttribute, // Actual duration of the activity in minutes."]),
        "actualEnd": StringAttribute, // Actual end time of the activity."]),
        "actualStart": StringAttribute, // Actual start time of the activity."]),
        "category": StringAttribute, // Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function."]),
        "subcategory": StringAttribute, // Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function."]),
        "activityAdditionalParams": StringAttribute, // Additional information provided by the external application as JSON. For internal use only."]),
        "to": StringAttribute, // Person who is the receiver of the activity."]),
        "from": StringAttribute, // Person who the activity is from."]),
        "instanceTypeCode": StringAttribute, // Type of instance of a recurring series."]),
        "instanceTypeCode_display": StringAttribute, // 
        "deliveryPriorityCode": StringAttribute, // Priority of delivery of the activity to the email server."]),
        "deliveryPriorityCode_display": StringAttribute, // 
        "resources": StringAttribute, // Users or facility/equipment that are required for the activity."]),
        "community": StringAttribute, // Shows how contact about the activity originated, such as from Twitter or Facebook. This field is read-only."]),
        "community_display": StringAttribute, // 
        "leftVoiceMail": StringAttribute, // Left the voice mail"]),
      ])
      .registerPath("applications_ordercloses");
  }
}
mixin(EntityCalls!("APLOrderClose"));

version(test_library) {
  unittest {
    
    assert(APLOrderClose);
  
  auto entity = APLOrderClose;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}