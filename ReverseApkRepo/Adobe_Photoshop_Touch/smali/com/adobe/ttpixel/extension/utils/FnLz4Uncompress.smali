.class public Lcom/adobe/ttpixel/extension/utils/FnLz4Uncompress;
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
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    aget-object v0, p2, v2

    check-cast v0, Lcom/adobe/fre/FREByteArray;

    aget-object v1, p2, v4

    check-cast v1, Lcom/adobe/fre/FREBitmapData;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    :try_start_0
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    :try_start_2
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->lz4Uncompress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    move-result-object v3

    if-eqz v3, :cond_5

    move v3, v4

    move v2, v4

    :goto_0
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_1
    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v2

    :goto_2
    const/4 v1, 0x0

    :try_start_5
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_2

    :catch_2
    move-exception v3

    move v4, v2

    move v5, v2

    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v5, :cond_1

    :try_start_7
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_1
    :goto_5
    if-eqz v4, :cond_4

    :try_start_8
    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move v0, v2

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_2

    :catchall_0
    move-exception v3

    move v4, v2

    move v5, v2

    move-object v2, v3

    :goto_6
    if-eqz v5, :cond_2

    :try_start_9
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_2
    :goto_7
    if-eqz v4, :cond_3

    :try_start_a
    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_3
    :goto_8
    throw v2

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception v3

    move v5, v4

    move v4, v2

    move-object v2, v3

    goto :goto_6

    :catchall_2
    move-exception v2

    move v5, v4

    goto :goto_6

    :catchall_3
    move-exception v2

    goto :goto_6

    :catch_8
    move-exception v3

    move v5, v4

    move v4, v2

    goto :goto_4

    :catch_9
    move-exception v3

    move v5, v4

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    move v4, v2

    move v3, v2

    goto :goto_0
.end method
