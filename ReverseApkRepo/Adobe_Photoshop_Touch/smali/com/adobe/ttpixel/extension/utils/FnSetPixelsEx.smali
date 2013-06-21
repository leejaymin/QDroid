.class public Lcom/adobe/ttpixel/extension/utils/FnSetPixelsEx;
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

    const/4 v15, 0x0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    move-object v11, v0

    check-cast v11, Lcom/adobe/fre/FREBitmapData;

    const/4 v0, 0x1

    aget-object v2, p2, v0

    const/4 v0, 0x2

    aget-object v0, p2, v0

    move-object v12, v0

    check-cast v12, Lcom/adobe/fre/FREByteArray;

    if-eqz v11, :cond_7

    if-eqz v2, :cond_7

    if-eqz v12, :cond_7

    const/4 v0, 0x3

    aget-object v0, p2, v0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/16 v16, -0x1

    :try_start_0
    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v10

    const-string v0, "x"

    invoke-virtual {v2, v0}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v6

    const-string v0, "y"

    invoke-virtual {v2, v0}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    const-string v0, "width"

    invoke-virtual {v2, v0}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v8

    const-string v0, "height"

    invoke-virtual {v2, v0}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v9

    const-string v0, "position"

    invoke-virtual {v12, v0}, Lcom/adobe/fre/FREByteArray;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    invoke-virtual {v11}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v14, 0x1

    :try_start_1
    invoke-virtual {v12}, Lcom/adobe/fre/FREByteArray;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    const/4 v13, 0x1

    :try_start_2
    invoke-virtual {v11}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v12}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v11}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v3

    invoke-virtual {v11}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v4

    invoke-virtual {v11}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v5

    if-eqz v10, :cond_1

    invoke-virtual {v11}, Lcom/adobe/fre/FREBitmapData;->isPremultiplied()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-static/range {v0 .. v10}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->setPixelsEx(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIIIZ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    move-result v1

    if-eqz v1, :cond_6

    :try_start_3
    invoke-virtual {v11, v6, v7, v8, v9}, Lcom/adobe/fre/FREBitmapData;->invalidateRect(IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    mul-int v0, v8, v9

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v2

    :goto_1
    :try_start_4
    invoke-virtual {v11}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    :try_start_5
    invoke-virtual {v12}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    if-ltz v0, :cond_0

    :try_start_6
    const-string v2, "position"

    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v12, v2, v0}, Lcom/adobe/fre/FREByteArray;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_0
    :goto_4
    :try_start_7
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    move-result-object v0

    :goto_5
    return-object v0

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    move v2, v3

    move v3, v15

    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_2

    :try_start_9
    invoke-virtual {v11}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_2
    :goto_7
    if-eqz v1, :cond_3

    :try_start_a
    invoke-virtual {v12}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_3
    :goto_8
    move v1, v3

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catchall_0
    move-exception v0

    :goto_9
    if-eqz v3, :cond_4

    :try_start_b
    invoke-virtual {v11}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :cond_4
    :goto_a
    if-eqz v1, :cond_5

    :try_start_c
    invoke-virtual {v12}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    :cond_5
    :goto_b
    throw v0

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_5

    :catchall_1
    move-exception v0

    move v3, v14

    goto :goto_9

    :catchall_2
    move-exception v0

    move v1, v13

    move v3, v14

    goto :goto_9

    :catchall_3
    move-exception v0

    move v3, v2

    goto :goto_9

    :catch_9
    move-exception v0

    move v2, v14

    move v3, v15

    goto :goto_6

    :catch_a
    move-exception v0

    move v1, v13

    move v2, v14

    move v3, v15

    goto :goto_6

    :catch_b
    move-exception v0

    move v2, v14

    move v3, v1

    move v1, v13

    goto :goto_6

    :cond_6
    move/from16 v0, v16

    goto :goto_1

    :cond_7
    move v1, v15

    goto :goto_4
.end method
