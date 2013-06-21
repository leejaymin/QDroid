.class Lexam/Draw/Ball;
.super Ljava/lang/Object;
.source "Reflection.java"


# instance fields
.field color:I

.field count:I

.field dx:I

.field dy:I

.field rad:I

.field x:I

.field y:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Create(III)Lexam/Draw/Ball;
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "Rad"

    .prologue
    const/16 v3, 0xb

    const/16 v4, 0x100

    .line 22
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 23
    .local v1, Rnd:Ljava/util/Random;
    new-instance v0, Lexam/Draw/Ball;

    invoke-direct {v0}, Lexam/Draw/Ball;-><init>()V

    .line 25
    .local v0, NewBall:Lexam/Draw/Ball;
    iput p0, v0, Lexam/Draw/Ball;->x:I

    .line 26
    iput p1, v0, Lexam/Draw/Ball;->y:I

    .line 27
    iput p2, v0, Lexam/Draw/Ball;->rad:I

    .line 29
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    iput v2, v0, Lexam/Draw/Ball;->dx:I

    .line 30
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    iput v2, v0, Lexam/Draw/Ball;->dy:I

    .line 31
    iget v2, v0, Lexam/Draw/Ball;->dx:I

    if-eqz v2, :cond_0

    iget v2, v0, Lexam/Draw/Ball;->dy:I

    if-eqz v2, :cond_0

    .line 33
    const/4 v2, 0x0

    iput v2, v0, Lexam/Draw/Ball;->count:I

    .line 34
    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, v0, Lexam/Draw/Ball;->color:I

    .line 36
    return-object v0
.end method


# virtual methods
.method Draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 56
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 57
    .local v1, pnt:Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget v2, p0, Lexam/Draw/Ball;->rad:I

    .local v2, r:I
    const/4 v0, 0x1

    .local v0, alpha:I
    :goto_0
    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 67
    return-void

    .line 63
    :cond_0
    iget v3, p0, Lexam/Draw/Ball;->color:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 64
    iget v4, p0, Lexam/Draw/Ball;->color:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget v5, p0, Lexam/Draw/Ball;->color:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 63
    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget v3, p0, Lexam/Draw/Ball;->x:I

    int-to-float v3, v3

    iget v4, p0, Lexam/Draw/Ball;->y:I

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 62
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method Move(II)V
    .locals 2
    .parameter "Width"
    .parameter "Height"

    .prologue
    .line 41
    iget v0, p0, Lexam/Draw/Ball;->x:I

    iget v1, p0, Lexam/Draw/Ball;->dx:I

    add-int/2addr v0, v1

    iput v0, p0, Lexam/Draw/Ball;->x:I

    .line 42
    iget v0, p0, Lexam/Draw/Ball;->y:I

    iget v1, p0, Lexam/Draw/Ball;->dy:I

    add-int/2addr v0, v1

    iput v0, p0, Lexam/Draw/Ball;->y:I

    .line 44
    iget v0, p0, Lexam/Draw/Ball;->x:I

    iget v1, p0, Lexam/Draw/Ball;->rad:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lexam/Draw/Ball;->x:I

    iget v1, p0, Lexam/Draw/Ball;->rad:I

    sub-int v1, p1, v1

    if-le v0, v1, :cond_1

    .line 45
    :cond_0
    iget v0, p0, Lexam/Draw/Ball;->dx:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lexam/Draw/Ball;->dx:I

    .line 46
    iget v0, p0, Lexam/Draw/Ball;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lexam/Draw/Ball;->count:I

    .line 48
    :cond_1
    iget v0, p0, Lexam/Draw/Ball;->y:I

    iget v1, p0, Lexam/Draw/Ball;->rad:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lexam/Draw/Ball;->y:I

    iget v1, p0, Lexam/Draw/Ball;->rad:I

    sub-int v1, p2, v1

    if-le v0, v1, :cond_3

    .line 49
    :cond_2
    iget v0, p0, Lexam/Draw/Ball;->dy:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lexam/Draw/Ball;->dy:I

    .line 50
    iget v0, p0, Lexam/Draw/Ball;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lexam/Draw/Ball;->count:I

    .line 52
    :cond_3
    return-void
.end method
