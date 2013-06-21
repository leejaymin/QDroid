.class Lcom/jellybus/fx/Activity_Color_Histogram$6;
.super Landroid/os/Handler;
.source "Activity_Color_Histogram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Color_Histogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Color_Histogram;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Color_Histogram;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    .line 507
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "message"

    .prologue
    const v9, 0x7f050036

    .line 511
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 512
    .local v0, flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Apply value"

    const-string v5, "Apply"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v4, "Apply"

    invoke-static {v4, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 517
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #calls: Lcom/jellybus/fx/Activity_Color_Histogram;->removeSubBitmap()V
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$26(Lcom/jellybus/fx/Activity_Color_Histogram;)V

    .line 520
    new-instance v3, Lcom/jellybus/fx_sub/UndoRedo;

    invoke-direct {v3}, Lcom/jellybus/fx_sub/UndoRedo;-><init>()V

    .line 521
    .local v3, urDo:Lcom/jellybus/fx_sub/UndoRedo;
    sget-object v4, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 522
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$27(Lcom/jellybus/fx/Activity_Color_Histogram;Landroid/graphics/Bitmap;)V

    .line 523
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$21(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$21(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$21(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/jellybus/fx/Juliet;->getOriginalIndex(IILandroid/graphics/Bitmap;)V

    .line 524
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    invoke-virtual {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$21(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    invoke-virtual {v6, v9}, Lcom/jellybus/fx/Activity_Color_Histogram;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 525
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #calls: Lcom/jellybus/fx/Activity_Color_Histogram;->removeBitmap()V
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$28(Lcom/jellybus/fx/Activity_Color_Histogram;)V

    .line 528
    :cond_0
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 529
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeBitmapIndex()V

    .line 531
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$12(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramGraphView;

    move-result-object v5

    iget-object v5, v5, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    add-int/lit8 v5, v5, -0xa

    #setter for: Lcom/jellybus/fx/Activity_Color_Histogram;->start:I
    invoke-static {v4, v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$29(Lcom/jellybus/fx/Activity_Color_Histogram;I)V

    .line 532
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$12(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramGraphView;

    move-result-object v5

    iget-object v5, v5, Lcom/jellybus/fx_sub/HistogramGraphView;->mRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    #setter for: Lcom/jellybus/fx/Activity_Color_Histogram;->end:I
    invoke-static {v4, v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$30(Lcom/jellybus/fx/Activity_Color_Histogram;I)V

    .line 533
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->uiView:Lcom/jellybus/fx_sub/HistogramGraphView;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$12(Lcom/jellybus/fx/Activity_Color_Histogram;)Lcom/jellybus/fx_sub/HistogramGraphView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jellybus/fx_sub/HistogramGraphView;->getCenterX()F

    move-result v5

    float-to-int v5, v5

    #setter for: Lcom/jellybus/fx/Activity_Color_Histogram;->middle:I
    invoke-static {v4, v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$31(Lcom/jellybus/fx/Activity_Color_Histogram;I)V

    .line 535
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->start:I
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$32(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->end:I
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$33(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v4

    const/16 v5, 0x184

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->middle:I
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$34(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v4

    const/16 v5, 0xc7

    if-eq v4, v5, :cond_3

    .line 539
    :cond_1
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->end:I
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$33(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v4

    const/16 v5, 0xff

    if-le v4, v5, :cond_2

    .line 540
    const/high16 v4, 0x437f

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->graphW:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$10(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 541
    .local v2, ratio:F
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->end:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$33(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    #setter for: Lcom/jellybus/fx/Activity_Color_Histogram;->end:I
    invoke-static {v4, v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$30(Lcom/jellybus/fx/Activity_Color_Histogram;I)V

    .line 542
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->middle:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$34(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v5, v5

    #setter for: Lcom/jellybus/fx/Activity_Color_Histogram;->middle:I
    invoke-static {v4, v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$31(Lcom/jellybus/fx/Activity_Color_Histogram;I)V

    .line 546
    .end local v2           #ratio:F
    :cond_2
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->middle:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$34(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->start:I
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$32(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v6

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->end:I
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$33(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/jellybus/fx/Juliet;->getPercentValue(III)I

    move-result v5

    #setter for: Lcom/jellybus/fx/Activity_Color_Histogram;->middle:I
    invoke-static {v4, v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$31(Lcom/jellybus/fx/Activity_Color_Histogram;I)V

    .line 548
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->middle:I
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$34(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->start:I
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$32(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->end:I
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$33(Lcom/jellybus/fx/Activity_Color_Histogram;)I

    move-result v6

    sget v7, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v8, Lcom/jellybus/fx_sub/PictureController;->height:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/jellybus/fx/Juliet;->setHistogramWithPercentAllIndex(IIIII)V

    .line 551
    :cond_3
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #calls: Lcom/jellybus/fx/Activity_Color_Histogram;->removeBitmap()V
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$28(Lcom/jellybus/fx/Activity_Color_Histogram;)V

    .line 552
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    sget v5, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$27(Lcom/jellybus/fx/Activity_Color_Histogram;Landroid/graphics/Bitmap;)V

    .line 553
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$21(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$21(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$21(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 556
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    invoke-virtual {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jellybus/fx_sub/UndoRedo;->removeRedoList(Landroid/content/Context;)V

    .line 557
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    invoke-virtual {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$21(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    invoke-virtual {v6, v9}, Lcom/jellybus/fx/Activity_Color_Histogram;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 559
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 560
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$21(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 561
    const/4 v4, 0x1

    sget v5, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v6, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v7, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #getter for: Lcom/jellybus/fx/Activity_Color_Histogram;->preview:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$21(Lcom/jellybus/fx/Activity_Color_Histogram;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 562
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    #calls: Lcom/jellybus/fx/Activity_Color_Histogram;->removeBitmap()V
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->access$28(Lcom/jellybus/fx/Activity_Color_Histogram;)V

    .line 564
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    invoke-virtual {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    .local v1, intent_main:Landroid/content/Intent;
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    invoke-virtual {v4, v1}, Lcom/jellybus/fx/Activity_Color_Histogram;->startActivity(Landroid/content/Intent;)V

    .line 566
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    invoke-virtual {v4}, Lcom/jellybus/fx/Activity_Color_Histogram;->finish()V

    .line 567
    iget-object v4, p0, Lcom/jellybus/fx/Activity_Color_Histogram$6;->this$0:Lcom/jellybus/fx/Activity_Color_Histogram;

    const/high16 v5, 0x10a

    const v6, 0x10a0001

    invoke-virtual {v4, v5, v6}, Lcom/jellybus/fx/Activity_Color_Histogram;->overridePendingTransition(II)V

    .line 568
    return-void
.end method
