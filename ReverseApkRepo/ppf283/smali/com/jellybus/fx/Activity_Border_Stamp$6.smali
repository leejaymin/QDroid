.class Lcom/jellybus/fx/Activity_Border_Stamp$6;
.super Landroid/os/Handler;
.source "Activity_Border_Stamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Stamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Stamp;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Stamp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    .line 397
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "message"

    .prologue
    .line 400
    sget-object v22, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_1

    .line 402
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 403
    .local v13, flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    sget-object v22, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v14, v0, :cond_2

    .line 414
    const-string v22, "Apply value"

    const-string v23, "Apply"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v22, "Apply"

    move-object/from16 v0, v22

    invoke-static {v0, v13}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp;->removeBitmap()V
    invoke-static/range {v22 .. v22}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$16(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;
    invoke-static/range {v22 .. v22}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/StampControllView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/jellybus/fx_sub/StampControllView;->clearBitmap()V

    .line 422
    new-instance v21, Lcom/jellybus/fx_sub/UndoRedo;

    invoke-direct/range {v21 .. v21}, Lcom/jellybus/fx_sub/UndoRedo;-><init>()V

    .line 423
    .local v21, urDo:Lcom/jellybus/fx_sub/UndoRedo;
    sget-object v22, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_0

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    sget v23, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v24, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v23 .. v25}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v23

    #setter for: Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v22 .. v23}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$17(Lcom/jellybus/fx/Activity_Border_Stamp;Landroid/graphics/Bitmap;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v22 .. v22}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$12(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v23, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v23 .. v23}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$12(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/graphics/Bitmap;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$12(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/jellybus/fx/Juliet;->getOriginalIndex(IILandroid/graphics/Bitmap;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/jellybus/fx/Activity_Border_Stamp;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v23, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v23 .. v23}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$12(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v24, v0

    const v25, 0x7f05003a

    invoke-virtual/range {v24 .. v25}, Lcom/jellybus/fx/Activity_Border_Stamp;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp;->removeBitmap()V
    invoke-static/range {v22 .. v22}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$16(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    .line 430
    :cond_0
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 431
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeBitmapIndex()V

    .line 433
    new-instance v4, Landroid/graphics/Paint;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 434
    .local v4, _paint:Landroid/graphics/Paint;
    sget-object v22, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 435
    const v22, -0xcc0100

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    const/high16 v22, 0x4040

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 437
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 439
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 440
    .local v16, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v22, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 441
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 444
    sget v22, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 445
    sget v22, Lcom/jellybus/fx_sub/PictureController;->width:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v23, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static/range {v23 .. v23}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$0(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v17, v22, v23

    .line 450
    .local v17, r:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    sget v23, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v24, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v23 .. v25}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v23

    #setter for: Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v22 .. v23}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$17(Lcom/jellybus/fx/Activity_Border_Stamp;Landroid/graphics/Bitmap;)V

    .line 451
    sget v22, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v23, Lcom/jellybus/fx_sub/PictureController;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$12(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 452
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v22 .. v22}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$12(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/graphics/Bitmap;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 454
    .local v9, canvas:Landroid/graphics/Canvas;
    const/4 v14, 0x0

    :goto_2
    sget-object v22, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v14, v0, :cond_5

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;
    invoke-static/range {v22 .. v22}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/StampControllView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/jellybus/fx_sub/StampControllView;->clearAll()V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v23, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->imgPath:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$18(Lcom/jellybus/fx/Activity_Border_Stamp;)Ljava/lang/String;

    move-result-object v23

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp;->removeFolder(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$19(Lcom/jellybus/fx/Activity_Border_Stamp;Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/jellybus/fx/Activity_Border_Stamp;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/jellybus/fx_sub/UndoRedo;->removeRedoList(Landroid/content/Context;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/jellybus/fx/Activity_Border_Stamp;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v23, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v23 .. v23}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$12(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v24, v0

    const v25, 0x7f05003a

    invoke-virtual/range {v24 .. v25}, Lcom/jellybus/fx/Activity_Border_Stamp;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v22 .. v22}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$12(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 498
    const/16 v22, 0x1

    sget v23, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v24, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v25, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v25 .. v25}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$12(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-static/range {v22 .. v25}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp;->removeBitmap()V
    invoke-static/range {v22 .. v22}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$16(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    .line 502
    .end local v4           #_paint:Landroid/graphics/Paint;
    .end local v9           #canvas:Landroid/graphics/Canvas;
    .end local v13           #flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14           #i:I
    .end local v16           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v17           #r:F
    .end local v21           #urDo:Lcom/jellybus/fx_sub/UndoRedo;
    :cond_1
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/jellybus/fx/Activity_Border_Stamp;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    const-class v23, Lcom/jellybus/fx/Activity_Main;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    .local v15, intent_main:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/jellybus/fx/Activity_Border_Stamp;->startActivity(Landroid/content/Intent;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/jellybus/fx/Activity_Border_Stamp;->finish()V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    const/high16 v23, 0x10a

    const v24, 0x10a0001

    invoke-virtual/range {v22 .. v24}, Lcom/jellybus/fx/Activity_Border_Stamp;->overridePendingTransition(II)V

    .line 506
    return-void

    .line 404
    .end local v15           #intent_main:Landroid/content/Intent;
    .restart local v13       #flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14       #i:I
    :cond_2
    sget-object v22, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/jellybus/fx_sub/Stamp;

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/jellybus/fx_sub/Stamp;->isPhotoStamp:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 405
    const-string v22, "Stammp value"

    const-string v23, "PhotoStamp"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :goto_3
    const-string v22, "Stamp"

    move-object/from16 v0, v22

    invoke-static {v0, v13}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 412
    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 403
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 407
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/jellybus/fx/Activity_Border_Stamp;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget-object v22, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/jellybus/fx_sub/Stamp;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/jellybus/fx_sub/Stamp;->stamp_index:I

    move/from16 v22, v0

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v20

    .line 408
    .local v20, stampName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/jellybus/fx/Activity_Border_Stamp;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/jellybus/fx_sub/PictureController;->getResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 409
    const-string v22, "Stamp value"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 447
    .end local v20           #stampName:Ljava/lang/String;
    .restart local v4       #_paint:Landroid/graphics/Paint;
    .restart local v16       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v21       #urDo:Lcom/jellybus/fx_sub/UndoRedo;
    :cond_4
    sget v22, Lcom/jellybus/fx_sub/PictureController;->height:I

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v23, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->tc:Lcom/jellybus/fx_sub/ThumbnailController;
    invoke-static/range {v23 .. v23}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$0(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/ThumbnailController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/jellybus/fx_sub/ThumbnailController;->getShownHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v17, v22, v23

    .restart local v17       #r:F
    goto/16 :goto_1

    .line 455
    .restart local v9       #canvas:Landroid/graphics/Canvas;
    :cond_5
    sget-object v22, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/jellybus/fx_sub/Stamp;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/jellybus/fx_sub/Stamp;->scale:F

    move/from16 v18, v0

    .line 456
    .local v18, scale:F
    sget-object v22, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/jellybus/fx_sub/Stamp;

    move-object/from16 v0, v22

    iget v10, v0, Lcom/jellybus/fx_sub/Stamp;->curAngle:F

    .line 458
    .local v10, curAngle:F
    sget-object v22, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/jellybus/fx_sub/Stamp;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/jellybus/fx_sub/Stamp;->curX:F

    move/from16 v22, v0

    mul-float v11, v22, v17

    .line 459
    .local v11, curX:F
    sget-object v22, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/jellybus/fx_sub/Stamp;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/jellybus/fx_sub/Stamp;->curY:F

    move/from16 v22, v0

    mul-float v12, v22, v17

    .line 460
    .local v12, curY:F
    sget-object v22, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/jellybus/fx_sub/Stamp;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/jellybus/fx_sub/Stamp;->bmW:F

    move/from16 v22, v0

    mul-float v8, v22, v17

    .line 461
    .local v8, bmW:F
    sget-object v22, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/jellybus/fx_sub/Stamp;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/jellybus/fx_sub/Stamp;->bmH:F

    move/from16 v22, v0

    mul-float v7, v22, v17

    .line 463
    .local v7, bmH:F
    const/high16 v22, 0x4000

    div-float v5, v8, v22

    .line 464
    .local v5, bmCenterX:F
    const/high16 v22, 0x4000

    div-float v6, v7, v22

    .line 466
    .local v6, bmCenterY:F
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 469
    add-float v22, v11, v5

    add-float v23, v12, v6

    move/from16 v0, v18

    move/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 472
    add-float v22, v11, v5

    add-float v23, v12, v6

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v10, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 475
    sget-object v22, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/jellybus/fx_sub/Stamp;

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/jellybus/fx_sub/Stamp;->isPhotoStamp:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 476
    sget-object v22, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/jellybus/fx_sub/Stamp;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/jellybus/fx_sub/Stamp;->path:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 480
    .local v19, stamp:Landroid/graphics/Bitmap;
    :goto_4
    float-to-int v0, v8

    move/from16 v22, v0

    float-to-int v0, v7

    move/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 482
    move-object/from16 v0, v19

    invoke-virtual {v9, v0, v11, v12, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 483
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 484
    const/16 v19, 0x0

    .line 486
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 454
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 478
    .end local v19           #stamp:Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp$6;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/jellybus/fx/Activity_Border_Stamp;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget-object v22, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/jellybus/fx_sub/Stamp;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/jellybus/fx_sub/Stamp;->stamp_index:I

    move/from16 v22, v0

    move-object/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v19

    .restart local v19       #stamp:Landroid/graphics/Bitmap;
    goto :goto_4
.end method
