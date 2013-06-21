.class Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;
.super Ljava/lang/Object;
.source "PinchZoomImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->commonConstructorWork(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "rawEvent"

    .prologue
    const/16 v7, 0x8

    const/4 v10, 0x2

    const/high16 v8, 0x4120

    const/4 v9, 0x1

    .line 54
    invoke-static {p2}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->wrap(Landroid/view/MotionEvent;)Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;

    move-result-object v0

    .line 62
    .local v0, event:Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;
    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    .line 106
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v6, v6, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 107
    return v9

    .line 64
    :pswitch_1
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v6, v6, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 65
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->start:Landroid/graphics/PointF;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 66
    const-string v5, "Touch"

    const-string v6, "mode=DRAG"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iput v9, v5, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->mode:I

    goto :goto_0

    .line 70
    :pswitch_2
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    #calls: Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->spacing(Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;)F
    invoke-static {v6, v0}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->access$0(Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;)F

    move-result v6

    iput v6, v5, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->oldDist:F

    .line 71
    const-string v5, "Touch"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "oldDist="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget v7, v7, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->oldDist:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget v5, v5, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->oldDist:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_0

    .line 73
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v6, v6, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 74
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v6, v6, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->mid:Landroid/graphics/PointF;

    #calls: Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->midPoint(Landroid/graphics/PointF;Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;)V
    invoke-static {v5, v6, v0}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->access$1(Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;Landroid/graphics/PointF;Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;)V

    .line 75
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iput v10, v5, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->mode:I

    .line 76
    const-string v5, "Touch"

    const-string v6, "mode=ZOOM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :pswitch_3
    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v6, v6, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->start:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v3, v5

    .line 81
    .local v3, xDiff:I
    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v6, v6, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->start:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v4, v5

    .line 82
    .local v4, yDiff:I
    if-ge v3, v7, :cond_1

    if-ge v4, v7, :cond_1

    .line 83
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->performClick()Z

    .line 86
    .end local v3           #xDiff:I
    .end local v4           #yDiff:I
    :cond_1
    :pswitch_4
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    const/4 v6, 0x0

    iput v6, v5, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->mode:I

    .line 87
    const-string v5, "Touch"

    const-string v6, "mode=NONE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 90
    :pswitch_5
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget v5, v5, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->mode:I

    if-ne v5, v9, :cond_2

    .line 92
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v6, v6, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 93
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v7, v7, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->start:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v8, v8, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->start:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 94
    :cond_2
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget v5, v5, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->mode:I

    if-ne v5, v10, :cond_0

    .line 95
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    #calls: Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->spacing(Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;)F
    invoke-static {v5, v0}, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->access$0(Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;Lcom/spritefish/fastburstcamera/controls/WrapMotionEvent;)F

    move-result v1

    .line 96
    .local v1, newDist:F
    const-string v5, "Touch"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "newDist="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    cmpl-float v5, v1, v8

    if-lez v5, :cond_0

    .line 98
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v6, v6, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 99
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget v5, v5, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->oldDist:F

    div-float v2, v1, v5

    .line 100
    .local v2, scale:F
    iget-object v5, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v6, v6, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->mid:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView$1;->this$0:Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;

    iget-object v7, v7, Lcom/spritefish/fastburstcamera/controls/PinchZoomImageView;->mid:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v2, v2, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
