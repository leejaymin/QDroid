.class public Lcom/superdroid/rpc/forum/calls/event/CreateEventLogRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "CreateEventLogRequest.java"


# static fields
.field public static final RPC_FORUM_CREATE_EVENT_LOG_SERVICE_NAME:Ljava/lang/String; = "createeventlog"

.field private static final serialVersionUID:J = 0x512df8bad85a1ed6L


# instance fields
.field public _eventlog:Lcom/superdroid/rpc/forum/model/EventLog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 16
    const-string v0, "createeventlog"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/event/CreateEventLogRequest;->_serviceName:Ljava/lang/String;

    .line 17
    return-void
.end method
