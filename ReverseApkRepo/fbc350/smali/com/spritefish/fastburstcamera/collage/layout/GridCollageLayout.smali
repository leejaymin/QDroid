.class public Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;
.super Ljava/lang/Object;
.source "GridCollageLayout.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/collage/layout/CollageLayout;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cCol:I

.field private cRow:I

.field private cols:I

.field private icols:I

.field private irows:I

.field private pictureHeight:I

.field private pictureWidth:I

.field private rows:I

.field private scale:I

.field private spacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout$1;

    invoke-direct {v0}, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout$1;-><init>()V

    .line 125
    sput-object v0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "columns"
    .parameter "rows"
    .parameter "spacing"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->icols:I

    .line 27
    iput p2, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->irows:I

    .line 28
    iput v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cRow:I

    .line 29
    iput v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cCol:I

    .line 30
    iput p3, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->spacing:I

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->icols:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->irows:I

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public calcPicturesNeeded(I)I
    .locals 2
    .parameter "availablePictures"

    .prologue
    const/4 v1, -0x1

    .line 145
    iget v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->irows:I

    if-ne v0, v1, :cond_0

    .line 146
    iget v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->icols:I

    rem-int v0, p1, v0

    sub-int v0, p1, v0

    .line 149
    :goto_0
    return v0

    .line 147
    :cond_0
    iget v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->icols:I

    if-ne v0, v1, :cond_1

    .line 148
    iget v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->irows:I

    rem-int v0, p1, v0

    sub-int v0, p1, v0

    goto :goto_0

    .line 149
    :cond_1
    iget v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->icols:I

    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->irows:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getFullImageSize()Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;
    .locals 5

    .prologue
    .line 64
    new-instance v0, Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;

    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->pictureWidth:I

    iget v2, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cols:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->spacing:I

    iget v3, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cols:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->pictureHeight:I

    iget v3, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->rows:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->spacing:I

    iget v4, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->rows:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;-><init>(II)V

    .line 65
    .local v0, m:Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;
    new-instance v1, Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;->getX()I

    move-result v2

    iget v3, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->scale:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;->getY()I

    move-result v3

    iget v4, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->scale:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/spritefish/fastburstcamera/collage/layout/ImageSize;-><init>(II)V

    return-object v1
.end method

.method public getStringDescription()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 103
    iget v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->icols:I

    if-ne v0, v1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->irows:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " rows"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 108
    :cond_0
    iget v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->irows:I

    if-ne v0, v1, :cond_1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->icols:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " cols"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->icols:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->irows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initLayout(III)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "scale"

    .prologue
    const/4 v0, 0x0

    .line 39
    iput p2, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->pictureHeight:I

    .line 40
    iput p1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->pictureWidth:I

    .line 41
    iput p3, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->scale:I

    .line 42
    iput v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cRow:I

    .line 43
    iput v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cCol:I

    .line 44
    return-void
.end method

.method public nextPicturePosition()Lcom/spritefish/fastburstcamera/collage/layout/PicturePosition;
    .locals 8

    .prologue
    .line 48
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cCol:I

    iget v3, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->pictureWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->spacing:I

    iget v4, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cCol:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 49
    iget v3, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cRow:I

    iget v4, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->pictureHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->spacing:I

    iget v5, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cRow:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 50
    iget v4, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cCol:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->pictureWidth:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->spacing:I

    iget v6, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cCol:I

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 51
    iget v5, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cRow:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->pictureHeight:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->spacing:I

    iget v7, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cRow:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 48
    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 52
    .local v0, r:Landroid/graphics/Rect;
    iget v2, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->scale:I

    invoke-static {v0, v2}, Lcom/spritefish/camera/Util;->scaleRect(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/spritefish/fastburstcamera/collage/layout/PicturePosition;

    invoke-direct {v1, v0}, Lcom/spritefish/fastburstcamera/collage/layout/PicturePosition;-><init>(Landroid/graphics/Rect;)V

    .line 54
    .local v1, result:Lcom/spritefish/fastburstcamera/collage/layout/PicturePosition;
    iget v2, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cCol:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cCol:I

    .line 55
    iget v2, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cCol:I

    iget v3, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cols:I

    if-lt v2, v3, :cond_0

    .line 57
    const/4 v2, 0x0

    iput v2, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cCol:I

    .line 58
    iget v2, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cRow:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cRow:I

    .line 60
    :cond_0
    return-object v1
.end method

.method public prepareForPictures(I)I
    .locals 3
    .parameter "picturesAvailable"

    .prologue
    const/4 v0, -0x1

    .line 72
    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->icols:I

    if-le v1, v0, :cond_1

    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->irows:I

    if-le v1, v0, :cond_1

    .line 74
    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->icols:I

    iput v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cols:I

    .line 75
    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->irows:I

    iput v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->rows:I

    .line 76
    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cols:I

    iget v2, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->rows:I

    mul-int/2addr v1, v2

    if-ge p1, v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->icols:I

    if-ne v1, v0, :cond_2

    .line 82
    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->irows:I

    if-lt p1, v1, :cond_0

    .line 84
    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->irows:I

    iput v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->rows:I

    .line 85
    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->rows:I

    div-int v1, p1, v1

    iput v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cols:I

    .line 88
    :cond_2
    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->irows:I

    if-ne v1, v0, :cond_3

    .line 90
    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->icols:I

    if-lt p1, v1, :cond_0

    .line 92
    iget v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->icols:I

    iput v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cols:I

    .line 93
    iget v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cols:I

    div-int v0, p1, v0

    iput v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->rows:I

    .line 96
    :cond_3
    iget v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->cols:I

    iget v1, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->rows:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 121
    iget v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->icols:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Lcom/spritefish/fastburstcamera/collage/layout/GridCollageLayout;->irows:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void
.end method
