.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

.field private zoomStart:J

.field private zoomSteps:J

.field private zoomVal:J


# direct methods
.method private constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 2824
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2826
    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->zoomVal:J

    .line 2827
    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->zoomStart:J

    .line 2828
    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->zoomSteps:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2824
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 2831
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->zoomVal:J

    .line 2832
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spritefish/camera/controls/PreviewControl;->getZoomValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->zoomStart:J

    .line 2833
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spritefish/camera/controls/PreviewControl;->getZoomSteps()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->zoomSteps:J

    .line 2834
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 2841
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2848
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 2853
    const-string v2, "scroll"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "scrolled "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    iget-wide v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->zoomVal:J

    long-to-float v2, v2

    add-float/2addr v2, p4

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->zoomVal:J

    .line 2855
    iget-wide v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->zoomStart:J

    long-to-float v2, v2

    iget-wide v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->zoomVal:J

    long-to-float v3, v3

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 2856
    .local v0, newZoomVal:F
    float-to-int v1, v0

    .line 2857
    .local v1, useVal:I
    if-gez v1, :cond_0

    .line 2858
    const/4 v1, 0x0

    .line 2859
    :cond_0
    int-to-long v2, v1

    iget-wide v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->zoomSteps:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 2860
    iget-wide v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->zoomSteps:J

    long-to-int v1, v2

    .line 2862
    :cond_1
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/spritefish/camera/controls/PreviewControl;->setZoom(I)V

    .line 2863
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v2, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomLevel:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2864
    const/4 v2, 0x1

    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2871
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 2875
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v1, v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "screenclickPref"

    const-string v3, "Nothing"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2876
    .local v0, clickPref:Ljava/lang/String;
    const-string v1, "Focus and Zoom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2878
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$ScrollListener;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->activateFocus(Landroid/view/View;)V

    .line 2879
    const/4 v1, 0x1

    .line 2881
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
