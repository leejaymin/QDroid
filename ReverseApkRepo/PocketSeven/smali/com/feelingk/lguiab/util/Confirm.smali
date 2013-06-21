.class public Lcom/feelingk/lguiab/util/Confirm;
.super Lcom/feelingk/lguiab/util/Header;
.source "Confirm.java"


# instance fields
.field private resultCode:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/feelingk/lguiab/util/Header;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultCode()B
    .locals 1

    .prologue
    .line 27
    iget-byte v0, p0, Lcom/feelingk/lguiab/util/Confirm;->resultCode:B

    return v0
.end method

.method protected parse([B)V
    .locals 1
    .parameter "v"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/feelingk/lguiab/util/Header;->parse([B)V

    .line 19
    const/16 v0, 0xc

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/feelingk/lguiab/util/Confirm;->resultCode:B

    .line 20
    return-void
.end method

.method public setResultCode(B)V
    .locals 0
    .parameter "code"

    .prologue
    .line 35
    iput-byte p1, p0, Lcom/feelingk/lguiab/util/Confirm;->resultCode:B

    .line 36
    return-void
.end method
