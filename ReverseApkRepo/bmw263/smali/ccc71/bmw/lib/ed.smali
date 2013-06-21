.class final Lccc71/bmw/lib/ed;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lccc71/bmw/lib/bmw_status;)V
    .locals 1
    .parameter

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 239
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccc71/bmw/lib/ed;->a:Ljava/lang/ref/WeakReference;

    .line 240
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 245
    iget-object v0, p0, Lccc71/bmw/lib/ed;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/lib/bmw_status;

    .line 247
    if-eqz v0, :cond_1

    .line 249
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 258
    :cond_0
    :goto_0
    invoke-static {v1}, Lccc71/bmw/lib/bmw_status;->a(Z)V

    .line 260
    invoke-static {v0}, Lccc71/bmw/lib/bmw_status;->b(Lccc71/bmw/lib/bmw_status;)V

    .line 262
    :cond_1
    return-void

    .line 258
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method
