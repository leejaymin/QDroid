.class public Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;
.super Ljava/lang/Object;
.source "C2DMPendingRequests.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static EVENT_TYPE_NAME:Ljava/lang/String;

.field private static LOG_PREFIX:Ljava/lang/String;

.field private static c2dmMessagesPending:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public static debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "C2DMPendingRequests"

    sput-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->LOG_PREFIX:Ljava/lang/String;

    .line 20
    const-string v0, "AdobeC2DMReceivedEvent"

    sput-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->EVENT_TYPE_NAME:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->debug:Z

    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->c2dmMessagesPending:Ljava/util/Vector;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 25
    sget-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->c2dmMessagesPending:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private printDebug(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 91
    sget-boolean v0, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->debug:Z

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->LOG_PREFIX:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10
    .parameter "context"
    .parameter "passedArgs"

    .prologue
    .line 29
    const/4 v6, 0x0

    .line 31
    .local v6, result:Lcom/adobe/fre/FREObject;
    array-length v7, p2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 35
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v7

    sput-boolean v7, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->debug:Z

    .line 36
    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->LOG_PREFIX:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    const-string v7, "Checking pending C2DM events..."

    invoke-direct {p0, v7}, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->printDebug(Ljava/lang/String;)V

    .line 46
    sget-object v7, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->c2dmMessagesPending:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 48
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 76
    sget-object v7, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->c2dmMessagesPending:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 80
    const/4 v7, 0x1

    :try_start_1
    invoke-static {v7}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .line 86
    :goto_2
    return-object v6

    .line 38
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, message:Ljava/lang/String;
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .local v3, jsonMessage:Lorg/json/JSONObject;
    const-string v7, "response"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "event"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, eventType:Ljava/lang/String;
    invoke-static {}, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v7

    const-string v8, "response"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "resource"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 60
    .local v5, metadataMatcher:Ljava/util/regex/Matcher;
    const-string v7, "create"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "delete"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 61
    const-string v7, "update"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 63
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Dispatching pending event: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->printDebug(Ljava/lang/String;)V

    .line 64
    sget-object v7, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->EVENT_TYPE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7, v4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 69
    .end local v1           #eventType:Ljava/lang/String;
    .end local v3           #jsonMessage:Lorg/json/JSONObject;
    .end local v5           #metadataMatcher:Ljava/util/regex/Matcher;
    :catch_1
    move-exception v0

    .line 71
    .local v0, e:Lorg/json/JSONException;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Dispatching pending event: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->printDebug(Ljava/lang/String;)V

    .line 72
    sget-object v7, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->EVENT_TYPE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v7, v4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 67
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #eventType:Ljava/lang/String;
    .restart local v3       #jsonMessage:Lorg/json/JSONObject;
    .restart local v5       #metadataMatcher:Ljava/util/regex/Matcher;
    :cond_3
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Skipping pending event: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->printDebug(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 82
    .end local v1           #eventType:Ljava/lang/String;
    .end local v3           #jsonMessage:Lorg/json/JSONObject;
    .end local v4           #message:Ljava/lang/String;
    .end local v5           #metadataMatcher:Ljava/util/regex/Matcher;
    :catch_2
    move-exception v7

    goto/16 :goto_2
.end method
