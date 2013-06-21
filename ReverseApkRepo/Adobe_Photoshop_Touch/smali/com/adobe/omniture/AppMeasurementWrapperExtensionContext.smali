.class public Lcom/adobe/omniture/AppMeasurementWrapperExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "AppMeasurementWrapperExtensionContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 19
    return-void
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

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    .local v0, functionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "getUDID"

    new-instance v2, Lcom/adobe/omniture/AppMeasurementWrapperNativeFunction;

    invoke-direct {v2}, Lcom/adobe/omniture/AppMeasurementWrapperNativeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-object v0
.end method
