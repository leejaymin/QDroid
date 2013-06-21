.class public Lcom/adobe/ttpixel/extension/utils/FnUncompressBitmapDataEx;
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

    const/4 v0, 0x0

    aget-object v0, p2, v0

    move-object v8, v0

    check-cast v8, Lcom/adobe/fre/FREByteArray;

    const/4 v0, 0x1

    aget-object v1, p2, v0

    const/4 v0, 0x2

    aget-object v3, p2, v0

    const/4 v0, 0x3

    aget-object v7, p2, v0

    const/4 v0, 0x0

    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    const/4 v11, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    const-string v1, "x"

    invoke-virtual {v7, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v4

    double-to-int v4, v4

    const-string v1, "y"

    invoke-virtual {v7, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v5

    double-to-int v5, v5

    const-string v1, "width"

    invoke-virtual {v7, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v12

    double-to-int v6, v12

    const-string v1, "height"

    invoke-virtual {v7, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v12

    double-to-int v7, v12

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Byte;

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v1, v9

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v1, v9

    const/4 v9, 0x2

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v1, v9

    const/4 v9, 0x3

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v1, v9

    const/4 v9, 0x1

    invoke-static {v2, v3, v9, v1}, Lcom/adobe/fre/FREBitmapData;->newBitmapData(IIZ[Ljava/lang/Byte;)Lcom/adobe/fre/FREBitmapData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    if-eqz v9, :cond_0

    :try_start_1
    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->acquire()V

    const/4 v11, 0x1

    invoke-virtual {v8}, Lcom/adobe/fre/FREByteArray;->acquire()V

    const/4 v10, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/adobe/fre/FREBitmapData;->invalidateRect(IIII)V

    invoke-virtual {v8}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v8}, Lcom/adobe/fre/FREByteArray;->getLength()J

    move-result-wide v12

    long-to-int v1, v12

    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {v0, v1, v12, v2, v3}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->uncompressBitmapDataEx(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)Z

    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v1

    invoke-static/range {v0 .. v7}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->moveBitmapDataEx(Ljava/nio/ByteBuffer;IIIIIII)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    :cond_0
    if-eqz v11, :cond_1

    :try_start_2
    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    if-eqz v10, :cond_6

    :try_start_3
    invoke-virtual {v8}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v9

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v9

    goto :goto_1

    :catch_2
    move-exception v1

    move v2, v10

    move v3, v11

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_3
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v8}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    :goto_4
    if-eqz v11, :cond_4

    :try_start_7
    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    if-eqz v10, :cond_5

    :try_start_8
    invoke-virtual {v8}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :cond_5
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

    goto :goto_4

    :catchall_2
    move-exception v1

    move v10, v2

    move v11, v3

    move-object v9, v0

    move-object v0, v1

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v1, v0

    move v2, v10

    move v3, v11

    move-object v0, v9

    goto :goto_2

    :cond_6
    move-object v0, v9

    goto :goto_1
.end method
