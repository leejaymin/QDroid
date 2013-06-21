.class public Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;
.implements Lcom/scoreloop/client/android/core/ui/ProxyActivity$Delegate;
.implements Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$3;,
        Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;

.field private c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

.field private final d:Lcom/scoreloop/client/android/core/controller/TermsOfServiceControllerObserver;

.field private e:Landroid/app/ProgressDialog;

.field private f:Landroid/app/Activity;

.field private g:Ljava/lang/Runnable;

.field private final h:Lcom/scoreloop/client/android/core/model/Session;

.field private i:Lcom/scoreloop/client/android/core/controller/f;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/controller/TermsOfServiceControllerObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/TermsOfServiceControllerObserver;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/TermsOfServiceControllerObserver;)V
    .locals 2
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p2, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "observer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    .line 66
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->d:Lcom/scoreloop/client/android/core/controller/TermsOfServiceControllerObserver;

    .line 67
    return-void

    .line 65
    :cond_1
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->f:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;)Lcom/scoreloop/client/android/core/model/Session;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    return-object v0
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;)Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->b:Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;

    return-object p1
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->f:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->j()V

    .line 419
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_0
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->g:Ljava/lang/Runnable;

    .line 427
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->j()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

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

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you are not calling from the main thread context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$2;-><init>(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->a(Ljava/lang/Runnable;)V

    .line 303
    return-void
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;)Lcom/scoreloop/client/android/core/controller/TermsOfServiceControllerObserver;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->d:Lcom/scoreloop/client/android/core/controller/TermsOfServiceControllerObserver;

    return-object v0
.end method

