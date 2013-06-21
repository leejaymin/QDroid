.class public Lcom/adobe/ttpixel/extension/utils/FnLz4Deflate;
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
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    aget-object v0, p2, v5

    check-cast v0, Lcom/adobe/fre/FREByteArray;

    if-eqz v0, :cond_6

    :try_start_0
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->lz4Compress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v3

    if-nez v3, :cond_2

    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v6, "ECUtils.lz4Compress() returned null"

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;->getCompressed()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;->getCompressed()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->lz4Free(Ljava/nio/ByteBuffer;)V

    :cond_1
    :goto_2
    :try_start_5
    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v0

    :goto_3
    return-object v0

    :cond_2
    :try_start_6
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    const-string v2, "length"

    invoke-virtual {v3}, Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;->getCompressedLength()I

    move-result v6

    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/adobe/fre/FREByteArray;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    const-string v2, "position"

    invoke-virtual {v3}, Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;->getCompressedLength()I

    move-result v6

    invoke-static {v6}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/adobe/fre/FREByteArray;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V

    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->acquire()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :try_start_8
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v3}, Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;->getCompressed()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/adobe/ttpixel/extension/ByteBufferFactory;->copyDirect(Ljava/nio/Buffer;Ljava/nio/Buffer;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move v5, v4

    :goto_4
    if-eqz v4, :cond_3

    :try_start_9
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_3
    :goto_5
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;->getCompressed()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;->getCompressed()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->lz4Free(Ljava/nio/ByteBuffer;)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v3, v1

    move v4, v5

    move-object v1, v2

    :goto_6
    if-eqz v4, :cond_4

    :try_start_a
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :cond_4
    :goto_7
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;->getCompressed()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;->getCompressed()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->lz4Free(Ljava/nio/ByteBuffer;)V

    :cond_5
    throw v1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_6

    :catchall_2
    move-exception v1

    goto :goto_6

    :catchall_3
    move-exception v1

    move v4, v5

    goto :goto_6

    :catch_5
    move-exception v2

    move-object v3, v1

    move v4, v5

    goto/16 :goto_0

    :catch_6
    move-exception v2

    move-object v3, v1

    goto/16 :goto_0

    :catch_7
    move-exception v2

    move v4, v5

    goto/16 :goto_0

    :cond_6
    move-object v3, v1

    move v4, v5

    goto :goto_4
.end method
