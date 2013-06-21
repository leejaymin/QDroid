.class public Lcom/scoreloop/client/android/core/controller/AchievementsController;
.super Lcom/scoreloop/client/android/core/controller/RequestController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/AchievementsController$a;
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Achievement;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/scoreloop/client/android/core/model/AchievementsStore;

.field private d:Lcom/scoreloop/client/android/core/model/AwardList;

.field private e:Z

.field private f:Lcom/scoreloop/client/android/core/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/AchievementsController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 2
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/RequestController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    .line 122
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->b:Ljava/util/List;

    .line 123
    iput-object v1, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->c:Lcom/scoreloop/client/android/core/model/AchievementsStore;

    .line 124
    iput-object v1, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->d:Lcom/scoreloop/client/android/core/model/AwardList;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->e:Z

    .line 127
    iput-object v1, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->f:Lcom/scoreloop/client/android/core/model/User;

    .line 159
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->g()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->f:Lcom/scoreloop/client/android/core/model/User;

    .line 160
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Achievement;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->b()V

    .line 220
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAwardList()Lcom/scoreloop/client/android/core/model/AwardList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/model/AwardList;->getAwardWithIdentifier(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v2

    .line 223
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAchievements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Achievement;

    .line 224
    if-nez p2, :cond_2

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 226
    :goto_0
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/scoreloop/client/android/core/model/Award;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 230
    :goto_1
    return-object v0

    .line 224
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 230
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Achievement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 427
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Achievement;

    .line 428
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v4

    .line 429
    invoke-virtual {v4}, Lcom/scoreloop/client/android/core/model/Award;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-direct {p0, v1, v2}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Achievement;

    move-result-object v2

    .line 433
    if-nez v2, :cond_2

    .line 435
    invoke-direct {p0, v1, v6}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Achievement;

    move-result-object v1

    .line 436
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Achievement;->needsSubmit()Z

    move-result v5

    if-nez v5, :cond_2

    .line 440
    :goto_1
    if-nez v1, :cond_0

    .line 442
    new-instance v1, Lcom/scoreloop/client/android/core/model/Achievement;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->a()Lcom/scoreloop/client/android/core/model/AchievementsStore;

    move-result-object v2

    invoke-direct {v1, v4, v6, v2}, Lcom/scoreloop/client/android/core/model/Achievement;-><init>(Lcom/scoreloop/client/android/core/model/Award;Lorg/json/JSONObject;Lcom/scoreloop/client/android/core/model/AchievementsStore;)V

    .line 444
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/scoreloop/client/android/core/model/Achievement;->a(Lcom/scoreloop/client/android/core/model/Achievement;Z)V

    goto :goto_0

    .line 451
    :cond_1
    :try_start_0
    new-instance v0, Lcom/scoreloop/client/android/core/controller/AchievementsController$4;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController$4;-><init>(Lcom/scoreloop/client/android/core/controller/AchievementsController;)V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController$4;->c()Lcom/scoreloop/client/android/core/util/DiskAsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_2
    return-void

    .line 460
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Achievement;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Award;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 164
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Achievement;

    .line 165
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Award;

    .line 168
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    new-instance v3, Lcom/scoreloop/client/android/core/model/Achievement;

    invoke-direct {v3, v0}, Lcom/scoreloop/client/android/core/model/Achievement;-><init>(Lcom/scoreloop/client/android/core/model/Award;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/AchievementsController;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->e:Z

    return v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAwardList()Lcom/scoreloop/client/android/core/model/AwardList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no SLAwards.bundle found in the assets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/controller/AchievementsController;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    new-instance v0, Lcom/scoreloop/client/android/core/controller/AchievementsController$3;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController$3;-><init>(Lcom/scoreloop/client/android/core/controller/AchievementsController;)V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController$3;->c()Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Achievement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 506
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->b:Ljava/util/List;

    .line 507
    return-void
.end method

.method static synthetic c(Lcom/scoreloop/client/android/core/controller/AchievementsController;)V
    .locals 6
    .parameter

    .prologue
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAwardList()Lcom/scoreloop/client/android/core/model/AwardList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->a()Lcom/scoreloop/client/android/core/model/AchievementsStore;

    move-result-object v2

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/AwardList;->getAwards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Award;

    :try_start_0
    invoke-interface {v2, v0}, Lcom/scoreloop/client/android/core/model/AchievementsStore;->a(Lcom/scoreloop/client/android/core/model/Award;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t create achievement from local store for award: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v4, Lcom/scoreloop/client/android/core/model/Achievement;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v2}, Lcom/scoreloop/client/android/core/model/Achievement;-><init>(Lcom/scoreloop/client/android/core/model/Award;Lorg/json/JSONObject;Lcom/scoreloop/client/android/core/model/AchievementsStore;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic d(Lcom/scoreloop/client/android/core/controller/AchievementsController;)V
    .locals 5
    .parameter

    .prologue
    .line 55
    new-instance v0, Lcom/scoreloop/client/android/core/controller/AchievementsController$a;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->e()Lcom/scoreloop/client/android/core/controller/RequestController$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAwardList()Lcom/scoreloop/client/android/core/model/AwardList;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/AchievementsController$a;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/User;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/AwardList;)V

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/AchievementsController$a;->a(J)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    return-void
.end method

.method public static getLocalAwardList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/AwardList;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/UsedByTests;
    .end annotation

    .prologue
    .line 110
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you have to provide context and a game"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    new-instance v0, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v0, p1, p2}, Lcom/scoreloop/client/android/core/model/BundleAwardListBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/AwardList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()Lcom/scoreloop/client/android/core/model/AchievementsStore;
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->c:Lcom/scoreloop/client/android/core/model/AchievementsStore;

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->b()Landroid/content/Context;

    move-result-object v0

    .line 248
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 250
    new-instance v2, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAwardList()Lcom/scoreloop/client/android/core/model/AwardList;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/scoreloop/client/android/core/model/DbAchievementsStore;-><init>(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/AwardList;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->c:Lcom/scoreloop/client/android/core/model/AchievementsStore;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->c:Lcom/scoreloop/client/android/core/model/AchievementsStore;

    return-object v0
.end method

.method final a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 468
    :try_start_0
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 469
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid response status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 472
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/server/Response;->e()Lorg/json/JSONObject;

    move-result-object v0

    .line 473
    const-string v1, "achievements"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 475
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAwardList()Lcom/scoreloop/client/android/core/model/AwardList;

    move-result-object v2

    .line 477
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/AwardList;->getAwards()Ljava/util/List;

    move-result-object v3

    .line 478
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 479
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 480
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_2

    .line 481
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    sget-object v7, Lcom/scoreloop/client/android/core/model/Achievement;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 482
    new-instance v7, Lcom/scoreloop/client/android/core/model/Achievement;

    invoke-direct {v7, v2, v6}, Lcom/scoreloop/client/android/core/model/Achievement;-><init>(Lcom/scoreloop/client/android/core/model/Award$a;Lorg/json/JSONObject;)V

    .line 484
    invoke-virtual {v7}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 485
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    :cond_2
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Session;->isOwnedByUser(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 493
    invoke-direct {p0, v4}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->a(Ljava/util/List;)V

    .line 499
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 495
    :cond_3
    invoke-static {v4, v3}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->a(Ljava/util/List;Ljava/util/List;)V

    .line 496
    invoke-direct {p0, v4}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->b(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public checkHadInitialSync(Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Lcom/scoreloop/client/android/core/controller/AchievementsController$1;

    invoke-direct {v0, p0, p1}, Lcom/scoreloop/client/android/core/controller/AchievementsController$1;-><init>(Lcom/scoreloop/client/android/core/controller/AchievementsController;Lcom/scoreloop/client/android/core/model/Continuation;)V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController$1;->c()Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    .line 335
    return-void
.end method

.method public countAchievedAwards()I
    .locals 4
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 189
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 190
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAchievements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Achievement;

    .line 191
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->isAchieved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getAchievementForAwardIdentifier(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Achievement;
    .locals 4
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->b()V

    .line 207
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAwardList()Lcom/scoreloop/client/android/core/model/AwardList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/model/AwardList;->getAwardWithIdentifier(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v1

    .line 210
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getAchievements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Achievement;

    .line 211
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/scoreloop/client/android/core/model/Award;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAchievements()Ljava/util/List;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Achievement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->b:Ljava/util/List;

    return-object v0
.end method

.method public getAwardList()Lcom/scoreloop/client/android/core/model/AwardList;
    .locals 3
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->d:Lcom/scoreloop/client/android/core/model/AwardList;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->d:Lcom/scoreloop/client/android/core/model/AwardList;

    .line 283
    :goto_0
    return-object v0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->d()Lcom/scoreloop/client/android/core/model/AwardList;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->d:Lcom/scoreloop/client/android/core/model/AwardList;

    .line 275
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->d:Lcom/scoreloop/client/android/core/model/AwardList;

    if-nez v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->f()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getLocalAwardList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/AwardList;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->d:Lcom/scoreloop/client/android/core/model/AwardList;

    .line 279
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->d:Lcom/scoreloop/client/android/core/model/AwardList;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Game;->a(Lcom/scoreloop/client/android/core/model/AwardList;)V

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->d:Lcom/scoreloop/client/android/core/model/AwardList;

    goto :goto_0
.end method

.method public getForceInitialSync()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_2_0;
    .end annotation

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->e:Z

    return v0
.end method

.method public getUser()Lcom/scoreloop/client/android/core/model/User;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->f:Lcom/scoreloop/client/android/core/model/User;

    return-object v0
.end method

.method public loadAchievements()V
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->b()V

    .line 351
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->a_()V

    .line 353
    new-instance v0, Lcom/scoreloop/client/android/core/controller/AchievementsController$2;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/AchievementsController$2;-><init>(Lcom/scoreloop/client/android/core/controller/AchievementsController;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/controller/AchievementsController;->checkHadInitialSync(Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 384
    return-void
.end method

.method public setForceInitialSync(Z)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_2_0;
    .end annotation

    .prologue
    .line 519
    iput-boolean p1, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->e:Z

    .line 520
    return-void
.end method

.method public setUser(Lcom/scoreloop/client/android/core/model/User;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 529
    if-nez p1, :cond_0

    .line 530
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_0
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/AchievementsController;->f:Lcom/scoreloop/client/android/core/model/User;

    .line 533
    return-void
.end method
