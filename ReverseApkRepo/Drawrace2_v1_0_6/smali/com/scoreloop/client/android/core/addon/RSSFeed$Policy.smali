.class public interface abstract Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/addon/RSSFeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Policy"
.end annotation


# virtual methods
.method public abstract collectItems(Lcom/scoreloop/client/android/core/addon/RSSFeed;Ljava/util/List;Ljava/util/List;)V
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/addon/RSSFeed;",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/addon/RSSItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/addon/RSSItem;",
            ">;)V"
        }
    .end annotation
.end method
