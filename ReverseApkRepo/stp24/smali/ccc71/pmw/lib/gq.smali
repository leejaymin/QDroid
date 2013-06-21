.class final Lccc71/pmw/lib/gq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_logcat;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_logcat;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/gq;->a:Lccc71/pmw/lib/pmw_logcat;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lccc71/pmw/lib/gq;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->e(Lccc71/pmw/lib/pmw_logcat;)Lccc71/pmw/b/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lccc71/pmw/lib/gq;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->e(Lccc71/pmw/lib/pmw_logcat;)Lccc71/pmw/b/p;

    move-result-object v0

    iget-object v1, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    .line 426
    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/gq;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_logcat;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 427
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 428
    iget-object v2, p0, Lccc71/pmw/lib/gq;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-virtual {v2, v0}, Lccc71/pmw/lib/pmw_logcat;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 432
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to start activity "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
