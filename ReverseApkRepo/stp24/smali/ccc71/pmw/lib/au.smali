.class final Lccc71/pmw/lib/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/at;

.field private final synthetic b:Landroid/app/ActivityManager$RunningAppProcessInfo;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/at;Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/au;->a:Lccc71/pmw/lib/at;

    iput-object p2, p0, Lccc71/pmw/lib/au;->b:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2015
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2016
    iget-object v1, p0, Lccc71/pmw/lib/au;->a:Lccc71/pmw/lib/at;

    invoke-static {v1}, Lccc71/pmw/lib/at;->a(Lccc71/pmw/lib/at;)Lccc71/pmw/lib/as;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/as;->a(Lccc71/pmw/lib/as;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v1

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_applist;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccc71/pmw/lib/au;->a:Lccc71/pmw/lib/at;

    invoke-static {v3}, Lccc71/pmw/lib/at;->a(Lccc71/pmw/lib/at;)Lccc71/pmw/lib/as;

    move-result-object v3

    invoke-static {v3}, Lccc71/pmw/lib/as;->a(Lccc71/pmw/lib/as;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v3

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_applist;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_logcat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2017
    const-string v1, "ccc71.pmw.pid"

    iget-object v2, p0, Lccc71/pmw/lib/au;->b:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2018
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2019
    iget-object v1, p0, Lccc71/pmw/lib/au;->a:Lccc71/pmw/lib/at;

    invoke-static {v1}, Lccc71/pmw/lib/at;->a(Lccc71/pmw/lib/at;)Lccc71/pmw/lib/as;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/as;->a(Lccc71/pmw/lib/as;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pmw_applist;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2025
    :goto_0
    return-void

    .line 2021
    :catch_0
    move-exception v0

    .line 2023
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to start log activity: "

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
