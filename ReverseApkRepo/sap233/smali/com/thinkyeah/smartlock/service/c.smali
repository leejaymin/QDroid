.class final Lcom/thinkyeah/smartlock/service/c;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/service/MonitorService;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/service/MonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/service/c;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/c;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->d(Lcom/thinkyeah/smartlock/service/MonitorService;)V

    iget-object v1, p0, Lcom/thinkyeah/smartlock/service/c;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/c;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    const-string v2, "NotificationTransparent"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f02002d

    :goto_0
    invoke-static {v1, v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;I)Landroid/app/Notification;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/c;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->h(Lcom/thinkyeah/smartlock/service/MonitorService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/c;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->a(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/service/k;->a(Z)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f02002c

    goto :goto_0
.end method
