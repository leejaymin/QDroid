.class final Lccc71/pmw/lib/gz;
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
    iput-object p1, p0, Lccc71/pmw/lib/gz;->a:Lccc71/pmw/lib/pmw_logcat;

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 806
    iget-object v0, p0, Lccc71/pmw/lib/gz;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->g(Lccc71/pmw/lib/pmw_logcat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    const/16 v0, 0x10

    invoke-static {v0}, Lccc71/utils/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_1

    .line 810
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 811
    const-string v1, "ccc71.pmw.system"

    const-string v2, "ccc71.at.system.at_command_receiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    const-string v1, "lc -c"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    iget-object v1, p0, Lccc71/pmw/lib/gz;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pmw_logcat;->sendBroadcast(Landroid/content/Intent;)V

    .line 823
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lccc71/pmw/lib/pmw_logcat;->e()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    :goto_1
    return-void

    .line 817
    :cond_1
    new-instance v0, Lccc71/pmw/b/h;

    const-string v1, "logcat -c"

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lccc71/pmw/lib/gz;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_logcat;->h(Lccc71/pmw/lib/pmw_logcat;)Z

    move-result v5

    iget-object v4, p0, Lccc71/pmw/lib/gz;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_logcat;->h(Lccc71/pmw/lib/pmw_logcat;)Z

    move-result v6

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lccc71/pmw/b/h;-><init>(Ljava/lang/String;Landroid/os/Handler;ZLjava/lang/Object;ZZ)V

    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    .line 827
    const-string v1, "android_tuner"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to clear logcat screen: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
