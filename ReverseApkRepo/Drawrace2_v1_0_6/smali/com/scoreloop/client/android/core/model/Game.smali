.class public Lcom/scoreloop/client/android/core/model/Game;
.super Lcom/scoreloop/client/android/core/model/BaseEntity;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/model/MessageTargetInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/model/Game$BannerSize;
    }
.end annotation


# static fields
.field public static final CONTEXT_KEY_LEVEL:Ljava/lang/String; = "SLContextKeyLevel"
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation
.end field

.field public static final CONTEXT_KEY_MINOR_RESULT:Ljava/lang/String; = "SLContextKeyMinorResult"
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation
.end field

.field public static final CONTEXT_KEY_MODE:Ljava/lang/String; = "SLContextKeyMode"
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation
.end field

.field public static a:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:[Ljava/lang/String;

.field private q:Lcom/scoreloop/client/android/core/model/AwardList;

.field private r:Lcom/scoreloop/client/android/core/model/ScoreOrdering;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 464
    const-string v0, "game"

    sput-object v0, Lcom/scoreloop/client/android/core/model/Game;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>()V

    .line 121
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id and secret must be passed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/model/Game;->b(Ljava/lang/String;)V

    .line 125
    iput-object p2, p0, Lcom/scoreloop/client/android/core/model/Game;->l:Ljava/lang/String;

    .line 126
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
    .line 132
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;-><init>()V

    .line 133
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/model/Game;->a(Lorg/json/JSONObject;)V

    .line 134
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    sget-object v0, Lcom/scoreloop/client/android/core/model/Game;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/AwardList;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Game;->q:Lcom/scoreloop/client/android/core/model/AwardList;

    .line 476
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/ScoreOrdering;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Game;->r:Lcom/scoreloop/client/android/core/model/ScoreOrdering;

    .line 500
    return-void
.end method

.method final a(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Game;->g:Ljava/lang/Integer;

    .line 274
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Game;->c:Ljava/lang/String;

    .line 267
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
    const/4 v1, 0x0

    .line 334
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/core/model/BaseEntity;->a(Lorg/json/JSONObject;)V

    .line 336
    new-instance v2, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    .line 338
    const-string v0, "name"

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v2, p1, v0, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->k:Ljava/lang/String;

    .line 341
    :cond_0
    const-string v0, "min_level"

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v2, p1, v0, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->i:Ljava/lang/Integer;

    .line 344
    :cond_1
    const-string v0, "max_level"

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v2, p1, v0, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->g:Ljava/lang/Integer;

    .line 347
    :cond_2
    const-string v0, "mode_count"

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v2, p1, v0, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->d(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 349
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->j:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 350
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->j:Ljava/lang/Integer;

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->h:Ljava/lang/Integer;

    if-nez v0, :cond_4

    .line 353
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->h:Ljava/lang/Integer;

    .line 356
    :cond_4
    const-string v0, "characteristic"

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v2, p1, v0, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 357
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->c:Ljava/lang/String;

    .line 359
    :cond_5
    const-string v0, "description"

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v2, p1, v0, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 360
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->d:Ljava/lang/String;

    .line 362
    :cond_6
    const-string v0, "version"

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v2, p1, v0, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 363
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->n:Ljava/lang/String;

    .line 365
    :cond_7
    const-string v0, "image_url"

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v2, p1, v0, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 366
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->f:Ljava/lang/String;

    .line 368
    :cond_8
    const-string v0, "download_url"

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v2, p1, v0, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 369
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->e:Ljava/lang/String;

    .line 371
    :cond_9
    const-string v0, "state"

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v2, p1, v0, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 372
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->m:Ljava/lang/String;

    .line 374
    :cond_a
    const-string v0, "publisher_name"

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v2, p1, v0, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 375
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->o:Ljava/lang/String;

    .line 377
    :cond_b
    const-string v0, "android_package_names"

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v2, p1, v0, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent;->e(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 378
    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 379
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/scoreloop/client/android/core/model/Game;->p:[Ljava/lang/String;

    .line 380
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 381
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Game;->p:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :cond_c
    return-void
.end method

.method final b(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Game;->h:Ljava/lang/Integer;

    .line 281
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
    .line 314
    invoke-super {p0}, Lcom/scoreloop/client/android/core/model/BaseEntity;->b_()Lorg/json/JSONObject;

    move-result-object v0

    .line 316
    const-string v1, "secret"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Game;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v1, "name"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Game;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v1, "min_level"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Game;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v1, "max_level"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Game;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v1, "characteristic"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Game;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v1, "description"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Game;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string v1, "version"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Game;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v1, "image_url"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Game;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v1, "download_url"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Game;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    const-string v1, "state"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Game;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v1, "publisher_name"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Game;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->l:Ljava/lang/String;

    return-object v0
.end method

.method final c(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Game;->i:Ljava/lang/Integer;

    .line 288
    return-void
.end method

.method final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Game;->k:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public final d()Lcom/scoreloop/client/android/core/model/AwardList;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->q:Lcom/scoreloop/client/android/core/model/AwardList;

    return-object v0
.end method

.method final d(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Game;->j:Ljava/lang/Integer;

    .line 295
    return-void
.end method

.method final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Game;->n:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public final e()Lcom/scoreloop/client/android/core/model/ScoreOrdering;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->r:Lcom/scoreloop/client/android/core/model/ScoreOrdering;

    return-object v0
.end method

.method public getBannerUrl(Lcom/scoreloop/client/android/core/model/Game$BannerSize;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/UsedByScoreloopApp;
    .end annotation

    .prologue
    .line 510
    const-string v0, "/games/%s/banner?size=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/scoreloop/client/android/core/model/Game$BannerSize;->a(Lcom/scoreloop/client/android/core/model/Game$BannerSize;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 511
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

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelCount()Ljava/lang/Integer;
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Game;->hasLevels()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Game;->getMaxLevel()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Game;->getMinLevel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaxLevel()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaxMode()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinLevel()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinMode()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModeCount()Ljava/lang/Integer;
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Game;->hasModes()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Game;->getMaxMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Game;->getMinMode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageNames()[Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->p:[Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game;->n:Ljava/lang/String;

    return-object v0
.end method

.method public hasLevels()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Game;->getMinLevel()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Game;->getMaxLevel()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasModes()Z
    .locals 3
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 259
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Game;->getMinMode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Game;->getMaxMode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Game;->getMaxMode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Game;->getMinMode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
