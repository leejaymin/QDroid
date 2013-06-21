.class public Lcom/adobe/ttpixel/extension/am/FnRelease;
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
    .locals 2

    const/16 v0, -0xbb8

    :try_start_0
    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextAM;

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextAM;->getDataRef()Lcom/adobe/ttpixel/extension/am/ECAlphaMattingDataRef;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/ttpixel/extension/am/ECAlphaMatting;->release(Lcom/adobe/ttpixel/extension/am/ECAlphaMattingDataRef;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method
