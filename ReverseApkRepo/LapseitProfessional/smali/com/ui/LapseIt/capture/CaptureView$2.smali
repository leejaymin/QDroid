.class Lcom/ui/LapseIt/capture/CaptureView$2;
.super Ljava/lang/Object;
.source "CaptureView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/capture/CaptureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/capture/CaptureView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/capture/CaptureView$2;)Lcom/ui/LapseIt/capture/CaptureView;
    .locals 1
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 554
    :try_start_0
    invoke-static {}, Lcom/ui/LapseIt/Main;->isFullVersion()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 555
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-boolean v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->isPreviewning:Z

    if-eqz v3, :cond_0

    .line 556
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/ui/LapseIt/capture/CaptureView;->isPreviewning:Z

    .line 557
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 558
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 561
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    #getter for: Lcom/ui/LapseIt/capture/CaptureView;->isFrontFacing:Z
    invoke-static {v3}, Lcom/ui/LapseIt/capture/CaptureView;->access$0(Lcom/ui/LapseIt/capture/CaptureView;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, camNumber:I
    invoke-static {}, Lcom/ui/LapseIt/capture/CaptureParams;->getNumberOfCameras()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 564
    const/4 v0, 0x1

    .line 566
    :cond_1
    if-lez v0, :cond_2

    .line 567
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureParams;->getCamera(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    .line 569
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    const/4 v4, 0x1

    #setter for: Lcom/ui/LapseIt/capture/CaptureView;->isFrontFacing:Z
    invoke-static {v3, v4}, Lcom/ui/LapseIt/capture/CaptureView;->access$1(Lcom/ui/LapseIt/capture/CaptureView;Z)V

    .line 580
    .end local v0           #camNumber:I
    :goto_0
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    #getter for: Lcom/ui/LapseIt/capture/CaptureView;->isFrontFacing:Z
    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureView;->access$0(Lcom/ui/LapseIt/capture/CaptureView;)Z

    move-result v4

    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v5, v5, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-static {v3, v4, v5}, Lui/utils/CameraUtils;->setCameraDisplayOrientation(Landroid/app/Activity;ZLandroid/hardware/Camera;)V

    .line 583
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v4, v4, Lcom/ui/LapseIt/capture/CaptureView;->camSurface:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 584
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v3, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 585
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/ui/LapseIt/capture/CaptureView;->isPreviewning:Z

    .line 623
    :goto_1
    return-void

    .line 572
    .restart local v0       #camNumber:I
    :cond_2
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureParams;->getCamera(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    .line 573
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    const/4 v4, 0x0

    #setter for: Lcom/ui/LapseIt/capture/CaptureView;->isFrontFacing:Z
    invoke-static {v3, v4}, Lcom/ui/LapseIt/capture/CaptureView;->access$1(Lcom/ui/LapseIt/capture/CaptureView;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 618
    .end local v0           #camNumber:I
    :catch_0
    move-exception v1

    .line 619
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 577
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/ui/LapseIt/capture/CaptureParams;->getCamera(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, v3, Lcom/ui/LapseIt/capture/CaptureView;->cam:Landroid/hardware/Camera;

    .line 578
    iget-object v3, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    const/4 v4, 0x0

    #setter for: Lcom/ui/LapseIt/capture/CaptureView;->isFrontFacing:Z
    invoke-static {v3, v4}, Lcom/ui/LapseIt/capture/CaptureView;->access$1(Lcom/ui/LapseIt/capture/CaptureView;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 620
    :catch_1
    move-exception v1

    .line 621
    .local v1, e:Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1

    .line 587
    .end local v1           #e:Ljava/lang/Error;
    :cond_4
    :try_start_2
    new-instance v2, Lcom/ui/LapseIt/capture/CaptureView$2$1;

    invoke-direct {v2, p0}, Lcom/ui/LapseIt/capture/CaptureView$2$1;-><init>(Lcom/ui/LapseIt/capture/CaptureView$2;)V

    .line 612
    .local v2, onClick:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 613
    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v4}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 614
    iget-object v4, p0, Lcom/ui/LapseIt/capture/CaptureView$2;->this$0:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v4}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 615
    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Go to Google Play"

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080002

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080004

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
