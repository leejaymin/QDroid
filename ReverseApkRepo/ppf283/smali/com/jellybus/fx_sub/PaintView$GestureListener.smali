.class Lcom/jellybus/fx_sub/PaintView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx_sub/PaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx_sub/PaintView;


# direct methods
.method constructor <init>(Lcom/jellybus/fx_sub/PaintView;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/jellybus/fx_sub/PaintView$GestureListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    .line 179
    iget-object v2, p0, Lcom/jellybus/fx_sub/PaintView$GestureListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/PaintView;->getScale()F

    move-result v0

    .line 180
    .local v0, scale:F
    move v1, v0

    .line 181
    .local v1, targetScale:F
    iget-object v2, p0, Lcom/jellybus/fx_sub/PaintView$GestureListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    iget-object v3, p0, Lcom/jellybus/fx_sub/PaintView$GestureListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    invoke-virtual {v3}, Lcom/jellybus/fx_sub/PaintView;->getMaxZoom()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/jellybus/fx_sub/PaintView;->onDoubleTapPost(FF)F

    move-result v1

    .line 185
    iget-object v2, p0, Lcom/jellybus/fx_sub/PaintView$GestureListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/PaintView;->getMaxZoom()F

    move-result v2

    const v3, 0x3f666666

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 186
    iget-object v2, p0, Lcom/jellybus/fx_sub/PaintView$GestureListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    iput v1, v2, Lcom/jellybus/fx_sub/PaintView;->mCurrentScaleFactor:F

    .line 187
    iget-object v2, p0, Lcom/jellybus/fx_sub/PaintView$GestureListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/high16 v5, 0x4348

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/jellybus/fx_sub/PaintView;->zoomTo(FFFF)V

    .line 188
    iget-object v2, p0, Lcom/jellybus/fx_sub/PaintView$GestureListener;->this$0:Lcom/jellybus/fx_sub/PaintView;

    invoke-virtual {v2}, Lcom/jellybus/fx_sub/PaintView;->invalidate()V

    .line 189
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method
