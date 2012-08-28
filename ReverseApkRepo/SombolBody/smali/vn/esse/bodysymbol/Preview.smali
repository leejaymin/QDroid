.class Lvn/esse/bodysymbol/Preview;
.super Landroid/view/SurfaceView;
.source "Preview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public camera:Landroid/hardware/Camera;

.field mActivity:Lvn/esse/bodysymbol/HomeActivity;

.field mHolder:Landroid/view/SurfaceHolder;

.field public openningCamera:I

.field public previewSize:Landroid/hardware/Camera$Size;

.field public previewing:Z


# direct methods
.method constructor <init>(Lvn/esse/bodysymbol/HomeActivity;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 20
    iput v0, p0, Lvn/esse/bodysymbol/Preview;->openningCamera:I

    .line 21
    iput-boolean v0, p0, Lvn/esse/bodysymbol/Preview;->previewing:Z

    .line 30
    iput-object p1, p0, Lvn/esse/bodysymbol/Preview;->mActivity:Lvn/esse/bodysymbol/HomeActivity;

    .line 33
    invoke-virtual {p0}, Lvn/esse/bodysymbol/Preview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lvn/esse/bodysymbol/Preview;->mHolder:Landroid/view/SurfaceHolder;

    .line 35
    iget-object v0, p0, Lvn/esse/bodysymbol/Preview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 36
    iget-object v0, p0, Lvn/esse/bodysymbol/Preview;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 38
    return-void
.end method

.method private getOptimalSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 19
    .parameter
    .parameter "w"
    .parameter "h"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v2, 0x3fa999999999999aL

    .line 158
    .local v2, ASPECT_TOLERANCE:D
    move/from16 v0, p2

    int-to-double v14, v0

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v12, v14, v16

    .line 159
    .local v12, targetRatio:D
    if-nez p1, :cond_1

    .line 160
    const/4 v7, 0x0

    .line 201
    :cond_0
    return-object v7

    .line 162
    :cond_1
    const/4 v7, 0x0

    .line 163
    .local v7, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v5, 0x7fefffffffffffffL

    .line 165
    .local v5, minDiff:D
    move/from16 v11, p3

    .line 168
    .local v11, targetHeight:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_6

    .line 179
    if-nez v7, :cond_4

    .line 180
    const-wide v5, 0x7fefffffffffffffL

    .line 181
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_7

    .line 189
    :cond_4
    if-nez v7, :cond_0

    .line 190
    const v4, 0x7fffffff

    .line 192
    .local v4, min:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 194
    .local v10, size:Landroid/hardware/Camera$Size;
    iget v15, v10, Landroid/hardware/Camera$Size;->width:I

    if-ge v15, v4, :cond_5

    .line 195
    move-object v7, v10

    .line 196
    iget v4, v10, Landroid/hardware/Camera$Size;->width:I

    goto :goto_2

    .line 168
    .end local v4           #min:I
    .end local v10           #size:Landroid/hardware/Camera$Size;
    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 169
    .restart local v10       #size:Landroid/hardware/Camera$Size;
    iget v15, v10, Landroid/hardware/Camera$Size;->width:I

    int-to-double v15, v15

    iget v0, v10, Landroid/hardware/Camera$Size;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v8, v15, v17

    .line 170
    .local v8, ratio:D
    sub-double v15, v8, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    const-wide v17, 0x3fa999999999999aL

    cmpl-double v15, v15, v17

    if-gtz v15, :cond_2

    .line 172
    iget v15, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    int-to-double v15, v15

    cmpg-double v15, v15, v5

    if-gez v15, :cond_2

    .line 173
    move-object v7, v10

    .line 174
    iget v15, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    int-to-double v5, v15

    goto :goto_0

    .line 181
    .end local v8           #ratio:D
    .end local v10           #size:Landroid/hardware/Camera$Size;
    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 182
    .restart local v10       #size:Landroid/hardware/Camera$Size;
    iget v15, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    int-to-double v15, v15

    cmpg-double v15, v15, v5

    if-gez v15, :cond_3

    .line 183
    move-object v7, v10

    .line 184
    iget v15, v10, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    int-to-double v5, v15

    goto :goto_1
.end method


# virtual methods
.method public setCameraDisplayOrientation()V
    .locals 8

    .prologue
    const/16 v7, 0x5a

    .line 262
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-ge v5, v6, :cond_1

    .line 263
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    .line 264
    iget-object v5, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 265
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2, v7}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 299
    .end local v2           #parameters:Landroid/hardware/Camera$Parameters;
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v5, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v5, v7}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    .line 271
    :cond_1
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 272
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iget v5, p0, Lvn/esse/bodysymbol/Preview;->openningCamera:I

    invoke-static {v5, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 273
    iget-object v5, p0, Lvn/esse/bodysymbol/Preview;->mActivity:Lvn/esse/bodysymbol/HomeActivity;

    invoke-virtual {v5}, Lvn/esse/bodysymbol/HomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 274
    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 275
    .local v4, rotation:I
    const/4 v0, 0x0

    .line 276
    .local v0, degrees:I
    packed-switch v4, :pswitch_data_0

    .line 292
    :goto_1
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 293
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v5, v0

    rem-int/lit16 v3, v5, 0x168

    .line 294
    .local v3, result:I
    rsub-int v5, v3, 0x168

    rem-int/lit16 v3, v5, 0x168

    .line 298
    :goto_2
    iget-object v5, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v5, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0

    .line 278
    .end local v3           #result:I
    :pswitch_0
    const/4 v0, 0x0

    .line 279
    goto :goto_1

    .line 281
    :pswitch_1
    const/16 v0, 0x5a

    .line 282
    goto :goto_1

    .line 284
    :pswitch_2
    const/16 v0, 0xb4

    .line 285
    goto :goto_1

    .line 287
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 296
    :cond_2
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v5, v0

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v3, v5, 0x168

    .restart local v3       #result:I
    goto :goto_2

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public stopCameraPreview()V
    .locals 2

    .prologue
    .line 251
    const/4 v1, 0x0

    iput-boolean v1, p0, Lvn/esse/bodysymbol/Preview;->previewing:Z

    .line 253
    :try_start_0
    iget-object v1, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 10
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/16 v9, 0x78

    const/16 v8, 0x50

    const/4 v7, 0x1

    .line 106
    const-class v4, Lvn/esse/bodysymbol/Preview;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "preview surfaceChanged(SurfaceHolder holder, int "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 108
    const-string v6, ", int "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", int "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v4, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 153
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v4, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 118
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 119
    .local v3, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v3, v9, v8}, Lvn/esse/bodysymbol/Preview;->getOptimalSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 120
    .local v2, size:Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_1

    .line 121
    const-class v4, Lvn/esse/bodysymbol/Preview;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "preview size:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 122
    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-object v2, p0, Lvn/esse/bodysymbol/Preview;->previewSize:Landroid/hardware/Camera$Size;

    .line 124
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 130
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 131
    invoke-direct {p0, v3, v9, v8}, Lvn/esse/bodysymbol/Preview;->getOptimalSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 132
    if-eqz v2, :cond_2

    .line 133
    const-class v4, Lvn/esse/bodysymbol/Preview;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "picture size:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 134
    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v4, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 140
    :cond_2
    :try_start_0
    iget-object v4, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :goto_1
    :try_start_1
    iget-object v4, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/Exception;
    iget-object v4, p0, Lvn/esse/bodysymbol/Preview;->mActivity:Lvn/esse/bodysymbol/HomeActivity;

    const-string v5, "Error"

    const-string v6, "Cannot start camera preview"

    invoke-virtual {v4, v5, v6, v7}, Lvn/esse/bodysymbol/HomeActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 141
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 143
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v4, p0, Lvn/esse/bodysymbol/Preview;->mActivity:Lvn/esse/bodysymbol/HomeActivity;

    const-string v5, "Error"

    const-string v6, "Cannot set camera parameters"

    invoke-virtual {v4, v5, v6, v7}, Lvn/esse/bodysymbol/HomeActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    .line 43
    const-class v1, Lvn/esse/bodysymbol/Preview;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preview surfaceCreated:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 47
    iget v1, p0, Lvn/esse/bodysymbol/Preview;->openningCamera:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    .line 51
    :goto_0
    iget-object v1, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 53
    invoke-virtual {p0}, Lvn/esse/bodysymbol/Preview;->setCameraDisplayOrientation()V

    .line 54
    iget-object v1, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    new-instance v2, Lvn/esse/bodysymbol/Preview$1;

    invoke-direct {v2, p0}, Lvn/esse/bodysymbol/Preview$1;-><init>(Lvn/esse/bodysymbol/Preview;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 75
    :cond_0
    :goto_1
    return-void

    .line 49
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fail to connect to camera service"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 65
    const-class v1, Lvn/esse/bodysymbol/Preview;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fail to connect camera"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Lvn/esse/bodysymbol/Preview;->mActivity:Lvn/esse/bodysymbol/HomeActivity;

    .line 68
    const-string v2, "Error"

    .line 69
    const-string v3, "Fail to connect to camera service. Please check your camera and restart your smart phone"

    .line 70
    const/4 v4, 0x1

    .line 67
    invoke-virtual {v1, v2, v3, v4}, Lvn/esse/bodysymbol/HomeActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    const/4 v3, 0x0

    .line 81
    const-class v1, Lvn/esse/bodysymbol/Preview;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preview surfaceDestroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lvn/esse/bodysymbol/Preview;->previewing:Z

    .line 83
    iget-object v1, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 87
    :cond_0
    :try_start_0
    iget-object v1, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 88
    invoke-virtual {p0}, Lvn/esse/bodysymbol/Preview;->stopCameraPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    :try_start_1
    iget-object v1, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :goto_2
    iput-object v3, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 96
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 98
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public switchCamera()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 205
    iget-object v6, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 206
    invoke-virtual {p0}, Lvn/esse/bodysymbol/Preview;->stopCameraPreview()V

    .line 207
    iget-object v6, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V

    .line 208
    iput-object v7, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    .line 209
    const-class v6, Lvn/esse/bodysymbol/Preview;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "openning camera:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lvn/esse/bodysymbol/Preview;->openningCamera:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget v6, p0, Lvn/esse/bodysymbol/Preview;->openningCamera:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v7

    rem-int/2addr v6, v7

    iput v6, p0, Lvn/esse/bodysymbol/Preview;->openningCamera:I

    .line 211
    iget v6, p0, Lvn/esse/bodysymbol/Preview;->openningCamera:I

    invoke-static {v6}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v6

    iput-object v6, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    .line 213
    :try_start_0
    iget-object v6, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    iget-object v7, p0, Lvn/esse/bodysymbol/Preview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 215
    iget-object v6, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    new-instance v7, Lvn/esse/bodysymbol/Preview$2;

    invoke-direct {v7, p0}, Lvn/esse/bodysymbol/Preview$2;-><init>(Lvn/esse/bodysymbol/Preview;)V

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 222
    iget-object v6, p0, Lvn/esse/bodysymbol/Preview;->mActivity:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v6, v6, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 223
    sget v7, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    .line 222
    div-int v4, v6, v7

    .line 224
    .local v4, xItemSize:I
    iget-object v6, p0, Lvn/esse/bodysymbol/Preview;->mActivity:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v6, v6, Lvn/esse/bodysymbol/HomeActivity;->symbolBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 225
    sget v7, Lvn/esse/bodysymbol/HomeActivity;->current_resolution:I

    .line 224
    div-int v5, v6, v7

    .line 226
    .local v5, yItemSize:I
    invoke-virtual {p0}, Lvn/esse/bodysymbol/Preview;->setCameraDisplayOrientation()V

    .line 227
    iget-object v6, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 228
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 229
    .local v3, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v3, v4, v5}, Lvn/esse/bodysymbol/Preview;->getOptimalSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 230
    .local v2, size:Landroid/hardware/Camera$Size;
    const-class v6, Lvn/esse/bodysymbol/Preview;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "preview size:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 231
    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 230
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 233
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 234
    invoke-direct {p0, v3, v4, v5}, Lvn/esse/bodysymbol/Preview;->getOptimalSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 235
    const-class v6, Lvn/esse/bodysymbol/Preview;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "picture size:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 236
    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 235
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 239
    iget-object v6, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 241
    iget-object v6, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v2           #size:Landroid/hardware/Camera$Size;
    .end local v3           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v4           #xItemSize:I
    .end local v5           #yItemSize:I
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    iget-object v6, p0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->release()V

    goto :goto_0
.end method
