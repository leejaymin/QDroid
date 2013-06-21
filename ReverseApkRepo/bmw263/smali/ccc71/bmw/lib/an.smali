.class final Lccc71/bmw/lib/an;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lccc71/bmw/lib/bmw_estimates;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccc71/bmw/lib/an;->a:Ljava/lang/ref/WeakReference;

    .line 105
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lccc71/bmw/lib/an;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/lib/bmw_estimates;

    .line 112
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_estimates;->a()V

    .line 116
    :cond_0
    return-void
.end method
