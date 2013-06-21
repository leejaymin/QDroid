.class public Lcom/adobe/ttpixel/extension/utils/FnLz4Compress;
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
    .locals 8

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    aget-object v0, p2, v4

    check-cast v0, Lcom/adobe/fre/FREBitmapData;

    if-eqz v0, :cond_7

    :try_start_0
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :try_start_1
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v5

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    if-ne v1, v5, :cond_7

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    :try_start_2
    invoke-static {v1}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->lz4GetMaxCompressDestLength(I)I

    move-result v2

    const-string v1, "flash.utils.ByteArray"

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    check-cast v1, Lcom/adobe/fre/FREByteArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :try_start_3
    const-string v5, "length"

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/adobe/fre/FREByteArray;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    :try_start_4
    invoke-virtual {v1}, Lcom/adobe/fre/FREByteArray;->acquire()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    :try_start_5
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v2, v5, v7}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->lz4Compress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v5, "ECUtils.lz4Compress() returned null"

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    move v2, v3

    :goto_0
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    if-eqz v5, :cond_6

    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v5}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :goto_1
    :try_start_8
    const-string v3, "clear"

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Lcom/adobe/fre/FREByteArray;->callMethod(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :goto_2
    move-object v1, v6

    :goto_3
    if-eqz v2, :cond_0

    :try_start_9
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :cond_0
    :goto_4
    if-eqz v4, :cond_2

    :try_start_a
    invoke-virtual {v1}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move-object v0, v1

    :goto_5
    return-object v0

    :cond_1
    :try_start_b
    invoke-virtual {v1}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :try_start_c
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    :try_start_d
    const-string v3, "length"

    invoke-virtual {v2}, Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;->getCompressedLength()I

    move-result v2

    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/adobe/fre/FREByteArray;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :cond_2
    move-object v0, v1

    goto :goto_5

    :catch_1
    move-exception v3

    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catchall_1
    move-exception v1

    move v3, v2

    move-object v6, v5

    :goto_6
    if-eqz v3, :cond_3

    :try_start_10
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    :cond_3
    :goto_7
    if-eqz v4, :cond_4

    :try_start_11
    invoke-virtual {v6}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    :cond_4
    :goto_8
    throw v1

    :catch_2
    move-exception v3

    :try_start_12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catchall_2
    move-exception v1

    move v3, v4

    goto :goto_6

    :catchall_3
    move-exception v1

    goto :goto_6

    :catchall_4
    move-exception v2

    move v3, v4

    move-object v6, v1

    move-object v1, v2

    goto :goto_6

    :catchall_5
    move-exception v2

    move-object v6, v1

    move-object v1, v2

    goto :goto_6

    :catchall_6
    move-exception v2

    move v4, v3

    move-object v6, v1

    move-object v1, v2

    goto :goto_6

    :catchall_7
    move-exception v1

    move v4, v3

    move-object v6, v5

    move v3, v2

    goto :goto_6

    :catch_7
    move-exception v1

    move v2, v4

    move v3, v4

    move-object v5, v6

    goto :goto_0

    :catch_8
    move-exception v1

    move v2, v3

    move-object v5, v6

    move v3, v4

    goto/16 :goto_0

    :catch_9
    move-exception v2

    move v3, v4

    move-object v5, v1

    move-object v1, v2

    move v2, v4

    goto/16 :goto_0

    :catch_a
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_0

    :cond_5
    move v4, v3

    goto/16 :goto_1

    :cond_6
    move v4, v3

    move-object v1, v5

    goto/16 :goto_3

    :cond_7
    move-object v0, v6

    goto :goto_5
.end method
