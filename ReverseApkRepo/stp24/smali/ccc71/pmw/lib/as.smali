.class final Lccc71/pmw/lib/as;
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
    iput-object p1, p0, Lccc71/pmw/lib/as;->a:Lccc71/pmw/lib/pmw_applist;

    .line 1964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/as;)Lccc71/pmw/lib/pmw_applist;
    .locals 1
    .parameter

    .prologue
    .line 1964
    iget-object v0, p0, Lccc71/pmw/lib/as;->a:Lccc71/pmw/lib/pmw_applist;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1969
    iget-object v0, p0, Lccc71/pmw/lib/as;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v0, v0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 1973
    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/as;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/as;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v1, v1, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1974
    iget-object v1, p0, Lccc71/pmw/lib/as;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pmw_applist;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1985
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1986
    iget-object v1, p0, Lccc71/pmw/lib/as;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v1, v1, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    .line 1987
    new-instance v2, Lccc71/pmw/lib/at;

    invoke-direct {v2, p0, v1, v0}, Lccc71/pmw/lib/at;-><init>(Lccc71/pmw/lib/as;Landroid/content/pm/ApplicationInfo;Landroid/os/Handler;)V

    .line 2039
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 2040
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2041
    :goto_0
    return-void

    .line 1978
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not launch package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/as;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v2, v2, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
