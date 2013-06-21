.class public Lcom/adobe/ttpixel/extension/ss/FnRun;
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

    const/16 v11, -0xbb8

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    const/4 v1, 0x2

    aget-object v1, p2, v1

    move-object v0, v1

    check-cast v0, Lcom/adobe/fre/FREBitmapData;

    move-object v8, v0

    const/4 v1, 0x3

    aget-object v1, p2, v1

    move-object v0, v1

    check-cast v0, Lcom/adobe/fre/FREBitmapData;

    move-object v9, v0

    const/4 v1, 0x4

    aget-object v1, p2, v1

    move-object v0, v1

    check-cast v0, Lcom/adobe/fre/FREByteArray;

    move-object v10, v0

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x1

    :try_start_1
    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    const/4 v13, 0x1

    :try_start_2
    invoke-virtual {v10}, Lcom/adobe/fre/FREByteArray;->acquire()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c

    const/4 v12, 0x1

    :try_start_3
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v10}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextSS;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextSS;->getDataRef()Lcom/adobe/ttpixel/extension/ss/ECScribbleSegmentDataRef;

    move-result-object v1

    invoke-static/range {v1 .. v7}, Lcom/adobe/ttpixel/extension/ss/ECScribbleSegment;->run(Lcom/adobe/ttpixel/extension/ss/ECScribbleSegmentDataRef;IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d

    move-result v11

    move v1, v11

    :goto_0
    :try_start_4
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    :try_start_5
    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_2
    :try_start_6
    invoke-virtual {v10}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :goto_3
    const/4 v2, 0x0

    :try_start_7
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_7
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v1

    :goto_4
    return-object v1

    :catch_0
    move-exception v1

    move v2, v4

    move v3, v5

    move v4, v6

    :goto_5
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v4, :cond_0

    :try_start_9
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :cond_0
    :goto_6
    if-eqz v3, :cond_1

    :try_start_a
    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :cond_1
    :goto_7
    if-eqz v2, :cond_5

    :try_start_b
    invoke-virtual {v10}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move v1, v11

    goto :goto_3

    :catch_1
    move-exception v1

    move v1, v11

    goto :goto_3

    :catchall_0
    move-exception v1

    :goto_8
    if-eqz v6, :cond_2

    :try_start_c
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :cond_2
    :goto_9
    if-eqz v5, :cond_3

    :try_start_d
    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :cond_3
    :goto_a
    if-eqz v4, :cond_4

    :try_start_e
    invoke-virtual {v10}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    :cond_4
    :goto_b
    throw v1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    move-object v1, v2

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception v2

    goto :goto_9

    :catch_9
    move-exception v2

    goto :goto_a

    :catch_a
    move-exception v2

    goto :goto_b

    :catchall_1
    move-exception v1

    move v6, v14

    goto :goto_8

    :catchall_2
    move-exception v1

    move v5, v13

    move v6, v14

    goto :goto_8

    :catchall_3
    move-exception v1

    move v4, v12

    move v5, v13

    move v6, v14

    goto :goto_8

    :catchall_4
    move-exception v1

    move v5, v3

    move v6, v4

    move v4, v2

    goto :goto_8

    :catch_b
    move-exception v1

    move v2, v4

    move v3, v5

    move v4, v14

    goto :goto_5

    :catch_c
    move-exception v1

    move v2, v4

    move v3, v13

    move v4, v14

    goto :goto_5

    :catch_d
    move-exception v1

    move v2, v12

    move v3, v13

    move v4, v14

    goto :goto_5

    :cond_5
    move v1, v11

    goto :goto_3

    :cond_6
    move v1, v11

    goto :goto_0
.end method
