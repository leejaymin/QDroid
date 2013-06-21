.class final Lcom/scoreloop/client/android/core/addon/RSSFeed$3;
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
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/scoreloop/client/android/core/model/Continuation;

.field private synthetic c:Lcom/scoreloop/client/android/core/addon/RSSFeed;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/addon/RSSFeed;Ljava/util/List;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$3;->c:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$3;->b:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 631
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$3;->c:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$3;->a:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Ljava/util/List;)Ljava/util/List;

    .line 634
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 635
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/addon/RSSItem;

    .line 636
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/addon/RSSItem;->hasPersistentReadFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 637
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$3;->c:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->b(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$3;->a:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/scoreloop/client/android/core/addon/RSSItem;->resetPersistentReadFlags(Landroid/content/Context;Ljava/util/List;)V

    .line 641
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/addon/RSSItem;

    .line 642
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/core/addon/RSSItem;->setHasPersistentReadFlag(Z)V

    goto :goto_1

    .line 647
    :cond_2
    iget-object v2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$3;->c:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    monitor-enter v2

    .line 648
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$3;->c:Lcom/scoreloop/client/android/core/addon/RSSFeed;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->c(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 649
    new-instance v0, Lcom/scoreloop/client/android/core/addon/RSSFeed$RequestNextItemCanceledException;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed$RequestNextItemCanceledException;-><init>()V

    .line 651
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    if-eqz v0, :cond_3

    .line 653
    iget-object v2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$3;->b:Lcom/scoreloop/client/android/core/model/Continuation;

    invoke-interface {v2, v1, v0}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 657
    :goto_3
    return-void

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 655
    :cond_3
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$3;->b:Lcom/scoreloop/client/android/core/model/Continuation;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$3;->a:Ljava/util/List;

    invoke-interface {v0, v2, v1}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
