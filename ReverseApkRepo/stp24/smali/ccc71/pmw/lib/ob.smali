.class final Lccc71/pmw/lib/ob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_startup_apps;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_startup_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ob;->a:Lccc71/pmw/lib/pmw_startup_apps;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 300
    iget-object v1, p0, Lccc71/pmw/lib/ob;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_startup_apps;->a(Lccc71/pmw/lib/pmw_startup_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/of;

    .line 302
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 303
    iget-object v2, p0, Lccc71/pmw/lib/ob;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_startup_apps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccc71/pmw/lib/ob;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-virtual {v4}, Lccc71/pmw/lib/pmw_startup_apps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".pmw_process"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v2, "ccc71.pmw.packagename"

    iget-object v0, v0, Lccc71/pmw/lib/of;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v0, "ccc71.pmw.activities"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/ob;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_startup_apps;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    const-string v1, "Could not launch package process details"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
