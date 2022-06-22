module models.applications.articles.article;

@safe:
import models.applications;

static this() {
  createEntities[DAPLArticle.namespace] = (Json json) => APLArticle(json); 
  createEntities["aplArticle"] = (Json json) => APLArticle(json); 
}

/* static this() {
  jsonToEntity["applications.articles.article"] = (Json json) => APLArticle(json); }
version(test_library) {
  unittest {
    
    auto entity = jsonToEntity["applications.articles.article"](Json.emptyObject); }} */

// Structured content that is part of the knowledge base.
class DAPLArticle : DOOPEntity {
  mixin(EntityThis!("APLArticle"));
  
  override void initialize() {
    super.initialize;

    this
        .addValues([
          "kbArticleId": UUIDAttribute, // Shows the ID of the article."]),
          "kbArticleTemplateId": UUIDAttribute, // Choose the template that you want to use as a base for creating the new article."]),
          "organizationId": UUIDAttribute, // Unique identifier of the organization associated with the article."]),
          "subjectId": UUIDAttribute, // Choose the subject of the article to assist with article searches. You can configure subjects under Business Management in the Settings area."]),
          "articleXml": StringAttribute, // Shows the article content and formatting, stored as XML."]),
          "title": StringAttribute, // Type a subject or descriptive name for the article to assist with article searches."]),
          "number": StringAttribute, // Knowledge base article number."]),
          "content": StringAttribute, // Description of the content of the knowledge base article."]),
          "comments": StringAttribute, // Comments regarding the knowledge base article."]),
          "stateCode": IntegerAttribute, // Shows whether the knowledge base article is in draft, unapproved, or published status. Published articles are read-only and can't be edited unless they are unpublished."]),
          "stateCode_display": StringAttribute, // 
          "statusCode": IntegerAttribute, // Select the article's status."]),
          "statusCode_display": StringAttribute, // 
          "keyWords": StringAttribute, // Keywords to be used for searches in knowledge base articles."]),
          "importSequenceNumber": NumberAttribute, // Unique identifier of the data import or data migration that created this record."]),
          "overriddenCreatedOn": TimestampAttribute, // Date and time that the record was migrated."]),
          "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the article."]),
          "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who last modified the kbarticle."]),
          "languageCode": IntegerAttribute, // Select which language the article must be available in. This list is based on the list of language packs that are installed in your Microsoft Dynamics 365 environment."]),
          "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
          "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
          "entityImageId": UUIDAttribute, // For internal use only."]),
      ])
      .registerPath("applications_articles");
  }
}
mixin(EntityCalls!("APLArticle"));

version(test_library) {
  unittest {
    
    assert(APLArticle);
  
  auto entity = APLArticle;
  
/*   // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}