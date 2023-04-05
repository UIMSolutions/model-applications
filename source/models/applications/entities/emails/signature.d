module models.applications.entities.emails.email;

@safe:
import models.applications;

// Structured content that is part of the knowledge base.
class DEmailSignatureEntity : DEntity {
  mixin(EntityThis!("EmailSignatureEntity"));
  
  override void initialize(Json configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        CreatedOnBehalfByAttribute, // Shows who created the record on behalf of another user.
        ModifiedOnBehalfByAttribute, // Shows who last updated the record on behalf of another user.
        StateCodeAttribute, // Shows whether the knowledge base email is in draft, unapproved, or published status. Published emails are read-only and can't be edited unless they are unpublished.
        StatusCodeAttribute, // Select the email's status.
      ])
      .addValues([
        "kbEmailId": UUIDAttribute, // Shows the ID of the email.
        "kbEmailTemplateId": UUIDAttribute, // Choose the template that you want to use as a base for creating the new email.
        "organizationId": UUIDAttribute, // Unique identifier of the organization associated with the email.
        "subjectId": UUIDAttribute, // Choose the subject of the email to assist with email searches. You can configure subjects under Business Management in the Settings area.
        "emailXml": StringAttribute, // Shows the email content and formatting, stored as XML.
        "title": StringAttribute, // Type a subject or descriptive name for the email to assist with email searches.
        "number": StringAttribute, // Knowledge base email number.
        "content": StringAttribute, // Description of the content of the knowledge base email.
        "comments": StringAttribute, // Comments regarding the knowledge base email.
        "keyWords": StringAttribute, // Keywords to be used for searches in knowledge base emails.
        "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record.
        "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated.
        "languageCode": IntegerAttribute, // Select which language the email must be available in. This list is based on the list of language packs that are installed in your Server environment.
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency.
        "entityImageId": UUIDAttribute, // For internal use only.
      ])
      .registerPath("applications_emailsignatures")
      .routingPath("/applications/emailsignatures");
  }
}
mixin(EntityCalls!("EmailSignatureEntity"));

version(test_model_applications) { unittest {
}}
