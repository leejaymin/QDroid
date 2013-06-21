.class public Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "GetUserFriendsRequest.java"


# static fields
.field public static final RPC_FORUM_GET_FRIENDS_SERVICE_NAME:Ljava/lang/String; = "getuserfriends"

.field private static final serialVersionUID:J = 0x63f65778ee32003bL


# instance fields
.field public _username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 20
    const-string v0, "getuserfriends"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/user/GetUserFriendsRequest;->_serviceName:Ljava/lang/String;

    .line 21
    return-void
.end method
