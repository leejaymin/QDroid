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
    .locals 27
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 488
    const/16 v17, 0x0

    .line 490
    .local v17, outStream:Ljava/io/FileOutputStream;
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

    move-result-object v22

    .line 497
    .local v22, tmpBm:Landroid/graphics/Bitmap;
    const/16 v24, 0x78

    .line 498
    .local v24, xsize:I
    move/from16 v0, v24

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

    move/from16 v26, v0

    .line 501
    .local v26, ysize:I
    const/4 v4, 0x1

    .line 500
    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v26

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

    .line 560
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 561
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    .line 560
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 562
    .local v10, bitmap:Landroid/graphics/Bitmap;
    new-instance v18, Ljava/io/FileOutputStream;

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

    .line 563
    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 562
    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v17           #outStream:Ljava/io/FileOutputStream;
    .local v18, outStream:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v18

    invoke-virtual {v10, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 566
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 567
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 568
    const-class v4, Lvn/esse/bodysymbol/HomeActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 569
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onPictureTaken - wrote bytes: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 568
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    #calls: Lvn/esse/bodysymbol/HomeActivity;->backFromTakePhoto()V
    invoke-static {v4}, Lvn/esse/bodysymbol/HomeActivity;->access$1(Lvn/esse/bodysymbol/HomeActivity;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v4, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v4, v4, Lvn/esse/bodysymbol/HomeActivity;->metrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v5, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    div-int v23, v4, v5

    .line 573
    .local v23, xItemSize:I
    move/from16 v0, v23

    int-to-float v4, v0

    .line 574
    move-object/from16 v0, p0

    iget-object v5, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v5, v5, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 573
    mul-float/2addr v4, v5

    .line 574
    move-object/from16 v0, p0

    iget-object v5, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v5, v5, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 573
    div-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v25, v0

    .line 576
    .local v25, yItemSize:I
    const/4 v4, 0x0

    .line 575
    move/from16 v0, v23

    move/from16 v1, v25

    invoke-static {v10, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 577
    .local v21, show:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v4, v4, Lvn/esse/bodysymbol/HomeActivity;->imgView:[Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v5, v0, Lvn/esse/bodysymbol/HomeActivity$3;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget v5, v5, Lvn/esse/bodysymbol/HomeActivity;->currentIndex:I

    aget-object v4, v4, v5

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 578
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v18

    .line 583
    .end local v3           #fbitmap:Landroid/graphics/Bitmap;
    .end local v8           #matrix:Landroid/graphics/Matrix;
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #file:Ljava/io/File;
    .end local v18           #outStream:Ljava/io/FileOutputStream;
    .end local v21           #show:Landroid/graphics/Bitmap;
    .end local v22           #tmpBm:Landroid/graphics/Bitmap;
    .end local v23           #xItemSize:I
    .end local v24           #xsize:I
    .end local v25           #yItemSize:I
    .end local v26           #ysize:I
    .restart local v17       #outStream:Ljava/io/FileOutputStream;
    :goto_1
    const-class v4, Lvn/esse/bodysymbol/HomeActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onPictureTaken - jpeg"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void

    .line 508
    .restart local v3       #fbitmap:Landroid/graphics/Bitmap;
    .restart local v8       #matrix:Landroid/graphics/Matrix;
    .restart local v13       #file:Ljava/io/File;
    .restart local v22       #tmpBm:Landroid/graphics/Bitmap;
    .restart local v24       #xsize:I
    .restart local v26       #ysize:I
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

    move-result v20

    .line 513
    .local v20, rotation:I
    const/4 v11, 0x0

    .line 514
    .local v11, degrees:I
    packed-switch v20, :pswitch_data_0

    .line 531
    :goto_2
    iget v4, v14, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 532
    const-class v4, Lvn/esse/bodysymbol/HomeActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 533
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Build.MANUFACTURER:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 532
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "samsung"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 535
    const/16 v19, 0x5a

    .line 537
    .local v19, result:I
    const/16 v4, 0x9

    new-array v0, v4, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 538
    .local v16, mirrorY:[F
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 539
    .local v15, mirrorMatrix:Landroid/graphics/Matrix;
    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Matrix;->setValues([F)V

    .line 540
    invoke-virtual {v8, v15}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 555
    .end local v15           #mirrorMatrix:Landroid/graphics/Matrix;
    .end local v16           #mirrorY:[F
    :goto_3
    move/from16 v0, v19

    int-to-float v4, v0

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 580
    .end local v3           #fbitmap:Landroid/graphics/Bitmap;
    .end local v8           #matrix:Landroid/graphics/Matrix;
    .end local v11           #degrees:I
    .end local v13           #file:Ljava/io/File;
    .end local v14           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v19           #result:I
    .end local v20           #rotation:I
    .end local v22           #tmpBm:Landroid/graphics/Bitmap;
    .end local v24           #xsize:I
    .end local v26           #ysize:I
    :catch_0
    move-exception v12

    .line 581
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
    .restart local v20       #rotation:I
    .restart local v22       #tmpBm:Landroid/graphics/Bitmap;
    .restart local v24       #xsize:I
    .restart local v26       #ysize:I
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

    .line 542
    :cond_2
    :try_start_3
    iget v4, v14, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v11

    rem-int/lit16 v0, v4, 0x168

    move/from16 v19, v0

    .line 544
    .restart local v19       #result:I
    move/from16 v0, v19

    rsub-int v4, v0, 0x168

    rem-int/lit16 v0, v4, 0x168

    move/from16 v19, v0

    goto :goto_3

    .line 550
    .end local v19           #result:I
    :cond_3
    iget v4, v14, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v11

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v0, v4, 0x168

    move/from16 v19, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .restart local v19       #result:I
    goto :goto_3

    .line 580
    .end local v11           #degrees:I
    .end local v14           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v17           #outStream:Ljava/io/FileOutputStream;
    .end local v19           #result:I
    .end local v20           #rotation:I
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    .restart local v18       #outStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    move-object/from16 v17, v18

    .end local v18           #outStream:Ljava/io/FileOutputStream;
    .restart local v17       #outStream:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 514
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 537
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
