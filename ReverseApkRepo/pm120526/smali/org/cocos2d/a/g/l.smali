.class public Lorg/cocos2d/a/g/l;
.super Lorg/cocos2d/a/g/k;


# instance fields
.field c:Ljava/util/Random;

.field e:I

.field f:I

.field g:[I


# direct methods
.method private constructor <init>(ILorg/cocos2d/l/m;F)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lorg/cocos2d/a/g/k;-><init>(Lorg/cocos2d/l/m;F)V

    iput p1, p0, Lorg/cocos2d/a/g/l;->e:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/a/g/l;->c:Ljava/util/Random;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/a/g/l;->g:[I

    return-void
.end method

.method public static a(ILorg/cocos2d/l/m;F)Lorg/cocos2d/a/g/l;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/g/l;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/a/g/l;-><init>(ILorg/cocos2d/l/m;F)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 5

    invoke-super {p0, p1}, Lorg/cocos2d/a/g/k;->a(Lorg/cocos2d/g/i;)V

    iget v0, p0, Lorg/cocos2d/a/g/l;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2d/a/g/l;->c:Ljava/util/Random;

    iget v1, p0, Lorg/cocos2d/a/g/l;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/a/g/l;->d:Lorg/cocos2d/l/m;

    iget v0, v0, Lorg/cocos2d/l/m;->a:I

    iget-object v1, p0, Lorg/cocos2d/a/g/l;->d:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/a/g/l;->f:I

    iget v0, p0, Lorg/cocos2d/a/g/l;->f:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/cocos2d/a/g/l;->g:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/cocos2d/a/g/l;->f:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/cocos2d/a/g/l;->g:[I

    iget v1, p0, Lorg/cocos2d/a/g/l;->f:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1
    if-gez v1, :cond_2

    return-void

    :cond_1
    iget-object v1, p0, Lorg/cocos2d/a/g/l;->g:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/cocos2d/a/g/l;->c:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    add-int/lit8 v3, v1, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aget v3, v0, v1

    aget v4, v0, v2

    aput v4, v0, v1

    aput v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public final b(F)V
    .locals 5

    iget v0, p0, Lorg/cocos2d/a/g/l;->f:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/cocos2d/a/g/l;->f:I

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/cocos2d/a/g/l;->g:[I

    aget v2, v2, v1

    iget-object v3, p0, Lorg/cocos2d/a/g/l;->d:Lorg/cocos2d/l/m;

    iget v3, v3, Lorg/cocos2d/l/m;->b:I

    div-int v3, v2, v3

    iget-object v4, p0, Lorg/cocos2d/a/g/l;->d:Lorg/cocos2d/l/m;

    iget v4, v4, Lorg/cocos2d/l/m;->b:I

    rem-int/2addr v2, v4

    invoke-static {v3, v2}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    if-ge v1, v0, :cond_1

    new-instance v3, Lorg/cocos2d/l/o;

    invoke-direct {v3}, Lorg/cocos2d/l/o;-><init>()V

    invoke-virtual {p0, v2, v3}, Lorg/cocos2d/a/g/l;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/o;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lorg/cocos2d/a/g/l;->b(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/o;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/cocos2d/a/g/l;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/o;)V

    goto :goto_1
.end method

.method public final synthetic j()Lorg/cocos2d/a/g/k;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/g/l;

    iget v1, p0, Lorg/cocos2d/a/g/l;->e:I

    iget-object v2, p0, Lorg/cocos2d/a/g/l;->d:Lorg/cocos2d/l/m;

    iget v3, p0, Lorg/cocos2d/a/g/l;->b:F

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/a/g/l;-><init>(ILorg/cocos2d/l/m;F)V

    return-object v0
.end method
