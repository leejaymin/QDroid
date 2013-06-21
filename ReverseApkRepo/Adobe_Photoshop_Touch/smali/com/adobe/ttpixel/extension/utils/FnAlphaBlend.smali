.class public Lcom/adobe/ttpixel/extension/utils/FnAlphaBlend;
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
    .locals 25

    const/4 v2, 0x0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/adobe/fre/FREBitmapData;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/adobe/fre/FREBitmapData;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/adobe/fre/FREBitmapData;

    const/4 v1, 0x3

    aget-object v7, p2, v1

    const/4 v1, 0x4

    aget-object v1, p2, v1

    check-cast v1, Lcom/adobe/fre/FREBitmapData;

    const/4 v3, 0x5

    aget-object v8, p2, v3

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz v16, :cond_10

    if-eqz v17, :cond_10

    if-eqz v18, :cond_10

    :try_start_0
    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v7, :cond_0

    const-string v8, "x"

    invoke-virtual {v7, v8}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v11

    const-string v8, "y"

    invoke-virtual {v7, v8}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v12

    const-string v8, "width"

    invoke-virtual {v7, v8}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v13

    const-string v8, "height"

    invoke-virtual {v7, v8}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v14

    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v22, 0x1

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e

    const/16 v21, 0x1

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    const/16 v20, 0x1

    if-eqz v1, :cond_7

    :try_start_3
    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10

    const/16 v19, 0x1

    move-object/from16 v23, v1

    :goto_0
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_f

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v3

    if-ne v1, v3, :cond_f

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v1

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_f

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v1

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v3

    if-ne v1, v3, :cond_f

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v1

    invoke-virtual/range {v23 .. v23}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_f

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v1

    invoke-virtual/range {v23 .. v23}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v3

    if-ne v1, v3, :cond_f

    if-nez v7, :cond_1

    const/4 v12, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v13

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v14

    move v11, v12

    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v8

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v10

    invoke-static/range {v1 .. v15}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->alphaBlend(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIIIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, v23

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/adobe/fre/FREBitmapData;->invalidateRect(IIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_11

    :cond_2
    :goto_1
    if-eqz v22, :cond_3

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    :goto_2
    if-eqz v21, :cond_4

    :try_start_6
    invoke-virtual/range {v17 .. v17}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_3
    if-eqz v20, :cond_5

    :try_start_7
    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_4
    if-eqz v19, :cond_6

    :try_start_8
    invoke-virtual/range {v23 .. v23}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_6
    :goto_5
    :try_start_9
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d

    move-result-object v1

    :goto_6
    return-object v1

    :cond_7
    move/from16 v19, v3

    move-object/from16 v23, v17

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v2

    move-object/from16 v24, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v1

    move-object/from16 v1, v24

    :goto_7
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/4 v1, 0x0

    if-eqz v5, :cond_8

    :try_start_b
    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :cond_8
    :goto_8
    if-eqz v4, :cond_9

    :try_start_c
    invoke-virtual/range {v17 .. v17}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    :cond_9
    :goto_9
    if-eqz v3, :cond_a

    :try_start_d
    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    :cond_a
    :goto_a
    if-eqz v2, :cond_6

    :try_start_e
    invoke-virtual {v6}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catch_7
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catch_8
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :catchall_0
    move-exception v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v23, v1

    move-object v1, v2

    :goto_b
    if-eqz v22, :cond_b

    :try_start_f
    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    :cond_b
    :goto_c
    if-eqz v21, :cond_c

    :try_start_10
    invoke-virtual/range {v17 .. v17}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    :cond_c
    :goto_d
    if-eqz v20, :cond_d

    :try_start_11
    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    :cond_d
    :goto_e
    if-eqz v19, :cond_e

    :try_start_12
    invoke-virtual/range {v23 .. v23}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    :cond_e
    :goto_f
    throw v1

    :catch_9
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    :catch_a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    :catch_b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    :catch_c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :catch_d
    move-exception v1

    const/4 v1, 0x0

    goto/16 :goto_6

    :catchall_1
    move-exception v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v23, v1

    move-object v1, v2

    goto :goto_b

    :catchall_2
    move-exception v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v23, v1

    move-object v1, v2

    goto :goto_b

    :catchall_3
    move-exception v2

    move/from16 v19, v3

    move-object/from16 v23, v1

    move-object v1, v2

    goto :goto_b

    :catchall_4
    move-exception v1

    goto :goto_b

    :catchall_5
    move-exception v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    goto :goto_b

    :catch_e
    move-exception v2

    move-object v6, v1

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v22

    goto/16 :goto_7

    :catch_f
    move-exception v2

    move/from16 v5, v22

    move-object v6, v1

    move-object v1, v2

    move v2, v3

    move v3, v4

    move/from16 v4, v21

    goto/16 :goto_7

    :catch_10
    move-exception v2

    move/from16 v4, v21

    move/from16 v5, v22

    move-object v6, v1

    move-object v1, v2

    move v2, v3

    move/from16 v3, v20

    goto/16 :goto_7

    :catch_11
    move-exception v1

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v6, v23

    goto/16 :goto_7

    :cond_f
    move v1, v2

    goto/16 :goto_1

    :cond_10
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v23, v1

    move v1, v2

    goto/16 :goto_1
.end method
