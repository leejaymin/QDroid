.class public Lcom/superdroid/rpc/forum/calls/post/GetPostRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "GetPostRequest.java"


# static fields
.field public static final RPC_FORUM_GET_POSTS_SERVICE_NAME:Ljava/lang/String; = "getposts"

.field private static final serialVersionUID:J = -0x1615785d37af60c6L


# instance fields
.field public _ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public _keywords:Ljava/lang/String;

.field public _length:I

.field public _sort:I

.field public _start:I

.field public _threadID:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/post/GetPostRequest;->_ids:Ljava/util/List;

    .line 24
    const-string v0, "getposts"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/post/GetPostRequest;->_serviceName:Ljava/lang/String;

    .line 25
    return-void
.end method
