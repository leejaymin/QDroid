.class public Lcom/adobe/ttpixel/extension/am/FnInit;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 11

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v2, -0xbb8

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v4

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Lcom/adobe/fre/FREBitmapData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x3

    :try_start_1
    aget-object v1, p2, v1

    check-cast v1, Lcom/adobe/fre/FREBitmapData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    :try_start_2
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    :try_start_3
    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    :try_start_4
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextAM;

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextAM;->getDataRef()Lcom/adobe/ttpixel/extension/am/ECAlphaMattingDataRef;

    move-result-object v9

    invoke-static {v9, v4, v7, v6, v8}, Lcom/adobe/ttpixel/extension/am/ECAlphaMatting;->init(Lcom/adobe/ttpixel/extension/am/ECAlphaMattingDataRef;IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    move-result v2

    :cond_0
    :try_start_5
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_0
    :try_start_6
    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move v0, v2

    :goto_1
    :try_start_7
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_7
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move v1, v6

    move-object v4, v3

    move v5, v6

    move-object v6, v3

    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v5, :cond_1

    :try_start_9
    invoke-virtual {v6}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_1
    :goto_4
    if-eqz v1, :cond_4

    :try_start_a
    invoke-virtual {v4}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v3

    move v5, v6

    :goto_5
    if-eqz v5, :cond_2

    :try_start_b
    invoke-virtual {v3}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :cond_2
    :goto_6
    if-eqz v6, :cond_3

    :try_start_c
    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    :cond_3
    :goto_7
    throw v0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    move-object v0, v3

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v2

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v1

    move v5, v6

    move-object v10, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_5

    :catchall_2
    move-exception v2

    move v5, v6

    move-object v3, v0

    move-object v0, v2

    goto :goto_5

    :catchall_3
    move-exception v2

    move-object v3, v0

    move-object v0, v2

    goto :goto_5

    :catchall_4
    move-exception v2

    move v6, v5

    move-object v3, v0

    move-object v0, v2

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v3, v6

    move v6, v1

    move-object v1, v4

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v4, v3

    move v5, v6

    move-object v10, v1

    move v1, v6

    move-object v6, v0

    move-object v0, v10

    goto :goto_3

    :catch_9
    move-exception v4

    move v5, v6

    move v10, v6

    move-object v6, v0

    move-object v0, v4

    move-object v4, v1

    move v1, v10

    goto :goto_3

    :catch_a
    move-exception v4

    move-object v10, v4

    move-object v4, v1

    move v1, v6

    move-object v6, v0

    move-object v0, v10

    goto :goto_3

    :catch_b
    move-exception v4

    move-object v6, v0

    move-object v0, v4

    move-object v4, v1

    move v1, v5

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_1
.end method