.method static synthetic c(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;)Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->b:Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->i()V

    .line 128
    :goto_0
    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$3;->a:[I

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getUsersTermsOfService()Lcom/scoreloop/client/android/core/model/TermsOfService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/TermsOfService;->getStatus()Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->l()V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->i:Lcom/scoreloop/client/android/core/controller/f;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "session controller should be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->a:Landroid/app/Activity;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->f:Landroid/app/Activity;

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "Connecting..."

    const-string v2, "Please wait!"

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->e:Landroid/app/ProgressDialog;

    :cond_3
    new-instance v0, Lcom/scoreloop/client/android/core/controller/f;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    invoke-direct {v0, v1, p0}, Lcom/scoreloop/client/android/core/controller/f;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/RequestControllerObserver;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->i:Lcom/scoreloop/client/android/core/controller/f;

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->i:Lcom/scoreloop/client/android/core/controller/f;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/f;->c()V

    goto :goto_0

    .line 119
    :cond_4
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->k()Z

    move-result v0

    if-nez v0, :cond_5

    .line 120
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->f()V

    goto :goto_0

    .line 125
    :cond_5
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->i()V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic e(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->f:Landroid/app/Activity;

    return-object v0
.end method

.method private e()Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Session;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getUsersTermsOfService()Lcom/scoreloop/client/android/core/model/TermsOfService;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->OUTDATED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/TermsOfService;->a(Lcom/scoreloop/client/android/core/model/TermsOfService$Status;)V

    .line 151
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->e()Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;->b()Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;->a(Lcom/scoreloop/client/android/core/model/TermsOfService;)V

    .line 153
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->g()V

    .line 154
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->d()V

    .line 155
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->b:Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->b:Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;

    :try_start_0
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/ui/ScoreloopCustomDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->b:Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;

    .line 173
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->e:Landroid/app/ProgressDialog;

    .line 180
    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$1;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$1;-><init>(Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;)V

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->a(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h()V

    .line 216
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->g()V

    .line 217
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->f:Landroid/app/Activity;

    .line 221
    :cond_0
    return-void
.end method

.method private k()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->c()Lcom/scoreloop/client/android/core/model/TermsOfService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/TermsOfService;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 225
    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->getUsersTermsOfService()Lcom/scoreloop/client/android/core/model/TermsOfService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/TermsOfService;->c()Ljava/lang/Integer;

    move-result-object v2

    .line 226
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 307
    const-string v1, "scoreloop_redirect"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v1, "ask_approval"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v1, Lcom/scoreloop/client/android/core/settings/Settings;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 310
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    .line 313
    sget-object v0, Lcom/scoreloop/client/android/core/settings/Settings;->b:Ljava/lang/String;

    .line 314
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getUsersTermsOfService()Lcom/scoreloop/client/android/core/model/TermsOfService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/TermsOfService;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 315
    if-eqz v1, :cond_0

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 319
    const-string v2, "scoreloop_redirect"

    const-string v3, "false"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-direct {p0, v0, v1}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 323
    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 404
    const-string v2, "scoreloop://tos/accepted"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 405
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "version"

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v0, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 406
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Session;->getUsersTermsOfService()Lcom/scoreloop/client/android/core/model/TermsOfService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/scoreloop/client/android/core/model/TermsOfService;->a(Ljava/lang/Integer;)V

    sget-object v0, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->ACCEPTED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    invoke-virtual {v2, v0}, Lcom/scoreloop/client/android/core/model/TermsOfService;->a(Lcom/scoreloop/client/android/core/model/TermsOfService$Status;)V

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->e()Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;->b()Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;->a(Lcom/scoreloop/client/android/core/model/TermsOfService;)V

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->g()V

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->d()V

    move v0, v1

    .line 413
    :cond_0
    :goto_2
    return v0

    .line 405
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 409
    :cond_3
    const-string v2, "scoreloop://tos/rejected"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getUsersTermsOfService()Lcom/scoreloop/client/android/core/model/TermsOfService;

    move-result-object v0

    sget-object v2, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->REJECTED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    invoke-virtual {v0, v2}, Lcom/scoreloop/client/android/core/model/TermsOfService;->a(Lcom/scoreloop/client/android/core/model/TermsOfService$Status;)V

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->e()Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;->b()Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/scoreloop/client/android/core/model/TermsOfServiceStore;->a(Lcom/scoreloop/client/android/core/model/TermsOfService;)V

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->i()V

    move v0, v1

    .line 411
    goto :goto_2
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->i()V

    .line 389
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    sget-object v1, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;->QUERY:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    if-ne v0, v1, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->l()V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->m()V

    goto :goto_0
.end method

.method public final c_()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->b:Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->b:Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/ui/TermsOfServiceDialog;->dismiss()V

    .line 269
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->i()V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->g:Ljava/lang/Runnable;

    .line 275
    :cond_1
    return-void
.end method

.method public isTermsOfServiceEnabled()Z
    .locals 3
    .annotation build Lcom/scoreloop/client/android/core/UsedByScoreloopApp;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 432
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Session;->a(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/Session;->a(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/settings/CommonSettings$TermsOfService;->a:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpToDate()Z
    .locals 3
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 240
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->j()Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    const/4 v0, 0x1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getUsersTermsOfService()Lcom/scoreloop/client/android/core/model/TermsOfService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/TermsOfService;->getStatus()Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/model/TermsOfService$Status;->ACCEPTED:Lcom/scoreloop/client/android/core/model/TermsOfService$Status;

    if-ne v1, v2, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->k()Z

    move-result v0

    goto :goto_0
.end method

.method public query(Landroid/app/Activity;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 334
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->a:Landroid/app/Activity;

    .line 335
    sget-object v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;->QUERY:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    .line 336
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->d()V

    .line 337
    return-void
.end method

.method public requestControllerDidFail(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->i:Lcom/scoreloop/client/android/core/controller/f;

    if-ne p1, v0, :cond_0

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->i:Lcom/scoreloop/client/android/core/controller/f;

    .line 343
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h()V

    .line 344
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->i()V

    .line 346
    :cond_0
    return-void
.end method

.method public requestControllerDidReceiveResponse(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 1
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->i:Lcom/scoreloop/client/android/core/controller/f;

    if-ne p1, v0, :cond_0

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->i:Lcom/scoreloop/client/android/core/controller/f;

    .line 352
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->h()V

    .line 353
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->f()V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->d()V

    goto :goto_0
.end method

.method public show(Landroid/app/Activity;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 368
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->a:Landroid/app/Activity;

    .line 369
    sget-object v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;->SHOW:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->c:Lcom/scoreloop/client/android/core/controller/TermsOfServiceController$a;

    .line 370
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceController;->m()V

    .line 371
    return-void
.end method
