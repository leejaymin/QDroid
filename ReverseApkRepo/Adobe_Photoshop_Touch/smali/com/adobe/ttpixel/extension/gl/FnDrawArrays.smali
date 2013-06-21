.class public Lcom/adobe/ttpixel/extension/gl/FnDrawArrays;
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
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v2

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v3

    move-object v0, p1

    check-cast v0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->getEcglContextRef()Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;

    move-result-object v1

    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;->getEcglFilterRef()Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;

    move-result-object v4

    invoke-static {v4, v1, v2, v3}, Lcom/adobe/ttpixel/extension/gl/ECGLFilter;->drawArrays(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const/4 v2, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v1, -0xbb8

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_1
.end method
