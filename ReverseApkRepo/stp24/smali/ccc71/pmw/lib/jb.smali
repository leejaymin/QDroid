.class final Lccc71/pmw/lib/jb;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/ja;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/ja;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/jb;->a:Lccc71/pmw/lib/ja;

    .line 970
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/jb;->a:Lccc71/pmw/lib/ja;

    invoke-static {v0}, Lccc71/pmw/lib/ja;->a(Lccc71/pmw/lib/ja;)Lccc71/pmw/lib/pmw_monitor;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/at_auto_kill_service;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/jb;->a:Lccc71/pmw/lib/ja;

    invoke-static {v0}, Lccc71/pmw/lib/ja;->a(Lccc71/pmw/lib/ja;)Lccc71/pmw/lib/pmw_monitor;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_monitor;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/jb;->a:Lccc71/pmw/lib/ja;

    invoke-static {v0}, Lccc71/pmw/lib/ja;->a(Lccc71/pmw/lib/ja;)Lccc71/pmw/lib/pmw_monitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_monitor;->a(Z)V

    :cond_0
    return-void
.end method
