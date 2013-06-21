.class public Lcom/superdroid/rpc/forum/calls/partner/UpdatePartnerAdStatusRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "UpdatePartnerAdStatusRequest.java"


# static fields
.field public static final RPC_FORUM_UPDATE_PARTNER_ADSTATUS_SERVICE_NAME:Ljava/lang/String; = "updatepartneradstatus"

.field private static final serialVersionUID:J = -0x64464bd6fd606836L


# instance fields
.field public _adstatus:Lcom/superdroid/rpc/forum/model/PartnerAdStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 21
    const-string v0, "updatepartneradstatus"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/partner/UpdatePartnerAdStatusRequest;->_serviceName:Ljava/lang/String;

    .line 22
    return-void
.end method
