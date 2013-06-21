.class public Lcom/adobe/ttpixel/extension/utils/FnBitmapDataCopy;
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

    const/4 v14, 0x0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    move-object v10, v0

    check-cast v10, Lcom/adobe/fre/FREBitmapData;

    const/4 v0, 0x1

    aget-object v0, p2, v0

    move-object v11, v0

    check-cast v11, Lcom/adobe/fre/FREBitmapData;

    const/4 v0, 0x2

    aget-object v0, p2, v0

    const/4 v1, 0x3

    aget-object v3, p2, v1

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v4, "x"

    invoke-virtual {v0, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v4

    const-string v5, "y"

    invoke-virtual {v0, v5}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v5

    const-string v6, "width"

    invoke-virtual {v0, v6}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v6

    const-string v7, "height"

    invoke-virtual {v0, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    const-string v0, "x"

    invoke-virtual {v3, v0}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v8

    const-string v0, "y"

    invoke-virtual {v3, v0}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v9

    invoke-virtual {v10}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v13, 0x1

    :try_start_1
    invoke-virtual {v11}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    const/4 v12, 0x1

    :try_start_2
    invoke-virtual {v10}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v10}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v1

    invoke-virtual {v11}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v11}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v3

    invoke-static/range {v0 .. v9}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->bitmapDataCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIIIII)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    move-result v1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v11, v8, v9, v6, v7}, Lcom/adobe/fre/FREBitmapData;->invalidateRect(IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    :cond_0
    :try_start_4
    invoke-virtual {v10}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    :try_start_5
    invoke-virtual {v11}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_1
    :try_start_6
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    move v3, v14

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v10}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_1
    :goto_4
    if-eqz v1, :cond_4

    :try_start_9
    invoke-virtual {v11}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move v1, v3

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v2, :cond_2

    :try_start_a
    invoke-virtual {v10}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_2
    :goto_6
    if-eqz v1, :cond_3

    :try_start_b
    invoke-virtual {v11}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :cond_3
    :goto_7
    throw v0

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_2

    :catchall_1
    move-exception v0

    move v2, v13

    goto :goto_5

    :catchall_2
    move-exception v0

    move v1, v12

    move v2, v13

    goto :goto_5

    :catch_8
    move-exception v0

    move v2, v13

    move v3, v14

    goto :goto_3

    :catch_9
    move-exception v0

    move v1, v12

    move v2, v13

    move v3, v14

    goto :goto_3

    :catch_a
    move-exception v0

    move v2, v13

    move v3, v1

    move v1, v12

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_1
.end method
