.class Lvn/esse/bodysymbol/HomeActivity$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvn/esse/bodysymbol/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvn/esse/bodysymbol/HomeActivity;


# direct methods
.method constructor <init>(Lvn/esse/bodysymbol/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 25
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 488
    const/4 v15, 0x0

    .line 490
    .local v15, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v4, v4, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lvn/esse/bodysymbol/Preview;->previewing:Z

    .line 491
    new-instance v13, Ljava/io/File;

    invoke-static {}, Lvn/esse/bodysymbol/HomeActivity;->access$0()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .local v13, file:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 493
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 495
    :cond_0
    const/4 v4, 0x0

    .line 496
    move-object/from16 v0, p1

    array-length v5, v0

    .line 495
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 497
    .local v20, tmpBm:Landroid/graphics/Bitmap;
    const/16 v22, 0x78

    .line 498
    .local v22, xsize:I
    move/from16 v0, v22

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v5, v5, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v5, v5, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    .line 499
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 498
    div-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v24, v0

    .line 501
    .local v24, ysize:I
    const/4 v4, 0x1

    .line 500
    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 502
    .local v3, fbitmap:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 504
    .local v8, matrix:Landroid/graphics/Matrix;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-ge v4, v5, :cond_1

    .line 506
    const/high16 v4, 0x42b4

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 540
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 541
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    .line 540
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 542
    .local v10, bitmap:Landroid/graphics/Bitmap;
    new-instance v16, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lvn/esse/bodysymbol/HomeActivity;->access$0()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget v5, v5, Lvn/esse/bodysymbol/HomeActivity;->currentIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 543
    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 542
    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v15           #outStream:Ljava/io/FileOutputStream;
    .local v16, outStream:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v16

    invoke-virtual {v10, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 546
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->flush()V

    .line 547
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 548
    const-class v4, Lvn/esse/bodysymbol/HomeActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 549
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onPictureTaken - wrote bytes: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 548
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    move-object/from16 v0, p0

    iget-object v4, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    #calls: Lvn/esse/bodysymbol/HomeActivity;->backFromTakePhoto()V
    invoke-static {v4}, Lvn/esse/bodysymbol/HomeActivity;->access$1(Lvn/esse/bodysymbol/HomeActivity;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v4, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v4, v4, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v5, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    div-int v21, v4, v5

    .line 553
    .local v21, xItemSize:I
    move/from16 v0, v21

    int-to-float v4, v0

    .line 554
    move-object/from16 v0, p0

    iget-object v5, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v5, v5, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 553
    mul-float/2addr v4, v5

    .line 554
    move-object/from16 v0, p0

    iget-object v5, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v5, v5, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 553
    div-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v23, v0

    .line 556
    .local v23, yItemSize:I
    const/4 v4, 0x0

    .line 555
    move/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v10, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 557
    .local v19, show:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v4, v4, Lvn/esse/bodysymbol/HomeActivity;->imgView:[Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v5, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget v5, v5, Lvn/esse/bodysymbol/HomeActivity;->currentIndex:I

    aget-object v4, v4, v5

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 558
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v15, v16

    .line 563
    .end local v3           #fbitmap:Landroid/graphics/Bitmap;
    .end local v8           #matrix:Landroid/graphics/Matrix;
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #file:Ljava/io/File;
    .end local v16           #outStream:Ljava/io/FileOutputStream;
    .end local v19           #show:Landroid/graphics/Bitmap;
    .end local v20           #tmpBm:Landroid/graphics/Bitmap;
    .end local v21           #xItemSize:I
    .end local v22           #xsize:I
    .end local v23           #yItemSize:I
    .end local v24           #ysize:I
    .restart local v15       #outStream:Ljava/io/FileOutputStream;
    :goto_1
    const-class v4, Lvn/esse/bodysymbol/HomeActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onPictureTaken - jpeg"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void

    .line 508
    .restart local v3       #fbitmap:Landroid/graphics/Bitmap;
    .restart local v8       #matrix:Landroid/graphics/Matrix;
    .restart local v13       #file:Ljava/io/File;
    .restart local v20       #tmpBm:Landroid/graphics/Bitmap;
    .restart local v22       #xsize:I
    .restart local v24       #ysize:I
    :cond_1
    :try_start_2
    new-instance v14, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v14}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 510
    .local v14, info:Landroid/hardware/Camera$CameraInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v4, v4, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    iget v4, v4, Lvn/esse/bodysymbol/Preview;->openningCamera:I

    .line 509
    invoke-static {v4, v14}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    invoke-virtual {v4}, Lvn/esse/bodysymbol/HomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 512
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v18

    .line 513
    .local v18, rotation:I
    const/4 v11, 0x0

    .line 514
    .local v11, degrees:I
    packed-switch v18, :pswitch_data_0

    .line 530
    :goto_2
    iget v4, v14, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 531
    iget v4, v14, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v11

    rem-int/lit16 v0, v4, 0x168

    move/from16 v17, v0

    .line 532
    .local v17, result:I
    move/from16 v0, v17

    rsub-int v4, v0, 0x168

    rem-int/lit16 v0, v4, 0x168

    move/from16 v17, v0

    .line 536
    :goto_3
    move/from16 v0, v17

    int-to-float v4, v0

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->setRotate(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 560
    .end local v3           #fbitmap:Landroid/graphics/Bitmap;
    .end local v8           #matrix:Landroid/graphics/Matrix;
    .end local v11           #degrees:I
    .end local v13           #file:Ljava/io/File;
    .end local v14           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v17           #result:I
    .end local v18           #rotation:I
    .end local v20           #tmpBm:Landroid/graphics/Bitmap;
    .end local v22           #xsize:I
    .end local v24           #ysize:I
    :catch_0
    move-exception v12

    .line 561
    .local v12, e:Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 516
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v3       #fbitmap:Landroid/graphics/Bitmap;
    .restart local v8       #matrix:Landroid/graphics/Matrix;
    .restart local v11       #degrees:I
    .restart local v13       #file:Ljava/io/File;
    .restart local v14       #info:Landroid/hardware/Camera$CameraInfo;
    .restart local v18       #rotation:I
    .restart local v20       #tmpBm:Landroid/graphics/Bitmap;
    .restart local v22       #xsize:I
    .restart local v24       #ysize:I
    :pswitch_0
    const/4 v11, 0x0

    .line 517
    goto :goto_2

    .line 519
    :pswitch_1
    const/16 v11, 0x5a

    .line 520
    goto :goto_2

    .line 522
    :pswitch_2
    const/16 v11, 0xb4

    .line 523
    goto :goto_2

    .line 525
    :pswitch_3
    const/16 v11, 0x10e

    goto :goto_2

    .line 534
    :cond_2
    :try_start_3
    iget v4, v14, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v11

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v0, v4, 0x168

    move/from16 v17, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .restart local v17       #result:I
    goto :goto_3

    .line 560
    .end local v11           #degrees:I
    .end local v14           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v15           #outStream:Ljava/io/FileOutputStream;
    .end local v17           #result:I
    .end local v18           #rotation:I
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #outStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    move-object/from16 v15, v16

    .end local v16           #outStream:Ljava/io/FileOutputStream;
    .restart local v15       #outStream:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 514
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
