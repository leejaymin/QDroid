.class public Lcom/superdroid/rpc/forum/calls/thread/CreateThreadRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "CreateThreadRequest.java"


# static fields
.field public static final RPC_FORUM_CREATE_THREAD_SERVICE_NAME:Ljava/lang/String; = "createthread"

.field private static final serialVersionUID:J = -0x761fe487aea851aL


# instance fields
.field public _thread:Lcom/superdroid/rpc/forum/model/ForumThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 17
    const-string v0, "createthread"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/thread/CreateThreadRequest;->_serviceName:Ljava/lang/String;

    .line 18
    return-void
.end method
