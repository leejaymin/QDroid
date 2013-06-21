.class public Lcom/kaf/contentsbox/StatContentsBoxFs;
.super Ljava/lang/Object;
.source "StatContentsBoxFs.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kaf/contentsbox/StatContentsBoxFs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blockCount:I

.field public blockSize:I

.field public freeBlocks:I

.field public usedBlocks:I

.field public usedContentsBox:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/kaf/contentsbox/StatContentsBoxFs$1;

    invoke-direct {v0}, Lcom/kaf/contentsbox/StatContentsBoxFs$1;-><init>()V

    sput-object v0, Lcom/kaf/contentsbox/StatContentsBoxFs;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "blockSize"
    .parameter "blockCount"
    .parameter "freeBlocks"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p2, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockCount:I

    .line 29
    iput p1, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockSize:I

    .line 30
    iput p3, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->freeBlocks:I

    .line 31
    sub-int v0, p2, p3

    iput v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedBlocks:I

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockSize:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockCount:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->freeBlocks:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedBlocks:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedContentsBox:I

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getBlockCount()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockCount:I

    return v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockSize:I

    return v0
.end method

.method public getFreeBlocks()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->freeBlocks:I

    return v0
.end method

.method public getUsedBlocks()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedBlocks:I

    return v0
.end method

.method public getUsedContentsBox()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedContentsBox:I

    return v0
.end method

.method public setBlockCount(I)V
    .locals 0
    .parameter "blockCount"

    .prologue
    .line 126
    iput p1, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockCount:I

    .line 127
    return-void
.end method

.method public setBlockSize(I)V
    .locals 0
    .parameter "blockSize"

    .prologue
    .line 109
    iput p1, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockSize:I

    .line 110
    return-void
.end method

.method public setFreeBlocks(I)V
    .locals 0
    .parameter "freeBlocks"

    .prologue
    .line 143
    iput p1, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->freeBlocks:I

    .line 144
    return-void
.end method

.method public setUsedBlocks(I)V
    .locals 0
    .parameter "usedBlocks"

    .prologue
    .line 161
    iput p1, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedBlocks:I

    .line 162
    return-void
.end method

.method public setUsedContentsBox(I)V
    .locals 0
    .parameter "usedContentsBox"

    .prologue
    .line 179
    iput p1, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedContentsBox:I

    .line 180
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 61
    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->blockCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->freeBlocks:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedBlocks:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/kaf/contentsbox/StatContentsBoxFs;->usedContentsBox:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void
.end method
