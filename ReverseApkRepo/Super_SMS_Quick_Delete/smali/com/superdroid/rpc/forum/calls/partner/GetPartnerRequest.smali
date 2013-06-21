.class public Lcom/superdroid/rpc/forum/calls/partner/GetPartnerRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "GetPartnerRequest.java"


# static fields
.field public static final RPC_FORUM_GET_PARTNER_SERVICE_NAME:Ljava/lang/String; = "getpartner"

.field private static final serialVersionUID:J = -0xca833d2230c8dfcL


# instance fields
.field public _email:Ljava/lang/String;

.field public _forumName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 16
    const-string v0, "getpartner"

    iput-object v0, p0, Lcom/superdroid/rpc/forum/calls/partner/GetPartnerRequest;->_serviceName:Ljava/lang/String;

    .line 17
    return-void
.end method
