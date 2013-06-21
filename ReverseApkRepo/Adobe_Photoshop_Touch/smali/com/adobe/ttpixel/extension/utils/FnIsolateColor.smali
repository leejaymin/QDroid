.class public Lcom/adobe/ttpixel/extension/utils/FnIsolateColor;
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
    .locals 14

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, p2, v3

    move-object v0, v3

    check-cast v0, Lcom/adobe/fre/FREBitmapData;

    move-object v8, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x3

    :try_start_1
    aget-object v3, p2, v3

    move-object v0, v3

    check-cast v0, Lcom/adobe/fre/FREBitmapData;

    move-object v9, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    const/4 v3, 0x4

    :try_start_2
    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v5

    const/4 v3, 0x5

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v6

    const/4 v3, 0x6

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    :try_start_3
    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    :try_start_4
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static/range {v1 .. v7}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->isolateColor(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    move-result v10

    move v1, v10

    :goto_0
    :try_start_5
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_1
    :try_start_6
    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :goto_2
    :try_start_7
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_7
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v1

    :goto_3
    return-object v1

    :catch_0
    move-exception v1

    move v2, v10

    move-object v9, v11

    move v12, v10

    move-object v8, v11

    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v12, :cond_0

    :try_start_9
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_0
    :goto_5
    if-eqz v2, :cond_3

    :try_start_a
    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move v1, v10

    goto :goto_2

    :catch_1
    move-exception v1

    move v1, v10

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v9, v11

    move v12, v10

    move-object v8, v11

    :goto_6
    if-eqz v12, :cond_1

    :try_start_b
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :cond_1
    :goto_7
    if-eqz v10, :cond_2

    :try_start_c
    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    :cond_2
    :goto_8
    throw v1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    move-object v1, v11

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v2

    goto :goto_7

    :catch_7
    move-exception v2

    goto :goto_8

    :catchall_1
    move-exception v1

    move-object v9, v11

    move v12, v10

    goto :goto_6

    :catchall_2
    move-exception v1

    move v12, v10

    goto :goto_6

    :catchall_3
    move-exception v1

    goto :goto_6

    :catchall_4
    move-exception v1

    move v10, v12

    goto :goto_6

    :catchall_5
    move-exception v1

    move v10, v2

    goto :goto_6

    :catch_8
    move-exception v1

    move v2, v10

    move-object v9, v11

    move v12, v10

    goto :goto_4

    :catch_9
    move-exception v1

    move v2, v10

    move v12, v10

    goto :goto_4

    :catch_a
    move-exception v1

    move v2, v10

    goto :goto_4

    :catch_b
    move-exception v1

    move v2, v12

    goto :goto_4

    :cond_3
    move v1, v10

    goto :goto_2

    :cond_4
    move v1, v10

    goto :goto_0
.end method
