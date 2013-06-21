.class final Lccc71/pmw/lib/qn;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_widget_scheduler;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_widget_scheduler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/qn;->a:Lccc71/pmw/lib/pmw_widget_scheduler;

    iput-object p2, p0, Lccc71/pmw/lib/qn;->b:Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/qn;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_widget;->c(Landroid/content/Context;)V

    invoke-static {}, Lccc71/pmw/lib/pmw_widget_scheduler;->c()Lccc71/pmw/lib/pmw_widget_scheduler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lccc71/pmw/lib/pmw_widget_scheduler;->c()Lccc71/pmw/lib/pmw_widget_scheduler;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_widget_scheduler;->a(Lccc71/pmw/lib/pmw_widget_scheduler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/qn;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/at_auto_kill_service;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/qn;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_service;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "process_monitor_widget"

    const-string v1, "Service not running - restarting..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lccc71/pmw/lib/qn;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_service;->b(Landroid/content/Context;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
