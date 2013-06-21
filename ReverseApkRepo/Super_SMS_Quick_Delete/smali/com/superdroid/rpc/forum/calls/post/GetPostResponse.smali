.class public Lcom/superdroid/rpc/forum/calls/post/GetPostResponse;
.super Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
.source "GetPostResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x5420bc583a6d47c0L


# instance fields
.field public _posts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/Post;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;-><init>()V

    return-void
.end method
