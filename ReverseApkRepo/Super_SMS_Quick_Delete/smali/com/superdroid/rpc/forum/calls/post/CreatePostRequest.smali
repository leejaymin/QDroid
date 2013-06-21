.class public Lcom/superdroid/rpc/forum/calls/post/CreatePostRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "CreatePostRequest.java"


# static fields
.field public static final RPC_FORUM_CREATE_POST_SERVICE_NAME:Ljava/lang/String; = "createpost"

.field private static final serialVersionUID:J = 0x3a9d711dc2dde553L


# instance fields
.field public _post:Lcom/superdroid/rpc/forum/model/Post;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 16
    const-string v0, "createpost"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/post/CreatePostRequest;->_serviceName:Ljava/lang/String;

    .line 17
    return-void
.end method
