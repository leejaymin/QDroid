.class public Lcom/superdroid/rpc/security/calls/GetVirusItemsRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "GetVirusItemsRequest.java"


# static fields
.field public static final RPC_SECURITY_GET_VIRUS_SERVICE_NAME:Ljava/lang/String; = "getvirus"

.field private static final serialVersionUID:J = 0x6451c4d0ce1c04afL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 15
    const-string v0, "getvirus"

    iput-object v0, p0, Lcom/superdroid/rpc/security/calls/GetVirusItemsRequest;->_serviceName:Ljava/lang/String;

    .line 16
    return-void
.end method
