.class final Lcom/scoreloop/client/android/core/addon/RSSFeed$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/addon/RSSFeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed$c;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collectItems(Lcom/scoreloop/client/android/core/addon/RSSFeed;Ljava/util/List;Ljava/util/List;)V
    .locals 3
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
    .line 239
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/addon/RSSItem;

    .line 240
    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->isUnread(Lcom/scoreloop/client/android/core/addon/RSSItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_1
    return-void
.end method