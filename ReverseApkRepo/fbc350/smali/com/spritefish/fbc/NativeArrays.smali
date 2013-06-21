.class public Lcom/spritefish/fbc/NativeArrays;
.super Ljava/lang/Object;
.source "NativeArrays.java"

# interfaces
.implements Lcom/spritefish/camera/memory/BAMInterface;


# instance fields
.field private copyBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native initializeNative(IIIZIZ)I
.end method


# virtual methods
.method public native dropMemory()V
.end method

.method public getCopyBuffer()[B
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/spritefish/fbc/NativeArrays;->copyBuffer:[B

    return-object v0
.end method

.method public native getData(I[B)[B
.end method

.method public native getSize()I
.end method

.method public initialize(IIIZIZ)I
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "maxBuffers"
    .parameter "blackWhite"
    .parameter "memModifier"
    .parameter "highRes"

    .prologue
    .line 14
    mul-int v1, p1, p2

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/spritefish/fbc/NativeArrays;->copyBuffer:[B

    .line 15
    invoke-direct/range {p0 .. p6}, Lcom/spritefish/fbc/NativeArrays;->initializeNative(IIIZIZ)I

    move-result v0

    return v0

    .line 14
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public native putData(I[B)V
.end method
