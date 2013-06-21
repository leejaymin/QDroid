.class public Lcom/superdroid/rpc/update/CheckIMEIRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "CheckIMEIRequest.java"


# static fields
.field public static final RPC_CEHCKIMEI_SERVICES_NAME:Ljava/lang/String; = "checkimei"

.field private static final serialVersionUID:J = -0x389b2c5be34eb93eL


# instance fields
.field public _appID:Ljava/lang/String;

.field public _imei:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 19
    const-string v0, "checkimei"

    iput-object v0, p0, Lcom/superdroid/rpc/update/CheckIMEIRequest;->_serviceName:Ljava/lang/String;

    .line 20
    return-void
.end method
