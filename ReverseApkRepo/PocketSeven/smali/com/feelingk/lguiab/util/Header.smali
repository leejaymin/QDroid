.class public Lcom/feelingk/lguiab/util/Header;
.super Ljava/lang/Object;
.source "Header.java"


# instance fields
.field public final HEADER_SIZE:I

.field private headerDataLength:I

.field private headerSpecifier:[B

.field private resultCode:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0xc

    iput v0, p0, Lcom/feelingk/lguiab/util/Header;->HEADER_SIZE:I

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/feelingk/lguiab/util/Header;->headerSpecifier:[B

    .line 10
    return-void
.end method


# virtual methods
.method public getHeaderDataLength()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/feelingk/lguiab/util/Header;->headerDataLength:I

    return v0
.end method

.method public getHeaderSpecifier()[B
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/feelingk/lguiab/util/Header;->headerSpecifier:[B

    return-object v0
.end method

.method public getResultCode()B
    .locals 1

    .prologue
    .line 69
    iget-byte v0, p0, Lcom/feelingk/lguiab/util/Header;->resultCode:B

    return v0
.end method

.method protected parse([B)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/feelingk/lguiab/util/Header;->getHeaderSpecifier()[B

    move-result-object v1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    new-array v0, v4, [B

    .line 37
    .local v0, buf:[B
    invoke-static {p1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/feelingk/lguiab/util/Header;->setHeaderDataLength(I)V

    .line 41
    const/16 v1, 0xc

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/feelingk/lguiab/util/Header;->setResultCode(B)V

    .line 42
    return-void
.end method

.method public setHeaderDataLength(I)V
    .locals 0
    .parameter "headerDataLength"

    .prologue
    .line 62
    iput p1, p0, Lcom/feelingk/lguiab/util/Header;->headerDataLength:I

    .line 63
    return-void
.end method

.method public setResultCode(B)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 76
    iput-byte p1, p0, Lcom/feelingk/lguiab/util/Header;->resultCode:B

    .line 77
    return-void
.end method
