.class public Lcom/spritefish/camera/memory/BufferSet;
.super Ljava/lang/Object;
.source "BufferSet.java"


# static fields
.field private static BYTES_PR_PIXEL:I


# instance fields
.field private pixels:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x4

    sput v0, Lcom/spritefish/camera/memory/BufferSet;->BYTES_PR_PIXEL:I

    .line 3
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    mul-int v0, p1, p2

    sget v1, Lcom/spritefish/camera/memory/BufferSet;->BYTES_PR_PIXEL:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/spritefish/camera/memory/BufferSet;->pixels:[B

    .line 9
    return-void
.end method


# virtual methods
.method public getPixels()[B
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/spritefish/camera/memory/BufferSet;->pixels:[B

    return-object v0
.end method
