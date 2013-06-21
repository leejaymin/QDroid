.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$17;
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

.field private final synthetic val$delaySettingBar:Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;

.field private final synthetic val$delayVals:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$17;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$17;->val$delaySettingBar:Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;

    iput-object p3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$17;->val$delayVals:[Ljava/lang/String;

    .line 1228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$17;->val$delaySettingBar:Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;

    invoke-virtual {v0, p2}, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->updateBufferValueUI(I)V

    .line 1234
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$17;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "delayPref"

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$17;->val$delayVals:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1235
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1241
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1247
    return-void
.end method
