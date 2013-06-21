.class public Lcom/superdroid/rpc/forum/calls/thread/GetRecentThreadRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "GetRecentThreadRequest.java"


# static fields
.field public static final RPC_FORUM_RECENT_THREAD_SERVICE_NAME:Ljava/lang/String; = "recentthreads"

.field private static final serialVersionUID:J = 0x42dcea1bffc64b64L


# instance fields
.field public _category:I

.field public _length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 18
    const-string v0, "recentthreads"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/thread/GetRecentThreadRequest;->_serviceName:Ljava/lang/String;

    .line 19
    return-void
.end method
