.class public Lcom/superdroid/rpc/forum/calls/user/DeleteUserFriendsRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "DeleteUserFriendsRequest.java"


# static fields
.field public static final RPC_FORUM_DELETE_FRIEND_SERVICE_NAME:Ljava/lang/String; = "deletefriend"

.field private static final serialVersionUID:J = -0x27c7065dc5f83107L


# instance fields
.field public _friend:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 14
    const-string v0, "deletefriend"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/user/DeleteUserFriendsRequest;->_serviceName:Ljava/lang/String;

    .line 15
    return-void
.end method
