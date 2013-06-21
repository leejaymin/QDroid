.class public Lccc71/pmw/lib/pmw_main_popup;
.super Lccc71/pmw/lib/pmw_main;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_main;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 12
    const-string v0, "process_monitor_widget"

    const-string v1, "pmw_main_popup.onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main_popup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ccc71.pmw.popup"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 15
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->n(Landroid/content/Context;)Z

    move-result v1

    .line 17
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main_popup;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main_popup;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_monitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main_popup;->startActivity(Landroid/content/Intent;)V

    .line 23
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main_popup;->finish()V

    .line 38
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_main;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void

    .line 27
    :cond_1
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->k(Landroid/content/Context;)Z

    move-result v1

    .line 28
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 31
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main_popup;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main_popup;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_main"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_main_popup;->startActivity(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_main_popup;->finish()V

    goto :goto_0
.end method
