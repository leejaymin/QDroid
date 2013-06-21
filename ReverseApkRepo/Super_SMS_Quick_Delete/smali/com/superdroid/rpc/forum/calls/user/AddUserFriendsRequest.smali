.class public Lcom/superdroid/rpc/forum/calls/user/AddUserFriendsRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "AddUserFriendsRequest.java"


# static fields
.field public static final RPC_FORUM_ADD_FRIEND_SERVICE_NAME:Ljava/lang/String; = "addfriend"

.field private static final serialVersionUID:J = -0x55c9209887f1144dL


# instance fields
.field public _friend:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 16
    const-string v0, "addfriend"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/user/AddUserFriendsRequest;->_serviceName:Ljava/lang/String;

    .line 17
    return-void
.end method
