.class public Lcom/adobe/ttpixel/extension/utils/FnBitmapDataToFileEx;
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

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v10, 0x0

    aget-object v0, p2, v12

    move-object v9, v0

    check-cast v9, Lcom/adobe/fre/FREBitmapData;

    aget-object v1, p2, v11

    const/4 v0, 0x2

    aget-object v0, p2, v0

    if-eqz v9, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "width"

    invoke-virtual {v9, v2}, Lcom/adobe/fre/FREBitmapData;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v2

    double-to-int v3, v2

    const-string v2, "height"

    invoke-virtual {v9, v2}, Lcom/adobe/fre/FREBitmapData;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v4

    double-to-int v4, v4

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v5

    double-to-int v5, v5

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v6

    double-to-int v6, v6

    const-string v2, "width"

    invoke-virtual {v1, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v7

    double-to-int v7, v7

    const-string v2, "height"

    invoke-virtual {v1, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v1

    double-to-int v8, v1

    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v2

    invoke-static/range {v0 .. v8}, Lcom/adobe/ttpixel/extension/utils/ECUtils;->bitmapDataToFileEx(Ljava/lang/String;Ljava/nio/ByteBuffer;IIIIIII)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v12, v11

    :cond_0
    :goto_0
    :try_start_3
    invoke-static {v12}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v12, v11

    goto :goto_0

    :catch_1
    move-exception v0

    move v1, v12

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v12, :cond_1

    :try_start_6
    invoke-virtual {v9}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_1
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v10

    goto :goto_1

    :catchall_1
    move-exception v0

    move v12, v11

    goto :goto_3

    :catchall_2
    move-exception v0

    move v12, v1

    goto :goto_3

    :catch_5
    move-exception v0

    move v1, v11

    goto :goto_2
.end method
