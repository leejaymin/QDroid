.class final Lccc71/bmw/lib/bg;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lccc71/bmw/lib/bmw_history;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccc71/bmw/lib/bg;->a:Ljava/lang/ref/WeakReference;

    .line 50
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lccc71/bmw/lib/bg;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/lib/bmw_history;

    .line 57
    if-eqz v0, :cond_1

    .line 59
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/a/k;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x3fc0

    :goto_0
    invoke-static {v0, v1}, Lccc71/utils/ccc71_scale_view;->setFontSize(Landroid/content/Context;F)V

    .line 60
    sget v1, Lccc71/bmw/lib/d;->bQ:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_history;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lccc71/utils/ccc71_list_view;

    .line 62
    invoke-virtual {v1}, Lccc71/utils/ccc71_list_view;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_1

    .line 64
    :cond_0
    const-string v2, "battery_widget_monitor"

    const-string v3, "bmw_status_history - updating history"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v1}, Lccc71/utils/ccc71_list_view;->getFirstVisiblePosition()I

    move-result v2

    .line 67
    invoke-static {}, Lccc71/bmw/lib/bi;->d()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0}, Lccc71/bmw/lib/bmw_history;->a(Lccc71/bmw/lib/bmw_history;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lccc71/utils/ccc71_list_view;->setHistoryData(Ljava/util/ArrayList;Z)V

    .line 68
    invoke-virtual {v1, v2}, Lccc71/utils/ccc71_list_view;->setSelection(I)V

    .line 70
    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    const/4 v2, 0x0

    iput-boolean v2, v1, Lccc71/utils/ccc71_list_view;->a:Z

    .line 75
    :goto_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    .line 76
    sget v1, Lccc71/bmw/lib/d;->ct:I

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bmw_history;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_1
    return-void

    .line 59
    :cond_2
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 73
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v1, Lccc71/utils/ccc71_list_view;->a:Z

    goto :goto_1
.end method
