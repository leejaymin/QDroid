.class public Lcom/adobe/ttpixel/extension/bigdata/FnPreflight;
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

    const/4 v10, 0x0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    move-object v8, v0

    check-cast v8, Lcom/adobe/fre/FREBitmapData;

    const/4 v0, 0x1

    aget-object v5, p2, v0

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/adobe/ttpixel/extension/bigdata/ECBitmapPreflight;->create()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    :try_start_1
    const-string v2, "x"

    invoke-virtual {v5, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    const-string v3, "y"

    invoke-virtual {v5, v3}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    const-string v4, "width"

    invoke-virtual {v5, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v4

    const-string v7, "height"

    invoke-virtual {v5, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v5

    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v9, 0x1

    :try_start_2
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->getLineStride32()I

    move-result v6

    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->getBits()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/adobe/ttpixel/extension/bigdata/ECBitmapPreflight;->perform(JIIIIILjava/nio/ByteBuffer;)Z

    move-result v2

    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    :try_start_3
    invoke-static {v0, v1}, Lcom/adobe/ttpixel/extension/bigdata/ECBitmapPreflight;->outputToString(J)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v2, "com.adobe.ttpixel.extension.TTPreflightResult"

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    const-string v5, "setFromString"

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/adobe/fre/FREObject;

    const/4 v7, 0x0

    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {v2, v5, v6}, Lcom/adobe/fre/FREObject;->callMethod(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_4

    invoke-static {v0, v1}, Lcom/adobe/ttpixel/extension/bigdata/ECBitmapPreflight;->dispose(J)V

    move-object v0, v2

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move v3, v6

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_1
    :goto_3
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Lcom/adobe/ttpixel/extension/bigdata/ECBitmapPreflight;->dispose(J)V

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v6, :cond_2

    :try_start_6
    invoke-virtual {v8}, Lcom/adobe/fre/FREBitmapData;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_5
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    invoke-static {v1, v2}, Lcom/adobe/ttpixel/extension/bigdata/ECBitmapPreflight;->dispose(J)V

    :cond_3
    throw v0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v2

    move-object v11, v2

    move-wide v12, v0

    move-wide v1, v12

    move-object v0, v11

    goto :goto_4

    :catchall_2
    move-exception v2

    move v6, v9

    move-wide v11, v0

    move-object v0, v2

    move-wide v1, v11

    goto :goto_4

    :catchall_3
    move-exception v2

    move v6, v3

    move-wide v11, v0

    move-object v0, v2

    move-wide v1, v11

    goto :goto_4

    :catchall_4
    move-exception v0

    move v6, v3

    goto :goto_4

    :catch_3
    move-exception v2

    move v3, v6

    move-wide v11, v0

    move-object v0, v2

    move-wide v1, v11

    goto :goto_2

    :catch_4
    move-exception v2

    move v3, v9

    move-wide v11, v0

    move-object v0, v2

    move-wide v1, v11

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v11, v2

    move-wide v12, v0

    move-wide v1, v12

    move-object v0, v11

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_1

    :cond_5
    move-object v2, v10

    goto :goto_0
.end method
