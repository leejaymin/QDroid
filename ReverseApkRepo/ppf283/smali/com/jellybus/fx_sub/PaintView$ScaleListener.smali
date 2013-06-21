.class Lcom/jellybus/fx_sub/PaintView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "PaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx_sub/PaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx_sub/PaintView;


# direct methods
.method constructor <init>(Lcom/jellybus/fx_sub/PaintView;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .parameter "detector"

    .prologue
    const/4 v7, 0x1

    const v6, 0x3f666666

    const/4 v5, 0x0

    .line 229
    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    iget v3, v3, Lcom/jellybus/fx_sub/PaintView;->mCurrentScaleFactor:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    mul-float v2, v3, v4

    .line 231
    .local v2, targetScale:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    .line 232
    .local v0, currentX:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    .line 233
    .local v1, currentY:F
    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    #getter for: Lcom/jellybus/fx_sub/PaintView;->previousX:F
    invoke-static {v3}, Lcom/jellybus/fx_sub/PaintView;->access$0(Lcom/jellybus/fx_sub/PaintView;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    #getter for: Lcom/jellybus/fx_sub/PaintView;->previousY:F
    invoke-static {v3}, Lcom/jellybus/fx_sub/PaintView;->access$1(Lcom/jellybus/fx_sub/PaintView;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    .line 234
    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    iget-object v4, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    #getter for: Lcom/jellybus/fx_sub/PaintView;->previousX:F
    invoke-static {v4}, Lcom/jellybus/fx_sub/PaintView;->access$0(Lcom/jellybus/fx_sub/PaintView;)F

    move-result v4

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    #getter for: Lcom/jellybus/fx_sub/PaintView;->previousY:F
    invoke-static {v5}, Lcom/jellybus/fx_sub/PaintView;->access$1(Lcom/jellybus/fx_sub/PaintView;)F

    move-result v5

    sub-float v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lcom/jellybus/fx_sub/PaintView;->scrollBy(FF)V

    .line 235
    :cond_0
    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    #setter for: Lcom/jellybus/fx_sub/PaintView;->previousX:F
    invoke-static {v3, v0}, Lcom/jellybus/fx_sub/PaintView;->access$2(Lcom/jellybus/fx_sub/PaintView;F)V

    .line 236
    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    #setter for: Lcom/jellybus/fx_sub/PaintView;->previousY:F
    invoke-static {v3, v1}, Lcom/jellybus/fx_sub/PaintView;->access$3(Lcom/jellybus/fx_sub/PaintView;F)V

    .line 238
    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/PaintView;->getMaxZoom()F

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 239
    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/jellybus/fx_sub/PaintView;->zoomTo(FFF)V

    .line 240
    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    iget-object v4, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    invoke-virtual {v4}, Lcom/jellybus/fx_sub/PaintView;->getMaxZoom()F

    move-result v4

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v3, Lcom/jellybus/fx_sub/PaintView;->mCurrentScaleFactor:F

    .line 241
    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    iput v7, v3, Lcom/jellybus/fx_sub/PaintView;->mDoubleTapDirection:I

    .line 242
    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/PaintView;->invalidate()V

    .line 243
    return v7
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 248
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    #setter for: Lcom/jellybus/fx_sub/PaintView;->previousX:F
    invoke-static {v0, v1}, Lcom/jellybus/fx_sub/PaintView;->access$2(Lcom/jellybus/fx_sub/PaintView;F)V

    .line 249
    iget-object v0, p0, Lcom/jellybus/fx_sub/PaintView$ScaleListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    #setter for: Lcom/jellybus/fx_sub/PaintView;->previousY:F
    invoke-static {v0, v1}, Lcom/jellybus/fx_sub/PaintView;->access$3(Lcom/jellybus/fx_sub/PaintView;F)V

    .line 250
    return-void
.end method
