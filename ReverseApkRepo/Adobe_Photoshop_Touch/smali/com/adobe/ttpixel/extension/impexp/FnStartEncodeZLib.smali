.class public Lcom/adobe/ttpixel/extension/impexp/FnStartEncodeZLib;
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
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    check-cast v0, Lcom/adobe/fre/FREByteArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->acquire()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    const/4 v4, 0x1

    :try_start_2
    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;

    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;->startEncodeZLib(Lcom/adobe/ttpixel/extension/TTPixelExtensionContextImpExp;Ljava/nio/ByteBuffer;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result v1

    :try_start_3
    invoke-virtual {v0}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v0, v1

    :goto_0
    :try_start_4
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_4
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v3, v1

    move-object v4, v2

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v4}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move v4, v1

    :goto_3
    if-eqz v4, :cond_0

    :try_start_7
    invoke-virtual {v2}, Lcom/adobe/fre/FREByteArray;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_0
    :goto_4
    throw v0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    move-object v0, v2

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v2

    move v4, v1

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v4

    move v4, v3

    goto :goto_3

    :catch_5
    move-exception v3

    move-object v4, v0

    move-object v0, v3

    move v3, v1

    goto :goto_2

    :catch_6
    move-exception v3

    move-object v5, v3

    move v3, v4

    move-object v4, v0

    move-object v0, v5

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_0
.end method
