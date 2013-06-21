.class public Lcom/jellybus/fx/Activity_Border_Stamp_User;
.super Landroid/app/Activity;
.source "Activity_Border_Stamp_User.java"


# instance fields
.field private apply_listener:Landroid/view/View$OnClickListener;

.field private bitmap:Landroid/graphics/Bitmap;

.field private cancel_listener:Landroid/view/View$OnClickListener;

.field private current_stamp:I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private empty_view:Landroid/widget/ImageView;

.field private figure_listener:Landroid/view/View$OnClickListener;

.field private frm_layout:Landroid/widget/RelativeLayout;

.field private final handler:Landroid/os/Handler;

.field private height:I

.field private help_listener:Landroid/view/View$OnClickListener;

.field private intent_function:Lcom/jellybus/fx_sub/Intent_function;

.field private isOkFirst:Z

.field private isViewSet:Z

.field private none_listener:Landroid/view/View$OnTouchListener;

.field private pref:Landroid/content/SharedPreferences;

.field private stampUserDrawView:Lcom/jellybus/fx_sub/StampUserDrawView;

.field private stamp_button_apply:Landroid/widget/ImageView;

.field private stamp_button_cancel:Landroid/widget/ImageView;

.field private stamp_button_figure:Landroid/widget/ImageView;

.field private stamp_info:Landroid/widget/RelativeLayout;

.field private stamp_info_ok:Landroid/widget/ImageView;

.field private stamp_picture:Landroid/widget/ImageView;

.field private stamp_select1:Landroid/widget/ImageView;

.field private stamp_select10:Landroid/widget/ImageView;

.field private stamp_select11:Landroid/widget/ImageView;

.field private stamp_select12:Landroid/widget/ImageView;

.field private stamp_select2:Landroid/widget/ImageView;

.field private stamp_select3:Landroid/widget/ImageView;

.field private stamp_select4:Landroid/widget/ImageView;

.field private stamp_select5:Landroid/widget/ImageView;

.field private stamp_select6:Landroid/widget/ImageView;

.field private stamp_select7:Landroid/widget/ImageView;

.field private stamp_select8:Landroid/widget/ImageView;

.field private stamp_select9:Landroid/widget/ImageView;

.field private sub_menu:Landroid/widget/HorizontalScrollView;

