.class public final Lcom/thinkyeah/smartlock/service/f;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/thinkyeah/smartlock/service/a;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/service/MonitorService;


# direct methods
.method public constructor <init>(Lcom/thinkyeah/smartlock/service/MonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/k;->b()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-virtual {v0, p1}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 5

    const v0, 0x7f02002d

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/service/MonitorService;->c(Lcom/thinkyeah/smartlock/service/MonitorService;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    const-string v3, "NotificationTransparent"

    invoke-static {v2, v3, v4}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    const v2, 0x7f0900c6

    invoke-static {v1, v0, v2}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;II)Landroid/app/Notification;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    const v2, 0x132dc49

    invoke-virtual {v1, v2, v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f02002c

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    const-string v3, "NotificationTransparent"

    invoke-static {v2, v3, v4}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    const v2, 0x7f0900c7

    invoke-static {v1, v0, v2}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;II)Landroid/app/Notification;

    move-result-object v0

    goto :goto_1

    :cond_3
    const v0, 0x7f02002e

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/thinkyeah/smartlock/service/k;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/service/MonitorService;->stopForeground(Z)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->b(Lcom/thinkyeah/smartlock/service/MonitorService;)Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x132dc49

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->c(Lcom/thinkyeah/smartlock/service/MonitorService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    const-string v2, "NotificationTransparent"

    invoke-static {v0, v2, v3}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f02002d

    :goto_0
    invoke-static {v1, v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;I)Landroid/app/Notification;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->d(Lcom/thinkyeah/smartlock/service/MonitorService;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->e(Lcom/thinkyeah/smartlock/service/MonitorService;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->e(Lcom/thinkyeah/smartlock/service/MonitorService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->f(Lcom/thinkyeah/smartlock/service/MonitorService;)V

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/k;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/thinkyeah/smartlock/service/k;->a(Z)V

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f02002c

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->b()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/k;->c()V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/k;->d()V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/k;->e()V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/k;->f()V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/k;->g()V

    return-void
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/k;->h()V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/k;->i()V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/k;->j()V

    return-void
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/k;->a()V

    return-void
.end method

.method public final p()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->c(Lcom/thinkyeah/smartlock/service/MonitorService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/k;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/thinkyeah/smartlock/service/k;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    const-string v1, "ScreenOffLock"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->e(Lcom/thinkyeah/smartlock/service/MonitorService;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->e(Lcom/thinkyeah/smartlock/service/MonitorService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->f(Lcom/thinkyeah/smartlock/service/MonitorService;)V

    :cond_2
    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->d(Lcom/thinkyeah/smartlock/service/MonitorService;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/k;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/thinkyeah/smartlock/service/k;->a(Z)V

    iget-object v1, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/f;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    const-string v2, "NotificationTransparent"

    invoke-static {v0, v2, v3}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f02002d

    :goto_1
    invoke-static {v1, v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;I)Landroid/app/Notification;

    goto :goto_0

    :cond_3
    const v0, 0x7f02002c

    goto :goto_1
.end method
