.class public Lcom/adobe/ttpixel/extension/utils/FnGetPixelsEx;
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
    .locals 16

    const/4 v11, 0x0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    move-object v10, v0

    check-cast v10, Lcom/adobe/fre/FREBitmapData;

    const/4 v0, 0x1

    aget-object v8, p2, v0

    if-eqz v10, :cond_7

    if-eqz v8, :cond_7

    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Lcom/adobe/fre/FREByteArray;

    const/4 v1, 0x3

    aget-object v1, p2, v1

    const/4 v9, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v15

    const-string v1, "width"

    invoke-virtual {v10, v1}, Lcom/adobe/fre/FREBitmapData;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    const-string v1, "height"

    invoke-virtual {v10, v1}, Lcom/adobe/fre/FREBitmapData;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    mul-int v1, v2, v3

    mul-int/lit8 v5, v1, 0x4

    if-nez v0, :cond_6

    invoke-static {}, Lcom/adobe/fre/FREByteArray;->newByteArray()Lcom/adobe/fre/FREByteArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :try_start_1
    const-string v0, "length"

    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lcom/adobe/fre/FREByteArray;->setProperty(Ljava/lang/String;Lcom/adobe/fre/FREObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-object v14, v1

    :goto_0
    :try_start_2
    const-string v0, "x"

    invoke-virtual {v8, v0}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v5

    const-string v0, "y"

    invoke-virtual {v8, v0}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v6

    const-string v0, "width"

    invoke-virtual {v8, v0}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    const-string v0, "height"

    invoke-virtual {v8, v0}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v8

    invoke-virtual {v10}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    const/4 v13, 0x1

    :try_start_3
    invoke-virtual {v14}, Lcom/adobe/fre/FREByteArray;->acquire()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    const/4 v12, 0x1

    :try_start_4
    invoke-virtual {v14}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v10}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v10}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v4

    if-eqz v15, :cond_1

    invoke-virtual {v10}, Lcom/adobe/fre/FREBitmapData;->isPremultiplied()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_1
    invoke-static/range {v0 .. v9}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->getPixelsEx(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIIZ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v14

    :goto_2
    :try_start_5
    invoke-virtual {v10}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    :try_start_6
    invoke-virtual {v14}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_0
    :goto_4
    return-object v0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v1

    move v2, v9

    move-object v3, v0

    move-object v0, v1

    move v1, v4

    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v10}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_2
    :goto_6
    if-eqz v1, :cond_0

    :try_start_9
    invoke-virtual {v3}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catchall_0
    move-exception v1

    move-object v14, v0

    move-object v0, v1

    :goto_7
    if-eqz v9, :cond_3

    :try_start_a
    invoke-virtual {v10}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_3
    :goto_8
    if-eqz v4, :cond_4

    :try_start_b
    invoke-virtual {v14}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :cond_4
    :goto_9
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v14, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move v9, v13

    goto :goto_7

    :catchall_4
    move-exception v0

    move v4, v12

    move v9, v13

    goto :goto_7

    :catchall_5
    move-exception v0

    move v4, v1

    move v9, v2

    move-object v14, v3

    goto :goto_7

    :catch_7
    move-exception v0

    move v2, v9

    move-object v3, v1

    move v1, v4

    goto :goto_5

    :catch_8
    move-exception v0

    move v1, v4

    move v2, v9

    move-object v3, v14

    goto :goto_5

    :catch_9
    move-exception v0

    move v1, v4

    move v2, v13

    move-object v3, v14

    goto :goto_5

    :catch_a
    move-exception v0

    move v1, v12

    move v2, v13

    move-object v3, v14

    goto :goto_5

    :cond_5
    move-object v0, v11

    goto :goto_2

    :cond_6
    move-object v14, v0

    goto/16 :goto_0

    :cond_7
    move-object v0, v11

    goto :goto_4
.end method
