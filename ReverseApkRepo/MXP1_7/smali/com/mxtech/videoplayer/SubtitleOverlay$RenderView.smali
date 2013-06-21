.class public Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;
.super Landroid/view/View;


# instance fields
.field private ㅼ꽑嫄:Ljava/util/List;

.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/SubtitleOverlay;

.field private 궗:Loc;

.field private 먯꽌:Z


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/SubtitleOverlay;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->癤욱븳援:Lcom/mxtech/videoplayer/SubtitleOverlay;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->먯꽌:Z

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->궗:Loc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->궗:Loc;

    iget-object v0, v0, Loc;->癤욱븳援:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->궗:Loc;

    iget-object v0, v0, Loc;->癤욱븳援:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->궗:Loc;

    const/4 v1, 0x0

    iput-object v1, v0, Loc;->癤욱븳援:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->ㅼ꽑嫄:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->癤욱븳援:Lcom/mxtech/videoplayer/SubtitleOverlay;

    invoke-static {v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->癤욱븳援(Lcom/mxtech/videoplayer/SubtitleOverlay;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->癤욱븳援:Lcom/mxtech/videoplayer/SubtitleOverlay;

    invoke-static {v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->궗(Lcom/mxtech/videoplayer/SubtitleOverlay;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->ㅼ꽑嫄:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Loc;->癤욱븳援(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhe;

    instance-of v4, v0, Lhf;

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->먯꽌:Z

    if-eqz v4, :cond_4

    iget-object v1, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->궗:Loc;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->癤욱븳援:Lcom/mxtech/videoplayer/SubtitleOverlay;

    invoke-static {v4}, Lcom/mxtech/videoplayer/SubtitleOverlay;->먯꽌(Lcom/mxtech/videoplayer/SubtitleOverlay;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->癤욱븳援:Lcom/mxtech/videoplayer/SubtitleOverlay;

    invoke-static {v4}, Lcom/mxtech/videoplayer/SubtitleOverlay;->ㅼ꽑嫄(Lcom/mxtech/videoplayer/SubtitleOverlay;)Loc;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v1, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->癤욱븳援:Lcom/mxtech/videoplayer/SubtitleOverlay;

    new-instance v4, Loc;

    invoke-direct {v4, v2}, Loc;-><init>(Loc;)V

    invoke-static {v1, v4}, Lcom/mxtech/videoplayer/SubtitleOverlay;->癤욱븳援(Lcom/mxtech/videoplayer/SubtitleOverlay;Loc;)V

    iget-object v1, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->癤욱븳援:Lcom/mxtech/videoplayer/SubtitleOverlay;

    invoke-static {v1}, Lcom/mxtech/videoplayer/SubtitleOverlay;->ㅼ꽑嫄(Lcom/mxtech/videoplayer/SubtitleOverlay;)Loc;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->getHeight()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Loc;->癤욱븳援(II)V

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->癤욱븳援:Lcom/mxtech/videoplayer/SubtitleOverlay;

    invoke-static {v1}, Lcom/mxtech/videoplayer/SubtitleOverlay;->ㅼ꽑嫄(Lcom/mxtech/videoplayer/SubtitleOverlay;)Loc;

    move-result-object v1

    :goto_3
    iget-object v4, v1, Loc;->癤욱븳援:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    check-cast v0, Lhf;

    iget-object v4, v1, Loc;->癤욱븳援:Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v4}, Lhf;->癤욱븳援(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_6
    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->癤욱븳援:Lcom/mxtech/videoplayer/SubtitleOverlay;

    invoke-static {v1}, Lcom/mxtech/videoplayer/SubtitleOverlay;->ㅼ꽑嫄(Lcom/mxtech/videoplayer/SubtitleOverlay;)Loc;

    move-result-object v1

    iget-object v1, v1, Loc;->癤욱븳援:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->癤욱븳援:Lcom/mxtech/videoplayer/SubtitleOverlay;

    invoke-static {v1}, Lcom/mxtech/videoplayer/SubtitleOverlay;->ㅼ꽑嫄(Lcom/mxtech/videoplayer/SubtitleOverlay;)Loc;

    move-result-object v1

    iget-object v1, v1, Loc;->癤욱븳援:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->궗:Loc;

    if-nez v4, :cond_9

    new-instance v1, Loc;

    invoke-direct {v1, v2}, Loc;-><init>(Loc;)V

    iput-object v1, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->궗:Loc;

    iget-object v1, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->궗:Loc;

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->getHeight()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Loc;->癤욱븳援(II)V

    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->궗:Loc;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->먯꽌:Z

    goto :goto_3

    :cond_9
    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->궗:Loc;

    iget-object v1, v1, Loc;->癤욱븳援:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->궗:Loc;

    iget-object v1, v1, Loc;->癤욱븳援:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_4

    :cond_a
    invoke-interface {v0, p1}, Lhe;->癤욱븳援(Landroid/graphics/Canvas;)V

    goto/16 :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->ㅼ꽑嫄:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->ㅼ꽑嫄()V

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->궗:Loc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->궗:Loc;

    invoke-virtual {v0, p1, p2}, Loc;->癤욱븳援(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->먯꽌:Z

    :cond_1
    return-void
.end method

.method public setFrames(Ljava/util/List;)V
    .locals 1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->ㅼ꽑嫄:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->ㅼ꽑嫄:Ljava/util/List;

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->먯꽌:Z

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->invalidate()V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->ㅼ꽑嫄:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->ㅼ꽑嫄()V

    goto :goto_1
.end method

.method ㅼ꽑嫄()V
    .locals 6

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->癤욱븳援:Lcom/mxtech/videoplayer/SubtitleOverlay;

    invoke-static {v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->癤욱븳援(Lcom/mxtech/videoplayer/SubtitleOverlay;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->癤욱븳援:Lcom/mxtech/videoplayer/SubtitleOverlay;

    invoke-static {v0}, Lcom/mxtech/videoplayer/SubtitleOverlay;->궗(Lcom/mxtech/videoplayer/SubtitleOverlay;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->getHeight()I

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->ㅼ꽑嫄:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhe;

    iget-object v4, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->癤욱븳援:Lcom/mxtech/videoplayer/SubtitleOverlay;

    invoke-static {v4}, Lcom/mxtech/videoplayer/SubtitleOverlay;->癤욱븳援(Lcom/mxtech/videoplayer/SubtitleOverlay;)I

    move-result v4

    iget-object v5, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->癤욱븳援:Lcom/mxtech/videoplayer/SubtitleOverlay;

    invoke-static {v5}, Lcom/mxtech/videoplayer/SubtitleOverlay;->궗(Lcom/mxtech/videoplayer/SubtitleOverlay;)I

    move-result v5

    invoke-interface {v0, v1, v2, v4, v5}, Lhe;->癤욱븳援(IIII)V

    goto :goto_0
.end method

.method public 癤욱븳援()Z
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->ㅼ꽑嫄:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 궗()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->ㅼ꽑嫄:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->먯꽌:Z

    return-void
.end method

.method public 먯꽌()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mxtech/videoplayer/SubtitleOverlay$RenderView;->먯꽌:Z

    return-void
.end method
