module models.applications.articles.comment;

@safe:
import models.applications;

// Comment on a knowledge base article.
class DArticleCommentEntity : DOOPEntity {
  mixin(EntityThis!("ArticleCommentEntity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "kbArticleCommentId": UUIDAttribute, // Unique identifier of the knowledge base article comment.
        "kbArticleId": UUIDAttribute, // Unique identifier of the knowledge base article to which the comment applies.
        "title": StringAttribute, // Title of the knowledge base article comment.
        "commentText": StringAttribute, // Comment text for the knowledge base article.
        "organizationId": UUIDAttribute, // Unique identifier of the organization with which the article comment is associated.
        "createdOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who created the kbarticlecomment.
        "modifiedOnBehalfBy": UserIdAttribute, // Unique identifier of the delegate user who last modified the kbarticlecomment.
      ])
      .registerPath("applications_articles.comments");
  }
}
mixin(EntityCalls!("ArticleCommentEntity"));

version(test_library) {
  unittest {    
    assert(ArticleCommentEntity);
  
    auto entity = ArticleCommentEntity;
  }
}
