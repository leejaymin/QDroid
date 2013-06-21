.class public Lcom/scoreloop/client/android/core/model/Activity;
.super Lcom/scoreloop/client/android/core/model/BaseEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/model/Activity$ImageSize;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/Date;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    const-string v0, "activity"

    sput-object v0, Lcom/scoreloop/client/android/core/model/Activity;->a:Ljava/lang/String;

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
    .line 73
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/model/Activity;->a(Lorg/json/JSONObject;)V

    .line 75
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/scoreloop/client/android/core/model/Activity;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/core/model/BaseEntity;->a(Ljava/lang/Object;)V

    .line 169
    const-string v0, "date"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Activity;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/scoreloop/client/android/core/model/Activity;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    const-string v0, "message"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Activity;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/scoreloop/client/android/core/model/Activity;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-string v0, "type"

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Activity;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/scoreloop/client/android/core/model/Activity;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/core/model/BaseEntity;->a(Lorg/json/JSONObject;)V

    .line 178
    new-instance v1, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    .line 180
    const-string v0, "message"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Activity;->d:Ljava/lang/String;

    .line 184
    :cond_0
    const-string v0, "time_ago"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Activity;->h:Ljava/lang/String;

    .line 188
    :cond_1
    const-string v0, "updated_at"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Activity;->c:Ljava/util/Date;

    .line 192
    :cond_2
    const-string v0, "target_type"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->USE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Activity;->e:Ljava/lang/String;

    .line 194
    const-string v0, "user_id"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Activity;->g:Ljava/lang/String;

    .line 198
    :cond_3
    const-string v0, "game_id"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Activity;->f:Ljava/lang/String;

    .line 201
    :cond_4
    return-void
.end method

.method public final b_()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-super {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;->b_()Lorg/json/JSONObject;

    move-result-object v0

    .line 155
    const-string v1, "message"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Activity;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v1, "updated_at"

    sget-object v2, Lcom/scoreloop/client/android/core/util/Formats;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Activity;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v1, "target_type"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Activity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Activity;->c:Ljava/util/Date;

    return-object v0
.end method

.method public getGame()Lcom/scoreloop/client/android/core/model/Entity;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGameIdentifier()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Activity;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl(Lcom/scoreloop/client/android/core/model/Activity$ImageSize;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_2_0;
    .end annotation

    .prologue
    .line 148
    const-string v0, "/activities/%s/image?size=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Activity;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;->a(Lcom/scoreloop/client/android/core/model/Activity$ImageSize;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://p.scoreloop.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Activity;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeAgo()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_1_0;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Activity;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/scoreloop/client/android/core/model/Entity;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserIdentifier()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Activity;->g:Ljava/lang/String;

    return-object v0
.end method
