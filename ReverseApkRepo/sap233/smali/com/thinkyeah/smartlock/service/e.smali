.class public final Lcom/thinkyeah/smartlock/service/e;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/service/MonitorService;


# direct methods
.method public constructor <init>(Lcom/thinkyeah/smartlock/service/MonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/service/e;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/e;->a:Lcom/thinkyeah/smartlock/service/MonitorService;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/MonitorService;->g(Lcom/thinkyeah/smartlock/service/MonitorService;)Lcom/thinkyeah/smartlock/service/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/service/f;->p()V

    return-void
.end method
