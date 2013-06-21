.class public Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;
.super Ljava/lang/Object;
.source "C2DMAvailability.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static EVENT_C2DM_AVAILABLE:I

.field private static EVENT_C2DM_NOT_AVAILABLE:I

.field private static EVENT_NETWORK_NOT_AVAILABLE:I

.field private static EVENT_TYPE_NAME:Ljava/lang/String;

.field private static LOG_PREFIX:Ljava/lang/String;


# instance fields
.field private debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "C2DMAvailability"

    sput-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->LOG_PREFIX:Ljava/lang/String;

    .line 25
    const-string v0, "AdobeC2DMAvailabilityEvent"

    sput-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->EVENT_TYPE_NAME:Ljava/lang/String;

    .line 27
    const/16 v0, 0xa

    sput v0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->EVENT_NETWORK_NOT_AVAILABLE:I

    .line 28
    const/16 v0, 0xb

    sput v0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->EVENT_C2DM_AVAILABLE:I

    .line 29
    const/16 v0, 0xc

    sput v0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->EVENT_C2DM_NOT_AVAILABLE:I

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->debug:Z

    .line 22
    return-void
.end method

.method static synthetic access$0(Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->printDebug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->EVENT_C2DM_AVAILABLE:I

    return v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->EVENT_C2DM_NOT_AVAILABLE:I

    return v0
.end method

.method static synthetic access$3(Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->dispatchEvent(Lorg/json/JSONObject;)V

    return-void
.end method

.method private dispatchEvent(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 149
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 153
    .local v0, jsonMessage:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "response"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dispatch event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->printDebug(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lair/com/adobe/cc/notifications/c2dm/C2DMAirExtension;->getContext()Lcom/adobe/fre/FREContext;

    move-result-object v1

    sget-object v2, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->EVENT_TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void

    .line 155
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isNetworkAvailable(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 125
    const/4 v3, 0x0

    .line 129
    .local v3, result:Z
    :try_start_0
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 131
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 132
    .local v4, wifi:Landroid/net/NetworkInfo;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 134
    .local v2, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 135
    :cond_0
    const/4 v3, 0x1

    .line 142
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    .end local v2           #mobile:Landroid/net/NetworkInfo;
    .end local v4           #wifi:Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Network is available: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->printDebug(Ljava/lang/String;)V

    .line 144
    return v3

    .line 137
    :catch_0
    move-exception v1

    .line 139
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->LOG_PREFIX:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Network availability error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private printDebug(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 165
    iget-boolean v0, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->debug:Z

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->LOG_PREFIX:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .parameter "context"
    .parameter "passedArgs"

    .prologue
    .line 35
    array-length v2, p2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 39
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v2

    iput-boolean v2, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->debug:Z

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->LOG_PREFIX:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v0, jsonMessage:Lorg/json/JSONObject;
    const-string v2, "event_code"

    sget v3, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->EVENT_NETWORK_NOT_AVAILABLE:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    invoke-direct {p0, v0}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->dispatchEvent(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 110
    .end local v0           #jsonMessage:Lorg/json/JSONObject;
    :goto_1
    const/4 v1, 0x0

    .line 114
    .local v1, result:Lcom/adobe/fre/FREObject;
    const/4 v2, 0x1

    :try_start_2
    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 120
    :goto_2
    return-object v1

    .line 63
    .end local v1           #result:Lcom/adobe/fre/FREObject;
    :cond_1
    :try_start_3
    new-instance v2, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability$1;

    invoke-direct {v2, p0}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability$1;-><init>(Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;)V

    .line 102
    invoke-virtual {v2}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability$1;->start()V

    .line 103
    const-string v2, "Started availability thread"

    invoke-direct {p0, v2}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->printDebug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 105
    :catch_0
    move-exception v2

    goto :goto_1

    .line 116
    .restart local v1       #result:Lcom/adobe/fre/FREObject;
    :catch_1
    move-exception v2

    goto :goto_2

    .line 55
    .end local v1           #result:Lcom/adobe/fre/FREObject;
    :catch_2
    move-exception v2

    goto :goto_1

    .line 42
    :catch_3
    move-exception v2

    goto :goto_0
.end method
