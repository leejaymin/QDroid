.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$motionSensitivyItem:Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;

.field private final synthetic val$preshotSettingBar:Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->val$preshotSettingBar:Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;

    iput-object p3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->val$motionSensitivyItem:Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;

    iput-object p4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->val$delaySettingBar:Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;

    iput-object p5, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->val$delayVals:[Ljava/lang/String;

    .line 1306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1310
    new-instance v1, Lcom/spritefish/fastburstcamera/controls/QuickAction;

    invoke-direct {v1, p1}, Lcom/spritefish/fastburstcamera/controls/QuickAction;-><init>(Landroid/view/View;)V

    .line 1312
    .local v1, qa:Lcom/spritefish/fastburstcamera/controls/QuickAction;
    const/4 v6, 0x1

    .line 1313
    .local v6, showDelay:Z
    iget-object v11, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v11, v11, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    sget-object v12, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    if-ne v11, v12, :cond_6

    move v8, v9

    .line 1314
    .local v8, showPreshotBuf:Z
    :goto_0
    iget-object v11, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v11, v11, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    sget-object v12, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->MOTION:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    if-ne v11, v12, :cond_7

    move v7, v9

    .line 1316
    .local v7, showMotionTrigger:Z
    :goto_1
    if-eqz v8, :cond_0

    .line 1317
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->val$preshotSettingBar:Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;

    invoke-virtual {v1, v9}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->addActionItem(Lcom/spritefish/fastburstcamera/controls/ActionItem;)V

    .line 1319
    :cond_0
    if-eqz v7, :cond_1

    .line 1320
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->val$motionSensitivyItem:Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;

    invoke-virtual {v1, v9}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->addActionItem(Lcom/spritefish/fastburstcamera/controls/ActionItem;)V

    .line 1322
    :cond_1
    if-eqz v6, :cond_2

    .line 1324
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->val$delaySettingBar:Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;

    invoke-virtual {v1, v9}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->addActionItem(Lcom/spritefish/fastburstcamera/controls/ActionItem;)V

    .line 1325
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->val$delaySettingBar:Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;

    iget-object v11, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-virtual {v11}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080006

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->setStringDescriptors([Ljava/lang/String;)V

    .line 1327
    :cond_2
    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->setAnimStyle(I)V

    .line 1329
    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->show()V

    .line 1331
    if-eqz v8, :cond_3

    .line 1333
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->val$preshotSettingBar:Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;

    iget-object v11, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-virtual {v11}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getBAM()Lcom/spritefish/camera/memory/NewByteArrayManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/spritefish/camera/memory/NewByteArrayManager;->getMax()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->setBufferMax(I)V

    .line 1334
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v9, v9, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v11, "preshotbuffersize"

    const/16 v12, 0x19

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1335
    .local v3, selVal:I
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->val$preshotSettingBar:Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;

    invoke-virtual {v9, v3}, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->setBufferValue(I)V

    .line 1338
    .end local v3           #selVal:I
    :cond_3
    if-eqz v7, :cond_4

    .line 1340
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v9, v9, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v11, "motionSensitivity"

    invoke-interface {v9, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1341
    .restart local v3       #selVal:I
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->val$motionSensitivyItem:Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;

    invoke-virtual {v9, v3}, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;->setValue(I)V

    .line 1344
    .end local v3           #selVal:I
    :cond_4
    if-eqz v6, :cond_5

    .line 1346
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v9, v9, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v11, "delayPref"

    const-string v12, "-1"

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1347
    .local v4, selectedDelay:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1348
    .local v5, selectedDelayIdx:I
    const/4 v0, 0x0

    .line 1349
    .local v0, i:I
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->val$delayVals:[Ljava/lang/String;

    array-length v11, v9

    :goto_2
    if-lt v10, v11, :cond_8

    .line 1354
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->val$delaySettingBar:Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;

    invoke-virtual {v9, v5}, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->setDelayValue(I)V

    .line 1355
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$20;->val$delaySettingBar:Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;

    invoke-virtual {v9, v5}, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->updateBufferValueUI(I)V

    .line 1358
    .end local v0           #i:I
    .end local v4           #selectedDelay:Ljava/lang/String;
    .end local v5           #selectedDelayIdx:I
    :cond_5
    return-void

    .end local v7           #showMotionTrigger:Z
    .end local v8           #showPreshotBuf:Z
    :cond_6
    move v8, v10

    .line 1313
    goto/16 :goto_0

    .restart local v8       #showPreshotBuf:Z
    :cond_7
    move v7, v10

    .line 1314
    goto/16 :goto_1

    .line 1349
    .restart local v0       #i:I
    .restart local v4       #selectedDelay:Ljava/lang/String;
    .restart local v5       #selectedDelayIdx:I
    .restart local v7       #showMotionTrigger:Z
    :cond_8
    aget-object v2, v9, v10

    .line 1350
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1351
    move v5, v0

    .line 1352
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 1349
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method
