.class public Lcom/scoreloop/client/android/core/model/Session;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/model/Session$State;
    }
.end annotation


# static fields
.field private static a:Lcom/scoreloop/client/android/core/model/Session;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/scoreloop/client/android/core/model/Challenge;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Money;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/scoreloop/client/android/core/model/TermsOfService;

.field private final f:Lcom/scoreloop/client/android/core/model/Device;

.field private final g:Lcom/scoreloop/client/android/core/model/EntityFactory;

.field private h:Lcom/scoreloop/client/android/core/model/Game;

.field private i:J

.field private final j:Lcom/scoreloop/client/android/core/model/SessionObserver;

.field private k:Ljava/lang/String;

.field private final l:Lcom/scoreloop/client/android/core/server/Server;

.field private final m:[Ljava/lang/Object;

.field private n:Lcom/scoreloop/client/android/core/model/Session$State;

.field private o:J

.field private final p:Lcom/scoreloop/client/android/core/model/User;

.field private q:Lcom/scoreloop/client/android/core/model/TermsOfService;

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/model/SessionObserver;Lcom/scoreloop/client/android/core/server/Server;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->m:[Ljava/lang/Object;

    .line 114
    iput-boolean v2, p0, Lcom/scoreloop/client/android/core/model/Session;->r:Z

    .line 115
    iput-boolean v2, p0, Lcom/scoreloop/client/android/core/model/Session;->s:Z

    .line 116
    iput v1, p0, Lcom/scoreloop/client/android/core/model/Session;->t:I

    .line 117
    iput-boolean v1, p0, Lcom/scoreloop/client/android/core/model/Session;->u:Z

    .line 118
    iput-object v3, p0, Lcom/scoreloop/client/android/core/model/Session;->v:Ljava/util/Date;

    .line 122
    iput-object v3, p0, Lcom/scoreloop/client/android/core/model/Session;->b:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/scoreloop/client/android/core/model/Session;->l:Lcom/scoreloop/client/android/core/server/Server;

    .line 124
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Session;->j:Lcom/scoreloop/client/android/core/model/SessionObserver;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->d:Ljava/util/List;

    .line 126
    new-instance v0, Lcom/scoreloop/client/android/core/model/User;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/model/User;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->p:Lcom/scoreloop/client/android/core/model/User;

    .line 127
    new-instance v0, Lcom/scoreloop/client/android/core/model/Device;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/model/Device;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->f:Lcom/scoreloop/client/android/core/model/Device;

    .line 128
    sget-object v0, Lcom/scoreloop/client/android/core/model/Session$State;->INITIAL:Lcom/scoreloop/client/android/core/model/Session$State;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->n:Lcom/scoreloop/client/android/core/model/Session$State;

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/scoreloop/client/android/core/model/Session;->o:J

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scoreloop/client/android/core/model/Session;->i:J

    .line 131
    new-instance v0, Lcom/scoreloop/client/android/core/model/TermsOfService;

    sget-object v1, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->PENDING:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/model/TermsOfService;-><init>(Lcom/scoreloop/client/android/core/model/TermsOfService$Status;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->e:Lcom/scoreloop/client/android/core/model/TermsOfService;

    .line 133
    new-instance v0, Lcom/scoreloop/client/android/core/model/SimpleEntityFactory;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/model/SimpleEntityFactory;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->g:Lcom/scoreloop/client/android/core/model/EntityFactory;

    .line 134
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->g:Lcom/scoreloop/client/android/core/model/EntityFactory;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Session;->p:Lcom/scoreloop/client/android/core/model/User;

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/model/EntityFactory;->a(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 136
    return-void
.end method

.method static a(Lcom/scoreloop/client/android/core/model/Session;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    sput-object p0, Lcom/scoreloop/client/android/core/model/Session;->a:Lcom/scoreloop/client/android/core/model/Session;

    .line 95
    return-void
.end method

.method public static getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 90
    sget-object v0, Lcom/scoreloop/client/android/core/model/Session;->a:Lcom/scoreloop/client/android/core/model/Session;

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->m:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 142
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v1, v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->m:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 144
    if-eqz v0, :cond_0

    .line 145
    instance-of v2, v0, Lcom/scoreloop/client/android/core/util/Destroyable;

    if-eqz v2, :cond_0

    .line 146
    check-cast v0, Lcom/scoreloop/client/android/core/util/Destroyable;

    invoke-interface {v0}, Lcom/scoreloop/client/android/core/util/Destroyable;->destroy()V

    .line 142
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->l:Lcom/scoreloop/client/android/core/server/Server;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/Server;->a()V

    .line 151
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->m:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 421
    return-void
.end method

.method final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Session;->b:Landroid/content/Context;

    .line 392
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->f:Lcom/scoreloop/client/android/core/model/Device;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/model/Device;->a(Landroid/content/Context;)V

    .line 393
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->l:Lcom/scoreloop/client/android/core/server/Server;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/server/Server;->a(Landroid/content/Context;)V

    .line 394
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Game;)V
    .locals 2
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Session;->h:Lcom/scoreloop/client/android/core/model/Game;

    .line 414
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->h:Lcom/scoreloop/client/android/core/model/Game;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Session;->getEntityFactory()Lcom/scoreloop/client/android/core/model/EntityFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Session;->h:Lcom/scoreloop/client/android/core/model/Game;

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/model/EntityFactory;->a(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 417
    :cond_0
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/Session$State;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Session;->n:Lcom/scoreloop/client/android/core/model/Session$State;

    .line 425
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/model/TermsOfService;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Session;->q:Lcom/scoreloop/client/android/core/model/TermsOfService;

    .line 374
    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->j:Lcom/scoreloop/client/android/core/model/SessionObserver;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->j:Lcom/scoreloop/client/android/core/model/SessionObserver;

    invoke-interface {v0, p0, p1}, Lcom/scoreloop/client/android/core/model/SessionObserver;->a(Lcom/scoreloop/client/android/core/model/Session;Ljava/lang/Boolean;)V

    .line 157
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Session;->v:Ljava/util/Date;

    .line 499
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Money;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Session;->d:Ljava/util/List;

    .line 409
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0xa

    .line 435
    new-instance v1, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    .line 437
    const-string v0, "slapp_download_url"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->k:Ljava/lang/String;

    .line 440
    :cond_0
    const-string v0, "characteristic"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 442
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Session;->h:Lcom/scoreloop/client/android/core/model/Game;

    if-eqz v2, :cond_1

    .line 443
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Session;->h:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v2, v0}, Lcom/scoreloop/client/android/core/model/Game;->a(Ljava/lang/String;)V

    .line 446
    :cond_1
    const-string v0, "timeout"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->g(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 448
    sub-long v4, v2, v8

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 449
    sub-long/2addr v2, v8

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/scoreloop/client/android/core/model/Session;->o:J

    .line 452
    :cond_2
    const-string v0, "terms_of_service"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p1, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Session;->e:Lcom/scoreloop/client/android/core/model/TermsOfService;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/scoreloop/client/android/core/model/TermsOfService;->a(Lorg/json/JSONObject;)V

    .line 455
    :cond_3
    return-void
.end method

.method final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 462
    iput-boolean p1, p0, Lcom/scoreloop/client/android/core/model/Session;->r:Z

    .line 463
    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput p1, p0, Lcom/scoreloop/client/android/core/model/Session;->t:I

    .line 483
    return-void
.end method

.method final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-boolean p1, p0, Lcom/scoreloop/client/android/core/model/Session;->s:Z

    .line 471
    return-void
.end method

.method public final c()Lcom/scoreloop/client/android/core/model/TermsOfService;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->e:Lcom/scoreloop/client/android/core/model/TermsOfService;

    return-object v0
.end method

.method public final c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/scoreloop/client/android/core/model/Session;->u:Z

    .line 491
    return-void
.end method

.method public final d()Lcom/scoreloop/client/android/core/model/Device;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->f:Lcom/scoreloop/client/android/core/model/Device;

    return-object v0
.end method

.method public final e()Lcom/scoreloop/client/android/core/server/Server;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->l:Lcom/scoreloop/client/android/core/server/Server;

    return-object v0
.end method

.method public final f()Lcom/scoreloop/client/android/core/model/Session$State;
    .locals 4

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/scoreloop/client/android/core/model/Session;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/scoreloop/client/android/core/model/Session;->i:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/scoreloop/client/android/core/model/Session;->o:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->n:Lcom/scoreloop/client/android/core/model/Session$State;

    sget-object v1, Lcom/scoreloop/client/android/core/model/Session$State;->AUTHENTICATING:Lcom/scoreloop/client/android/core/model/Session$State;

    if-eq v0, v1, :cond_0

    .line 306
    sget-object v0, Lcom/scoreloop/client/android/core/model/Session$State;->TIMEOUT:Lcom/scoreloop/client/android/core/model/Session$State;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->n:Lcom/scoreloop/client/android/core/model/Session$State;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->n:Lcom/scoreloop/client/android/core/model/Session$State;

    return-object v0

    .line 305
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scoreloop/client/android/core/model/Session;->i:J

    .line 381
    return-void
.end method

.method public getBalance()Lcom/scoreloop/client/android/core/model/Money;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->c()Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v0

    return-object v0
.end method

.method public getChallenge()Lcom/scoreloop/client/android/core/model/Challenge;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->c:Lcom/scoreloop/client/android/core/model/Challenge;

    return-object v0
.end method

.method public getChallengeStakes()Ljava/util/List;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/Money;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->d:Ljava/util/List;

    return-object v0
.end method

.method public getEntityFactory()Lcom/scoreloop/client/android/core/model/EntityFactory;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->g:Lcom/scoreloop/client/android/core/model/EntityFactory;

    return-object v0
.end method

.method public getGame()Lcom/scoreloop/client/android/core/model/Game;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->h:Lcom/scoreloop/client/android/core/model/Game;

    return-object v0
.end method

.method public getScoreSearchLists()Ljava/util/List;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/model/SearchList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScoreloopAppDownloadUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/scoreloop/client/android/core/model/User;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->p:Lcom/scoreloop/client/android/core/model/User;

    return-object v0
.end method

.method public getUsersTermsOfService()Lcom/scoreloop/client/android/core/model/TermsOfService;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->q:Lcom/scoreloop/client/android/core/model/TermsOfService;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->j:Lcom/scoreloop/client/android/core/model/SessionObserver;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->j:Lcom/scoreloop/client/android/core/model/SessionObserver;

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/model/SessionObserver;->a(Lcom/scoreloop/client/android/core/model/Session;)Z

    move-result v0

    .line 431
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/model/Session;->r:Z

    return v0
.end method

.method public isAuthenticated()Z
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->n:Lcom/scoreloop/client/android/core/model/Session$State;

    sget-object v1, Lcom/scoreloop/client/android/core/model/Session$State;->AUTHENTICATED:Lcom/scoreloop/client/android/core/model/Session$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOwnedByUser(Lcom/scoreloop/client/android/core/model/User;)Z
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_2_0;
    .end annotation

    .prologue
    .line 352
    if-nez p1, :cond_0

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "user argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/model/User;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/model/Session;->s:Z

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/scoreloop/client/android/core/model/Session;->t:I

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcom/scoreloop/client/android/core/model/Session;->t:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/model/Session;->u:Z

    return v0
.end method

.method public final n()Ljava/util/Date;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Session;->v:Ljava/util/Date;

    return-object v0
.end method

.method public setChallenge(Lcom/scoreloop/client/android/core/model/Challenge;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 403
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Session;->c:Lcom/scoreloop/client/android/core/model/Challenge;

    .line 404
    return-void
.end method
