.class public Lcom/adobe/ttpixel/extension/utils/FnCompressBitmapRLE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeCompressBitmapRLE(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;I)I
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    check-cast v0, Lcom/adobe/fre/FREByteArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x1

    :try_start_1
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v5

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v6

    const/4 v1, 0x3

    aget-object v1, p2, v1

    check-cast v1, Lcom/adobe/fre/FREByteArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    const/4 v7, 0x4

    :try_start_2
    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->acquire()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    :try_start_3
    invoke-virtual {v1}, Lcom/adobe/fre/FREByteArray;->acquire()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    :try_start_4
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {v4, v5, v6, v8, v7}, Lcom/adobe/ttpixel/extension/utils/FnCompressBitmapRLE;->nativeCompressBitmapRLE(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    move-result v2

    :try_start_5
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_0
    :try_start_6
    invoke-virtual {v1}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move v0, v2

    :cond_0
    :goto_1
    :try_start_7
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_7
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_7 .. :try_end_7} :catch_7

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

    move v0, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    move v5, v4

    :goto_3
    const/4 v0, -0x1

    if-eqz v5, :cond_1

    :try_start_8
    invoke-virtual {v2}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_1
    :goto_4
    if-eqz v4, :cond_0

    :try_start_9
    invoke-virtual {v1}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v3

    move v2, v4

    :goto_5
    if-eqz v2, :cond_2

    :try_start_a
    invoke-virtual {v1}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_2
    :goto_6
    if-eqz v4, :cond_3

    :try_start_b
    invoke-virtual {v3}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :cond_3
    :goto_7
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    move-object v0, v3

    goto :goto_2

    :catchall_1
    move-exception v1

    move v2, v4

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    move v2, v4

    goto :goto_5

    :catchall_3
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_5

    :catchall_4
    move-exception v3

    move v4, v2

    move-object v9, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v9

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v1, v3

    move-object v2, v0

    move v5, v4

    goto :goto_3

    :catch_9
    move-exception v2

    move-object v2, v0

    move v5, v4

    goto :goto_3

    :catch_a
    move-exception v5

    move v5, v2

    move-object v2, v0

    goto :goto_3

    :catch_b
    move-exception v4

    move v4, v2

    move v5, v2

    move-object v2, v0

    goto :goto_3
.end method
