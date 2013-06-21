.class public Lcom/adobe/ttpixel/extension/TTPixelExtensionContextAM;
.super Lcom/adobe/fre/FREContext;


# instance fields
.field protected dataRef:Lcom/adobe/ttpixel/extension/am/ECAlphaMattingDataRef;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    new-instance v0, Lcom/adobe/ttpixel/extension/am/ECAlphaMattingDataRef;

    invoke-direct {v0}, Lcom/adobe/ttpixel/extension/am/ECAlphaMattingDataRef;-><init>()V

    iput-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextAM;->dataRef:Lcom/adobe/ttpixel/extension/am/ECAlphaMattingDataRef;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getDataRef()Lcom/adobe/ttpixel/extension/am/ECAlphaMattingDataRef;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextAM;->dataRef:Lcom/adobe/ttpixel/extension/am/ECAlphaMattingDataRef;

    return-object v0
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "init"

    new-instance v2, Lcom/adobe/ttpixel/extension/am/FnInit;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/am/FnInit;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "run"

    new-instance v2, Lcom/adobe/ttpixel/extension/am/FnRun;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/am/FnRun;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getProgress"

    new-instance v2, Lcom/adobe/ttpixel/extension/am/FnGetProgress;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/am/FnGetProgress;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getResult"

    new-instance v2, Lcom/adobe/ttpixel/extension/am/FnGetResult;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/am/FnGetResult;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "release"

    new-instance v2, Lcom/adobe/ttpixel/extension/am/FnRelease;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/am/FnRelease;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
