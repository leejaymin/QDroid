.class public Lcom/scoreloop/client/android/core/model/SearchList;
.super Lcom/scoreloop/client/android/core/model/BaseEntity;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static c:Lcom/scoreloop/client/android/core/model/SearchList;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "search_list"

    sput-object v0, Lcom/scoreloop/client/android/core/model/SearchList;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/model/SearchList;-><init>(Ljava/lang/String;)V

    .line 199
    iput-object p2, p0, Lcom/scoreloop/client/android/core/model/SearchList;->d:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>()V

    .line 190
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/model/SearchList;->a(Lorg/json/JSONObject;)V

    .line 191
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/SearchList;
    .locals 3
    .parameter

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 131
    :cond_0
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->f()Ljava/util/List;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_2

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/SearchList;

    .line 136
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/SearchList;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/scoreloop/client/android/core/model/SearchList;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/scoreloop/client/android/core/model/SearchList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getBuddiesScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 79
    const-string v0, "701bb990-80d8-11de-8a39-0800200c9a66"

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/SearchList;->a(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->f()Ljava/util/List;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 95
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/SearchList;

    .line 99
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/scoreloop/client/android/core/model/SearchList;->getGlobalScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v0

    goto :goto_0
.end method

.method public static getGlobalScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 110
    const-string v0, "428a66d4-e6ca-4ff0-b7ea-f482ba4541a1"

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/SearchList;->a(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 119
    sget-object v0, Lcom/scoreloop/client/android/core/model/SearchList;->c:Lcom/scoreloop/client/android/core/model/SearchList;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/scoreloop/client/android/core/model/SearchList;

    const-string v1, "#local"

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/model/SearchList;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/SearchList;->c:Lcom/scoreloop/client/android/core/model/SearchList;

    .line 122
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/core/model/SearchList;->c:Lcom/scoreloop/client/android/core/model/SearchList;

    return-object v0
.end method

.method public static getTwentyFourHourScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 154
    const-string v0, "428a66d4-e6ca-4ff0-b7ea-f482ba4541a2"

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/SearchList;->a(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserCountryLocationScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 167
    const-string v0, "428a66d4-e6ca-4ff0-b7ea-f482ba4541a3"

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/SearchList;->a(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserNationalityScoreSearchList()Lcom/scoreloop/client/android/core/model/SearchList;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 184
    const-string v0, "428a66d4-e6ca-4ff0-b7ea-f482ba4541a4"

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/SearchList;->a(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/SearchList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/scoreloop/client/android/core/model/SearchList;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/core/model/BaseEntity;->a(Lorg/json/JSONObject;)V

    .line 244
    new-instance v0, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    .line 245
    const-string v1, "name"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v0, p1, v1, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/SearchList;->d:Ljava/lang/String;

    .line 248
    :cond_0
    return-void
.end method

.method public final b_()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-super {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;->b_()Lorg/json/JSONObject;

    move-result-object v0

    .line 230
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/SearchList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/SearchList;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 224
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/SearchList;->d:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/SearchList;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
