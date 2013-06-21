.class public Lcom/scoreloop/client/android/core/model/Ranking;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/util/JSONSerializable;


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Lcom/scoreloop/client/android/core/model/Score;

.field private c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    .line 93
    const-string v1, "rank"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->THROWS_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/scoreloop/client/android/core/model/Ranking;->a:Ljava/lang/Integer;

    .line 94
    const-string v1, "total"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->THROWS_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/scoreloop/client/android/core/model/Ranking;->c:Ljava/lang/Integer;

    .line 99
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Ranking;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scoreloop/client/android/core/model/Ranking;->a:Ljava/lang/Integer;

    .line 103
    :cond_0
    const-string v1, "score"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v0, p1, v1, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    new-instance v1, Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/scoreloop/client/android/core/model/Score;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/scoreloop/client/android/core/model/Ranking;->b:Lcom/scoreloop/client/android/core/model/Score;

    .line 105
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Ranking;->b:Lcom/scoreloop/client/android/core/model/Score;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Ranking;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Score;->a(Ljava/lang/Integer;)V

    .line 107
    :cond_1
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
    .line 82
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 83
    const-string v1, "rank"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Ranking;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "total"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Ranking;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    return-object v0
.end method

.method public getRank()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Ranking;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScore()Lcom/scoreloop/client/android/core/model/Score;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Ranking;->b:Lcom/scoreloop/client/android/core/model/Score;

    return-object v0
.end method

.method public getTotal()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Ranking;->c:Ljava/lang/Integer;

    return-object v0
.end method
