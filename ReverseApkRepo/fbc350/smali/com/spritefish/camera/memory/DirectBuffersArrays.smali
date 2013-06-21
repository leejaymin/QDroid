.class public Lcom/spritefish/camera/memory/DirectBuffersArrays;
.super Ljava/lang/Object;
.source "DirectBuffersArrays.java"

# interfaces
.implements Lcom/spritefish/camera/memory/BAMInterface;


# instance fields
.field arrs:[[B

.field sz:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/spritefish/camera/memory/DirectBuffersArrays;->sz:I

    .line 6
    return-void
.end method


# virtual methods
.method public dropMemory()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public getCopyBuffer()[B
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getData(I[B)[B
    .locals 1
    .parameter "bufferId"
    .parameter "data"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/spritefish/camera/memory/DirectBuffersArrays;->arrs:[[B

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/spritefish/camera/memory/DirectBuffersArrays;->sz:I

    return v0
.end method

.method public initialize(IIIZIZ)I
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "maxBuffers"
    .parameter "blackWhite"
    .parameter "memModifier"
    .parameter "highRes"

    .prologue
    .line 11
    new-array v0, p3, [[B

    iput-object v0, p0, Lcom/spritefish/camera/memory/DirectBuffersArrays;->arrs:[[B

    .line 12
    iput p3, p0, Lcom/spritefish/camera/memory/DirectBuffersArrays;->sz:I

    .line 13
    return p3
.end method

.method public putData(I[B)V
    .locals 1
    .parameter "bufferId"
    .parameter "data"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/spritefish/camera/memory/DirectBuffersArrays;->arrs:[[B

    aput-object p2, v0, p1

    .line 24
    return-void
.end method
