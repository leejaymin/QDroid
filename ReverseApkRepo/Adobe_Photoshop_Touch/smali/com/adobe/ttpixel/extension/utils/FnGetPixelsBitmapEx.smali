.class public Lcom/adobe/ttpixel/extension/utils/FnGetPixelsBitmapEx;
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
    .locals 20

    const/16 v17, 0x0

    const/4 v2, 0x0

    aget-object v2, p2, v2

    move-object v15, v2

    check-cast v15, Lcom/adobe/fre/FREBitmapData;

    const/4 v2, 0x1

    aget-object v9, p2, v2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/adobe/fre/FREBitmapData;

    const/4 v2, 0x3

    aget-object v2, p2, v2

    if-eqz v15, :cond_6

    if-eqz v9, :cond_6

    if-eqz v16, :cond_6

    const/4 v3, 0x4

    aget-object v4, p2, v3

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v5, "width"

    invoke-virtual {v15, v5}, Lcom/adobe/fre/FREBitmapData;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v7

    double-to-int v7, v7

    const-string v5, "height"

    invoke-virtual {v15, v5}, Lcom/adobe/fre/FREBitmapData;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v10

    double-to-int v8, v10

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const-string v4, "x"

    invoke-virtual {v2, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v4

    double-to-int v4, v4

    const-string v5, "y"

    invoke-virtual {v2, v5}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v10

    double-to-int v5, v10

    :cond_0
    const-string v2, "x"

    invoke-virtual {v9, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v10

    double-to-int v10, v10

    const-string v2, "y"

    invoke-virtual {v9, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v11

    double-to-int v11, v11

    const-string v2, "width"

    invoke-virtual {v9, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v12

    double-to-int v12, v12

    const-string v2, "height"

    invoke-virtual {v9, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v13, v0

    invoke-virtual {v15}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v19, 0x1

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    const/16 v18, 0x1

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v3

    invoke-virtual {v15}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v15}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v9

    if-eqz v14, :cond_2

    invoke-virtual {v15}, Lcom/adobe/fre/FREBitmapData;->isPremultiplied()Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    :goto_0
    invoke-static/range {v2 .. v14}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->getPixelsBitmapEx(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;IIIIIIIZ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :try_start_3
    invoke-virtual {v15}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v2, v17

    :cond_1
    :goto_2
    return-object v2

    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v2, v17

    goto :goto_2

    :catch_2
    move-exception v2

    move v4, v6

    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v2, 0x0

    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v15}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_4
    if-eqz v3, :cond_1

    :try_start_7
    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v2

    :goto_5
    if-eqz v6, :cond_4

    :try_start_8
    invoke-virtual {v15}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    :try_start_9
    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_7
    throw v2

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v2

    move/from16 v6, v19

    goto :goto_5

    :catchall_2
    move-exception v2

    move/from16 v3, v18

    move/from16 v6, v19

    goto :goto_5

    :catchall_3
    move-exception v2

    move v6, v4

    goto :goto_5

    :catch_7
    move-exception v2

    move/from16 v4, v19

    goto :goto_3

    :catch_8
    move-exception v2

    move/from16 v3, v18

    move/from16 v4, v19

    goto :goto_3

    :cond_6
    move-object/from16 v2, v17

    goto :goto_2
.end method
