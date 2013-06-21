.class public Lcom/superdroid/rpc/forum/calls/thread/GetThreadRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "GetThreadRequest.java"


# static fields
.field public static final RPC_FORUM_GET_THREADS_SERVICE_NAME:Ljava/lang/String; = "getthreads"

.field private static final serialVersionUID:J = -0x4523e8363b01f22dL


# instance fields
.field public _forumID:J

.field public _forumName:Ljava/lang/String;

.field public _keywords:Ljava/lang/String;

.field public _length:I

.field public _sort:I

.field public _start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 23
    const-string v0, "getthreads"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/thread/GetThreadRequest;->_serviceName:Ljava/lang/String;

    .line 24
    return-void
.end method
