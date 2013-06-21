.class Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability$1;
.super Ljava/lang/Thread;
.source "C2DMAvailability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;


# direct methods
.method constructor <init>(Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability$1;->this$0:Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;

    .line 63
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 66
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v1, jsonMessage:Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Ljava/net/InetSocketAddress;

    const-string v4, "mtalk.google.com"

    const/16 v5, 0x146c

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 73
    .local v3, sockAddr:Ljava/net/SocketAddress;
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 75
    .local v2, s:Ljava/net/Socket;
    iget-object v4, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability$1;->this$0:Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;

    const-string v5, "Connecting to mtalk.google.com:5228"

    #calls: Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->printDebug(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->access$0(Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;Ljava/lang/String;)V

    .line 78
    const v4, 0xea60

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 79
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 81
    iget-object v4, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability$1;->this$0:Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;

    const-string v5, "Closing connection to mtalk.google.com:5228"

    #calls: Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->printDebug(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->access$0(Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;Ljava/lang/String;)V

    .line 83
    const-string v4, "event_code"

    invoke-static {}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->access$1()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    .end local v2           #s:Ljava/net/Socket;
    .end local v3           #sockAddr:Ljava/net/SocketAddress;
    :goto_0
    iget-object v4, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability$1;->this$0:Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;

    #calls: Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->dispatchEvent(Lorg/json/JSONObject;)V
    invoke-static {v4, v1}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->access$3(Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;Lorg/json/JSONObject;)V

    .line 101
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/net/UnknownHostException;
    :try_start_1
    iget-object v4, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability$1;->this$0:Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "C2DM unavailable: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->printDebug(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->access$0(Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;Ljava/lang/String;)V

    .line 88
    const-string v4, "event_code"

    invoke-static {}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->access$2()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 96
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 90
    :catch_2
    move-exception v0

    .line 92
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p0, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability$1;->this$0:Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "C2DM unavailable: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->printDebug(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->access$0(Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;Ljava/lang/String;)V

    .line 93
    const-string v4, "event_code"

    invoke-static {}, Lair/com/adobe/cc/notifications/c2dm/C2DMAvailability;->access$2()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0
.end method
