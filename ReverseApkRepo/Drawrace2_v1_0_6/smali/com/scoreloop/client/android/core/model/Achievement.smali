.class public final Lcom/scoreloop/client/android/core/model/Achievement;
.super Lcom/scoreloop/client/android/core/model/BaseEntity;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/MessageTargetInterface;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private final c:Lcom/scoreloop/client/android/core/model/Award;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/scoreloop/client/android/core/model/AchievementsStore;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "achievement"

    sput-object v0, Lcom/scoreloop/client/android/core/model/Achievement;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Award$a;Lorg/json/JSONObject;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>()V

    .line 121
    const-string v0, "achievable_identifier"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/scoreloop/client/android/core/model/Award$a;->getAwardWithIdentifier(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->c:Lcom/scoreloop/client/android/core/model/Award;

    .line 122
    invoke-virtual {p0, p2}, Lcom/scoreloop/client/android/core/model/Achievement;->a(Lorg/json/JSONObject;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Award;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Achievement;->c:Lcom/scoreloop/client/android/core/model/Award;

    .line 95
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->c:Lcom/scoreloop/client/android/core/model/Award;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Award;->getInitialValue()I

    move-result v0

    iput v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->i:I

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Award;Lorg/json/JSONObject;Lcom/scoreloop/client/android/core/model/AchievementsStore;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>()V

    .line 103
    iput-object p3, p0, Lcom/scoreloop/client/android/core/model/Achievement;->g:Lcom/scoreloop/client/android/core/model/AchievementsStore;

    .line 104
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Achievement;->c:Lcom/scoreloop/client/android/core/model/Award;

    .line 105
    if-eqz p2, :cond_1

    .line 106
    invoke-virtual {p0, p2}, Lcom/scoreloop/client/android/core/model/Achievement;->a(Lorg/json/JSONObject;)V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->e:Ljava/lang/String;

    .line 114
    :cond_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->c:Lcom/scoreloop/client/android/core/model/Award;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Award;->getInitialValue()I

    move-result v0

    iput v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->i:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/model/Achievement;)Lcom/scoreloop/client/android/core/model/AchievementsStore;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->g:Lcom/scoreloop/client/android/core/model/AchievementsStore;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 407
    new-instance v0, Lcom/scoreloop/client/android/core/model/Achievement$1;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/model/Achievement$1;-><init>(Lcom/scoreloop/client/android/core/model/Achievement;)V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement$1;->c()Lcom/scoreloop/client/android/core/util/DiskAsyncTask;

    .line 419
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/scoreloop/client/android/core/model/Achievement;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Z)Lorg/json/JSONObject;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-super {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;->b_()Lorg/json/JSONObject;

    move-result-object v0

    .line 382
    const-string v1, "achievable_list_id"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Award;->a()Lcom/scoreloop/client/android/core/model/Award$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/scoreloop/client/android/core/model/Award$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string v1, "achievable_identifier"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Award;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    const-string v1, "achievable_type"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    const-string v2, "Award"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    const-string v1, "achieved_count"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 388
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Achievement;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->getDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 390
    sget-object v1, Lcom/scoreloop/client/android/core/util/Formats;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 391
    const-string v2, "achieved_at"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    :cond_0
    if-eqz p1, :cond_2

    .line 396
    iget-boolean v1, p0, Lcom/scoreloop/client/android/core/model/Achievement;->f:Z

    if-eqz v1, :cond_1

    .line 397
    const-string v1, "needs_submit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 399
    :cond_1
    const-string v1, "local_id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Achievement;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    :cond_2
    return-object v0
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Achievement;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 246
    .line 248
    if-eqz p2, :cond_4

    .line 249
    iput-boolean v2, p0, Lcom/scoreloop/client/android/core/model/Achievement;->f:Z

    move v0, v1

    .line 253
    :goto_0
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 254
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 255
    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/core/model/Achievement;->b(Ljava/lang/String;)V

    move v0, v1

    .line 259
    :cond_0
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->getValue()I

    move-result v3

    .line 260
    iget v4, p0, Lcom/scoreloop/client/android/core/model/Achievement;->i:I

    if-le v3, v4, :cond_1

    .line 261
    iput v3, p0, Lcom/scoreloop/client/android/core/model/Achievement;->i:I

    .line 262
    iput-boolean v2, p0, Lcom/scoreloop/client/android/core/model/Achievement;->f:Z

    move v0, v1

    .line 266
    :cond_1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Achievement;->getDate()Ljava/util/Date;

    move-result-object v2

    .line 267
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/Achievement;->d:Ljava/util/Date;

    if-eq v2, v3, :cond_2

    .line 268
    iput-object v2, p0, Lcom/scoreloop/client/android/core/model/Achievement;->d:Ljava/util/Date;

    move v0, v1

    .line 272
    :cond_2
    if-eqz v0, :cond_3

    .line 273
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->d()V

    .line 275
    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    const-string v0, "award"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/scoreloop/client/android/core/model/Achievement;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v0, "value"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/scoreloop/client/android/core/model/Achievement;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v0, "isAchieved"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->isAchieved()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/scoreloop/client/android/core/model/Achievement;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Achievement;->h:Ljava/lang/String;

    .line 314
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
    .line 423
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/core/model/BaseEntity;->a(Lorg/json/JSONObject;)V

    .line 425
    new-instance v1, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    .line 428
    const-string v0, "achievable_identifier"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->THROWS_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/String;

    move-result-object v0

    .line 430
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Achievement;->c:Lcom/scoreloop/client/android/core/model/Award;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Award;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 431
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid achievable_identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_0
    const-string v0, "achievable_type"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->THROWS_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/String;

    move-result-object v0

    .line 436
    const-string v2, "Award"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 437
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid achievable_type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_1
    const-string v0, "achieved_count"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->THROWS_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->i:I

    .line 441
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->c:Lcom/scoreloop/client/android/core/model/Award;

    iget v2, p0, Lcom/scoreloop/client/android/core/model/Achievement;->i:I

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/core/model/Award;->isValidCounterValue(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 442
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid achieved_count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/scoreloop/client/android/core/model/Achievement;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_2
    const-string v0, "user_id"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->h:Ljava/lang/String;

    .line 450
    :cond_3
    const-string v0, "achieved_at"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->d:Ljava/util/Date;

    .line 455
    :cond_4
    const-string v0, "needs_submit"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 456
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->f:Z

    .line 458
    :cond_5
    const-string v0, "local_id"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 459
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->e:Ljava/lang/String;

    .line 461
    :cond_6
    return-void
.end method

.method public final b_()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/model/Achievement;->a(Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getAward()Lcom/scoreloop/client/android/core/model/Award;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->c:Lcom/scoreloop/client/android/core/model/Award;

    return-object v0
.end method

.method public final getDate()Ljava/util/Date;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->d:Ljava/util/Date;

    return-object v0
.end method

.method public final getImage()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->isAchieved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Award;->getAchievedImage()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Award;->getUnachievedImage()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final getValue()I
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 210
    iget v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->i:I

    return v0
.end method

.method public final incrementValue()V
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->getValue()I

    move-result v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/model/Achievement;->setValue(I)V

    .line 225
    return-void
.end method

.method public final isAchieved()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Award;->isAchievedByValue(I)Z

    move-result v0

    return v0
.end method

.method public final needsSubmit()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->f:Z

    return v0
.end method

.method public final setAchieved()V
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->c:Lcom/scoreloop/client/android/core/model/Award;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Award;->getAchievingValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/model/Achievement;->setValue(I)V

    .line 307
    return-void
.end method

.method public final setValue(I)V
    .locals 3
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->c:Lcom/scoreloop/client/android/core/model/Award;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/model/Award;->isValidCounterValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value, should be in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Achievement;->c:Lcom/scoreloop/client/android/core/model/Award;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Award;->getCounterRange()Lcom/scoreloop/client/android/core/model/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    iget v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->i:I

    if-ge p1, v0, :cond_1

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the value to set must not be less than the old value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/scoreloop/client/android/core/model/Achievement;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->g:Lcom/scoreloop/client/android/core/model/AchievementsStore;

    if-nez v0, :cond_2

    .line 355
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setValue() on achievement only allowed for session user"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_2
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->isAchieved()Z

    move-result v0

    .line 359
    iput p1, p0, Lcom/scoreloop/client/android/core/model/Achievement;->i:I

    .line 361
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->isAchieved()Z

    move-result v1

    if-eq v1, v0, :cond_3

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->f:Z

    .line 365
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Achievement;->d:Ljava/util/Date;

    .line 367
    :cond_3
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/Achievement;->d()V

    .line 368
    return-void
.end method
