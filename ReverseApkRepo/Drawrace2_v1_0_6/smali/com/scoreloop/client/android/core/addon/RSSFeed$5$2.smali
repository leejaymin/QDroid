.class final Lcom/scoreloop/client/android/core/addon/RSSFeed$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Exception;

.field private synthetic b:Lcom/scoreloop/client/android/core/addon/RSSFeed$5;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/addon/RSSFeed$5;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 724
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5$2;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed$5;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5$2;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 727
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5$2;->a:Ljava/lang/Exception;

    .line 728
    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5$2;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed$5;

    iget-object v1, v1, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    monitor-enter v1

    .line 729
    :try_start_0
    iget-object v2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5$2;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed$5;

    iget-object v2, v2, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-static {v2}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->c(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    new-instance v0, Lcom/scoreloop/client/android/core/addon/RSSFeed$RequestNextItemCanceledException;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed$RequestNextItemCanceledException;-><init>()V

    .line 732
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$5$2;->b:Lcom/scoreloop/client/android/core/addon/RSSFeed$5;

    iget-object v1, v1, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;->a:Lcom/scoreloop/client/android/core/model/Continuation;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 734
    return-void

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
