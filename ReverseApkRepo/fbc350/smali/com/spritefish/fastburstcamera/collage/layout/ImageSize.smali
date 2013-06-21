.class public Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;
.super Ljava/lang/Object;
.source "ImageSize.java"


# instance fields
.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;->x:I

    .line 16
    iput p2, p0, Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;->y:I

    .line 17
    return-void
.end method


# virtual methods
.method public getX()I
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;->y:I

    return v0
.end method
