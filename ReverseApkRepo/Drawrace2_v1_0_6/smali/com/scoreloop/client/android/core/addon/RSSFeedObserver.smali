.class public interface abstract Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract feedDidFailToReceiveNextItem(Lcom/scoreloop/client/android/core/addon/RSSFeed;Ljava/lang/Exception;)V
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation
.end method

.method public abstract feedDidReceiveNextItem(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/addon/RSSItem;)V
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation
.end method

.method public abstract feedDidRequestNextItem(Lcom/scoreloop/client/android/core/addon/RSSFeed;)V
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation
.end method
