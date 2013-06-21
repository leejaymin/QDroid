.class public Lcom/scoreloop/client/android/core/model/Score;
.super Lcom/scoreloop/client/android/core/model/BaseEntity;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/MessageTargetInterface;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Double;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Double;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/String;

.field private j:Lcom/scoreloop/client/android/core/model/User;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 457
    const-string v0, "score"

    sput-object v0, Lcom/scoreloop/client/android/core/model/Score;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 192
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>()V

    .line 170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->d:Ljava/lang/Integer;

    .line 171
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->e:Ljava/lang/Double;

    .line 172
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->f:Ljava/lang/Integer;

    .line 173
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->g:Ljava/lang/Double;

    .line 193
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/model/Score;->setResult(Ljava/lang/Double;)V

    .line 194
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->i:Ljava/lang/String;

    .line 196
    if-eqz p2, :cond_0

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->k:Ljava/util/Map;

    .line 199
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->k:Ljava/util/Map;

    const-string v1, "SLContextKeyMinorResult"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/model/Score;->setMinorResult(Ljava/lang/Double;)V

    .line 200
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->k:Ljava/util/Map;

    const-string v1, "SLContextKeyLevel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/model/Score;->setLevel(Ljava/lang/Integer;)V

    .line 201
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->k:Ljava/util/Map;

    const-string v1, "SLContextKeyMode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/model/Score;->setMode(Ljava/lang/Integer;)V

    .line 203
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->k:Ljava/util/Map;

    const-string v1, "SLContextKeyMinorResult"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->k:Ljava/util/Map;

    const-string v1, "SLContextKeyLevel"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->k:Ljava/util/Map;

    const-string v1, "SLContextKeyMode"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 209
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>()V

    .line 170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->d:Ljava/lang/Integer;

    .line 171
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->e:Ljava/lang/Double;

    .line 172
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->f:Ljava/lang/Integer;

    .line 173
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->g:Ljava/lang/Double;

    .line 210
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->i:Ljava/lang/String;

    .line 211
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/model/Score;->a(Lorg/json/JSONObject;)V

    .line 212
    return-void
.end method

.method public static areModesEqual(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/core/model/Score;)Z
    .locals 2
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 139
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Score;->getMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getMode()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/model/Score;->areModesEqual(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public static areModesEqual(Ljava/lang/Integer;Lcom/scoreloop/client/android/core/model/Score;)Z
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/scoreloop/client/android/core/model/Score;->areModesEqual(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public static areModesEqual(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 162
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    sget-object v0, Lcom/scoreloop/client/android/core/model/Score;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Score;->j:Lcom/scoreloop/client/android/core/model/User;

    .line 372
    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Score;->h:Ljava/lang/Integer;

    .line 352
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Score;->i:Ljava/lang/String;

    .line 226
    return-void
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
    .line 410
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/core/model/BaseEntity;->a(Lorg/json/JSONObject;)V

    .line 412
    new-instance v1, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    .line 414
    const-string v0, "device_id"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->c:Ljava/lang/String;

    .line 417
    :cond_0
    const-string v0, "result"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->g:Ljava/lang/Double;

    .line 420
    :cond_1
    const-string v0, "minor_result"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->c(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->e:Ljava/lang/Double;

    .line 423
    :cond_2
    const-string v0, "level"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->d:Ljava/lang/Integer;

    .line 426
    :cond_3
    const-string v0, "mode"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->f:Ljava/lang/Integer;

    .line 442
    :cond_4
    sget-object v0, Lcom/scoreloop/client/android/core/model/User;->a:Ljava/lang/String;

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 443
    new-instance v2, Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lcom/scoreloop/client/android/core/model/User;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/scoreloop/client/android/core/model/Score;->j:Lcom/scoreloop/client/android/core/model/User;

    .line 446
    :cond_5
    const-string v0, "context"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 448
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->k:Ljava/util/Map;

    .line 450
    :cond_6
    return-void

    .line 448
    :cond_7
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/util/JSONUtils;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public final b_()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-super {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;->b_()Lorg/json/JSONObject;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Score;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Score;->j:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Score;->j:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/scoreloop/client/android/core/model/Score;->c:Ljava/lang/String;

    .line 384
    :cond_0
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Score;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    const-string v1, "result"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Score;->g:Ljava/lang/Double;

    invoke-static {v2}, Lcom/scoreloop/client/android/core/util/JSONUtils;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string v1, "level"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Score;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Score;->j:Lcom/scoreloop/client/android/core/model/User;

    if-eqz v1, :cond_1

    .line 389
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Score;->j:Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    :cond_1
    const-string v1, "mode"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Score;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    const-string v1, "minor_result"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Score;->e:Ljava/lang/Double;

    invoke-static {v2}, Lcom/scoreloop/client/android/core/util/JSONUtils;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Score;->k:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 402
    const-string v1, "context"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Score;->k:Ljava/util/Map;

    invoke-static {v2}, Lcom/scoreloop/client/android/core/util/JSONUtils;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    :cond_2
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->k:Ljava/util/Map;

    return-object v0
.end method

.method public getLevel()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinorResult()Ljava/lang/Double;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->e:Ljava/lang/Double;

    return-object v0
.end method

.method public getMode()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->f:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getRank()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method public getResult()Ljava/lang/Double;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->g:Ljava/lang/Double;

    return-object v0
.end method

.method public getUser()Lcom/scoreloop/client/android/core/model/User;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->j:Lcom/scoreloop/client/android/core/model/User;

    return-object v0
.end method

.method public hasMode()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContext(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Score;->k:Ljava/util/Map;

    .line 488
    return-void
.end method

.method public setLevel(Ljava/lang/Integer;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 324
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->d:Ljava/lang/Integer;

    .line 325
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMinorResult(Ljava/lang/Double;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 335
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->e:Ljava/lang/Double;

    .line 336
    return-void

    .line 335
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setMode(Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 346
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Score;->f:Ljava/lang/Integer;

    .line 347
    return-void
.end method

.method public setResult(Ljava/lang/Double;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 362
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Score;->g:Ljava/lang/Double;

    .line 363
    return-void

    .line 362
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
