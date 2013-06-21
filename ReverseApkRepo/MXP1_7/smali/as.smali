.class public Las;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private 癤욱븳援:Ljava/lang/ref/WeakReference;

.field private 궗:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/AdVideoView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Las;->癤욱븳援:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Las;->궗:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Las;->癤욱븳援:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/AdVideoView;

    if-nez v0, :cond_0

    const-string v0, "The video must be gone, so cancelling the timeupdate task."

    invoke-static {v0}, Lcv;->ㅼ꽑嫄(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/internal/AdVideoView;->쇰뒗()V

    iget-object v0, p0, Las;->궗:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public 癤욱븳援()V
    .locals 3

    iget-object v0, p0, Las;->궗:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
