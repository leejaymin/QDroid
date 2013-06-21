.class final Lcom/scoreloop/client/android/core/addon/RSSFeed$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/scoreloop/client/android/core/addon/RSSItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/addon/RSSFeed$5;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/addon/RSSFeed$5;)V
    .locals 0
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5$1;->a:Lcom/scoreloop/client/android/core/addon/RSSFeed$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5$1;->a:Lcom/scoreloop/client/android/core/addon/RSSFeed$5;

    iget-object v1, v1, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
