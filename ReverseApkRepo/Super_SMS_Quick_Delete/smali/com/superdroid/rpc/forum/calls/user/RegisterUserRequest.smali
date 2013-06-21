.class public Lcom/superdroid/rpc/forum/calls/user/RegisterUserRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "RegisterUserRequest.java"


# static fields
.field public static final RPC_FORUM_REGISTER_USER_SERVICE_NAME:Ljava/lang/String; = "registeruser"

.field private static final serialVersionUID:J = -0x37b54bd4b30e4b79L


# instance fields
.field public _isTakePointsAway:Z

.field public _user:Lcom/superdroid/rpc/forum/model/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/superdroid/rpc/forum/calls/user/RegisterUserRequest;->_isTakePointsAway:Z

    .line 16
    const-string v0, "registeruser"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/user/RegisterUserRequest;->_serviceName:Ljava/lang/String;

    .line 17
    return-void
.end method
