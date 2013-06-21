.class public Lccc71/pmw/lib/pmw_tweaker;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 14
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pmw_tweaker got intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const-string v1, "ccc71.pmw.KILLALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccc71/pmw/lib/at_auto_kill_service;->a(Landroid/content/Context;Z)V

    .line 43
    :cond_0
    :goto_0
    invoke-static {p1}, Lccc71/pmw/lib/pmw_service;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    const-string v0, "process_monitor_widget"

    const-string v1, "Service not running - restarting..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p1}, Lccc71/pmw/lib/pmw_service;->b(Landroid/content/Context;)V

    .line 48
    :cond_1
    return-void

    .line 20
    :cond_2
    const-string v1, "ccc71.pmw.KILLORSTART"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccc71/pmw/lib/at_auto_kill_service;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 24
    :cond_3
    const-string v1, "ccc71.pmw.RECORDER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 26
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 28
    invoke-static {p1}, Lccc71/pmw/lib/pmw_recorder_service;->a(Landroid/content/Context;)V

    .line 36
    :goto_1
    invoke-static {p1}, Lccc71/pmw/lib/pmw_widget;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 32
    :cond_4
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->d()V

    .line 33
    invoke-static {p1}, Lccc71/pmw/lib/pmw_recorder_service;->b(Landroid/content/Context;)V

    goto :goto_1

    .line 38
    :cond_5
    const-string v1, "ccc71.pmw.UPDATE_WIDGET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p1}, Lccc71/pmw/lib/pmw_widget;->c(Landroid/content/Context;)V

    goto :goto_0
.end method
