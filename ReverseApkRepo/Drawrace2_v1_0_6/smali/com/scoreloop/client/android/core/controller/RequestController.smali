.class public abstract Lcom/scoreloop/client/android/core/controller/RequestController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/RequestController$2;,
        Lcom/scoreloop/client/android/core/controller/RequestController$c;,
        Lcom/scoreloop/client/android/core/controller/RequestController$b;,
        Lcom/scoreloop/client/android/core/controller/RequestController$a;
    }
.end annotation


# static fields
.field private static synthetic i:Z


# instance fields
.field protected a:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

.field private b:Z

.field private final c:Lcom/scoreloop/client/android/core/controller/RequestController$b;

.field private d:Ljava/lang/Exception;

.field private e:Lcom/scoreloop/client/android/core/server/Request;

.field private final f:Lcom/scoreloop/client/android/core/model/Session;

.field private g:Lcom/scoreloop/client/android/core/controller/f;

.field private final h:Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/scoreloop/client/android/core/controller/RequestController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/scoreloop/client/android/core/controller/RequestController;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-boolean v1, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->b:Z

    .line 155
    if-nez p2, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "observer parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    if-nez p1, :cond_1

    .line 159
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->f:Lcom/scoreloop/client/android/core/model/Session;

    .line 163
    :goto_0
    sget-boolean v0, Lcom/scoreloop/client/android/core/controller/RequestController;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->f:Lcom/scoreloop/client/android/core/model/Session;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 161
    :cond_1
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->f:Lcom/scoreloop/client/android/core/model/Session;

    goto :goto_0

    .line 164
    :cond_2
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->a:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    .line 165
    new-instance v0, Lcom/scoreloop/client/android/core/controller/RequestController$b;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/RequestController$b;-><init>(Lcom/scoreloop/client/android/core/controller/RequestController;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->c:Lcom/scoreloop/client/android/core/controller/RequestController$b;

    .line 166
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->f:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Session;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->h:Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;

    .line 167
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/RequestController;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "we do not allow game id to be null at all, please initialize Client with valid game id and secret"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_3
    return-void
.end method

.method static a(Lorg/json/JSONObject;)Ljava/lang/Integer;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v1, Lcom/scoreloop/client/android/core/util/SetterIntent;

    invoke-direct {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;-><init>()V

    .line 130
    const-string v0, "error"

    sget-object v2, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, p0, v0, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent;->f(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "code"

    sget-object v3, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->USE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v4, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/scoreloop/client/android/core/util/SetterIntent;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;)Ljava/lang/Integer;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->a:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;->requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V

    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/RequestController;Lcom/scoreloop/client/android/core/server/Request;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/controller/RequestController;->d(Lcom/scoreloop/client/android/core/server/Request;)V

    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/controller/RequestController;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/controller/RequestController;)Lcom/scoreloop/client/android/core/server/Request;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->e:Lcom/scoreloop/client/android/core/server/Request;

    return-object v0
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/controller/RequestController;Lcom/scoreloop/client/android/core/server/Request;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/controller/RequestController;->c(Lcom/scoreloop/client/android/core/server/Request;)V

    return-void
.end method

.method static synthetic c(Lcom/scoreloop/client/android/core/controller/RequestController;)Lcom/scoreloop/client/android/core/controller/f;
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->g:Lcom/scoreloop/client/android/core/controller/f;

    return-object v0
.end method

.method private c(Lcom/scoreloop/client/android/core/server/Request;)V
    .locals 3
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->f:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->f()Lcom/scoreloop/client/android/core/model/Session$State;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/core/model/Session$State;->AUTHENTICATED:Lcom/scoreloop/client/android/core/model/Session$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/scoreloop/client/android/core/model/Session$State;->AUTHENTICATING:Lcom/scoreloop/client/android/core/model/Session$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->g:Lcom/scoreloop/client/android/core/controller/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/scoreloop/client/android/core/controller/f;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->f:Lcom/scoreloop/client/android/core/model/Session;

    new-instance v2, Lcom/scoreloop/client/android/core/controller/RequestController$c;

    invoke-direct {v2, p0}, Lcom/scoreloop/client/android/core/controller/RequestController$c;-><init>(Lcom/scoreloop/client/android/core/controller/RequestController;)V

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/f;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->g:Lcom/scoreloop/client/android/core/controller/f;

    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->g:Lcom/scoreloop/client/android/core/controller/f;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/f;->c()V

    .line 197
    :cond_1
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/controller/RequestController;->d(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 198
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->f:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->g()V

    .line 199
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->f:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->e()Lcom/scoreloop/client/android/core/server/Server;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/server/Server;->a(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 200
    return-void
.end method

.method private c(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->d:Ljava/lang/Exception;

    .line 318
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->a:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->a:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    invoke-interface {v0, p0, p1}, Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;->requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    .line 321
    :cond_0
    return-void
.end method

.method private d(Lcom/scoreloop/client/android/core/server/Request;)V
    .locals 2
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->e:Lcom/scoreloop/client/android/core/server/Request;

    .line 402
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->b:Z

    if-nez v0, :cond_0

    .line 403
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/scoreloop/client/android/core/server/Request;->a(J)V

    .line 405
    :cond_0
    return-void
.end method


# virtual methods
.method final a(Lcom/scoreloop/client/android/core/server/Request;)V
    .locals 1
    .parameter

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/controller/RequestController;->d(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 342
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->f:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->e()Lcom/scoreloop/client/android/core/server/Server;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/server/Server;->a(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 343
    return-void
.end method

.method final a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->e:Lcom/scoreloop/client/android/core/server/Request;

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/server/Request;->a(Ljava/lang/Exception;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/controller/RequestController;->c(Ljava/lang/Exception;)V

    .line 208
    :cond_0
    return-void
.end method

.method abstract a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method a_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 329
    iput-object v1, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->d:Ljava/lang/Exception;

    .line 332
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->e:Lcom/scoreloop/client/android/core/server/Request;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->e:Lcom/scoreloop/client/android/core/server/Request;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/Request;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->e:Lcom/scoreloop/client/android/core/server/Request;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/server/Server;->b(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 336
    :cond_0
    iput-object v1, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->e:Lcom/scoreloop/client/android/core/server/Request;

    .line 338
    :cond_1
    return-void
.end method

.method final b(Lcom/scoreloop/client/android/core/server/Request;)V
    .locals 2
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->f:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 348
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you are not calling from the main thread context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->h:Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;

    invoke-interface {v0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/RequestController;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 352
    :cond_1
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/controller/RequestController;->c(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 373
    :goto_0
    return-void

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->h:Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;

    new-instance v1, Lcom/scoreloop/client/android/core/controller/RequestController$1;

    invoke-direct {v1, p0, p1}, Lcom/scoreloop/client/android/core/controller/RequestController$1;-><init>(Lcom/scoreloop/client/android/core/controller/RequestController;Lcom/scoreloop/client/android/core/server/Request;)V

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;->a(Lcom/scoreloop/client/android/core/model/Continuation;)V

    goto :goto_0
.end method

.method protected final b(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 253
    new-instance v0, Lcom/scoreloop/client/android/core/controller/RequestController$a;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->a:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/scoreloop/client/android/core/controller/RequestController$a;-><init>(Lcom/scoreloop/client/android/core/controller/RequestController;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;ZLjava/lang/Exception;)V

    .line 255
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/util/MainThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 257
    return-void
.end method

.method final d()Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->a:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    return-object v0
.end method

.method final e()Lcom/scoreloop/client/android/core/controller/RequestController$b;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->c:Lcom/scoreloop/client/android/core/controller/RequestController$b;

    return-object v0
.end method

.method final f()Lcom/scoreloop/client/android/core/model/Session;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->f:Lcom/scoreloop/client/android/core/model/Session;

    return-object v0
.end method

.method final g()Lcom/scoreloop/client/android/core/model/User;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->f:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getError()Ljava/lang/Exception;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_3_0;
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->d:Ljava/lang/Exception;

    return-object v0
.end method

.method getGame()Lcom/scoreloop/client/android/core/model/Game;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->f:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    return-object v0
.end method

.method protected final h()V
    .locals 4

    .prologue
    .line 260
    new-instance v0, Lcom/scoreloop/client/android/core/controller/RequestController$a;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->a:Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/scoreloop/client/android/core/controller/RequestController$a;-><init>(Lcom/scoreloop/client/android/core/controller/RequestController;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;ZLjava/lang/Exception;)V

    .line 262
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/util/MainThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 264
    return-void
.end method

.method i()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public isCachedResponseUsed()Z
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_3_0;
    .end annotation

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->b:Z

    return v0
.end method

.method protected final j()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->d:Ljava/lang/Exception;

    .line 396
    return-void
.end method

.method public setCachedResponseUsed(Z)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_3_0;
    .end annotation

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/scoreloop/client/android/core/controller/RequestController;->b:Z

    .line 392
    return-void
.end method
