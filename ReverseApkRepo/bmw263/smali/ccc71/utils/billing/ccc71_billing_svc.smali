.class public Lccc71/utils/billing/ccc71_billing_svc;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static a:Lcom/android/vending/a/a;

.field private static b:Ljava/util/LinkedList;

.field private static c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lccc71/utils/billing/ccc71_billing_svc;->b:Ljava/util/LinkedList;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    sput-object v0, Lccc71/utils/billing/ccc71_billing_svc;->c:Ljava/util/HashMap;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 269
    return-void
.end method

.method private a(I[Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 357
    new-instance v0, Lccc71/utils/billing/l;

    invoke-direct {v0, p0, p1, p2}, Lccc71/utils/billing/l;-><init>(Lccc71/utils/billing/ccc71_billing_svc;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lccc71/utils/billing/l;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lccc71/utils/billing/ccc71_billing_svc;)Z
    .locals 1
    .parameter

    .prologue
    .line 318
    invoke-direct {p0}, Lccc71/utils/billing/ccc71_billing_svc;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lccc71/utils/billing/ccc71_billing_svc;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic e()Lcom/android/vending/a/a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lccc71/utils/billing/ccc71_billing_svc;->a:Lcom/android/vending/a/a;

    return-object v0
.end method

.method static synthetic f()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lccc71/utils/billing/ccc71_billing_svc;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic g()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lccc71/utils/billing/ccc71_billing_svc;->a:Lcom/android/vending/a/a;

    return-void
.end method

.method private h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 322
    .line 323
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    const/4 v2, 0x1

    .line 322
    invoke-virtual {p0, v1, p0, v2}, Lccc71/utils/billing/ccc71_billing_svc;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 327
    if-eqz v1, :cond_0

    .line 338
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lccc71/utils/billing/ccc71_billing_svc;->attachBaseContext(Landroid/content/Context;)V

    .line 274
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 343
    new-instance v0, Lccc71/utils/billing/k;

    invoke-direct {v0, p0}, Lccc71/utils/billing/k;-><init>(Lccc71/utils/billing/ccc71_billing_svc;)V

    invoke-virtual {v0}, Lccc71/utils/billing/k;->b()Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 348
    new-instance v0, Lccc71/utils/billing/n;

    invoke-direct {v0, p0, p1}, Lccc71/utils/billing/n;-><init>(Lccc71/utils/billing/ccc71_billing_svc;Ljava/lang/String;)V

    invoke-virtual {v0}, Lccc71/utils/billing/n;->b()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lccc71/utils/billing/o;

    invoke-direct {v0, p0}, Lccc71/utils/billing/o;-><init>(Lccc71/utils/billing/ccc71_billing_svc;)V

    invoke-virtual {v0}, Lccc71/utils/billing/o;->b()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 448
    :try_start_0
    invoke-virtual {p0, p0}, Lccc71/utils/billing/ccc71_billing_svc;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
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
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 435
    invoke-static {p2}, Lcom/android/vending/a/b;->a(Landroid/os/IBinder;)Lcom/android/vending/a/a;

    move-result-object v0

    sput-object v0, Lccc71/utils/billing/ccc71_billing_svc;->a:Lcom/android/vending/a/a;

    .line 436
    const/4 v0, -0x1

    move v1, v0

    :cond_0
    :goto_0
    sget-object v0, Lccc71/utils/billing/ccc71_billing_svc;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/utils/billing/j;

    if-nez v0, :cond_2

    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Lccc71/utils/billing/ccc71_billing_svc;->stopSelf(I)V

    .line 437
    :cond_1
    :goto_1
    return-void

    .line 436
    :cond_2
    invoke-virtual {v0}, Lccc71/utils/billing/j;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lccc71/utils/billing/ccc71_billing_svc;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    invoke-virtual {v0}, Lccc71/utils/billing/j;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lccc71/utils/billing/j;->a()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lccc71/utils/billing/ccc71_billing_svc;->h()Z

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter

    .prologue
    .line 441
    const/4 v0, 0x0

    sput-object v0, Lccc71/utils/billing/ccc71_billing_svc;->a:Lcom/android/vending/a/a;

    .line 442
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 285
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 286
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.example.dungeons.CONFIRM_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lccc71/utils/billing/ccc71_billing_svc;->a(I[Ljava/lang/String;)Z

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 286
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

    new-instance v0, Lccc71/utils/billing/m;

    invoke-direct {v0, p0, p2, v1}, Lccc71/utils/billing/m;-><init>(Lccc71/utils/billing/ccc71_billing_svc;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lccc71/utils/billing/m;->b()Z

    goto :goto_0

    :cond_2
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

    invoke-static {v0, v1}, Lccc71/utils/billing/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lccc71/utils/billing/ccc71_billing_svc;->a(I[Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/utils/billing/i;

    iget-object v1, v0, Lccc71/utils/billing/i;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lccc71/utils/billing/i;->b:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, v0, Lccc71/utils/billing/i;->a:Lccc71/utils/billing/d;

    iget-object v2, v0, Lccc71/utils/billing/i;->c:Ljava/lang/String;

    iget-object v3, v0, Lccc71/utils/billing/i;->d:Ljava/lang/String;

    iget-wide v4, v0, Lccc71/utils/billing/i;->e:J

    iget-object v6, v0, Lccc71/utils/billing/i;->f:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lccc71/utils/billing/f;->a(Landroid/content/Context;Lccc71/utils/billing/d;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

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

    sget-object v3, Lccc71/utils/billing/e;->g:Lccc71/utils/billing/e;

    invoke-virtual {v3}, Lccc71/utils/billing/e;->ordinal()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lccc71/utils/billing/e;->a(I)Lccc71/utils/billing/e;

    move-result-object v3

    sget-object v0, Lccc71/utils/billing/ccc71_billing_svc;->c:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/utils/billing/j;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Lccc71/utils/billing/j;->a(Lccc71/utils/billing/e;)V

    :cond_6
    sget-object v0, Lccc71/utils/billing/ccc71_billing_svc;->c:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
