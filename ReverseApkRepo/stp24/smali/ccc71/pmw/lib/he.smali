.class final Lccc71/pmw/lib/he;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lccc71/pmw/lib/pmw_logcat;)V
    .locals 1
    .parameter

    .prologue
    .line 1399
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1401
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccc71/pmw/lib/he;->a:Ljava/lang/ref/WeakReference;

    .line 1402
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 1406
    iget-object v0, p0, Lccc71/pmw/lib/he;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/pmw/lib/pmw_logcat;

    .line 1408
    if-eqz v0, :cond_0

    .line 1409
    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->k(Lccc71/pmw/lib/pmw_logcat;)V

    .line 1410
    :cond_0
    return-void
.end method
