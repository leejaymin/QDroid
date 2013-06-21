.class final Lccc71/pmw/lib/ni;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/nh;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/nh;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ni;->a:Lccc71/pmw/lib/nh;

    .line 3415
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 3421
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 3423
    const-string v0, "process_monitor_widget"

    const-string v1, "Resetting exclusion list!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3426
    iget-object v1, p0, Lccc71/pmw/lib/ni;->a:Lccc71/pmw/lib/nh;

    invoke-static {v1}, Lccc71/pmw/lib/nh;->a(Lccc71/pmw/lib/nh;)Lccc71/pmw/lib/pmw_settings;

    move-result-object v1

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_settings;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3428
    iget-object v1, p0, Lccc71/pmw/lib/ni;->a:Lccc71/pmw/lib/nh;

    invoke-static {v1}, Lccc71/pmw/lib/nh;->a(Lccc71/pmw/lib/nh;)Lccc71/pmw/lib/pmw_settings;

    move-result-object v1

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_settings;->c(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3429
    iget-object v1, p0, Lccc71/pmw/lib/ni;->a:Lccc71/pmw/lib/nh;

    invoke-static {v1}, Lccc71/pmw/lib/nh;->a(Lccc71/pmw/lib/nh;)Lccc71/pmw/lib/pmw_settings;

    move-result-object v1

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_settings;->d(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 3431
    iget-object v0, p0, Lccc71/pmw/lib/ni;->a:Lccc71/pmw/lib/nh;

    invoke-static {v0}, Lccc71/pmw/lib/nh;->a(Lccc71/pmw/lib/nh;)Lccc71/pmw/lib/pmw_settings;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/b/q;->a(Landroid/content/Context;)V

    .line 3432
    return-void
.end method
