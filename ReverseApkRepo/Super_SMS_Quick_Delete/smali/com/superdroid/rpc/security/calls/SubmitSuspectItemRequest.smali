.class public Lcom/superdroid/rpc/security/calls/SubmitSuspectItemRequest;
.super Lcom/superdroid/rpc/RpcRequest;
.source "SubmitSuspectItemRequest.java"


# static fields
.field public static final RPC_SECURITY_SUBMIT_SUSPECT_SERVICE_NAME:Ljava/lang/String; = "submitsuspect"

.field private static final serialVersionUID:J = 0x71edfc99b03fe579L


# instance fields
.field public suspectItem:Lcom/superdroid/rpc/security/model/SuspectItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/superdroid/rpc/RpcRequest;-><init>()V

    .line 18
    const-string v0, "submitsuspect"

    iput-object v0, p0, Lcom/superdroid/rpc/security/calls/SubmitSuspectItemRequest;->_serviceName:Ljava/lang/String;

    .line 19
    return-void
.end method
