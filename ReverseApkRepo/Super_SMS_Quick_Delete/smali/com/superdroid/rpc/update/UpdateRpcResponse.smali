.class public Lcom/superdroid/rpc/update/UpdateRpcResponse;
.super Lcom/superdroid/rpc/RpcResponse;
.source "UpdateRpcResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x249b446b86b70280L


# instance fields
.field public _apkDownloadLink:Ljava/lang/String;

.field public _changeLog:Ljava/lang/String;

.field public _latestVersionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcResponse;-><init>()V

    return-void
.end method
