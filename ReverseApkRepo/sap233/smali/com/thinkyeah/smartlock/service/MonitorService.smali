.class public Lcom/thinkyeah/smartlock/service/MonitorService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/thinkyeah/smartlock/service/f;

.field private b:Lcom/thinkyeah/smartlock/service/k;

.field private c:Landroid/app/NotificationManager;

.field private d:Ljava/util/Timer;

.field private e:Lcom/thinkyeah/smartlock/service/d;

.field private f:Lcom/thinkyeah/smartlock/service/e;

.field private g:Z

.field private h:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/thinkyeah/smartlock/service/f;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/service/f;-><init>(Lcom/thinkyeah/smartlock/service/MonitorService;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->a:Lcom/thinkyeah/smartlock/service/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->g:Z

    return-void
.end method

.method private a(III)Landroid/app/Notification;
    .locals 2

    const-string v0, "NotificationEnabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/thinkyeah/smartlock/service/MonitorService;->b(III)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/service/MonitorService;I)Landroid/app/Notification;
    .locals 2

    const v0, 0x7f0900c4

    const v1, 0x7f0900c6

    invoke-direct {p0, p1, v0, v1}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(III)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/service/MonitorService;II)Landroid/app/Notification;
    .locals 1

    const v0, 0x7f0900c4

    invoke-direct {p0, p1, v0, p2}, Lcom/thinkyeah/smartlock/service/MonitorService;->b(III)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/k;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->b:Lcom/thinkyeah/smartlock/service/k;

    return-object v0
.end method

.method private b(III)Landroid/app/Notification;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/thinkyeah/smartlock/SelfLockingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x800

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/service/MonitorService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/support/v4/app/z;

    invoke-direct {v2, p0}, Landroid/support/v4/app/z;-><init>(Landroid/content/Context;)V

    iget-object v3, v2, Landroid/support/v4/app/z;->j:Landroid/app/Notification;

    iput p1, v3, Landroid/app/Notification;->icon:I

    const/high16 v3, 0x7f09

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/z;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/z;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/z;->j:Landroid/app/Notification;

    iput-object v1, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, v2, Landroid/support/v4/app/z;->j:Landroid/app/Notification;

    iput-wide v3, v1, Landroid/app/Notification;->when:J

    iput-object v0, v2, Landroid/support/v4/app/z;->d:Landroid/app/PendingIntent;

    iget-object v0, v2, Landroid/support/v4/app/z;->j:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    invoke-static {}, Landroid/support/v4/app/y;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/support/v4/app/aa;->a(Landroid/support/v4/app/z;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->c:Landroid/app/NotificationManager;

    const v2, 0x132dc49

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-object v0
.end method

.method static synthetic b(Lcom/thinkyeah/smartlock/service/MonitorService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->c:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic c(Lcom/thinkyeah/smartlock/service/MonitorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/thinkyeah/smartlock/service/MonitorService;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->g:Z

    return-void
.end method

.method static synthetic e(Lcom/thinkyeah/smartlock/service/MonitorService;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->d:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic f(Lcom/thinkyeah/smartlock/service/MonitorService;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->d:Ljava/util/Timer;

    return-void
.end method

.method static synthetic g(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/f;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->a:Lcom/thinkyeah/smartlock/service/f;

    return-object v0
.end method

.method static synthetic h(Lcom/thinkyeah/smartlock/service/MonitorService;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->h:Landroid/os/PowerManager;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const v2, 0x7f0900c4

    const v1, 0x7f02002d

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->g:Z

    if-nez v0, :cond_0

    const v0, 0x7f0900c6

    invoke-direct {p0, v1, v2, v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(III)Landroid/app/Notification;

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0900c7

    invoke-direct {p0, v1, v2, v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(III)Landroid/app/Notification;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->b:Lcom/thinkyeah/smartlock/service/k;

    invoke-virtual {v0, p1}, Lcom/thinkyeah/smartlock/service/k;->d(Ljava/lang/String;)V

    const-string v0, "DelayLockEnabled"

    invoke-static {p0, v0, v1}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->g:Z

    const-string v0, "NotificationTransparent"

    invoke-static {p0, v0, v1}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f02002d

    :goto_1
    const v1, 0x7f0900c4

    const v2, 0x7f0900c7

    invoke-direct {p0, v0, v1, v2}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(III)Landroid/app/Notification;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->b:Lcom/thinkyeah/smartlock/service/k;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/k;->a()V

    const-string v0, "DelayTime"

    invoke-static {p0, v0, v3}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->d:Ljava/util/Timer;

    new-instance v1, Lcom/thinkyeah/smartlock/service/c;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/service/c;-><init>(Lcom/thinkyeah/smartlock/service/MonitorService;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->d:Ljava/util/Timer;

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    :cond_1
    const v0, 0x7f02002e

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    const v2, 0x7f0900c4

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->g:Z

    if-nez v0, :cond_0

    const v0, 0x7f02002c

    const v1, 0x7f0900c6

    invoke-direct {p0, v0, v2, v1}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(III)Landroid/app/Notification;

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f02002e

    const v1, 0x7f0900c7

    invoke-direct {p0, v0, v2, v1}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(III)Landroid/app/Notification;

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->a:Lcom/thinkyeah/smartlock/service/f;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/thinkyeah/smartlock/service/k;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/service/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->b:Lcom/thinkyeah/smartlock/service/k;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->h:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->h:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->b:Lcom/thinkyeah/smartlock/service/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/service/k;->a(Z)V

    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->c:Landroid/app/NotificationManager;

    const-string v0, "NotificationTransparent"

    invoke-static {p0, v0, v3}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f02002d

    :goto_0
    const v1, 0x7f0900c5

    const v2, 0x7f0900c6

    invoke-direct {p0, v0, v1, v2}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(III)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x132dc49

    invoke-virtual {p0, v1, v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->startForeground(ILandroid/app/Notification;)V

    :cond_1
    new-instance v0, Lcom/thinkyeah/smartlock/service/d;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/service/d;-><init>(Lcom/thinkyeah/smartlock/service/MonitorService;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->e:Lcom/thinkyeah/smartlock/service/d;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->e:Lcom/thinkyeah/smartlock/service/d;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/thinkyeah/smartlock/service/MonitorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/thinkyeah/smartlock/service/e;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/service/e;-><init>(Lcom/thinkyeah/smartlock/service/MonitorService;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->f:Lcom/thinkyeah/smartlock/service/e;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->f:Lcom/thinkyeah/smartlock/service/e;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/thinkyeah/smartlock/service/MonitorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->g:Z

    return-void

    :cond_2
    const v0, 0x7f02002c

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->b:Lcom/thinkyeah/smartlock/service/k;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/k;->a()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->stopForeground(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->c:Landroid/app/NotificationManager;

    const v1, 0x132dc49

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->e:Lcom/thinkyeah/smartlock/service/d;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->f:Lcom/thinkyeah/smartlock/service/e;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/service/MonitorService;->d:Ljava/util/Timer;

    :cond_0
    return-void
.end method
