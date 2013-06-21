.class public final Lcom/scoreloop/client/android/core/addon/RSSFeed$ChainedPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/addon/RSSFeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChainedPolicy"
.end annotation


# instance fields
.field private a:[Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;


# direct methods
.method public varargs constructor <init>([Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$ChainedPolicy;->a:[Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;

    .line 99
    return-void
.end method


# virtual methods
.method public final collectItems(Lcom/scoreloop/client/android/core/addon/RSSFeed;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
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

    .prologue
    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$ChainedPolicy;->a:[Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 107
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 108
    iget-object v3, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed$ChainedPolicy;->a:[Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;

    aget-object v3, v3, v0

    invoke-interface {v3, p1, v1, v2}, Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;->collectItems(Lcom/scoreloop/client/android/core/addon/RSSFeed;Ljava/util/List;Ljava/util/List;)V

    .line 109
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 110
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    return-void
.end method
