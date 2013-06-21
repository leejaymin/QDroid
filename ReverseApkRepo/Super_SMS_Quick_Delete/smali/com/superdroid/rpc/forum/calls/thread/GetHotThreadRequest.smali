.class public Lcom/superdroid/rpc/forum/calls/thread/GetHotThreadRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "GetHotThreadRequest.java"


# static fields
.field public static final RPC_FORUM_HOT_THREAD_SERVICE_NAME:Ljava/lang/String; = "hotthreads"

.field private static final serialVersionUID:J = -0x12823c8f7edeac57L


# instance fields
.field public _category:I

.field public _length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 19
    const-string v0, "hotthreads"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/thread/GetHotThreadRequest;->_serviceName:Ljava/lang/String;

    .line 20
    return-void
.end method
