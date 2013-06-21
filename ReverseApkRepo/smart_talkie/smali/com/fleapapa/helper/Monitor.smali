.class public Lcom/fleapapa/helper/Monitor;
.super Landroid/app/Service;
.source "Monitor.java"


# static fields
.field public static final INTENT_MONITOR:Ljava/lang/String; = "com.fleapapa.helper.intent.action.Monitor"

.field public static final WHO:Ljava/lang/String; = "Monitor"

.field static handler:Landroid/os/Handler;

.field public static started:Z

.field static tHello:I

.field static usingBattery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x708

    sput v0, Lcom/fleapapa/helper/Monitor;->tHello:I

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fleapapa/helper/Monitor;->usingBattery:Z

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Monitor: context="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 117
    sget-boolean v0, Lcom/fleapapa/helper/Monitor;->started:Z

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fleapapa/helper/Monitor;->started:Z

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fleapapa.helper.intent.action.Monitor"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "Monitor.start: fail to start com.fleapapa.helper.intent.action.Monitor service!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 123
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fleapapa/helper/Monitor;->started:Z

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fleapapa.helper.intent.action.Monitor"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 125
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 31
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v3, "Monitor.onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v1, Lcom/fleapapa/helper/Monitor$1;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/Monitor$1;-><init>(Lcom/fleapapa/helper/Monitor;)V

    .line 74
    .local v1, battReceiver:Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, battFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0, v1, v0}, Lcom/fleapapa/helper/Monitor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "Monitor.onDestroy!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sput-object v2, Lcom/fleapapa/helper/Monitor;->handler:Landroid/os/Handler;

    .line 81
    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa;->stop()V

    .line 82
    sput-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    .line 84
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 85
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 6
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 87
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v2, "Monitor.onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 89
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/fleapapa/helper/CallPapa;

    invoke-direct {v1}, Lcom/fleapapa/helper/CallPapa;-><init>()V

    invoke-virtual {v1}, Lcom/fleapapa/helper/CallPapa;->start()Z

    .line 93
    :cond_0
    new-instance v0, Lcom/fleapapa/helper/Monitor$2;

    invoke-direct {v0, p0}, Lcom/fleapapa/helper/Monitor$2;-><init>(Lcom/fleapapa/helper/Monitor;)V

    .line 108
    .local v0, hello:Ljava/lang/Runnable;
    sget-object v1, Lcom/fleapapa/helper/Monitor;->handler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 109
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sput-object v1, Lcom/fleapapa/helper/Monitor;->handler:Landroid/os/Handler;

    .line 110
    sget-object v1, Lcom/fleapapa/helper/Monitor;->handler:Landroid/os/Handler;

    sget v2, Lcom/fleapapa/helper/Monitor;->tHello:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    :cond_1
    return-void
.end method
