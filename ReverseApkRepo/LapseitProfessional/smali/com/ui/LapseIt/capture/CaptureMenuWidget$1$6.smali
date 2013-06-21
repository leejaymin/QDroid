.class Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;
.super Ljava/lang/Object;
.source "CaptureMenuWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x1

    .line 512
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const-string v4, "resolution"

    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v5

    iget-object v5, v5, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :try_start_0
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-boolean v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->isPreviewning:Z

    if-eqz v3, :cond_0

    .line 516
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/ui/LapseIt/capture/CaptureView;->isPreviewning:Z

    .line 517
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 521
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 522
    .local v2, params:Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcom/ui/LapseIt/capture/CaptureParams;->getInstance(Landroid/hardware/Camera$Parameters;)Lcom/ui/LapseIt/capture/CaptureParams;

    move-result-object v0

    .line 523
    .local v0, captureParams:Lcom/ui/LapseIt/capture/CaptureParams;
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v0, v3}, Lcom/ui/LapseIt/capture/CaptureParams;->setupCamera(Landroid/content/Context;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 524
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 534
    .end local v0           #captureParams:Lcom/ui/LapseIt/capture/CaptureParams;
    .end local v2           #params:Landroid/hardware/Camera$Parameters;
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    if-nez v3, :cond_1

    .line 536
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureParams;->getCamera(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    .line 537
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v4

    iget-object v4, v4, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v4, v4, Lcom/ui/LapseIt/capture/CaptureView;->camHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 539
    :cond_1
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 540
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/ui/LapseIt/capture/CaptureView;->isPreviewning:Z

    .line 542
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    const-string v4, "fullsensor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 543
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->thirdItem:Landroid/widget/RelativeLayout;

    const v4, 0x7f0b000b

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    :goto_1
    return-void

    .line 525
    :catch_0
    move-exception v1

    .line 526
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    if-eqz v3, :cond_2

    .line 527
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 528
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    .line 530
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 531
    sget-object v3, Lcom/ui/LapseIt/Main;->uncaughtHandler:Lui/utils/CustomUncaughtExceptionHandler;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error setting camera params internal"

    invoke-static {}, Lcom/ui/LapseIt/Main;->versionName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lui/utils/CustomUncaughtExceptionHandler;->sendToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 547
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 548
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 549
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const-string v4, "Error setting the camera parameters, please contact us and inform your device model"

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 550
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const-string v4, "Error setting the camera parameters, please contact us and inform your device model"

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 551
    sget-object v3, Lcom/ui/LapseIt/Main;->uncaughtHandler:Lui/utils/CustomUncaughtExceptionHandler;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error setting camera params"

    invoke-static {}, Lcom/ui/LapseIt/Main;->versionName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lui/utils/CustomUncaughtExceptionHandler;->sendToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v3, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error on surface change : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 545
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v3

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->thirdItem:Landroid/widget/RelativeLayout;

    const v4, 0x7f0b000b

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v4

    iget-object v4, v4, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method
