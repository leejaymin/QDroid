.class public Lcom/superdroid/rpc/forum/calls/post/RecentPostsRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "RecentPostsRequest.java"


# static fields
.field public static final RPC_FORUM_RECENT_POST_SERVICE_NAME:Ljava/lang/String; = "recentposts"

.field private static final serialVersionUID:J = 0x70eeff6674609ee6L


# instance fields
.field public _length:I

.field public _username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 19
    const-string v0, "recentposts"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/post/RecentPostsRequest;->_serviceName:Ljava/lang/String;

    .line 20
    return-void
.end method
