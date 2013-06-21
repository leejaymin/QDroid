.class public Lqj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/VideoController;


# direct methods
.method private constructor <init>(Lcom/mxtech/videoplayer/VideoController;)V
    .locals 0

    iput-object p1, p0, Lqj;->癤욱븳援:Lcom/mxtech/videoplayer/VideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mxtech/videoplayer/VideoController;Lqj;)V
    .locals 0

    invoke-direct {p0, p1}, Lqj;-><init>(Lcom/mxtech/videoplayer/VideoController;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lqj;->癤욱븳援:Lcom/mxtech/videoplayer/VideoController;

    invoke-virtual {v0, p0}, Lcom/mxtech/videoplayer/VideoController;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lqj;->癤욱븳援:Lcom/mxtech/videoplayer/VideoController;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/VideoController;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lqj;->癤욱븳援:Lcom/mxtech/videoplayer/VideoController;

    invoke-static {v0}, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援(Lcom/mxtech/videoplayer/VideoController;)Lqk;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lqj;->癤욱븳援:Lcom/mxtech/videoplayer/VideoController;

    invoke-static {v0}, Lcom/mxtech/videoplayer/VideoController;->癤욱븳援(Lcom/mxtech/videoplayer/VideoController;)Lqk;

    move-result-object v0

    iget-object v1, p0, Lqj;->癤욱븳援:Lcom/mxtech/videoplayer/VideoController;

    invoke-interface {v0, v1}, Lqk;->癤욱븳援(Lcom/mxtech/videoplayer/VideoController;)V

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lqj;->癤욱븳援:Lcom/mxtech/videoplayer/VideoController;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mxtech/videoplayer/VideoController;->setVisibility(I)V

    goto :goto_0
.end method
