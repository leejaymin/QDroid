.class public Lcom/superdroid/rpc/forum/calls/user/GetMessagesResponse;
.super Lcom/superdroid/rpc/RpcResponse;
.source "GetMessagesResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x204a3901a9be098cL


# instance fields
.field public _messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/forum/model/UserMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcResponse;-><init>()V

    return-void
.end method
