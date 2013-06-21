.class final Lccc71/pmw/lib/ks;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lccc71/pmw/lib/pmw_recorder;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_recorder;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ks;->a:Lccc71/pmw/lib/pmw_recorder;

    iput-object p2, p0, Lccc71/pmw/lib/ks;->b:Landroid/content/Context;

    .line 310
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/ks;->a:Lccc71/pmw/lib/pmw_recorder;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_recorder;->d(Lccc71/pmw/lib/pmw_recorder;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/ks;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_notif_scheduler;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lccc71/pmw/lib/ks;->b:Landroid/content/Context;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_widget;->c(Landroid/content/Context;)V

    const-string v0, "process_monitor_widget"

    const-string v1, "UNregistered pmw_recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
