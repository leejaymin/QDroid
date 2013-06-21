.class public Lcom/stickycoding/rokon/BlendFunction;
.super Ljava/lang/Object;
.source "BlendFunction.java"


# instance fields
.field protected blendFunctionDst:I

.field protected blendFunctionSrc:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "blendFunctionSrc"
    .parameter "blendFunctionDst"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/stickycoding/rokon/BlendFunction;->blendFunctionSrc:I

    .line 23
    iput p2, p0, Lcom/stickycoding/rokon/BlendFunction;->blendFunctionDst:I

    .line 24
    return-void
.end method


# virtual methods
.method public getDst()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/stickycoding/rokon/BlendFunction;->blendFunctionDst:I

    return v0
.end method

.method public getSrc()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/stickycoding/rokon/BlendFunction;->blendFunctionSrc:I

    return v0
.end method

.method public setDst(I)V
    .locals 0
    .parameter "blendFunctionDst"

    .prologue
    .line 59
    iput p1, p0, Lcom/stickycoding/rokon/BlendFunction;->blendFunctionDst:I

    .line 60
    return-void
.end method

.method public setSrc(I)V
    .locals 0
    .parameter "blendFunctionSrc"

    .prologue
    .line 41
    iput p1, p0, Lcom/stickycoding/rokon/BlendFunction;->blendFunctionSrc:I

    .line 42
    return-void
.end method
