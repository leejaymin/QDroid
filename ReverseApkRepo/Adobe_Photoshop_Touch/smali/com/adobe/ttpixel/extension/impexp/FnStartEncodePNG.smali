.class public Lcom/adobe/ttpixel/extension/impexp/FnStartEncodePNG;
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

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    move-object v0, v1

    check-cast v0, Lcom/adobe/fre/FREBitmapData;

    move-object v8, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    const/4 v11, 0x1

    :try_start_2
    move-object v0, p1

    check-cast v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;

    move-object v1, v0

    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v2

    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v3

    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->hasAlpha()Z

    move-result v4

    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->isPremultiplied()Z

    move-result v5

    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v6

    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;->startEncodePNG(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;IIZZILjava/nio/ByteBuffer;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result v1

    :try_start_3
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_0
    :try_start_4
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_4
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    :goto_1
    return-object v1

    :catch_0
    move-exception v1

    move v2, v9

    move-object v8, v10

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move v1, v9

    goto :goto_0

    :catch_1
    move-exception v1

    move v1, v9

    goto :goto_0

    :catchall_0
    move-exception v1

    move v11, v9

    move-object v8, v10

    :goto_3
    if-eqz v11, :cond_0

    :try_start_7
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_0
    :goto_4
    throw v1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    move-object v1, v10

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_0

    :catch_4
    move-exception v2

    goto :goto_4

    :catchall_1
    move-exception v1

    move v11, v9

    goto :goto_3

    :catchall_2
    move-exception v1

    goto :goto_3

    :catchall_3
    move-exception v1

    move v11, v2

    goto :goto_3

    :catch_5
    move-exception v1

    move v2, v9

    goto :goto_2

    :catch_6
    move-exception v1

    move v2, v11

    goto :goto_2

    :cond_1
    move v1, v9

    goto :goto_0
.end method
