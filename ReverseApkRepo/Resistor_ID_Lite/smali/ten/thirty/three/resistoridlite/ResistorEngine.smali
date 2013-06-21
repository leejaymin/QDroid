.class public Lten/thirty/three/resistoridlite/ResistorEngine;
.super Ljava/lang/Object;
.source "ResistorEngine.java"


# static fields
.field public static final RBAND_FIVE:I = 0x1

.field public static final RBAND_FOUR:I = 0x0

.field public static final RBAND_SIX:I = 0x2


# instance fields
.field protected bandBmps:[Landroid/graphics/Bitmap;

.field protected bandColors:[I

.field protected bandRect:[Landroid/graphics/RectF;

.field protected bandSpace:[F

.field protected bandSrc:Landroid/graphics/Rect;

.field protected bandWidth:[F

.field bitBuffer:Landroid/graphics/Bitmap;

.field bitCanvas:Landroid/graphics/Canvas;

.field protected blackImg:Landroid/graphics/Bitmap;

.field protected blankImg:Landroid/graphics/Bitmap;

.field protected blueImg:Landroid/graphics/Bitmap;

.field protected brownImg:Landroid/graphics/Bitmap;

.field bufHeight:I

.field bufWidth:I

.field protected buttonImg:Landroid/graphics/Bitmap;

.field context:Landroid/content/Context;

.field protected dimImg:Landroid/graphics/Bitmap;

.field protected goldImg:Landroid/graphics/Bitmap;

.field protected greenImg:Landroid/graphics/Bitmap;

.field protected greyImg:Landroid/graphics/Bitmap;

.field protected final omega:Ljava/lang/String;

.field protected orangeImg:Landroid/graphics/Bitmap;

.field protected final plusm:Ljava/lang/String;

.field protected pntBand:Landroid/graphics/Paint;

.field protected pntResistor:Landroid/graphics/Paint;

.field reBandFive:I

.field reBandFour:I

.field reBandMode:I

.field reBandOne:I

.field reBandSix:I

.field reBandThree:I

.field reBandTwo:I

.field protected redImg:Landroid/graphics/Bitmap;

.field protected resistorImg:Landroid/graphics/Bitmap;

.field protected silverImg:Landroid/graphics/Bitmap;

.field protected tempbandBmps:[Landroid/graphics/Bitmap;

.field protected tempbandValues:[I

.field protected tolbandBmps:[Landroid/graphics/Bitmap;

.field protected tolbandColors:[I

.field protected tolbandValues:[D

.field protected violetImg:Landroid/graphics/Bitmap;

.field protected whiteImg:Landroid/graphics/Bitmap;

.field protected yellowImg:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2126

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->omega:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0xb1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->plusm:Ljava/lang/String;

    .line 61
    iput v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandMode:I

    .line 63
    iput v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandOne:I

    .line 64
    iput v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandTwo:I

    .line 65
    iput v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandThree:I

    .line 66
    iput v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandFour:I

    .line 67
    iput v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandFive:I

    .line 68
    iput v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandSix:I

    .line 79
    iput-object p1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorEngine;->FetchImg()V

    .line 82
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->resistorImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bufWidth:I

    .line 83
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->resistorImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bufHeight:I

    .line 84
    iget v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bufWidth:I

    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bufHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bitBuffer:Landroid/graphics/Bitmap;

    .line 85
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bitBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bitCanvas:Landroid/graphics/Canvas;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->pntResistor:Landroid/graphics/Paint;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->pntBand:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->pntResistor:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    return-void
.end method

.method private getBandColor(I)I
    .locals 1
    .parameter "bandid"

    .prologue
    .line 214
    packed-switch p1, :pswitch_data_0

    .line 227
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 217
    :pswitch_0
    iget v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandOne:I

    goto :goto_0

    .line 219
    :pswitch_1
    iget v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandTwo:I

    goto :goto_0

    .line 221
    :pswitch_2
    iget v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandThree:I

    goto :goto_0

    .line 223
    :pswitch_3
    iget v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandFour:I

    goto :goto_0

    .line 225
    :pswitch_4
    iget v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandFive:I

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public BandCountFromId(I)I
    .locals 1
    .parameter "mode"

    .prologue
    .line 199
    packed-switch p1, :pswitch_data_0

    .line 208
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 202
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 204
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 206
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method BuildResistor()V
    .locals 15

    .prologue
    .line 269
    iget-object v7, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bitCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->resistorImg:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/RectF;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bufWidth:I

    int-to-float v13, v13

    iget v14, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bufHeight:I

    int-to-float v14, v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v11, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->pntResistor:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 271
    iget v7, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandMode:I

    invoke-virtual {p0, v7}, Lten/thirty/three/resistoridlite/ResistorEngine;->BandCountFromId(I)I

    move-result v0

    .line 272
    .local v0, bands:I
    new-array v4, v0, [Landroid/graphics/RectF;

    .line 273
    .local v4, destRect:[Landroid/graphics/RectF;
    iget-object v7, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandRect:[Landroid/graphics/RectF;

    iget v8, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandMode:I

    aget-object v3, v7, v8

    .line 275
    .local v3, bounds:Landroid/graphics/RectF;
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 278
    .local v6, xptr:F
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-lt v5, v0, :cond_0

    .line 286
    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x2

    if-le v5, v7, :cond_1

    .line 290
    iget v7, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandMode:I

    packed-switch v7, :pswitch_data_0

    .line 308
    :goto_2
    return-void

    .line 280
    :cond_0
    iget-object v7, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandWidth:[F

    iget v8, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandMode:I

    aget v2, v7, v8

    .line 281
    .local v2, bandwidth:F
    iget-object v7, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandSpace:[F

    iget v8, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandMode:I

    aget v1, v7, v8

    .line 282
    .local v1, bandspace:F
    new-instance v7, Landroid/graphics/RectF;

    iget v8, v3, Landroid/graphics/RectF;->top:F

    add-float v9, v6, v2

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v7, v6, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v7, v4, v5

    .line 283
    add-float v7, v1, v2

    add-float/2addr v6, v7

    .line 278
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 288
    .end local v1           #bandspace:F
    .end local v2           #bandwidth:F
    :cond_1
    iget-object v7, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bitCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandBmps:[Landroid/graphics/Bitmap;

    add-int/lit8 v9, v5, 0x1

    invoke-direct {p0, v9}, Lten/thirty/three/resistoridlite/ResistorEngine;->getBandColor(I)I

    move-result v9

    aget-object v8, v8, v9

    iget-object v9, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandSrc:Landroid/graphics/Rect;

    aget-object v10, v4, v5

    iget-object v11, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->pntBand:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 286
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 293
    :pswitch_0
    iget-object v7, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bitCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->tolbandBmps:[Landroid/graphics/Bitmap;

    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lten/thirty/three/resistoridlite/ResistorEngine;->getBandColor(I)I

    move-result v9

    aget-object v8, v8, v9

    iget-object v9, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandSrc:Landroid/graphics/Rect;

    const/4 v10, 0x3

    aget-object v10, v4, v10

    iget-object v11, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->pntBand:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 296
    :pswitch_1
    iget-object v7, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bitCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandBmps:[Landroid/graphics/Bitmap;

    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lten/thirty/three/resistoridlite/ResistorEngine;->getBandColor(I)I

    move-result v9

    aget-object v8, v8, v9

    iget-object v9, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandSrc:Landroid/graphics/Rect;

    const/4 v10, 0x3

    aget-object v10, v4, v10

    iget-object v11, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->pntBand:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 297
    iget-object v7, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bitCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->tolbandBmps:[Landroid/graphics/Bitmap;

    const/4 v9, 0x5

    invoke-direct {p0, v9}, Lten/thirty/three/resistoridlite/ResistorEngine;->getBandColor(I)I

    move-result v9

    aget-object v8, v8, v9

    iget-object v9, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandSrc:Landroid/graphics/Rect;

    const/4 v10, 0x4

    aget-object v10, v4, v10

    iget-object v11, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->pntBand:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 300
    :pswitch_2
    iget-object v7, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bitCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandBmps:[Landroid/graphics/Bitmap;

    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lten/thirty/three/resistoridlite/ResistorEngine;->getBandColor(I)I

    move-result v9

    aget-object v8, v8, v9

    iget-object v9, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandSrc:Landroid/graphics/Rect;

    const/4 v10, 0x3

    aget-object v10, v4, v10

    iget-object v11, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->pntBand:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 301
    iget-object v7, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bitCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->tolbandBmps:[Landroid/graphics/Bitmap;

    const/4 v9, 0x5

    invoke-direct {p0, v9}, Lten/thirty/three/resistoridlite/ResistorEngine;->getBandColor(I)I

    move-result v9

    aget-object v8, v8, v9

    iget-object v9, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandSrc:Landroid/graphics/Rect;

    const/4 v10, 0x4

    aget-object v10, v4, v10

    iget-object v11, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->pntBand:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 302
    iget-object v7, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bitCanvas:Landroid/graphics/Canvas;

    iget-object v8, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->tempbandBmps:[Landroid/graphics/Bitmap;

    const/4 v9, 0x6

    invoke-direct {p0, v9}, Lten/thirty/three/resistoridlite/ResistorEngine;->getBandColor(I)I

    move-result v9

    aget-object v8, v8, v9

    iget-object v9, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandSrc:Landroid/graphics/Rect;

    const/4 v10, 0x5

    aget-object v10, v4, v10

    iget-object v11, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->pntBand:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method FetchImg()V
    .locals 10

    .prologue
    const/4 v3, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 93
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020014

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->resistorImg:Landroid/graphics/Bitmap;

    .line 94
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020004

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->buttonImg:Landroid/graphics/Bitmap;

    .line 95
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->blankImg:Landroid/graphics/Bitmap;

    .line 96
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020005

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->dimImg:Landroid/graphics/Bitmap;

    .line 97
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->blackImg:Landroid/graphics/Bitmap;

    .line 98
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020003

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->brownImg:Landroid/graphics/Bitmap;

    .line 99
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020012

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->redImg:Landroid/graphics/Bitmap;

    .line 100
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->orangeImg:Landroid/graphics/Bitmap;

    .line 101
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020017

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->yellowImg:Landroid/graphics/Bitmap;

    .line 102
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020007

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->greenImg:Landroid/graphics/Bitmap;

    .line 103
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020002

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->blueImg:Landroid/graphics/Bitmap;

    .line 104
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020011

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->violetImg:Landroid/graphics/Bitmap;

    .line 105
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020008

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->greyImg:Landroid/graphics/Bitmap;

    .line 106
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020016

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->whiteImg:Landroid/graphics/Bitmap;

    .line 107
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->goldImg:Landroid/graphics/Bitmap;

    .line 108
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020015

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->silverImg:Landroid/graphics/Bitmap;

    .line 110
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->blackImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v7

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->brownImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v9

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->redImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v8

    .line 111
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->orangeImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v6

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->yellowImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v3

    const/4 v1, 0x5

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->greenImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->blueImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->violetImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->greyImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 112
    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->whiteImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    .line 110
    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandBmps:[Landroid/graphics/Bitmap;

    .line 113
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandColors:[I

    .line 116
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->goldImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v7

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->silverImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v9

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->blankImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v8

    .line 117
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->brownImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v6

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->redImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v3

    const/4 v1, 0x5

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->orangeImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->yellowImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->greenImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->blueImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 118
    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->violetImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->greyImg:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    .line 116
    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->tolbandBmps:[Landroid/graphics/Bitmap;

    .line 119
    new-array v0, v8, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->tolbandColors:[I

    .line 120
    const/16 v0, 0xb

    new-array v0, v0, [D

    fill-array-data v0, :array_2

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->tolbandValues:[D

    .line 122
    new-array v0, v3, [Landroid/graphics/Bitmap;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->brownImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v7

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->redImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v9

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->orangeImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v8

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->yellowImg:Landroid/graphics/Bitmap;

    aput-object v1, v0, v6

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->tempbandBmps:[Landroid/graphics/Bitmap;

    .line 123
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->tempbandValues:[I

    .line 125
    new-array v0, v6, [Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x433f

    const/high16 v3, 0x4160

    const/high16 v4, 0x43bc

    const/high16 v5, 0x42c6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v1, v0, v7

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x4335

    const/high16 v3, 0x4160

    const v4, 0x43c18000

    const/high16 v5, 0x42c6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v1, v0, v9

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x4335

    const/high16 v3, 0x4160

    const v4, 0x43c18000

    const/high16 v5, 0x42c6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v1, v0, v8

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandRect:[Landroid/graphics/RectF;

    .line 126
    new-array v0, v6, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandSpace:[F

    .line 127
    new-array v0, v6, [F

    fill-array-data v0, :array_5

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandWidth:[F

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->blackImg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/16 v2, 0xa

    sub-int/2addr v1, v2

    iget-object v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->blackImg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x6

    sub-int/2addr v2, v3

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandSrc:Landroid/graphics/Rect;

    .line 129
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bandSrc:Landroid/graphics/Rect;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 130
    return-void

    .line 113
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0x0t 0x33t 0x66t 0xfft
        0x0t 0x0t 0xfft 0xfft
        0x0t 0x66t 0xfft 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0x0t 0xfft 0xfft
        0x66t 0x66t 0x66t 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 119
    :array_1
    .array-data 0x4
        0x0t 0x99t 0xcct 0xfft
        0xcct 0x99t 0x99t 0xfft
    .end array-data

    .line 120
    :array_2
    .array-data 0x8
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xa9t 0x3ft
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xb9t 0x3ft
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xc9t 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0x84t 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0x94t 0x3ft
        0xb8t 0x1et 0x85t 0xebt 0x51t 0xb8t 0x9et 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0xa4t 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0x74t 0x3ft
        0x7bt 0x14t 0xaet 0x47t 0xe1t 0x7at 0x64t 0x3ft
        0xfct 0xa9t 0xf1t 0xd2t 0x4dt 0x62t 0x50t 0x3ft
        0xfct 0xa9t 0xf1t 0xd2t 0x4dt 0x62t 0x40t 0x3ft
    .end array-data

    .line 123
    :array_3
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    .line 126
    :array_4
    .array-data 0x4
        0x0t 0x0t 0xd8t 0x41t
        0x0t 0x0t 0x98t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data

    .line 127
    :array_5
    .array-data 0x4
        0x0t 0x0t 0xd0t 0x41t
        0x0t 0x0t 0xd0t 0x41t
        0x0t 0x0t 0xd0t 0x41t
    .end array-data
.end method

.method public SetBand(II)V
    .locals 0
    .parameter "band"
    .parameter "value"

    .prologue
    .line 174
    packed-switch p1, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iput p2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandOne:I

    goto :goto_0

    .line 180
    :pswitch_1
    iput p2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandTwo:I

    goto :goto_0

    .line 183
    :pswitch_2
    iput p2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandThree:I

    goto :goto_0

    .line 186
    :pswitch_3
    iput p2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandFour:I

    goto :goto_0

    .line 189
    :pswitch_4
    iput p2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandFive:I

    goto :goto_0

    .line 192
    :pswitch_5
    iput p2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandSix:I

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public SetBandMode(I)V
    .locals 1
    .parameter "bMode"

    .prologue
    .line 134
    packed-switch p1, :pswitch_data_0

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandMode:I

    .line 144
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iput p1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandMode:I

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public SetBands([I)V
    .locals 6
    .parameter "bands"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    array-length v0, p1

    .line 149
    .local v0, bLength:I
    if-lt v0, v5, :cond_0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 151
    invoke-virtual {p0, v2}, Lten/thirty/three/resistoridlite/ResistorEngine;->SetBandMode(I)V

    .line 152
    const/4 v1, 0x3

    aget v1, p1, v1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandFour:I

    .line 153
    aget v1, p1, v4

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandThree:I

    .line 154
    aget v1, p1, v3

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandTwo:I

    .line 155
    aget v1, p1, v2

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandOne:I

    .line 157
    packed-switch v0, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 160
    :pswitch_0
    aget v1, p1, v5

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandFive:I

    .line 161
    invoke-virtual {p0, v3}, Lten/thirty/three/resistoridlite/ResistorEngine;->SetBandMode(I)V

    goto :goto_0

    .line 164
    :pswitch_1
    const/4 v1, 0x5

    aget v1, p1, v1

    iput v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->reBandSix:I

    .line 165
    invoke-virtual {p0, v4}, Lten/thirty/three/resistoridlite/ResistorEngine;->SetBandMode(I)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public drawBitmap(II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 259
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorEngine;->BuildResistor()V

    .line 261
    iget-object v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bitBuffer:Landroid/graphics/Bitmap;

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bufWidth:I

    iget v3, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bufHeight:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    .local v0, b:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public drawOnCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 2
    .parameter "canvas"
    .parameter "dest"

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/ResistorEngine;->BuildResistor()V

    .line 234
    iget-object v0, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bitBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 235
    return-void
.end method

.method public drawOnCanvasScaled(Landroid/graphics/Canvas;FFF)V
    .locals 3
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"

    .prologue
    .line 239
    new-instance v0, Landroid/graphics/RectF;

    .line 243
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bufHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bufWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {v0, p2, p3, p4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 239
    invoke-virtual {p0, p1, v0}, Lten/thirty/three/resistoridlite/ResistorEngine;->drawOnCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 245
    return-void
.end method

.method public drawOnCanvasScaled(Landroid/graphics/Canvas;FFFF)V
    .locals 3
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "scale"

    .prologue
    .line 249
    new-instance v0, Landroid/graphics/RectF;

    .line 253
    iget v1, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bufHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    iget v2, p0, Lten/thirty/three/resistoridlite/ResistorEngine;->bufWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, p5

    invoke-direct {v0, p2, p3, p4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 249
    invoke-virtual {p0, p1, v0}, Lten/thirty/three/resistoridlite/ResistorEngine;->drawOnCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 255
    return-void
.end method
