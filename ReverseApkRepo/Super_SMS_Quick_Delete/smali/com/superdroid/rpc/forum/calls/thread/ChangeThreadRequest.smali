.class public Lcom/superdroid/rpc/forum/calls/thread/ChangeThreadRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "ChangeThreadRequest.java"


# static fields
.field public static final CHANGE_FROM_DEFAULT_TO_TOPINALL:I = 0x3

.field public static final CHANGE_FROM_DEFAULT_TO_TOPINFORUM:I = 0x2

.field public static final CHANGE_FROM_TOP_TO_DEFAULT:I = 0x1

.field public static final RPC_FORUM_CHANGE_THREAD_SERVICE_NAME:Ljava/lang/String; = "changethread"

.field private static final serialVersionUID:J = -0x73add72769379c30L


# instance fields
.field public _changeType:I

.field public _threadID:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 20
    const-string v0, "changethread"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/thread/ChangeThreadRequest;->_serviceName:Ljava/lang/String;

    .line 21
    return-void
.end method
