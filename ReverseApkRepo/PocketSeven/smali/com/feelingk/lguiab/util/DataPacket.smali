.class public Lcom/feelingk/lguiab/util/DataPacket;
.super Lcom/feelingk/lguiab/util/Header;
.source "DataPacket.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/feelingk/lguiab/util/Header;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/feelingk/lguiab/util/DataPacket;->data:[B

    return-object v0
.end method

.method public parse([B)V
    .locals 4
    .parameter "v"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/feelingk/lguiab/util/Header;->parse([B)V

    .line 24
    array-length v1, p1

    add-int/lit8 v0, v1, -0xc

    .line 25
    .local v0, len:I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/feelingk/lguiab/util/DataPacket;->data:[B

    .line 26
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/feelingk/lguiab/util/DataPacket;->data:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    return-void
.end method
