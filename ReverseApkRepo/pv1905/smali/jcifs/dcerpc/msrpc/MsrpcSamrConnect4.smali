.class public Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;
.super Ljcifs/dcerpc/msrpc/samr$SamrConnect4;
.source "MsrpcSamrConnect4.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjcifs/dcerpc/msrpc/SamrPolicyHandle;)V
    .locals 1
    .parameter "server"
    .parameter "access"
    .parameter "policyHandle"

    .prologue
    .line 24
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2, p3}, Ljcifs/dcerpc/msrpc/samr$SamrConnect4;-><init>(Ljava/lang/String;IILjcifs/dcerpc/rpc$policy_handle;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;->ptype:I

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/dcerpc/msrpc/MsrpcSamrConnect4;->flags:I

    .line 27
    return-void
.end method
