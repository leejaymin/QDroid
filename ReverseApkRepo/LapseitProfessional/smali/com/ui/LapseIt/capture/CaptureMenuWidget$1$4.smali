.class Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;
.super Ljava/lang/Object;
.source "CaptureMenuWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$resFirst:Landroid/widget/ImageView;

.field private final synthetic val$resFourth:Landroid/widget/ImageView;

.field private final synthetic val$resSec:Landroid/widget/ImageView;

.field private final synthetic val$resThird:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    iput-object p2, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resFirst:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resSec:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resThird:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resFourth:Landroid/widget/ImageView;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v5, 0x7f0200cc

    const v4, 0x7f0200cb

    const v3, 0x7f0200ca

    const v1, 0x7f0200c5

    const/16 v2, 0x9

    .line 424
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-static {v0}, Lcom/ui/LapseIt/Main;->isFullVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    .line 426
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resFirst:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 427
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resSec:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 428
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resThird:Landroid/widget/ImageView;

    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 429
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resFourth:Landroid/widget/ImageView;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 450
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 495
    :goto_1
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resFirst:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resSec:Landroid/widget/ImageView;

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 433
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resThird:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 434
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resFourth:Landroid/widget/ImageView;

    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 437
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    .line 438
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resFirst:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 439
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resSec:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 440
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resThird:Landroid/widget/ImageView;

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 441
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resFourth:Landroid/widget/ImageView;

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resFirst:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 444
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resSec:Landroid/widget/ImageView;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 445
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resThird:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 446
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resFourth:Landroid/widget/ImageView;

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 452
    :pswitch_0
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resFirst:Landroid/widget/ImageView;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 453
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    const-string v1, "240p"

    iput-object v1, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    goto :goto_1

    .line 457
    :pswitch_1
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-static {v0}, Lcom/ui/LapseIt/Main;->isFullVersion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 458
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->resDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->resDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 459
    :cond_3
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->showProDialog()V

    goto/16 :goto_1

    .line 460
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_5

    .line 461
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resSec:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 462
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    const-string v1, "480p"

    iput-object v1, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    goto/16 :goto_1

    .line 464
    :cond_5
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resSec:Landroid/widget/ImageView;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 465
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    const-string v1, "360p"

    iput-object v1, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    goto/16 :goto_1

    .line 470
    :pswitch_2
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-static {v0}, Lcom/ui/LapseIt/Main;->isFullVersion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 471
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->resDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->resDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 472
    :cond_6
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->showProDialog()V

    goto/16 :goto_1

    .line 473
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_8

    .line 474
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resThird:Landroid/widget/ImageView;

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    const-string v1, "720p"

    iput-object v1, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    goto/16 :goto_1

    .line 477
    :cond_8
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resThird:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 478
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    const-string v1, "480p"

    iput-object v1, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    goto/16 :goto_1

    .line 483
    :pswitch_3
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-static {v0}, Lcom/ui/LapseIt/Main;->isFullVersion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 484
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->resDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->resDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 485
    :cond_9
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->showProDialog()V

    goto/16 :goto_1

    .line 486
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_b

    .line 487
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resFourth:Landroid/widget/ImageView;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    const-string v1, "1080p"

    iput-object v1, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    goto/16 :goto_1

    .line 490
    :cond_b
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->val$resFourth:Landroid/widget/ImageView;

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 491
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v0

    const-string v1, "720p"

    iput-object v1, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    goto/16 :goto_1

    .line 450
    :pswitch_data_0
    .packed-switch 0x7f0b00bb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
