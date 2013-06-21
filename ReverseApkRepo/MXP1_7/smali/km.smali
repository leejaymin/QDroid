.class public Lkm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;


# direct methods
.method private constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 0

    iput-object p1, p0, Lkm;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;Lkm;)V
    .locals 0

    invoke-direct {p0, p1}, Lkm;-><init>(Lcom/mxtech/videoplayer/ActivityScreen;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lkm;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->대쫫:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    iget-object v0, p0, Lkm;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->留먰븷(Lcom/mxtech/videoplayer/ActivityScreen;)Lcom/mxtech/videoplayer/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/TitleBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkm;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->留먰븷(Lcom/mxtech/videoplayer/ActivityScreen;)Lcom/mxtech/videoplayer/TitleBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mxtech/videoplayer/TitleBar;->setVisibility(I)V

    iget-object v0, p0, Lkm;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityScreen;->궗(Lcom/mxtech/videoplayer/ActivityScreen;Z)V

    iget-object v0, p0, Lkm;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->덉쓣(Lcom/mxtech/videoplayer/ActivityScreen;)V

    :cond_0
    return-void
.end method
