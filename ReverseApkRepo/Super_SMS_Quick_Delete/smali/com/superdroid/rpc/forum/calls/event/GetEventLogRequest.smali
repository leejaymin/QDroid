.class public Lcom/superdroid/rpc/forum/calls/event/GetEventLogRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "GetEventLogRequest.java"


# static fields
.field public static final RPC_FORUM_GET_EVENT_LOG_SERVICE_NAME:Ljava/lang/String; = "geteventlogs"

.field private static final serialVersionUID:J = -0x5121ec22cfc75ba2L


# instance fields
.field public _length:I

.field public _sort:I

.field public _start:I

.field public _threadID:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 19
    const-string v0, "geteventlogs"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/event/GetEventLogRequest;->_serviceName:Ljava/lang/String;

    .line 20
    return-void
.end method
