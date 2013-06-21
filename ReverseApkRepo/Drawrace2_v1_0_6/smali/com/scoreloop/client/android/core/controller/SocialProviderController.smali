.class public abstract Lcom/scoreloop/client/android/core/controller/SocialProviderController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/SocialProviderController$3;,
        Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;,
        Lcom/scoreloop/client/android/core/controller/SocialProviderController$a;
    }
.end annotation


# static fields
.field private static synthetic h:Z


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/scoreloop/client/android/core/controller/f;

.field private final c:Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

.field private final d:Lcom/scoreloop/client/android/core/model/Session;

.field private e:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

.field private f:Lcom/scoreloop/client/android/core/model/SocialProvider;

.field private g:Lcom/scoreloop/client/android/core/controller/UserController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->h:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->d:Lcom/scoreloop/client/android/core/model/Session;

    .line 153
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->c:Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    .line 154
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/SocialProviderController;Lcom/scoreloop/client/android/core/controller/f;)Lcom/scoreloop/client/android/core/controller/f;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->b:Lcom/scoreloop/client/android/core/controller/f;

    return-object p1
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->f()V

    return-void
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)Lcom/scoreloop/client/android/core/controller/f;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->b:Lcom/scoreloop/client/android/core/controller/f;

    return-object v0
.end method

.method static synthetic c(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->e:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->getSocialProvider()Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->d:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/SocialProvider;->isUserConnected(Lcom/scoreloop/client/android/core/model/User;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->c:Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;->socialProviderControllerDidSucceed(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->a()V

    goto :goto_0
.end method

.method public static getSocialProviderController(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;Lcom/scoreloop/client/android/core/model/SocialProvider;)Lcom/scoreloop/client/android/core/controller/SocialProviderController;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 79
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "observer and provider argumetns must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    if-nez p0, :cond_2

    .line 83
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object p0

    .line 85
    :cond_2
    sget-boolean v0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->h:Z

    if-nez v0, :cond_3

    if-nez p0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 88
    :cond_3
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/SocialProvider;->b()Ljava/lang/Class;

    move-result-object v0

    .line 90
    if-nez v0, :cond_4

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 94
    :cond_4
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/scoreloop/client/android/core/model/Session;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 104
    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    .line 118
    iput-object p2, v0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->f:Lcom/scoreloop/client/android/core/model/SocialProvider;

    .line 120
    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :catch_1
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 108
    :catch_2
    move-exception v0

    .line 109
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 110
    :catch_3
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 112
    :catch_4
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 114
    :catch_5
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSocialProviderController(Ljava/lang/String;Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;)Lcom/scoreloop/client/android/core/controller/SocialProviderController;
    .locals 2
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/scoreloop/client/android/core/model/SocialProvider;->getSocialProviderForIdentifier(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->getSocialProviderController(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;Lcom/scoreloop/client/android/core/model/SocialProvider;)Lcom/scoreloop/client/android/core/controller/SocialProviderController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;)V
    .locals 2
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->g:Lcom/scoreloop/client/android/core/controller/UserController;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UserController;

    new-instance v1, Lcom/scoreloop/client/android/core/controller/SocialProviderController$2;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController$2;-><init>(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/controller/UserController;-><init>(Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->g:Lcom/scoreloop/client/android/core/controller/UserController;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->g:Lcom/scoreloop/client/android/core/controller/UserController;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->d:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/controller/UserController;->setUser(Lcom/scoreloop/client/android/core/model/Entity;)V

    .line 281
    sget-object v0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$3;->a:[I

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 290
    :goto_0
    return-void

    .line 283
    :pswitch_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->g:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/UserController;->submitUser()V

    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->g:Lcom/scoreloop/client/android/core/controller/UserController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/UserController;->loadUser()V

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->c:Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;->socialProviderControllerDidSucceed(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->c:Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    invoke-interface {v0, p0, p1}, Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;->socialProviderControllerDidFail(Lcom/scoreloop/client/android/core/controller/SocialProviderController;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final c()Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->c:Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    return-object v0
.end method

.method public final connect(Landroid/app/Activity;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 180
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->a:Landroid/app/Activity;

    .line 181
    new-instance v0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$a;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController$a;-><init>(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->e:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    .line 186
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->d:Lcom/scoreloop/client/android/core/model/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->d:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->d:Lcom/scoreloop/client/android/core/model/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Session;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;

    .line 188
    new-instance v1, Lcom/scoreloop/client/android/core/controller/SocialProviderController$1;

    invoke-direct {v1, p0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController$1;-><init>(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;->a(Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->f()V

    goto :goto_0
.end method

.method protected final d()Lcom/scoreloop/client/android/core/model/Session;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->d:Lcom/scoreloop/client/android/core/model/Session;

    return-object v0
.end method

.method protected final e()Lcom/scoreloop/client/android/core/model/User;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->d:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    return-object v0
.end method

.method protected final f_()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public getSocialProvider()Lcom/scoreloop/client/android/core/model/SocialProvider;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/SocialProviderController;->f:Lcom/scoreloop/client/android/core/model/SocialProvider;

    return-object v0
.end method
