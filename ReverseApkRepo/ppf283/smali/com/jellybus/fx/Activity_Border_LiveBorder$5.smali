.class Lcom/jellybus/fx/Activity_Border_LiveBorder$5;
.super Landroid/os/Handler;
.source "Activity_Border_LiveBorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_LiveBorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_LiveBorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    .line 478
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .parameter "message"

    .prologue
    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    move/from16 v24, v0

    if-nez v24, :cond_4

    .line 484
    :cond_0
    const-string v6, "White"

    .line 496
    .local v6, border_name:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Lcom/jellybus/fx_sub/PictureController;->getResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 497
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 498
    .local v11, flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v24, "Border value"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v24, "Border"

    move-object/from16 v0, v24

    invoke-static {v0, v11}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 500
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 501
    .local v12, flurry_value2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v24, "Apply value"

    const-string v25, "Apply"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v24, "Apply"

    move-object/from16 v0, v24

    invoke-static {v0, v12}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/jellybus/fx_sub/BorderView;->isViewSet:Z

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/jellybus/fx_sub/BorderView;->invalidate()V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/jellybus/fx_sub/BorderView;->removeGray()V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/jellybus/fx_sub/BorderView;->removePattern()V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #calls: Lcom/jellybus/fx/Activity_Border_LiveBorder;->removeBitmap()V
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$12(Lcom/jellybus/fx/Activity_Border_LiveBorder;)V

    .line 513
    new-instance v23, Lcom/jellybus/fx_sub/UndoRedo;

    invoke-direct/range {v23 .. v23}, Lcom/jellybus/fx_sub/UndoRedo;-><init>()V

    .line 514
    .local v23, urDo:Lcom/jellybus/fx_sub/UndoRedo;
    sget-object v24, Lcom/jellybus/fx_sub/UndoRedo;->list:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_1

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    sget v25, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v26, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v27, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v25 .. v27}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v25

    #setter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v24 .. v25}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$13(Lcom/jellybus/fx/Activity_Border_LiveBorder;Landroid/graphics/Bitmap;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$4(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v25, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v25 .. v25}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$4(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v26, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v26 .. v26}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$4(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/graphics/Bitmap;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Lcom/jellybus/fx/Juliet;->getOriginalIndex(IILandroid/graphics/Bitmap;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v25, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->preview:Landroid/graphics/Bitmap;
    invoke-static/range {v25 .. v25}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$4(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v26, v0

    const v27, 0x7f050039

    invoke-virtual/range {v26 .. v27}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v23 .. v26}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #calls: Lcom/jellybus/fx/Activity_Border_LiveBorder;->removeBitmap()V
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$12(Lcom/jellybus/fx/Activity_Border_LiveBorder;)V

    .line 522
    :cond_1
    sget v24, Lcom/jellybus/fx_sub/PictureController;->viewType:I

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 523
    sget v24, Lcom/jellybus/fx_sub/PictureController;->width:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v25, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v25 .. v25}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/jellybus/fx_sub/BorderView;->getWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v16, v24, v25

    .line 529
    .local v16, original_r:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jellybus/fx_sub/BorderView;->border_size:F

    move/from16 v24, v0

    mul-float v8, v24, v16

    .line 530
    .local v8, border_size:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jellybus/fx_sub/BorderView;->border_vertical_size:F

    move/from16 v24, v0

    mul-float v9, v24, v16

    .line 532
    .local v9, border_vertical_size:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 533
    new-instance v20, Landroid/graphics/RectF;

    const/16 v24, 0x0

    sget v25, Lcom/jellybus/fx_sub/PictureController;->width:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/jellybus/fx_sub/PictureController;->height:I

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v26, v26, v9

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 534
    .local v20, rect:Landroid/graphics/RectF;
    new-instance v22, Landroid/graphics/RectF;

    const/high16 v24, -0x4080

    const v25, 0x3ecccccd

    sub-float v25, v9, v25

    sget v26, Lcom/jellybus/fx_sub/PictureController;->width:I

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sget v27, Lcom/jellybus/fx_sub/PictureController;->height:I

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v27, v27, v9

    const v28, 0x3ecccccd

    add-float v27, v27, v28

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 545
    .local v22, shadow:Landroid/graphics/RectF;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jellybus/fx_sub/BorderView;->border_round:F

    move/from16 v24, v0

    mul-float v24, v24, v16

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    int-to-float v7, v0

    .line 547
    .local v7, border_round:F
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 548
    .local v17, paint:Landroid/graphics/Paint;
    const/16 v24, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 549
    sget-object v24, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 551
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 552
    .local v21, rectPaint:Landroid/graphics/Paint;
    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 553
    sget-object v24, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 556
    const/16 v19, 0x0

    .line 557
    .local v19, pattern:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v25, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v25 .. v25}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/jellybus/fx_sub/BorderView;->isWhite:Z

    move/from16 v24, v0

    if-eqz v24, :cond_c

    .line 559
    const/16 v24, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 560
    const/16 v24, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 575
    :goto_3
    sget v24, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v25, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v26, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v24 .. v26}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 576
    .local v5, border:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 577
    .local v10, canvasBorder:Landroid/graphics/Canvas;
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 580
    new-instance v24, Landroid/graphics/PorterDuffXfermode;

    sget-object v25, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v24 .. v25}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 581
    new-instance v18, Landroid/graphics/Path;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Path;-><init>()V

    .line 582
    .local v18, path:Landroid/graphics/Path;
    sget-object v24, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v7, v7, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 583
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 584
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 587
    if-eqz v19, :cond_2

    .line 588
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 591
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v25, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v25 .. v25}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 592
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-static {v0, v5}, Lcom/jellybus/fx/Juliet;->setBorderToPicture(ZLandroid/graphics/Bitmap;)V

    .line 598
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v25, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v25 .. v25}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 599
    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 600
    sget-object v24, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 601
    const/high16 v24, 0x4020

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 602
    const/16 v24, 0xff

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 603
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 606
    :cond_3
    const/16 v24, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 607
    sget-object v24, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 608
    const/high16 v24, 0x4020

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 609
    const/high16 v24, -0x100

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 610
    const/16 v24, 0x46

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 611
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/jellybus/fx_sub/UndoRedo;->removeRedoList(Landroid/content/Context;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v25, v0

    const v26, 0x7f050039

    invoke-virtual/range {v25 .. v26}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v5, v2}, Lcom/jellybus/fx_sub/UndoRedo;->saveUnReImage(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 617
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 618
    invoke-static {v5}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 619
    const/16 v24, 0x1

    sget v25, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v26, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2, v5}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 620
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 621
    const/4 v5, 0x0

    .line 623
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const-class v25, Lcom/jellybus/fx/Activity_Main;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 624
    .local v13, intent_main:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->startActivity(Landroid/content/Intent;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->finish()V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    const/high16 v25, 0x10a

    const v26, 0x10a0001

    invoke-virtual/range {v24 .. v26}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->overridePendingTransition(II)V

    .line 627
    return-void

    .line 485
    .end local v5           #border:Landroid/graphics/Bitmap;
    .end local v6           #border_name:Ljava/lang/String;
    .end local v7           #border_round:F
    .end local v8           #border_size:F
    .end local v9           #border_vertical_size:F
    .end local v10           #canvasBorder:Landroid/graphics/Canvas;
    .end local v11           #flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12           #flurry_value2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13           #intent_main:Landroid/content/Intent;
    .end local v16           #original_r:F
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v18           #path:Landroid/graphics/Path;
    .end local v19           #pattern:Landroid/graphics/Bitmap;
    .end local v20           #rect:Landroid/graphics/RectF;
    .end local v21           #rectPaint:Landroid/graphics/Paint;
    .end local v22           #shadow:Landroid/graphics/RectF;
    .end local v23           #urDo:Lcom/jellybus/fx_sub/UndoRedo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 486
    const-string v6, "Black"

    .restart local v6       #border_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 487
    .end local v6           #border_name:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 488
    const-string v6, "Polaroid"

    .restart local v6       #border_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 489
    .end local v6           #border_name:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 490
    const-string v6, "Film"

    .restart local v6       #border_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 491
    .end local v6           #border_name:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    .line 492
    const-string v6, "Gray scale"

    .restart local v6       #border_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 494
    .end local v6           #border_name:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v25, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v25 .. v25}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/jellybus/fx_sub/BorderView;->border_idx:[Ljava/lang/Integer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v26, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v26 .. v26}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v27, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v27 .. v27}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v26, v26, -0x6

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #border_name:Ljava/lang/String;
    goto/16 :goto_0

    .line 525
    .restart local v11       #flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12       #flurry_value2:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23       #urDo:Lcom/jellybus/fx_sub/UndoRedo;
    :cond_9
    sget v24, Lcom/jellybus/fx_sub/PictureController;->height:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v25, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v25 .. v25}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/jellybus/fx_sub/BorderView;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v16, v24, v25

    .restart local v16       #original_r:F
    goto/16 :goto_1

    .line 535
    .restart local v8       #border_size:F
    .restart local v9       #border_vertical_size:F
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 536
    new-instance v20, Landroid/graphics/RectF;

    sget v24, Lcom/jellybus/fx_sub/PictureController;->width:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v8

    sget v25, Lcom/jellybus/fx_sub/PictureController;->height:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v25, v9

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v8, v8, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 537
    .restart local v20       #rect:Landroid/graphics/RectF;
    new-instance v22, Landroid/graphics/RectF;

    const v24, 0x3ecccccd

    sub-float v24, v8, v24

    const v25, 0x3ecccccd

    sub-float v25, v8, v25

    sget v26, Lcom/jellybus/fx_sub/PictureController;->width:I

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v26, v26, v8

    const v27, 0x3ecccccd

    add-float v26, v26, v27

    sget v27, Lcom/jellybus/fx_sub/PictureController;->height:I

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v27, v27, v9

    const v28, 0x3ecccccd

    add-float v27, v27, v28

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v22       #shadow:Landroid/graphics/RectF;
    goto/16 :goto_2

    .line 539
    .end local v20           #rect:Landroid/graphics/RectF;
    .end local v22           #shadow:Landroid/graphics/RectF;
    :cond_b
    new-instance v20, Landroid/graphics/RectF;

    sget v24, Lcom/jellybus/fx_sub/PictureController;->width:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v8

    sget v25, Lcom/jellybus/fx_sub/PictureController;->height:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v25, v8

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v8, v8, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 540
    .restart local v20       #rect:Landroid/graphics/RectF;
    new-instance v22, Landroid/graphics/RectF;

    const v24, 0x3ecccccd

    sub-float v24, v8, v24

    const v25, 0x3ecccccd

    sub-float v25, v8, v25

    sget v26, Lcom/jellybus/fx_sub/PictureController;->width:I

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v26, v26, v8

    const v27, 0x3ecccccd

    add-float v26, v26, v27

    sget v27, Lcom/jellybus/fx_sub/PictureController;->height:I

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v27, v27, v8

    const v28, 0x3ecccccd

    add-float v27, v27, v28

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v22       #shadow:Landroid/graphics/RectF;
    goto/16 :goto_2

    .line 562
    .restart local v7       #border_round:F
    .restart local v17       #paint:Landroid/graphics/Paint;
    .restart local v19       #pattern:Landroid/graphics/Bitmap;
    .restart local v21       #rectPaint:Landroid/graphics/Paint;
    :cond_c
    const/high16 v24, -0x100

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 563
    const/high16 v24, -0x100

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 566
    :cond_d
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 567
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v24

    iput-object v0, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 568
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v25, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v25 .. v25}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/jellybus/fx_sub/BorderView;->border_idx:[Ljava/lang/Integer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v26, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v26 .. v26}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jellybus/fx_sub/BorderView;->selected_border:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_LiveBorder$5;->this$0:Lcom/jellybus/fx/Activity_Border_LiveBorder;

    move-object/from16 v27, v0

    #getter for: Lcom/jellybus/fx/Activity_Border_LiveBorder;->border_view:Lcom/jellybus/fx_sub/BorderView;
    invoke-static/range {v27 .. v27}, Lcom/jellybus/fx/Activity_Border_LiveBorder;->access$3(Lcom/jellybus/fx/Activity_Border_LiveBorder;)Lcom/jellybus/fx_sub/BorderView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v26, v26, -0x6

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v1, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 570
    new-instance v14, Landroid/graphics/BitmapShader;

    sget-object v24, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v25, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v14, v0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 571
    .local v14, mShader:Landroid/graphics/Shader;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_3

    .line 594
    .end local v14           #mShader:Landroid/graphics/Shader;
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v5       #border:Landroid/graphics/Bitmap;
    .restart local v10       #canvasBorder:Landroid/graphics/Canvas;
    .restart local v18       #path:Landroid/graphics/Path;
    :cond_e
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v0, v5}, Lcom/jellybus/fx/Juliet;->setBorderToPicture(ZLandroid/graphics/Bitmap;)V

    goto/16 :goto_4
.end method
