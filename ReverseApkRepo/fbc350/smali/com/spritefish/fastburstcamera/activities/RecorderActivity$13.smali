.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$13;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->initUiControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$13;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$13;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isFocusOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$13;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/spritefish/camera/controls/PreviewControl;->setExposureFromStep(I)V

    .line 1111
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$13;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iput p2, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->exposureUsed:I

    .line 1115
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1104
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1099
    return-void
.end method
