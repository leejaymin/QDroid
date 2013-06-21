.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$12;
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

.field private final synthetic val$zoombar:Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$12;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$12;->val$zoombar:Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;

    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 1060
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$12;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->liteMenus()Z
    invoke-static {v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$21(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1062
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$12;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$12;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    const v7, 0x7f070075

    invoke-virtual {v6, v7}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->showLiteStartInfoSpecific(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$22(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Ljava/lang/String;)V

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$12;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v4, v4, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->isFocusOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1069
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "###.0"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v1, myFormatter:Ljava/text/DecimalFormat;
    new-instance v2, Lcom/spritefish/fastburstcamera/controls/QuickAction;

    invoke-direct {v2, p1}, Lcom/spritefish/fastburstcamera/controls/QuickAction;-><init>(Landroid/view/View;)V

    .line 1074
    .local v2, qa:Lcom/spritefish/fastburstcamera/controls/QuickAction;
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$12;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spritefish/camera/controls/PreviewControl;->getMaxZoomValue()F

    move-result v0

    .line 1075
    .local v0, maxZoom:F
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$12;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->previewControl:Lcom/spritefish/camera/controls/PreviewControl;
    invoke-static {v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/camera/controls/PreviewControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spritefish/camera/controls/PreviewControl;->getZoomSteps()I

    move-result v3

    .line 1076
    .local v3, zoomSteps:I
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$12;->val$zoombar:Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;

    const-string v5, "1.0x"

    new-instance v6, Ljava/lang/StringBuilder;

    const/high16 v7, 0x3f80

    add-float/2addr v7, v0

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-virtual {v1, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    float-to-double v8, v0

    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->setExposureSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1077
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$12;->val$zoombar:Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$12;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v5, v5, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->zoomLevel:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->setValue(I)V

    .line 1078
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$12;->val$zoombar:Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;

    invoke-virtual {v2, v4}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->addActionItem(Lcom/spritefish/fastburstcamera/controls/ActionItem;)V

    .line 1079
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->setAnimStyle(I)V

    .line 1081
    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->show()V

    goto/16 :goto_0
.end method
