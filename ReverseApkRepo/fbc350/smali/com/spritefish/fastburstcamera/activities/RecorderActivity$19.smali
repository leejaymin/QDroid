.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$19;
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

.field private final synthetic val$motionSensitivyItem:Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$19;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$19;->val$motionSensitivyItem:Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;

    .line 1281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$19;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "motionSensitivity"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1299
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$19;->val$motionSensitivyItem:Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;

    invoke-virtual {v0, p2}, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;->updateBufferValueUI(I)V

    .line 1300
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$19;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iput p2, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->motionSensitivityValue:I

    .line 1301
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1293
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1287
    return-void
.end method
