.class public Lcom/superdroid/rpc/forum/calls/user/LoginResquest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "LoginResquest.java"


# static fields
.field public static final RPC_FORUM_LOGIN_SERVICE_NAME:Ljava/lang/String; = "forumlogin"

.field private static final serialVersionUID:J = 0x3f22a53f75e93560L


# instance fields
.field public _loginid:Ljava/lang/String;

.field public _loginpass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 16
    const-string v0, "forumlogin"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/user/LoginResquest;->_serviceName:Ljava/lang/String;

    .line 17
    return-void
.end method
