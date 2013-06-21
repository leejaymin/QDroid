.class public Lcom/adobe/ttpixel/extension/gl/FnPrepareTextureFromBitmapData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 15

    const/4 v5, 0x0

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->getEcglContextRef()Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;

    move-result-object v2

    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->getEcglFilterRef()Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, p2, v4

    move-object v0, v4

    check-cast v0, Lcom/adobe/fre/FREBitmapData;

    move-object v13, v0

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v6

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    invoke-virtual {v13}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v14, 0x1

    :try_start_1
    invoke-virtual {v13}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v4

    invoke-virtual {v13}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v5

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/adobe/ttpixel/extension/gl/ECGLFilter;->texturePrepare(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;IIIIIZ)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v6

    invoke-virtual {v13}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v7

    invoke-virtual {v13}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v8

    invoke-virtual {v13}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static/range {v1 .. v12}, Lcom/adobe/ttpixel/extension/gl/ECGLFilter;->textureUploadData(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;IIIIIILjava/nio/ByteBuffer;IIZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v1

    :goto_0
    :try_start_2
    invoke-virtual {v13}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v1

    :goto_2
    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    move v2, v5

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v1, -0xbb8

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v13}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v5, :cond_1

    :try_start_6
    invoke-virtual {v13}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_1
    :goto_5
    throw v1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_2

    :catchall_1
    move-exception v1

    move v5, v14

    goto :goto_4

    :catchall_2
    move-exception v1

    move v5, v2

    goto :goto_4

    :catch_5
    move-exception v1

    move v2, v14

    goto :goto_3

    :cond_2
    move v1, v4

    goto :goto_0
.end method
