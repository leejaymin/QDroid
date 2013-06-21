.class public Lcom/mxtech/videoplayer/VideoZoomButton;
.super Landroid/widget/ZoomButton;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private 癤욱븳援:Lra;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ZoomButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ZoomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ZoomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/ZoomButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/mxtech/videoplayer/VideoZoomButton;->癤욱븳援:Lra;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0, p0}, Lcom/mxtech/videoplayer/VideoZoomButton;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoZoomButton;->癤욱븳援:Lra;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/VideoZoomButton;->癤욱븳援:Lra;

    invoke-interface {v0, p0}, Lra;->癤욱븳援(Lcom/mxtech/videoplayer/VideoZoomButton;)V

    :cond_0
    return-void
.end method

.method public setListener(Lra;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/videoplayer/VideoZoomButton;->癤욱븳援:Lra;

    return-void
.end method
