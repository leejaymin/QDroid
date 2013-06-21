.class public Lcom/ui/LapseIt/capture/ZoomWidget;
.super Landroid/widget/RelativeLayout;
.source "ZoomWidget.java"


# instance fields
.field currentZoomRatio:I

.field dm:Landroid/util/DisplayMetrics;

.field line:Landroid/widget/ImageView;

.field parent:Lcom/ui/LapseIt/capture/CaptureView;

.field scroller:Landroid/widget/RelativeLayout;

.field scrollerTop:F

.field touchListener:Landroid/view/View$OnTouchListener;

.field zoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field zoomWidget:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ui/LapseIt/capture/CaptureView;)V
    .locals 4
    .parameter "captureView"

    .prologue
    const/4 v3, -0x2

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v1, Lcom/ui/LapseIt/capture/ZoomWidget$1;

    invoke-direct {v1, p0}, Lcom/ui/LapseIt/capture/ZoomWidget$1;-><init>(Lcom/ui/LapseIt/capture/ZoomWidget;)V

    iput-object v1, p0, Lcom/ui/LapseIt/capture/ZoomWidget;->touchListener:Landroid/view/View$OnTouchListener;

    .line 35
    iput-object p1, p0, Lcom/ui/LapseIt/capture/ZoomWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    .line 37
    invoke-static {}, Lcom/ui/LapseIt/capture/CaptureParams;->getInstance()Lcom/ui/LapseIt/capture/CaptureParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ui/LapseIt/capture/CaptureParams;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ui/LapseIt/capture/ZoomWidget;->zoomRatios:Ljava/util/List;

    .line 39
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ZoomWidget;->zoomRatios:Ljava/util/List;

    if-nez v1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ZoomWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/capture/CaptureView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030032

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ui/LapseIt/capture/ZoomWidget;->zoomWidget:Landroid/view/View;

    .line 45
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 48
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ZoomWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v1, p0, v0}, Lcom/ui/LapseIt/capture/CaptureView;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/ui/LapseIt/capture/ZoomWidget;->dm:Landroid/util/DisplayMetrics;

    .line 51
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ZoomWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/capture/CaptureView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/capture/ZoomWidget;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 53
    const v1, 0x7f0b00c0

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/capture/ZoomWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/ui/LapseIt/capture/ZoomWidget;->scroller:Landroid/widget/RelativeLayout;

    .line 54
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ZoomWidget;->scroller:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v3}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 55
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ZoomWidget;->scroller:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ui/LapseIt/capture/ZoomWidget;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 57
    const v1, 0x7f0b00bf

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/capture/ZoomWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ui/LapseIt/capture/ZoomWidget;->line:Landroid/widget/ImageView;

    .line 58
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ZoomWidget;->line:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    goto :goto_0
.end method
