.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$18;
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

.field private final synthetic val$preshotSettingBar:Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$18;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$18;->val$preshotSettingBar:Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;

    .line 1249
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
    const/16 v2, 0xa

    .line 1263
    if-ge p2, v2, :cond_0

    .line 1265
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1266
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$18;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/spritefish/camera/memory/NewByteArrayManager;->setPreshotQueueSize(I)V

    .line 1267
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$18;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preshotbuffersize"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1268
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$18;->val$preshotSettingBar:Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;

    invoke-virtual {v0, v2}, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->updateBufferValueUI(I)V

    .line 1276
    :goto_0
    return-void

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$18;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preshotbuffersize"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1272
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$18;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/spritefish/camera/memory/NewByteArrayManager;->setPreshotQueueSize(I)V

    .line 1273
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$18;->val$preshotSettingBar:Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;

    invoke-virtual {v0, p2}, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->updateBufferValueUI(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1258
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1253
    return-void
.end method
