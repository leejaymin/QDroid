.class public Lcom/superdroid/rpc/forum/calls/forum/GetForumRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "GetForumRequest.java"


# static fields
.field public static final RPC_FORUM_GET_FORUM_SERVICE_NAME:Ljava/lang/String; = "getforum"

.field private static final serialVersionUID:J = -0xd54837a95bad62cL


# instance fields
.field public _forumID:J

.field public _forumName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 12
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/superdroid/rpc/forum/calls/forum/GetForumRequest;->_forumID:J

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/forum/GetForumRequest;->_forumName:Ljava/lang/String;

    .line 15
    const-string v0, "getforum"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/forum/GetForumRequest;->_serviceName:Ljava/lang/String;

    .line 16
    return-void
.end method
