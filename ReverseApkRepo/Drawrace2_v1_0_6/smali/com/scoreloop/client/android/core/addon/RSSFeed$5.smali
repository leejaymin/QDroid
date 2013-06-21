.class final Lcom/scoreloop/client/android/core/addon/RSSFeed$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/addon/RSSFeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/scoreloop/client/android/core/model/Continuation;

.field final synthetic b:Lcom/scoreloop/client/android/core/addon/RSSFeed;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 700
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 702
    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :try_start_1
    iget-object v2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-static {v2}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->c(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 704
    new-instance v0, Lcom/scoreloop/client/android/core/addon/RSSFeed$RequestNextItemCanceledException;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed$RequestNextItemCanceledException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 721
    :catch_0
    move-exception v0

    .line 724
    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->f(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Lcom/scoreloop/client/android/core/util/MainThreadHandler;

    move-result-object v1

    new-instance v2, Lcom/scoreloop/client/android/core/addon/RSSFeed$5$2;

    invoke-direct {v2, p0, v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed$5$2;-><init>(Lcom/scoreloop/client/android/core/addon/RSSFeed$5;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/util/MainThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 737
    :goto_0
    return-void

    .line 706
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-static {v4}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->d(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    .line 707
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 708
    :try_start_4
    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->e(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v1

    const-string v2, "Accept"

    const-string v3, "application/rss+xml"

    invoke-interface {v1, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-static {v2}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->e(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    new-instance v3, Lcom/scoreloop/client/android/core/addon/RSSFeed$5$1;

    invoke-direct {v3, p0}, Lcom/scoreloop/client/android/core/addon/RSSFeed$5$1;-><init>(Lcom/scoreloop/client/android/core/addon/RSSFeed$5;)V

    invoke-interface {v0, v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-static {v1, v0, v2}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Ljava/util/List;Lcom/scoreloop/client/android/core/model/Continuation;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method
