.class public Lcom/superdroid/rpc/forum/calls/post/RecentPostsResponse;
.super Lcom/superdroid/rpc/forum/calls/ForumBaseRpcResponse;
.source "RecentPostsResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x4a69175acf0d703eL


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
