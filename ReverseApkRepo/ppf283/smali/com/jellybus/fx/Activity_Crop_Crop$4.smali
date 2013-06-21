.class Lcom/jellybus/fx/Activity_Crop_Crop$4;
.super Landroid/os/Handler;
.source "Activity_Crop_Crop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Crop_Crop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Crop_Crop;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Crop_Crop;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    .line 334
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "message"

    .prologue
    .line 338
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 339
    .local v3, flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "Apply value"

    const-string v14, "Apply"

    invoke-virtual {v3, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v13, "Apply"

    invoke-static {v13, v3}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #calls: Lcom/jellybus/fx/Activity_Crop_Crop;->removeBitmap()V
    invoke-static {v13}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$16(Lcom/jellybus/fx/Activity_Crop_Crop;)V

    .line 347
    new-instance v11, Lcom/jellybus/fx_sub/UndoRedo;

    invoke-direct {v11}, Lcom/jellybus/fx_sub/UndoRedo;-><init>()V

    .line 348
    .local v11, urDo:Lcom/jellybus/fx_sub/UndoRedo;
    sget-object v13, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_0

    .line 349
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    sget v14, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v15, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    #setter for: Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;
    invoke-static {v13, v14}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$17(Lcom/jellybus/fx/Activity_Crop_Crop;Landroid/graphics/Bitmap;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$18(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;
    invoke-static {v14}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$18(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;
    invoke-static {v15}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$18(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/jellybus/fx/Juliet;->getOriginalIndex(IILandroid/graphics/Bitmap;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    invoke-virtual {v13}, Lcom/jellybus/fx/Activity_Crop_Crop;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;
    invoke-static {v14}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$18(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    const v16, 0x7f050030

    invoke-virtual/range {v15 .. v16}, Lcom/jellybus/fx/Activity_Crop_Crop;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v13, v14, v15}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #calls: Lcom/jellybus/fx/Activity_Crop_Crop;->removeBitmap()V
    invoke-static {v13}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$16(Lcom/jellybus/fx/Activity_Crop_Crop;)V

    .line 355
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->controller:Lcom/jellybus/fx_sub/CropViewController;
    invoke-static {v13}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$19(Lcom/jellybus/fx/Activity_Crop_Crop;)Lcom/jellybus/fx_sub/CropViewController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/jellybus/fx_sub/CropViewController;->getRect()Landroid/graphics/RectF;

    move-result-object v8

    .line 357
    .local v8, rect:Landroid/graphics/RectF;
    sget v13, Lcom/jellybus/fx_sub/PictureController;->width:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v14}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$0(Lcom/jellybus/fx/Activity_Crop_Crop;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v14

    int-to-float v14, v14

    div-float v7, v13, v14

    .line 358
    .local v7, ratio_w:F
    sget v13, Lcom/jellybus/fx_sub/PictureController;->height:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static {v14}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$0(Lcom/jellybus/fx/Activity_Crop_Crop;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v14

    int-to-float v14, v14

    div-float v6, v13, v14

    .line 360
    .local v6, ratio_h:F
    iget v13, v8, Landroid/graphics/RectF;->left:F

    mul-float/2addr v13, v7

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 361
    .local v9, start_x:I
    iget v13, v8, Landroid/graphics/RectF;->top:F

    mul-float/2addr v13, v6

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 362
    .local v10, start_y:I
    iget v13, v8, Landroid/graphics/RectF;->right:F

    mul-float/2addr v13, v7

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 363
    .local v1, end_x:I
    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v13, v6

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 364
    .local v2, end_y:I
    sub-int v12, v1, v9

    .line 365
    .local v12, w:I
    sub-int v4, v2, v10

    .line 368
    .local v4, h:I
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeBitmapIndex()V

    .line 369
    sget v13, Lcom/jellybus/fx_sub/PictureController;->width:I

    invoke-static {v13, v10, v2, v9, v1}, Lcom/jellybus/fx/Juliet;->setCropAllIndex(IIIII)V

    .line 372
    invoke-static {v12, v4}, Lcom/jellybus/fx_sub/PictureController;->setPictureType(II)V

    .line 373
    invoke-static {v12, v4}, Lcom/jellybus/fx_sub/PictureController;->sizeChange(II)V

    .line 376
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #calls: Lcom/jellybus/fx/Activity_Crop_Crop;->removeBitmap()V
    invoke-static {v13}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$16(Lcom/jellybus/fx/Activity_Crop_Crop;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v4, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    #setter for: Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;
    invoke-static {v13, v14}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$17(Lcom/jellybus/fx/Activity_Crop_Crop;Landroid/graphics/Bitmap;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$18(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;
    invoke-static {v14}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$18(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;
    invoke-static {v15}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$18(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    invoke-virtual {v13}, Lcom/jellybus/fx/Activity_Crop_Crop;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/jellybus/fx_sub/UndoRedo;->removeRedoList(Landroid/content/Context;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    invoke-virtual {v13}, Lcom/jellybus/fx/Activity_Crop_Crop;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;
    invoke-static {v14}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$18(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    const v16, 0x7f050030

    invoke-virtual/range {v15 .. v16}, Lcom/jellybus/fx/Activity_Crop_Crop;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v13, v14, v15}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 386
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$18(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-static {v13}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 387
    const/4 v13, 0x1

    sget v14, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v15, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    move-object/from16 v16, v0

    #getter for: Lcom/jellybus/fx/Activity_Crop_Crop;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v16 .. v16}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$18(Lcom/jellybus/fx/Activity_Crop_Crop;)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-static/range {v13 .. v16}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    #calls: Lcom/jellybus/fx/Activity_Crop_Crop;->removeBitmap()V
    invoke-static {v13}, Lcom/jellybus/fx/Activity_Crop_Crop;->access$16(Lcom/jellybus/fx/Activity_Crop_Crop;)V

    .line 391
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    invoke-virtual {v13}, Lcom/jellybus/fx/Activity_Crop_Crop;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-class v14, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v5, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .local v5, intent_main:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    invoke-virtual {v13, v5}, Lcom/jellybus/fx/Activity_Crop_Crop;->startActivity(Landroid/content/Intent;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    invoke-virtual {v13}, Lcom/jellybus/fx/Activity_Crop_Crop;->finish()V

    .line 394
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jellybus/fx/Activity_Crop_Crop$4;->this$0:Lcom/jellybus/fx/Activity_Crop_Crop;

    const/high16 v14, 0x10a

    const v15, 0x10a0001

    invoke-virtual {v13, v14, v15}, Lcom/jellybus/fx/Activity_Crop_Crop;->overridePendingTransition(II)V

    .line 395
    return-void
.end method
