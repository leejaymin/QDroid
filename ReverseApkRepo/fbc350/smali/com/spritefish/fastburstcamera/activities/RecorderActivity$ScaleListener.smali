.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "RecorderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field private scaleFactor:F

.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;


# direct methods
.method private constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 2887
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScaleListener;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 2888
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScaleListener;->scaleFactor:F

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "detector"

    .prologue
    const/high16 v5, 0x3f80

    .line 2895
    iget v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScaleListener;->scaleFactor:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScaleListener;->scaleFactor:F

    .line 2898
    iget v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScaleListener;->scaleFactor:F

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScaleListener;->scaleFactor:F

    .line 2899
    const-string v2, "insta"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "detector : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScaleListener;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spritefish/camera/controls/PreviewControl;->getZoomSteps()I

    move-result v2

    int-to-float v0, v2

    .line 2902
    .local v0, max:F
    iget v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScaleListener;->scaleFactor:F

    sub-float/2addr v2, v5

    mul-float v1, v0, v2

    .line 2903
    .local v1, zv:F
    const-string v2, "insta"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "max ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " zoom ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    float-to-int v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScaleListener;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v2

    float-to-int v3, v1

    invoke-virtual {v2, v3}, Lcom/spritefish/camera/controls/PreviewControl;->setZoom(I)V

    .line 2906
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    return v2
.end method