.field private tc:Lcom/jellybus/fx_sub/ThumbnailController;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    new-instance v0, Lcom/jellybus/fx_sub/ThumbnailController;

    invoke-direct {v0}, Lcom/jellybus/fx_sub/ThumbnailController;-><init>()V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    .line 269
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User$1;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->handler:Landroid/os/Handler;

    .line 304
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Stamp_User$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User$2;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->none_listener:Landroid/view/View$OnTouchListener;

    .line 315
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Stamp_User$3;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User$3;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->help_listener:Landroid/view/View$OnClickListener;

    .line 327
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Stamp_User$4;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User$4;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->cancel_listener:Landroid/view/View$OnClickListener;

    .line 336
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Stamp_User$5;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User$5;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->figure_listener:Landroid/view/View$OnClickListener;

    .line 350
    new-instance v0, Lcom/jellybus/fx/Activity_Border_Stamp_User$6;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User$6;-><init>(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->apply_listener:Landroid/view/View$OnClickListener;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Lcom/jellybus/fx_sub/ThumbnailController;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->tc:Lcom/jellybus/fx_sub/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_Border_Stamp_User;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I

    return v0
.end method

.method static synthetic access$10(Lcom/jellybus/fx/Activity_Border_Stamp_User;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->isViewSet:Z

    return-void
.end method

.method static synthetic access$11(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$12(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_info:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->isViewSet:Z

    return v0
.end method

.method static synthetic access$14(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->goBack()V

    return-void
.end method

.method static synthetic access$15(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->sub_menu:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_button_figure:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->removeBitmap()V

    return-void
.end method

.method static synthetic access$18(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->saveStampImage()V

    return-void
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_Border_Stamp_User;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I

    return v0
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->frm_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_Border_Stamp_User;Lcom/jellybus/fx_sub/StampUserDrawView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stampUserDrawView:Lcom/jellybus/fx_sub/StampUserDrawView;

    return-void
.end method

.method static synthetic access$5(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Lcom/jellybus/fx_sub/StampUserDrawView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stampUserDrawView:Lcom/jellybus/fx_sub/StampUserDrawView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jellybus/fx/Activity_Border_Stamp_User;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$8(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_picture:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->empty_view:Landroid/widget/ImageView;

    return-object v0
.end method

.method private goBack()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 505
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stampUserDrawView:Lcom/jellybus/fx_sub/StampUserDrawView;

    iput-boolean v2, v1, Lcom/jellybus/fx_sub/StampUserDrawView;->isViewSet:Z

    .line 508
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stampUserDrawView:Lcom/jellybus/fx_sub/StampUserDrawView;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/StampUserDrawView;->removeBitmap()V

    .line 511
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->removeBitmap()V

    .line 512
    sget v1, Lcom/jellybus/fx_sub/PictureController;->width:I

    sget v2, Lcom/jellybus/fx_sub/PictureController;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    .line 513
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v3}, Lcom/jellybus/fx/Juliet;->getOriginalIndex(IILandroid/graphics/Bitmap;)V

    .line 514
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeAllIndex()V

    .line 516
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jellybus/fx/Juliet;->setOriginalIndex(Landroid/graphics/Bitmap;)V

    .line 517
    const/4 v1, 0x1

    sget v2, Lcom/jellybus/fx_sub/PictureController;->preview_width:I

    sget v3, Lcom/jellybus/fx_sub/PictureController;->preview_height:I

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, v3, v4}, Lcom/jellybus/fx/Juliet;->setResizeBilinearIndex(ZIILandroid/graphics/Bitmap;)V

    .line 518
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->removeBitmap()V

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Border_Stamp;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->startActivity(Landroid/content/Intent;)V

    .line 522
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->finish()V

    .line 523
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->overridePendingTransition(II)V

    .line 524
    return-void
.end method

.method private removeBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 491
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_picture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 493
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 494
    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    .line 496
    :cond_0
    return-void
.end method

.method private saveStampImage()V
    .locals 20

    .prologue
    .line 369
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/PicsPlay Pro/.stamp/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 370
    .local v8, imgPath:Ljava/lang/String;
    const-string v14, "Stamp_%d.png"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 372
    .local v7, imgName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 373
    .local v9, outputStream:Ljava/io/OutputStream;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 375
    .local v5, filePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 377
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 380
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .local v4, file:Ljava/io/File;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    .end local v9           #outputStream:Ljava/io/OutputStream;
    .local v10, outputStream:Ljava/io/OutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v14, :cond_1

    .line 383
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v16, 0x55

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 385
    :cond_1
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v9, v10

    .line 392
    .end local v4           #file:Ljava/io/File;
    .end local v10           #outputStream:Ljava/io/OutputStream;
    .restart local v9       #outputStream:Ljava/io/OutputStream;
    :goto_0
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, Lt3SkSFUAg5/gVgwes9xi;->We9PZOIwlopjNt6Lqz(Ljava/io/File;)J

    move-result-wide v11

    .line 394
    .local v11, size:J
    invoke-virtual/range {p0 .. p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 395
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 396
    .local v13, values:Landroid/content/ContentValues;
    const-string v14, "_data"

    invoke-virtual {v13, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v14, "title"

    const-string v15, "PicsPlay Pro"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v14, "_display_name"

    invoke-virtual {v13, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v14, "orientation"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    const-string v14, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 401
    const-string v14, "_size"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 402
    const-string v14, "vnd.android.cursor.dir/image"

    const-string v15, "Jellybus"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v14, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 407
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    new-instance v15, Lcom/jellybus/fx_sub/Stamp;

    sget-object v16, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3f333333

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3f333333

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    invoke-direct/range {v15 .. v19}, Lcom/jellybus/fx_sub/Stamp;-><init>(IIIZ)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v14, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    sget-object v15, Lcom/jellybus/fx_sub/StampControllView;->stampList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/jellybus/fx_sub/Stamp;

    invoke-virtual {v14, v5}, Lcom/jellybus/fx_sub/Stamp;->setPhotoStampPath(Ljava/lang/String;)V

    .line 409
    return-void

    .line 386
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v11           #size:J
    .end local v13           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 387
    .local v3, fe:Ljava/io/FileNotFoundException;
    :goto_1
    const-string v14, "test"

    const-string v15, "file not found"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 388
    .end local v3           #fe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 389
    .local v6, ie:Ljava/io/IOException;
    :goto_2
    const-string v14, "test"

    const-string v15, "IO"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 388
    .end local v6           #ie:Ljava/io/IOException;
    .end local v9           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v10       #outputStream:Ljava/io/OutputStream;
    :catch_2
    move-exception v6

    move-object v9, v10

    .end local v10           #outputStream:Ljava/io/OutputStream;
    .restart local v9       #outputStream:Ljava/io/OutputStream;
    goto :goto_2

    .line 386
    .end local v9           #outputStream:Ljava/io/OutputStream;
    .restart local v10       #outputStream:Ljava/io/OutputStream;
    :catch_3
    move-exception v3

    move-object v9, v10

    .end local v10           #outputStream:Ljava/io/OutputStream;
    .restart local v9       #outputStream:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private scaleBitmap(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .parameter "path"
    .parameter "orientation"
    .parameter "sampleSize"

    .prologue
    .line 221
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 222
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    iput p3, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 223
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 225
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    .line 226
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I

    .line 227
    .local v1, bm_width:I
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I

    .line 228
    .local v0, bm_height:I
    iget v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I

    iget v7, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 230
    .local v2, max:I
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removePreviewIndex()V

    .line 231
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v6}, Lcom/jellybus/fx/Juliet;->setPreviewIndex(Landroid/graphics/Bitmap;)V

    .line 232
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 234
    iget v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I

    iget v7, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v7, 0x320

    if-le v6, v7, :cond_0

    .line 235
    const/high16 v6, 0x4448

    int-to-float v7, v2

    div-float v4, v6, v7

    .line 236
    .local v4, ratio:F
    int-to-float v6, v1

    mul-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I

    .line 237
    int-to-float v6, v0

    mul-float/2addr v6, v4

    float-to-int v6, v6

    iput v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I

    .line 239
    iget v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I

    iget v7, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I

    invoke-static {v1, v0, v6, v7}, Lcom/jellybus/fx/Juliet;->setResizeBilinearThumbnail(IIII)V

    .line 240
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeThumbPreviewIndex()V

    .line 242
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeThumnailIndex()V

    .line 245
    .end local v4           #ratio:F
    :cond_0
    if-eqz p2, :cond_1

    const-string v6, "0"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 246
    const-string v6, "90"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 247
    iget v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I

    iget v7, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I

    invoke-static {v6, v7}, Lcom/jellybus/fx/Juliet;->rotate90Index(II)V

    .line 248
    iget v5, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I

    .line 249
    .local v5, temp:I
    iget v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I

    iput v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I

    .line 250
    iput v5, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I

    .line 261
    .end local v5           #temp:I
    :cond_1
    :goto_0
    iget v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I

    iget v7, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    .line 262
    iget v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I

    iget v7, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I

    iget-object v8, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v6, v7, v8}, Lcom/jellybus/fx/Juliet;->getPreviewIndex(IILandroid/graphics/Bitmap;)V

    .line 265
    iget-object v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->handler:Landroid/os/Handler;

    const/4 v7, 0x0

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 266
    return-void

    .line 251
    :cond_2
    const-string v6, "180"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 252
    iget v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I

    iget v7, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I

    invoke-static {v6, v7}, Lcom/jellybus/fx/Juliet;->rotate180Index(II)V

    goto :goto_0

    .line 253
    :cond_3
    const-string v6, "270"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 254
    iget v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I

    iget v7, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I

    invoke-static {v6, v7}, Lcom/jellybus/fx/Juliet;->rotate270Index(II)V

    .line 255
    iget v5, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I

    .line 256
    .restart local v5       #temp:I
    iget v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I

    iput v6, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->width:I

    .line 257
    iput v5, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->height:I

    goto :goto_0
.end method

.method private setOffButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 469
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 470
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 471
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 472
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 473
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 474
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select6:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 475
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select7:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 476
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select8:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 477
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select9:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 478
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select10:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 479
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select11:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 480
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select12:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 481
    return-void
.end method

.method private set_camera_info(Landroid/net/Uri;)V
    .locals 12
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 175
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    .line 176
    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    .line 177
    const-string v1, "orientation"

    aput-object v1, v2, v0

    .local v2, proj:[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 178
    invoke-virtual/range {v0 .. v5}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 179
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 184
    .local v6, column_idx:I
    :try_start_0
    const-string v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 188
    .local v9, orientation:Ljava/lang/String;
    :goto_0
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 189
    .local v10, path:Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->getOriginalSize(Ljava/lang/String;)I

    move-result v11

    .line 190
    .local v11, sampleSize:I
    invoke-direct {p0, v10, v9, v11}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->scaleBitmap(Ljava/lang/String;Ljava/lang/String;I)V

    .line 191
    return-void

    .line 185
    .end local v9           #orientation:Ljava/lang/String;
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #sampleSize:I
    :catch_0
    move-exception v8

    .line 186
    .local v8, e:Ljava/lang/NullPointerException;
    const-string v9, "0"

    .restart local v9       #orientation:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public getOriginalSize(Ljava/lang/String;)I
    .locals 8
    .parameter "path"

    .prologue
    const v7, 0x44d48000

    const/4 v5, 0x1

    .line 195
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 196
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 197
    const/4 v6, 0x1

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 198
    invoke-static {p1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 199
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 200
    .local v1, bm_width:I
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 201
    .local v0, bm_height:I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-float v3, v6

    .line 202
    .local v3, max:F
    const/high16 v6, 0x4480

    cmpl-float v6, v3, v6

    if-lez v6, :cond_0

    .line 203
    cmpg-float v6, v3, v7

    if-gtz v6, :cond_1

    .line 215
    .end local v0           #bm_height:I
    .end local v1           #bm_width:I
    .end local v3           #max:F
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return v5

    .line 205
    .restart local v0       #bm_height:I
    .restart local v1       #bm_width:I
    .restart local v3       #max:F
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    cmpl-float v5, v3, v7

    if-lez v5, :cond_2

    const v5, 0x453b8000

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    .line 206
    const/4 v5, 0x2

    goto :goto_0

    .line 208
    :cond_2
    const/4 v5, 0x4

    goto :goto_0

    .line 213
    .end local v0           #bm_height:I
    .end local v1           #bm_width:I
    .end local v3           #max:F
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 214
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "test"

    const-string v7, "size \ud68d\ub4dd \uc2e4\ud328"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 156
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 159
    const/16 v1, 0x4cf

    if-ne p1, v1, :cond_0

    .line 160
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->set_camera_info(Landroid/net/Uri;)V

    .line 161
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->empty_view:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v1, "test"

    const-string v2, "Intent Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Border_Stamp;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->startActivity(Landroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->finish()V

    .line 169
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->isViewSet:Z

    if-eqz v0, :cond_0

    .line 502
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->goBack()V

    .line 503
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0, v4}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->requestWindowFeature(I)Z

    .line 96
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 100
    const v1, 0x7f060045

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->frm_layout:Landroid/widget/RelativeLayout;

    .line 101
    const v1, 0x7f060046

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->sub_menu:Landroid/widget/HorizontalScrollView;

    .line 103
    const v1, 0x7f060039

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_picture:Landroid/widget/ImageView;

    .line 104
    const v1, 0x7f06002b

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->empty_view:Landroid/widget/ImageView;

    .line 105
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->empty_view:Landroid/widget/ImageView;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 107
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->empty_view:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    const v1, 0x7f060047

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select1:Landroid/widget/ImageView;

    .line 111
    const v1, 0x7f060048

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select2:Landroid/widget/ImageView;

    .line 112
    const v1, 0x7f060049

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select3:Landroid/widget/ImageView;

    .line 113
    const v1, 0x7f06004a

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select4:Landroid/widget/ImageView;

    .line 114
    const v1, 0x7f06004b

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select5:Landroid/widget/ImageView;

    .line 115
    const v1, 0x7f06004c

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select6:Landroid/widget/ImageView;

    .line 116
    const v1, 0x7f06004d

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select7:Landroid/widget/ImageView;

    .line 117
    const v1, 0x7f06004e

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select8:Landroid/widget/ImageView;

    .line 118
    const v1, 0x7f06004f

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select9:Landroid/widget/ImageView;

    .line 119
    const v1, 0x7f060050

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select10:Landroid/widget/ImageView;

    .line 120
    const v1, 0x7f060051

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select11:Landroid/widget/ImageView;

    .line 121
    const v1, 0x7f060052

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select12:Landroid/widget/ImageView;

    .line 123
    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_button_cancel:Landroid/widget/ImageView;

    .line 124
    const v1, 0x7f060053

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_button_figure:Landroid/widget/ImageView;

    .line 125
    const v1, 0x7f060044

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_button_apply:Landroid/widget/ImageView;

    .line 127
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_button_cancel:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->cancel_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_button_figure:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->figure_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_button_apply:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->apply_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v1, 0x7f060054

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_info:Landroid/widget/RelativeLayout;

    .line 132
    const v1, 0x7f060056

    invoke-virtual {p0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_info_ok:Landroid/widget/ImageView;

    .line 134
    const-string v1, "pref"

    invoke-virtual {p0, v1, v3}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->pref:Landroid/content/SharedPreferences;

    .line 135
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->editor:Landroid/content/SharedPreferences$Editor;

    .line 136
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->pref:Landroid/content/SharedPreferences;

    const-string v2, "isStampFirst"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->isOkFirst:Z

    .line 137
    iget-boolean v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->isOkFirst:Z

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_info:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_info:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->none_listener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 140
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_info_ok:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->help_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :goto_0
    new-instance v1, Lcom/jellybus/fx_sub/Intent_function;

    invoke-direct {v1, p0}, Lcom/jellybus/fx_sub/Intent_function;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->intent_function:Lcom/jellybus/fx_sub/Intent_function;

    .line 147
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->intent_function:Lcom/jellybus/fx_sub/Intent_function;

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/Intent_function;->load_gallery()Landroid/content/Intent;

    move-result-object v0

    .line 148
    .local v0, intent_gallery:Landroid/content/Intent;
    const/16 v1, 0x4cf

    invoke-virtual {p0, v0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->startActivityForResult(Landroid/content/Intent;I)V

    .line 149
    return-void

    .line 142
    .end local v0           #intent_gallery:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_info:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->empty_view:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public stamp_select_listener(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const v1, 0x7f02013c

    .line 413
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->setOffButton()V

    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 465
    :goto_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stampUserDrawView:Lcom/jellybus/fx_sub/StampUserDrawView;

    iget v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->current_stamp:I

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/StampUserDrawView;->setCurrentStamp(I)V

    .line 466
    return-void

    .line 417
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->current_stamp:I

    .line 418
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 421
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->current_stamp:I

    .line 422
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 425
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->current_stamp:I

    .line 426
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 429
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->current_stamp:I

    .line 430
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 433
    :pswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->current_stamp:I

    .line 434
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 437
    :pswitch_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->current_stamp:I

    .line 438
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select6:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 441
    :pswitch_6
    const/4 v0, 0x6

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->current_stamp:I

    .line 442
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select7:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 445
    :pswitch_7
    const/4 v0, 0x7

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->current_stamp:I

    .line 446
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select8:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 449
    :pswitch_8
    const/16 v0, 0x8

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->current_stamp:I

    .line 450
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select9:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 453
    :pswitch_9
    const/16 v0, 0x9

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->current_stamp:I

    .line 454
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select10:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 457
    :pswitch_a
    const/16 v0, 0xa

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->current_stamp:I

    .line 458
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select11:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 461
    :pswitch_b
    const/16 v0, 0xb

    iput v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->current_stamp:I

    .line 462
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_select12:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x7f060047
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
