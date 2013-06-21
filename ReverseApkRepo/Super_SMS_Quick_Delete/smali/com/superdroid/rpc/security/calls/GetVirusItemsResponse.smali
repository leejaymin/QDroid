.class public Lcom/superdroid/rpc/security/calls/GetVirusItemsResponse;
.super Lcom/superdroid/rpc/RpcResponse;
.source "GetVirusItemsResponse.java"


# static fields
.field private static final serialVersionUID:J = -0xeb26f57b5cbf08eL


# instance fields
.field public virusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/superdroid/rpc/security/model/VirusItem;",
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
