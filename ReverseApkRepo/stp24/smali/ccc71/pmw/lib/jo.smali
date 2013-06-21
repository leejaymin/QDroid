.class final Lccc71/pmw/lib/jo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_process;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_process;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/jo;->a:Lccc71/pmw/lib/pmw_process;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 441
    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/jo;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v1, p0, Lccc71/pmw/lib/jo;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 445
    iget-object v1, p0, Lccc71/pmw/lib/jo;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 446
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to start settings activity for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lccc71/pmw/lib/jo;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v3

    iget-object v3, v3, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    :cond_0
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to start settings activity for unknown package: "

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
