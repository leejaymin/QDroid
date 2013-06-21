.class public Lcom/adobe/ttpixel/extension/gl/FnSetParamFloatMatrix;
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

    const/4 v8, 0x0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->getEcglContextRef()Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;

    move-result-object v2

    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->getEcglFilterRef()Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, p2, v4

    move-object v0, v4

    check-cast v0, Lcom/adobe/fre/FREArray;

    move-object v7, v0

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v5

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v6

    invoke-virtual {v7}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v9

    long-to-int v9, v9

    new-array v4, v9, [F

    :goto_0
    if-ge v8, v9, :cond_0

    int-to-long v10, v8

    invoke-virtual {v7, v10, v11}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v10

    invoke-virtual {v10}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-static/range {v1 .. v6}, Lcom/adobe/ttpixel/extension/gl/ECGLFilter;->setParamFloatMatrix(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Ljava/lang/String;[FII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xbb8

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_2
.end method
