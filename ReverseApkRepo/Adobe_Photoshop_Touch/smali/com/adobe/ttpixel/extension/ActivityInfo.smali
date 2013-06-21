.class Lcom/adobe/ttpixel/extension/ActivityInfo;
.super Ljava/lang/Object;


# static fields
.field protected static cAnimSequence:[B

.field protected static kNumberOfSquares:I


# instance fields
.field protected mActivityId:I

.field protected mBackMargin:I

.field protected mBackSize:I

.field protected mBlockSize:I

.field protected mCenterX:F

.field protected mCenterY:F

.field protected mCornerRadius:F

.field protected mDidCallback:Z

.field protected mDrawBack:Z

.field protected mMarginSize:I

.field protected mOffsetPos:I

.field protected mStartDelay:I

.field protected mSurfaceHeight:F

.field protected mSurfaceWidth:F

.field protected mZombie:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->kNumberOfSquares:I

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->cAnimSequence:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x2t
        0x1t
        0x1t
        0x0t
        0x0t
        0x2t
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x0t
        0x0t
        0x1t
        0x1t
        0x2t
        0x0t
        0x1t
        0x1t
        0x1t
        0x2t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mActivityId:I

    iput-boolean v1, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mZombie:Z

    iput-boolean v1, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mDidCallback:Z

    iput v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mSurfaceWidth:F

    iput v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mSurfaceHeight:F

    return-void
.end method

.method public static getTriangleInSequence(I)I
    .locals 5

    const/4 v1, 0x1

    sget v0, Lcom/adobe/ttpixel/extension/ActivityInfo;->kNumberOfSquares:I

    mul-int v2, p0, v0

    const/4 v0, 0x0

    :goto_0
    sget v3, Lcom/adobe/ttpixel/extension/ActivityInfo;->kNumberOfSquares:I

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/adobe/ttpixel/extension/ActivityInfo;->cAnimSequence:[B

    add-int v4, v2, v0

    aget-byte v3, v3, v4

    if-lez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v1, 0x2

    return v0
.end method


# virtual methods
.method protected initSquareColors([FI)V
    .locals 10

    const/4 v4, 0x3

    const/4 v9, 0x4

    const/4 v3, 0x0

    new-array v5, v9, [F

    fill-array-data v5, :array_0

    new-array v0, v9, [F

    fill-array-data v0, :array_1

    new-array v1, v9, [F

    fill-array-data v1, :array_2

    new-array v6, v4, [[F

    const/4 v2, 0x0

    aput-object v2, v6, v3

    const/4 v2, 0x1

    aput-object v0, v6, v2

    const/4 v0, 0x2

    aput-object v1, v6, v0

    if-gez p2, :cond_1

    move v0, v3

    move v4, v3

    :goto_0
    const/16 v1, 0x14

    if-ge v4, v1, :cond_8

    move v2, v3

    :goto_1
    if-ge v2, v9, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget v6, v5, v2

    aput v6, p1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mDrawBack:Z

    if-eqz v0, :cond_2

    const v0, 0x3ecccccd

    aput v0, v5, v4

    :cond_2
    move v0, v3

    move v4, v3

    :goto_2
    if-ge v4, v9, :cond_4

    move v2, v3

    :goto_3
    if-ge v2, v9, :cond_3

    add-int/lit8 v1, v0, 0x1

    aget v7, v5, v2

    aput v7, p1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_4
    if-ge v5, v9, :cond_8

    sget-object v1, Lcom/adobe/ttpixel/extension/ActivityInfo;->cAnimSequence:[B

    sget v2, Lcom/adobe/ttpixel/extension/ActivityInfo;->kNumberOfSquares:I

    mul-int/2addr v2, p2

    add-int/2addr v2, v5

    aget-byte v1, v1, v2

    if-nez v1, :cond_6

    :cond_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_4

    :cond_6
    aget-object v7, v6, v1

    move v4, v3

    :goto_5
    if-ge v4, v9, :cond_5

    move v2, v3

    :goto_6
    if-ge v2, v9, :cond_7

    add-int/lit8 v1, v0, 0x1

    aget v8, v7, v2

    aput v8, p1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    :cond_8
    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xct 0x3ft
        0x48t 0xe1t 0x5at 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method protected initSquareVertices([FI)V
    .locals 14

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mCenterX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mCenterX:F

    iget v1, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mSurfaceWidth:F

    div-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mCenterY:F

    iget v2, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mSurfaceHeight:F

    div-float/2addr v1, v2

    neg-float v1, v1

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float v5, v0, v2

    const/high16 v0, 0x3f80

    add-float v6, v1, v0

    :cond_0
    iget v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mBackSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mSurfaceWidth:F

    div-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float v3, v0, v1

    iget v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mBackSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mSurfaceHeight:F

    div-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float v4, v0, v1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/ttpixel/extension/ActivityInfo;->putSquareVertices([FIFFFF)V

    const/16 v9, 0xc

    iget v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mBlockSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mSurfaceWidth:F

    div-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float v10, v0, v1

    iget v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mBlockSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mSurfaceHeight:F

    div-float/2addr v0, v1

    const/high16 v1, 0x4000

    mul-float v11, v0, v1

    iget v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mBlockSize:I

    iget v1, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mMarginSize:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mBlockSize:I

    iget v2, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mMarginSize:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mSurfaceWidth:F

    div-float/2addr v0, v2

    iget v2, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mSurfaceHeight:F

    div-float/2addr v1, v2

    sget v2, Lcom/adobe/ttpixel/extension/ActivityInfo;->kNumberOfSquares:I

    mul-int v2, v2, p2

    sget-object v3, Lcom/adobe/ttpixel/extension/ActivityInfo;->cAnimSequence:[B

    add-int/lit8 v4, v2, 0x0

    aget-byte v3, v3, v4

    if-lez v3, :cond_1

    sub-float v12, v5, v0

    add-float v13, v6, v1

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/adobe/ttpixel/extension/ActivityInfo;->putSquareVertices([FIFFFF)V

    const/16 v9, 0x18

    :cond_1
    sget-object v3, Lcom/adobe/ttpixel/extension/ActivityInfo;->cAnimSequence:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v3, v3, v4

    if-lez v3, :cond_2

    add-float v12, v5, v0

    add-float v13, v6, v1

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/adobe/ttpixel/extension/ActivityInfo;->putSquareVertices([FIFFFF)V

    add-int/lit8 v9, v9, 0xc

    :cond_2
    sget-object v3, Lcom/adobe/ttpixel/extension/ActivityInfo;->cAnimSequence:[B

    add-int/lit8 v4, v2, 0x2

    aget-byte v3, v3, v4

    if-lez v3, :cond_3

    add-float v12, v5, v0

    sub-float v13, v6, v1

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/adobe/ttpixel/extension/ActivityInfo;->putSquareVertices([FIFFFF)V

    add-int/lit8 v9, v9, 0xc

    :cond_3
    sget-object v3, Lcom/adobe/ttpixel/extension/ActivityInfo;->cAnimSequence:[B

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, v3, v2

    if-lez v2, :cond_4

    sub-float v12, v5, v0

    sub-float v13, v6, v1

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/adobe/ttpixel/extension/ActivityInfo;->putSquareVertices([FIFFFF)V

    add-int/lit8 v0, v9, 0xc

    :cond_4
    return-void
.end method

.method public initVertices([F[FFFI)V
    .locals 5

    const/high16 v4, 0x3f00

    iget v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mBlockSize:I

    int-to-float v0, v0

    const/high16 v1, 0x4030

    div-float v1, v0, v1

    add-float/2addr v1, v4

    const/high16 v2, 0x4080

    div-float v2, v0, v2

    const/high16 v3, 0x4040

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    iput p3, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mSurfaceWidth:F

    iput p4, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mSurfaceHeight:F

    float-to-int v3, v0

    iput v3, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mBlockSize:I

    float-to-int v3, v1

    iput v3, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mMarginSize:I

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mOffsetPos:I

    float-to-int v0, v2

    iput v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mBackMargin:I

    iget v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mBlockSize:I

    iget v1, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mBackMargin:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mMarginSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mBackSize:I

    iget v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mBackSize:I

    div-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/adobe/ttpixel/extension/ActivityInfo;->mCornerRadius:F

    invoke-virtual {p0, p1, p5}, Lcom/adobe/ttpixel/extension/ActivityInfo;->initSquareVertices([FI)V

    invoke-virtual {p0, p2, p5}, Lcom/adobe/ttpixel/extension/ActivityInfo;->initSquareColors([FI)V

    return-void
.end method

.method protected putSquareVertices([FIFFFF)V
    .locals 7

    const/high16 v1, 0x4000

    div-float v0, p3, v1

    div-float v1, p4, v1

    neg-float v0, v0

    add-float/2addr v0, p5

    neg-float v1, v1

    add-float/2addr v1, p6

    add-float v2, v0, p3

    add-float v3, v1, p4

    const/high16 v4, 0x3f80

    add-int/lit8 v5, p2, 0x1

    aput v0, p1, p2

    add-int/lit8 v6, v5, 0x1

    aput v1, p1, v5

    add-int/lit8 v5, v6, 0x1

    aput v4, p1, v6

    add-int/lit8 v6, v5, 0x1

    aput v2, p1, v5

    add-int/lit8 v5, v6, 0x1

    aput v1, p1, v6

    add-int/lit8 v1, v5, 0x1

    aput v4, p1, v5

    add-int/lit8 v5, v1, 0x1

    aput v2, p1, v1

    add-int/lit8 v1, v5, 0x1

    aput v3, p1, v5

    add-int/lit8 v2, v1, 0x1

    aput v4, p1, v1

    add-int/lit8 v1, v2, 0x1

    aput v0, p1, v2

    add-int/lit8 v0, v1, 0x1

    aput v3, p1, v1

    add-int/lit8 v1, v0, 0x1

    aput v4, p1, v0

    return-void
.end method
