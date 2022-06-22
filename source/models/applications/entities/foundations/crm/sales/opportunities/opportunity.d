module models.applications.foundations.crm.sales.opportunities.opportunity;

@safe:
import models.applications;

// Potential revenue-generating event, or sale to an account, which needs to be tracked through a sales process to completion.
class DAPLOpportunity : DOOPEntity {
  mixin(EntityThis!("APLOpportunity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([    
        ContactIdAttribute, // Unique identifier of the contact associated with the opportunity."]),
        OwnerIdAttribute, // Owner Id"]),
        StateCodeAttribute, // Shows whether the quote close activity is open, completed, or canceled. By default, quote close activities are completed.
        StatusCodeAttribute // Reason for the status of the quote close activity.
      ])
      .addValues([
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
        "opportunityId": UUIDAttribute, // Unique identifier of the opportunity."]),
        "emailAddress": StringAttribute, // The primary email address for the entity."]),
        "processId": UUIDAttribute, // Contains the id of the process associated with the entity."]),
        "stageId": UUIDAttribute, // Contains the id of the stage where the entity is located."]),
        "traversedPath": StringAttribute, // A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur."]),
        "actualCloseDate": DateAttribute, // Shows the date and time when the opportunity was closed or canceled."]),
        "actualValue": StringAttribute, // Type the actual revenue amount for the opportunity for reporting and analysis of estimated versus actual sales. Field defaults to the Est. Revenue value when an opportunity is won."]),
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "actualValueBase": StringAttribute, // Value of the Actual Revenue in base currency."]),
        "budgetAmount": StringAttribute, // Type a value between 0 and 1,000,000,000,000 to indicate the lead's potential available budget."]),
        "budgetAmountBase": StringAttribute, // Value of the Budget Amount in base currency."]),
        "budgetStatus": StringAttribute, // Select the likely budget status for the lead's company. This may help determine the lead rating or your sales approach."]),
        "budgetStatus_display": StringAttribute, // 
        "closeProbability": StringAttribute, // Type a number from 0 to 100 that represents the likelihood of closing the opportunity. This can aid the sales team in their efforts to convert the opportunity in a sale."]),
        "completeInternalReview": StringAttribute, // Select whether an internal review has been completed for this opportunity."]),
        "confirmInterest": StringAttribute, // Select whether the lead confirmed interest in your offerings. This helps in determining the lead quality and the probability of it turning into an opportunity."]),
        "currentSituation": StringAttribute, // Type notes about the company or organization associated with the opportunity."]),
        "customerId": UUIDAttribute, // The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities."]),
        "customerIdType": StringAttribute, // The type of customer, either Account or Contact."]),
        "customerNeed": StringAttribute, // Type some notes about the customer's requirements, to help the sales team identify products and services that could meet their requirements."]),
        "customerPainPoints": StringAttribute, // Type notes about the customer's pain points to help the sales team identify products and services that could address these pain points."]),
        "decisionMaker": StringAttribute, // Select whether your notes include information about who makes the purchase decisions at the lead's company."]),
        "developProposal": StringAttribute, // Select whether a proposal has been developed for the opportunity."]),
        "discountAmount": StringAttribute, // Type the discount amount for the opportunity if the customer is eligible for special savings."]),
        "discountAmountBase": StringAttribute, // Value of the Opportunity Discount Amount in base currency."]),
        "discountPercentage": PercentageAttribute, // Type the discount rate that should be applied to the Product Totals field to include additional savings for the customer in the opportunity."]),
        "estimatedCloseDate": DateAttribute, // Enter the expected closing date of the opportunity to help make accurate revenue forecasts."]),
        "estimatedValue": StringAttribute, // Type the estimated revenue amount to indicate the potential sale or value of the opportunity for revenue forecasting. This field can be either system-populated or editable based on the selection in the Revenue field."]),
        "estimatedValueBase": StringAttribute, // Value of the Est. Revenue in base currency."]),
        "evaluateFit": StringAttribute, // Select whether the fit between the lead's requirements and your offerings was evaluated."]),
        "resolveFeedback": StringAttribute, // Choose whether the proposal feedback has been captured and resolved for the opportunity."]),
        "fileDebrief": StringAttribute, // Choose whether the sales team has recorded detailed notes on the proposals and the account's responses."]),
        "completeFinalProposal": StringAttribute, // Select whether a final proposal has been completed for the opportunity."]),
        "finalDecisionDate": DateAttribute, // Enter the date and time when the final decision of the opportunity was made."]),
        "freightAmount": StringAttribute, // Type the cost of freight or shipping for the products included in the opportunity for use in calculating the Total Amount field."]),
        "freightAmountBase": StringAttribute, // Value of the Freight Amount in base currency."]),
        "initialCommunication": StringAttribute, // Choose whether someone from the sales team contacted this lead earlier."]),
        "initialCommunication_display": StringAttribute, // 
        "isRevenueSystemCalculated": BooleanAttribute, // Select whether the estimated revenue for the opportunity is calculated automatically based on the products entered or entered manually by a user."]),
        "need": StringAttribute, // Choose how high the level of need is for the lead's company."]),
        "need_display": StringAttribute, // 
        "opportunityRatingCode": StringAttribute, // Select the expected value or priority of the opportunity based on revenue, customer status, or closing probability."]),
        "opportunityRatingCode_display": StringAttribute, // 
        "parentAccountId": UUIDAttribute, // Choose an account to connect this opportunity to, so that the relationship is visible in reports and analytics, and to provide a quick link to additional details, such as financial information and activities."]),
        "parentContactId": ContactIdAttribute, // Choose a contact to connect this opportunity to, so that the relationship is visible in reports and analytics."]),
        "participatesInWorkflow": StringAttribute, // Information about whether the opportunity participates in workflow rules."]),
        "priceLevelId": UUIDAttribute, // Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices."]),
        "stepId": UUIDAttribute, // Shows the ID of the workflow step."]),
        "onHoldTime": TimeAttribute, // Shows the duration in minutes for which the opportunity was on hold."]),
        "lastOnHoldTime": TimeAttribute, // Contains the date time stamp of the last on hold time."]),
        "SLAId": UUIDAttribute, //Choose the service level agreement (SLA) that you want to apply to the opportunity record."]),
        "SLAInvokedId": UUIDAttribute, // Last SLA that was applied to this opportunity. This field is for internal use only."]),
        "timeSpentByMeOnEmailAndMeetings": StringAttribute, // Total time spent for emails (read and write) and meetings by me in relation to the opportunity record."]),
        "originatingLeadId": UUIDAttribute, // Choose the lead that the opportunity was created from for reporting and analytics. The field is read-only after the opportunity is created and defaults to the correct lead when an opportunity is created from a converted lead."]),
        "accountId": AccountIdAttribute, // Unique identifier of the account with which the opportunity is associated."]),
        "campaignId": UUIDAttribute, // Shows the campaign that the opportunity was created from. The ID is used for tracking the success of the campaign."]),
        "pricingErrorCode": StringAttribute, // Pricing error for the opportunity.
        "pricingErrorCode_display": StringAttribute, // 
        "priorityCode": StringAttribute, // Select the priority so that preferred customers or critical issues are handled quickly.
        "priorityCode_display": StringAttribute, // 
        "purchaseProcess": StringAttribute, // Choose whether an individual or a committee will be involved in the purchase process for the lead.
        "purchaseProcess_display": StringAttribute, // 
        "purchaseTimeFrame": StringAttribute, // Choose how long the lead will likely take to make the purchase.
        "purchaseTimeFrame_display": StringAttribute, // 
        "salesStage": StringAttribute, // Select the sales stage of this opportunity to aid the sales team in their efforts to win this opportunity.
        "salesStage_display": StringAttribute, // 
        "salesStageCode": StringAttribute, // Select the sales process stage for the opportunity to indicate the probability of closing the opportunity.
        "salesStageCode_display": StringAttribute, // 
        "presentProposal": StringAttribute, // Select whether a proposal for the opportunity has been presented to the account.
        "captureProposalFeedback": StringAttribute, // Choose whether the proposal feedback has been captured for the opportunity.
        "proposedSolution": StringAttribute, // Type notes about the proposed solution for the opportunity.
        "pursuitDecision": StringAttribute, // Select whether the decision about pursuing the opportunity has been made.
        "qualificationComments": StringAttribute, // Type comments about the qualification or scoring of the lead.
        "quoteComments": StringAttribute, // Type comments about the quotes associated with the opportunity.
        "sendThankYouNote": StringAttribute, // Select whether a thank you note has been sent to the account for considering the proposal.
        "scheduleFollowupProspect": StringAttribute, // Enter the date and time of the prospecting follow-up meeting with the lead.
        "scheduleFollowUpQualify": StringAttribute, // Enter the date and time of the qualifying follow-up meeting with the lead.
        "scheduleProposalMeeting": StringAttribute, // Enter the date and time of the proposal meeting for the opportunity.
        "stateCode": StringAttribute, // Shows whether the opportunity is open, won, or lost. Won and lost opportunities are read-only and can't be edited until they are reactivated.
        "stateCode_display": StringAttribute, // 
        "statusCode": StringAttribute, // Select the opportunity's status.
        "statusCode_display": StringAttribute, // 
        "stepName": StringAttribute, // Shows the current phase in the sales pipeline for the opportunity. This is updated by a workflow.
        "timeLine": StringAttribute, // Select when the opportunity is likely to be closed.
        "timeLine_display": StringAttribute, // 
        "totalAmount": StringAttribute, // Shows the total amount due, calculated as the sum of the products, discounts, freight, and taxes for the opportunity.
        "totalAmountBase": StringAttribute, // Value of the Total Amount in base currency.
        "totalAmountLessFreight": StringAttribute, // Shows the total product amount for the opportunity, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount of the opportunity.
        "totalAmountLessFreightBase": StringAttribute, // Value of the Total Pre-Freight Amount in base currency.
        "totalDiscountAmount": StringAttribute, // Shows the total discount amount, based on the discount price and rate entered on the opportunity.
        "totalDiscountAmountBase": StringAttribute, // Value of the Total Discount Amount in base currency.
        "totalLineItemAmount": StringAttribute, // Shows the sum of all existing and write-in products included on the opportunity, based on the specified price list and quantities.
        "totalLineItemAmountBase": StringAttribute, // Value of the Total Detail Amount in base currency.
        "totalLineItemDiscountAmount": StringAttribute, // Shows the total of the Manual Discount amounts specified on all products included in the opportunity. This value is reflected in the Total Detail Amount field on the opportunity and is added to any discount amount or rate specified on the opportunity.
        "totalLineItemDiscountAmountBase": StringAttribute, // Value of the Total Line Item Discount Amount in base currency.
        "totalTax": StringAttribute, // Shows the total of the Tax amounts specified on all products included in the opportunity, included in the Total Amount field calculation for the opportunity.
        "totalTaxBase": StringAttribute, // Value of the Total Tax in base currency.
        "identifyCustomerContacts": StringAttribute, // Select whether the customer contacts for this opportunity have been identified.
        "identifyCompetitors": StringAttribute, // Select whether information about competitors is included.
        "identifyPursuitTeam": StringAttribute, // Choose whether you have recorded who will pursue the opportunity.
        "presentFinalProposal": StringAttribute, // Select whether the final proposal has been presented to the account.
      ])
      .registerPath("applications_faxes");
  }
}
mixin(EntityCalls!("APLOpportunity"));

version(test_library) {
  unittest {
    
    assert(APLOpportunity);
  
  auto entity = APLOpportunity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}