.class public Lcom/android/vending/billing/BillingService;
.super Landroid/app/Service;

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static a:Lcom/android/vending/billing/i;

.field private static b:Ljava/util/LinkedList;

.field private static c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/vending/billing/BillingService;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vending/billing/BillingService;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(I[Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/android/vending/billing/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vending/billing/c;-><init>(Lcom/android/vending/billing/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/vending/billing/c;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/vending/billing/BillingService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/vending/billing/BillingService;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic b()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcom/android/vending/billing/BillingService;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic c()Lcom/android/vending/billing/i;
    .locals 1

    sget-object v0, Lcom/android/vending/billing/BillingService;->a:Lcom/android/vending/billing/i;

    return-object v0
.end method

.method static synthetic d()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/vending/billing/BillingService;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic e()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/billing/BillingService;->a:Lcom/android/vending/billing/i;

    return-void
.end method

.method private f()Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p0, v2}, Lcom/android/vending/billing/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v0, "BillingService"

    const-string v1, "Could not bind to service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Security exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/vending/billing/BillingService;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final a()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/android/vending/billing/b;

    invoke-direct {v0, p0}, Lcom/android/vending/billing/b;-><init>(Lcom/android/vending/billing/BillingService;)V

    invoke-virtual {v0}, Lcom/android/vending/billing/b;->b()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/android/vending/billing/b;

    invoke-direct {v0, p0, p1}, Lcom/android/vending/billing/b;-><init>(Lcom/android/vending/billing/BillingService;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/vending/billing/b;->b()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/android/vending/billing/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vending/billing/e;-><init>(Lcom/android/vending/billing/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/vending/billing/e;->b()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {p2}, Lcom/android/vending/billing/j;->a(Landroid/os/IBinder;)Lcom/android/vending/billing/i;

    move-result-object v0

    sput-object v0, Lcom/android/vending/billing/BillingService;->a:Lcom/android/vending/billing/i;

    const/4 v0, -0x1

    move v1, v0

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/vending/billing/BillingService;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/billing/a;

    if-nez v0, :cond_2

    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/BillingService;->stopSelf(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/android/vending/billing/a;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/vending/billing/BillingService;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/vending/billing/a;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/vending/billing/a;->a()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/vending/billing/BillingService;->f()Z

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/billing/BillingService;->a:Lcom/android/vending/billing/i;

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.example.subscriptions.CONFIRM_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/vending/billing/BillingService;->a(I[Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.example.subscriptions.GET_PURCHASE_INFORMATION"

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

    new-instance v0, Lcom/android/vending/billing/d;

    invoke-direct {v0, p0, p2, v1}, Lcom/android/vending/billing/d;-><init>(Lcom/android/vending/billing/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/vending/billing/d;->b()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0, p0}, Lcom/android/vending/billing/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "inapp_signed_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inapp_signature"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/billing/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/android/vending/billing/BillingService;->a(I[Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/billing/u;

    iget-object v3, v0, Lcom/android/vending/billing/u;->b:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/vending/billing/u;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v3, v0, Lcom/android/vending/billing/u;->a:Lcom/android/vending/billing/g;

    iget-object v4, v0, Lcom/android/vending/billing/u;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/vending/billing/u;->d:Ljava/lang/String;

    iget-wide v5, v0, Lcom/android/vending/billing/u;->e:J

    iget-object v0, v0, Lcom/android/vending/billing/u;->f:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v0}, Lcom/android/vending/billing/r;->a(Lcom/android/vending/billing/g;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "request_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v0, "response_code"

    sget-object v3, Lcom/android/vending/billing/h;->g:Lcom/android/vending/billing/h;

    invoke-virtual {v3}, Lcom/android/vending/billing/h;->ordinal()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/billing/h;->a(I)Lcom/android/vending/billing/h;

    move-result-object v3

    sget-object v0, Lcom/android/vending/billing/BillingService;->c:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/billing/a;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Lcom/android/vending/billing/a;->a(Lcom/android/vending/billing/h;)V

    :cond_6
    sget-object v0, Lcom/android/vending/billing/BillingService;->c:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
