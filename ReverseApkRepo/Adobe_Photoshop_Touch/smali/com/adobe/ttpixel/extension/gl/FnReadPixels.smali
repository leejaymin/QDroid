.class public Lcom/adobe/ttpixel/extension/gl/FnReadPixels;
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
    .locals 11

    const/4 v9, 0x1

    const/4 v3, 0x0

    aget-object v1, p2, v3

    move-object v8, v1

    check-cast v8, Lcom/adobe/fre/FREBitmapData;

    aget-object v10, p2, v9

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->getEcglContextRef()Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;

    move-result-object v2

    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->getEcglFilterRef()Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;

    move-result-object v1

    if-eqz v10, :cond_4

    const-string v4, "x"

    invoke-virtual {v10, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v4

    const-string v5, "y"

    invoke-virtual {v10, v5}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v5

    const-string v6, "width"

    invoke-virtual {v10, v6}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v6

    const-string v7, "height"

    invoke-virtual {v10, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    :goto_0
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v10, :cond_2

    :try_start_1
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/ttpixel/extension/gl/ECGLFilter;->readPixels(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Ljava/nio/ByteBuffer;)I

    move-result v1

    :goto_1
    if-nez v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v4

    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v5

    invoke-virtual {v8, v2, v3, v4, v5}, Lcom/adobe/fre/FREBitmapData;->invalidateRect(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    :try_start_2
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_2
    const/4 v2, 0x0

    :try_start_3
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v1

    :goto_3
    return-object v1

    :cond_2
    :try_start_4
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static/range {v1 .. v7}, Lcom/adobe/ttpixel/extension/gl/ECGLFilter;->readPixelsRect(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Ljava/nio/ByteBuffer;IIII)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v1

    move v2, v3

    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v1, -0xbb8

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v1

    :goto_5
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    :goto_6
    throw v1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception v1

    move v3, v9

    goto :goto_5

    :catchall_2
    move-exception v1

    move v3, v2

    goto :goto_5

    :catch_5
    move-exception v1

    move v2, v9

    goto :goto_4

    :cond_4
    move v7, v3

    move v6, v3

    move v5, v3

    move v4, v3

    goto :goto_0
.end method
