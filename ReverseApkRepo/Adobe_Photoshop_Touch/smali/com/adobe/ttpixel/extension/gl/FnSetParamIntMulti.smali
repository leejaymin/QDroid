.class public Lcom/adobe/ttpixel/extension/gl/FnSetParamIntMulti;
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
    .locals 12

    const/4 v3, 0x0

    const/16 v2, -0xbb8

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->getEcglContextRef()Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;

    move-result-object v4

    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->getEcglFilterRef()Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;

    move-result-object v5

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    aget-object v1, p2, v1

    check-cast v1, Lcom/adobe/fre/FREArray;

    const/4 v7, 0x2

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    invoke-virtual {v1}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v9, v8, [I

    :goto_0
    if-ge v3, v8, :cond_0

    int-to-long v10, v3

    invoke-virtual {v1, v10, v11}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v10

    aput v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v5, v4, v6, v9, v7}, Lcom/adobe/ttpixel/extension/gl/ECGLFilter;->setParamIntMulti(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Ljava/lang/String;[II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    move-object v1, v2

    goto :goto_2
.end method
