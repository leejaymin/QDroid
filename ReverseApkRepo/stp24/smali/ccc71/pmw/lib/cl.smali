.class final Lccc71/pmw/lib/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_applist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_applist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/cl;->a:Lccc71/pmw/lib/pmw_applist;

    .line 1669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 1674
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1675
    iget-object v1, p0, Lccc71/pmw/lib/cl;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_applist;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccc71/pmw/lib/cl;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_applist;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1676
    const-string v1, "ccc71.pmw.packagename"

    iget-object v2, p0, Lccc71/pmw/lib/cl;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v2, v2, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1680
    :try_start_0
    iget-object v1, p0, Lccc71/pmw/lib/cl;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pmw_applist;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1686
    :goto_0
    return-void

    .line 1684
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    const-string v1, "Could not launch package process details"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
