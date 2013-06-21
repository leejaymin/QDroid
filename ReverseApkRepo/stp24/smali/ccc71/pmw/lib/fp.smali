.class final Lccc71/pmw/lib/fp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_event_apps;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_event_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/fp;->a:Lccc71/pmw/lib/pmw_event_apps;

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 484
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/fv;

    .line 486
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 487
    iget-object v2, p0, Lccc71/pmw/lib/fp;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_event_apps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccc71/pmw/lib/fp;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-virtual {v4}, Lccc71/pmw/lib/pmw_event_apps;->getPackageName()Ljava/lang/String;

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

    .line 488
    const-string v2, "ccc71.pmw.packagename"

    iget-object v0, v0, Lccc71/pmw/lib/fv;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    const-string v0, "ccc71.pmw.activities"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 493
    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/fp;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_event_apps;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return v5

    .line 497
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    const-string v1, "Could not launch package process details"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
