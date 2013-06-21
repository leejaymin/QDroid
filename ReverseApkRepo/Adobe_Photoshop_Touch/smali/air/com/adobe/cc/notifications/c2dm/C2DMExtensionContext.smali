.class public Lair/com/adobe/cc/notifications/c2dm/C2DMExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "C2DMExtensionContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 4
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
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v0, functionMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "register"

    new-instance v2, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;

    invoke-direct {v2}, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "unregister"

    new-instance v2, Lair/com/adobe/cc/notifications/c2dm/C2DMUnregister;

    invoke-direct {v2}, Lair/com/adobe/cc/notifications/c2dm/C2DMUnregister;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "log"

    new-instance v2, Lair/com/adobe/cc/notifications/c2dm/C2DMLogger;

    invoke-direct {v2}, Lair/com/adobe/cc/notifications/c2dm/C2DMLogger;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "dispatchPendingRequests"

    new-instance v2, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;

    invoke-direct {v2}, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "getPreferences"

    new-instance v2, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "setPreferences"

    new-instance v2, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lair/com/adobe/cc/notifications/c2dm/C2DMPreferences;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "getDeviceId"

    new-instance v2, Lair/com/adobe/cc/utils/DeviceID;

    invoke-direct {v2}, Lair/com/adobe/cc/utils/DeviceID;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "getNetworkState"

    new-instance v2, Lair/com/adobe/cc/utils/NetworkState;

    invoke-direct {v2}, Lair/com/adobe/cc/utils/NetworkState;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "isPushAvailable"

    new-instance v2, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;

    invoke-direct {v2}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-object v0
.end method
