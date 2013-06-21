.class public Lcom/kms/gui/widget/WidgetEventsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.kms.gui.widget.CLICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 22
    const-class v2, Lgd;

    monitor-enter v2

    .line 23
    :try_start_0
    iget-object v3, v0, Lgd;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lgd;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 24
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    invoke-static {v2}, LcW;->a(Landroid/content/Intent;)V

    .line 28
    if-eqz v0, :cond_3

    .line 30
    const-string v0, "com.kms.gui.entercodemode"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    :cond_1
    return-void

    .line 23
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 34
    :cond_3
    const-string v0, "com.kms.gui.entercodemode"

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    const-string v0, "com.kms.gui.codeexpiration"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method
