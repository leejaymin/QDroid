.class public Lcom/superdroid/rpc/forum/calls/thread/GetSingleThreadRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "GetSingleThreadRequest.java"


# static fields
.field public static final RPC_FORUM_GET_THREAD_SERVICE_NAME:Ljava/lang/String; = "getthread"

.field private static final serialVersionUID:J = -0x2c55d98d032d7879L


# instance fields
.field public _threadID:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 15
    const-string v0, "getthread"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/thread/GetSingleThreadRequest;->_serviceName:Ljava/lang/String;

    .line 16
    return-void
.end method
