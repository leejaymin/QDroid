.class public Lr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private 癤욱븳援:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lbg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lr;->癤욱븳援:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lr;->癤욱븳援:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbg;

    if-nez v0, :cond_0

    const-string v0, "The ad must be gone, so cancelling the refresh timer."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lbg;->ㅼ꽑嫄곗쓽()V

    goto :goto_0
.end method