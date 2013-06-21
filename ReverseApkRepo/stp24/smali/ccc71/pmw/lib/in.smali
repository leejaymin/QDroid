.class final Lccc71/pmw/lib/in;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_monitor;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_monitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/in;->a:Lccc71/pmw/lib/pmw_monitor;

    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 878
    iget-object v0, p0, Lccc71/pmw/lib/in;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_monitor;->a(Lccc71/pmw/lib/pmw_monitor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/in;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_monitor;->b(Lccc71/pmw/lib/pmw_monitor;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 880
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Selecting recorded process pid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v0, p0, Lccc71/pmw/lib/in;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_monitor;->a(Lccc71/pmw/lib/pmw_monitor;I)V

    .line 883
    iget-object v0, p0, Lccc71/pmw/lib/in;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_monitor;->c(Lccc71/pmw/lib/pmw_monitor;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lccc71/pmw/lib/in;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_monitor;->c(Lccc71/pmw/lib/pmw_monitor;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setSelectedProcess(I)V

    .line 886
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/in;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0, v3}, Lccc71/pmw/lib/pmw_monitor;->c(Z)V

    .line 887
    iget-object v0, p0, Lccc71/pmw/lib/in;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v0, v3}, Lccc71/pmw/lib/pmw_monitor;->b(Z)V

    .line 905
    :goto_0
    return-void

    .line 891
    :cond_1
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching process details on pid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 896
    iget-object v1, p0, Lccc71/pmw/lib/in;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_monitor;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccc71/pmw/lib/in;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_monitor;->getPackageName()Ljava/lang/String;

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

    .line 897
    const-string v1, "ccc71.pmw.pid"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    iget-object v1, p0, Lccc71/pmw/lib/in;->a:Lccc71/pmw/lib/pmw_monitor;

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pmw_monitor;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 900
    :catch_0
    move-exception v0

    .line 902
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error launching process details:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
