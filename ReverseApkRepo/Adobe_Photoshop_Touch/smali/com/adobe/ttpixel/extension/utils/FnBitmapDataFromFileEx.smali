.class public Lcom/adobe/ttpixel/extension/utils/FnBitmapDataFromFileEx;
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
    .locals 13

    const/4 v1, 0x0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v3

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v8

    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Byte;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3, v4, v10, v9}, Lcom/adobe/fre/FREBitmapData;->newBitmapData(IIZ[Ljava/lang/Byte;)Lcom/adobe/fre/FREBitmapData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    if-eqz v10, :cond_2

    :try_start_2
    invoke-virtual {v10}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    const/4 v9, 0x1

    :try_start_3
    invoke-virtual {v10}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v10}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v2

    invoke-static/range {v0 .. v8}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->bitmapDataFromFileEx(Ljava/lang/String;Ljava/nio/ByteBuffer;IIIIIII)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move v1, v9

    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v10, v0, v2, v3, v4}, Lcom/adobe/fre/FREBitmapData;->invalidateRect(IIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    move-object v0, v10

    :goto_1
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_0
    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    move v12, v2

    move-object v2, v1

    move v1, v12

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz v2, :cond_0

    :try_start_8
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v2, :cond_1

    :try_start_9
    invoke-virtual {v1}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_1
    :goto_6
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v10

    goto :goto_5

    :catchall_2
    move-exception v0

    move v2, v9

    move-object v1, v10

    goto :goto_5

    :catchall_3
    move-exception v0

    move v2, v1

    move-object v1, v10

    goto :goto_5

    :catchall_4
    move-exception v0

    move v12, v1

    move-object v1, v2

    move v2, v12

    goto :goto_5

    :catchall_5
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v1, v0

    move v2, v9

    move-object v0, v10

    goto :goto_4

    :catch_7
    move-exception v0

    move v2, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move v2, v1

    move-object v1, v12

    goto :goto_4

    :catch_9
    move-exception v0

    move v1, v2

    move-object v2, v10

    goto :goto_3

    :catch_a
    move-exception v0

    move v1, v9

    move-object v2, v10

    goto :goto_3

    :catch_b
    move-exception v0

    move-object v2, v10

    goto :goto_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method
