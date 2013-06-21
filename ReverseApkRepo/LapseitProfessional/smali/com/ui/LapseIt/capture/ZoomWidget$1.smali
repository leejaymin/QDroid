.class Lcom/ui/LapseIt/capture/ZoomWidget$1;
.super Ljava/lang/Object;
.source "ZoomWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/capture/ZoomWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/capture/ZoomWidget;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/ZoomWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/ZoomWidget$1;->this$0:Lcom/ui/LapseIt/capture/ZoomWidget;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x2

    .line 65
    const-string v6, "trace"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Height "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/ui/LapseIt/capture/ZoomWidget$1;->this$0:Lcom/ui/LapseIt/capture/ZoomWidget;

    iget-object v8, v8, Lcom/ui/LapseIt/capture/ZoomWidget;->line:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Top "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/ui/LapseIt/capture/ZoomWidget$1;->this$0:Lcom/ui/LapseIt/capture/ZoomWidget;

    iget-object v8, v8, Lcom/ui/LapseIt/capture/ZoomWidget;->line:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getTop()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v6, p0, Lcom/ui/LapseIt/capture/ZoomWidget$1;->this$0:Lcom/ui/LapseIt/capture/ZoomWidget;

    iget-object v6, v6, Lcom/ui/LapseIt/capture/ZoomWidget;->line:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 68
    .local v1, maxHeight:I
    const-string v6, "trace"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Height : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 124
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 73
    :pswitch_0
    invoke-virtual {p1, v9, v9}, Landroid/view/View;->measure(II)V

    .line 75
    iget-object v6, p0, Lcom/ui/LapseIt/capture/ZoomWidget$1;->this$0:Lcom/ui/LapseIt/capture/ZoomWidget;

    iget-object v7, p0, Lcom/ui/LapseIt/capture/ZoomWidget$1;->this$0:Lcom/ui/LapseIt/capture/ZoomWidget;

    iget-object v7, v7, Lcom/ui/LapseIt/capture/ZoomWidget;->scroller:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Lcom/ui/LapseIt/capture/ZoomWidget;->scrollerTop:F

    goto :goto_0

    .line 80
    :pswitch_1
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    .local v3, objParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xe

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    const/4 v5, 0x0

    .line 86
    .local v5, scrollRatio:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    int-to-float v7, v1

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_2

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    int-to-float v7, v1

    div-float v5, v6, v7

    .line 96
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/ui/LapseIt/capture/ZoomWidget$1;->this$0:Lcom/ui/LapseIt/capture/ZoomWidget;

    iget-object v6, v6, Lcom/ui/LapseIt/capture/ZoomWidget;->zoomRatios:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 98
    .local v2, newZoomRatio:I
    iget-object v6, p0, Lcom/ui/LapseIt/capture/ZoomWidget$1;->this$0:Lcom/ui/LapseIt/capture/ZoomWidget;

    iget v6, v6, Lcom/ui/LapseIt/capture/ZoomWidget;->currentZoomRatio:I

    if-eq v6, v2, :cond_1

    .line 100
    :try_start_0
    const-string v6, "trace"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v6, p0, Lcom/ui/LapseIt/capture/ZoomWidget$1;->this$0:Lcom/ui/LapseIt/capture/ZoomWidget;

    iget-object v6, v6, Lcom/ui/LapseIt/capture/ZoomWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v6, v6, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 102
    .local v4, params:Landroid/hardware/Camera$Parameters;
    invoke-static {v4, v2}, Lcom/ui/LapseIt/capture/CaptureParams;->setZoom(Landroid/hardware/Camera$Parameters;I)Landroid/hardware/Camera$Parameters;

    .line 103
    iget-object v6, p0, Lcom/ui/LapseIt/capture/ZoomWidget$1;->this$0:Lcom/ui/LapseIt/capture/ZoomWidget;

    iget-object v6, v6, Lcom/ui/LapseIt/capture/ZoomWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v6, v6, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v6, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 104
    iget-object v6, p0, Lcom/ui/LapseIt/capture/ZoomWidget$1;->this$0:Lcom/ui/LapseIt/capture/ZoomWidget;

    iput v2, v6, Lcom/ui/LapseIt/capture/ZoomWidget;->currentZoomRatio:I

    .line 105
    const-string v6, "trace"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Mudando dando para"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/ui/LapseIt/capture/ZoomWidget$1;->this$0:Lcom/ui/LapseIt/capture/ZoomWidget;

    iget-object v8, v8, Lcom/ui/LapseIt/capture/ZoomWidget;->zoomRatios:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v4           #params:Landroid/hardware/Camera$Parameters;
    :cond_1
    :goto_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 89
    .end local v2           #newZoomRatio:I
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    cmpg-float v6, v6, v10

    if-gez v6, :cond_3

    .line 90
    const/4 v6, 0x0

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 91
    const/4 v5, 0x0

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    int-to-float v7, v1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v6, v1, v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 94
    const/high16 v5, 0x3f80

    goto/16 :goto_1

    .line 106
    .restart local v2       #newZoomRatio:I
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    const-string v6, "trace"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception while zooming "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 118
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #newZoomRatio:I
    .end local v3           #objParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #scrollRatio:F
    :pswitch_2
    :try_start_1
    iget-object v6, p0, Lcom/ui/LapseIt/capture/ZoomWidget$1;->this$0:Lcom/ui/LapseIt/capture/ZoomWidget;

    iget-object v6, v6, Lcom/ui/LapseIt/capture/ZoomWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v6, v6, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/ui/LapseIt/capture/ZoomWidget$1;->this$0:Lcom/ui/LapseIt/capture/ZoomWidget;

    iget-object v7, v7, Lcom/ui/LapseIt/capture/ZoomWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 119
    :catch_1
    move-exception v0

    .line 120
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
