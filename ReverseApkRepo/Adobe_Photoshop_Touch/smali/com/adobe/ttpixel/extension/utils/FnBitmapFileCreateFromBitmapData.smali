.class public Lcom/adobe/ttpixel/extension/utils/FnBitmapFileCreateFromBitmapData;
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
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v1, p2, v3

    aget-object v0, p2, v2

    check-cast v0, Lcom/adobe/fre/FREBitmapData;

    :try_start_0
    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v6

    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {v1, v4, v5, v6, v7}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->bitmapFileCreateFromBitmapData(Ljava/lang/String;IIILjava/nio/ByteBuffer;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result v3

    :try_start_2
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    :try_start_3
    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    move v2, v3

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move v2, v3

    :goto_3
    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v0}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_1
    :goto_4
    throw v1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2
.end method
