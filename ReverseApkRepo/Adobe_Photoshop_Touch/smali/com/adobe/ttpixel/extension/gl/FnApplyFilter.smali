.class public Lcom/adobe/ttpixel/extension/gl/FnApplyFilter;
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
    .locals 12

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, -0xbb8

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    check-cast v1, Lcom/adobe/fre/FREBitmapData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    :try_start_1
    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v8

    move-object v0, p1

    check-cast v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->getEcglContextRef()Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;

    move-result-object v2

    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->getEcglFilterRef()Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;

    move-result-object v9

    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v9, v2, v5, v7, v8}, Lcom/adobe/ttpixel/extension/gl/ECGLFilter;->applyFilter(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Ljava/nio/ByteBuffer;IZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v8

    invoke-virtual {v1, v2, v6, v7, v8}, Lcom/adobe/fre/FREBitmapData;->invalidateRect(IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    :cond_0
    move v2, v5

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v1, v2

    :cond_1
    :goto_1
    :try_start_5
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_5
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v1

    :goto_2
    return-object v1

    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v1

    move v4, v5

    move-object v5, v3

    move v1, v6

    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v4, :cond_1

    :try_start_7
    invoke-virtual {v5}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v5, :cond_2

    :try_start_8
    invoke-virtual {v3}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_2
    :goto_5
    throw v1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    move-object v1, v3

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_5

    :catchall_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v2

    move v5, v4

    move-object v3, v1

    move-object v1, v2

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v3, v5

    move v5, v4

    goto :goto_4

    :catch_5
    move-exception v2

    move v4, v5

    move-object v5, v1

    move v1, v6

    goto :goto_3

    :catch_6
    move-exception v2

    move-object v5, v1

    move v1, v6

    goto :goto_3

    :catch_7
    move-exception v2

    move-object v11, v1

    move v1, v5

    move-object v5, v11

    goto :goto_3

    :cond_3
    move v2, v6

    goto :goto_0
.end method
