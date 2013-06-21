.class public Lcom/adobe/ttpixel/extension/utils/FnGetScaledPixelsEx;
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
    .locals 17

    const/4 v0, 0x0

    aget-object v0, p2, v0

    move-object v13, v0

    check-cast v13, Lcom/adobe/fre/FREBitmapData;

    const/4 v0, 0x1

    aget-object v7, p2, v0

    const/4 v0, 0x2

    aget-object v0, p2, v0

    move-object v14, v0

    check-cast v14, Lcom/adobe/fre/FREBitmapData;

    const/4 v0, 0x3

    aget-object v0, p2, v0

    if-eqz v13, :cond_0

    if-eqz v7, :cond_0

    if-eqz v14, :cond_0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v1, "width"

    invoke-virtual {v13, v1}, Lcom/adobe/fre/FREBitmapData;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v1

    double-to-int v1, v1

    const-string v2, "height"

    invoke-virtual {v13, v2}, Lcom/adobe/fre/FREBitmapData;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v4

    double-to-int v2, v4

    const-string v4, "x"

    invoke-virtual {v7, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v4

    double-to-int v5, v4

    const-string v4, "y"

    invoke-virtual {v7, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v8

    double-to-int v4, v8

    const-string v8, "width"

    invoke-virtual {v7, v8}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v8

    double-to-int v8, v8

    const-string v9, "height"

    invoke-virtual {v7, v9}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v9

    double-to-int v7, v9

    const-string v9, "width"

    invoke-virtual {v14, v9}, Lcom/adobe/fre/FREBitmapData;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v9

    double-to-int v9, v9

    const-string v9, "height"

    invoke-virtual {v14, v9}, Lcom/adobe/fre/FREBitmapData;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v9

    double-to-int v9, v9

    const-string v9, "x"

    invoke-virtual {v0, v9}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v9

    double-to-int v9, v9

    const-string v9, "y"

    invoke-virtual {v0, v9}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v9

    double-to-int v9, v9

    const-string v9, "width"

    invoke-virtual {v0, v9}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v9

    double-to-int v9, v9

    const-string v10, "height"

    invoke-virtual {v0, v10}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v10

    double-to-int v10, v10

    invoke-virtual {v13}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v16, 0x1

    :try_start_1
    invoke-virtual {v14}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    const/4 v15, 0x1

    :try_start_2
    invoke-virtual {v13}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v13}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v3

    add-int v6, v4, v7

    add-int v7, v5, v8

    invoke-virtual {v14}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v14}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v11

    const/4 v12, 0x1

    invoke-static/range {v0 .. v12}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->getScaledPixelsEx(Ljava/nio/ByteBuffer;IIIIIIILjava/nio/ByteBuffer;IIII)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v14, v0, v1, v9, v10}, Lcom/adobe/fre/FREBitmapData;->invalidateRect(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :try_start_3
    invoke-virtual {v13}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    :try_start_4
    invoke-virtual {v14}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_0
    :goto_1
    const/4 v0, 0x0

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

    move v1, v3

    move v2, v6

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v13}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_1
    :goto_3
    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v14}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v6, :cond_2

    :try_start_8
    invoke-virtual {v13}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_2
    :goto_5
    if-eqz v3, :cond_3

    :try_start_9
    invoke-virtual {v14}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :cond_3
    :goto_6
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move/from16 v6, v16

    goto :goto_4

    :catchall_2
    move-exception v0

    move v3, v15

    move/from16 v6, v16

    goto :goto_4

    :catchall_3
    move-exception v0

    move v3, v1

    move v6, v2

    goto :goto_4

    :catch_7
    move-exception v0

    move v1, v3

    move/from16 v2, v16

    goto :goto_2

    :catch_8
    move-exception v0

    move v1, v15

    move/from16 v2, v16

    goto :goto_2
.end method
