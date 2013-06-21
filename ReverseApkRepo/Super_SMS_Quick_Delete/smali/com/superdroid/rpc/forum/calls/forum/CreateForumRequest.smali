.class public Lcom/superdroid/rpc/forum/calls/forum/CreateForumRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "CreateForumRequest.java"


# static fields
.field public static final RPC_FORUM_CREATE_FORUM_SERVICE_NAME:Ljava/lang/String; = "createforum"

.field private static final serialVersionUID:J = 0x271adc2359fd833bL


# instance fields
.field public _forum:Lcom/superdroid/rpc/forum/model/Forum;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 18
    const-string v0, "createforum"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/forum/CreateForumRequest;->_serviceName:Ljava/lang/String;

    .line 19
    return-void
.end method
