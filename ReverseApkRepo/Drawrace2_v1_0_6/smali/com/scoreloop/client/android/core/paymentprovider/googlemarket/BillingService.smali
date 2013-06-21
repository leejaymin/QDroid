.class public Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$BillingException;,
        Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$e;,
        Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$d;,
        Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$c;,
        Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$b;,
        Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/a/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 329
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->a:Ljava/util/LinkedList;

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 344
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 345
    return-void
.end method

.method private a(I[Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 418
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$c;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$c;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic c()Lcom/a/a/a/a;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->c:Lcom/a/a/a/a;

    return-object v0
.end method

.method static synthetic d()Lcom/a/a/a/a;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->c:Lcom/a/a/a/a;

    return-object v0
.end method

.method static synthetic e()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic f()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method private g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 357
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p0, v2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 360
    if-eqz v1, :cond_0

    .line 368
    :goto_0
    return v0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 603
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$BillingException;
        }
    .end annotation

    .prologue
    .line 545
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$e;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$BillingException;

    const-string v1, "Could not bind to Market Service."

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$BillingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 376
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$b;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$b;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;)V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$b;->d()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 403
    const/4 v0, -0x1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->a(I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 611
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 472
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 484
    invoke-static {p2}, Lcom/a/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/a/a/a/a;

    move-result-object v0

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->c:Lcom/a/a/a/a;

    .line 485
    const/4 v0, -0x1

    move v1, v0

    :cond_0
    :goto_0
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;->a()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->g()Z

    .line 486
    :cond_2
    :goto_1
    return-void

    .line 485
    :cond_3
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->stopSelf(I)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter

    .prologue
    .line 493
    const/4 v0, 0x0

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->c:Lcom/a/a/a/a;

    .line 495
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 499
    if-eqz p1, :cond_0

    .line 500
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.example.dungeons.CONFIRM_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->a(I[Ljava/lang/String;)Z

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    const-string v1, "com.example.dungeons.GET_PURCHASE_INFORMATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$d;

    invoke-direct {v0, p0, p2, v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$d;-><init>(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$d;->d()Z

    goto :goto_0

    :cond_2
    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "inapp_signed_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "inapp_signature"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-static {v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingNonceManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;

    invoke-static {v0, v1, v2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingDelegateManager;->a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingOrder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "request_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v0, "response_code"

    sget-object v3, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_ERROR:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->ordinal()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->valueOf(I)Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    move-result-object v3

    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->b:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService$a;->a(Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;)V

    :cond_5
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/BillingService;->b:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
