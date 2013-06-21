.class public Lorg/cocos2d/a/d/j;
.super Lorg/cocos2d/a/d/c;


# instance fields
.field c:I

.field e:Z


# direct methods
.method private constructor <init>(IZLorg/cocos2d/l/m;F)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lorg/cocos2d/a/d/c;-><init>(Lorg/cocos2d/l/m;F)V

    iput p1, p0, Lorg/cocos2d/a/d/j;->c:I

    iput-boolean p2, p0, Lorg/cocos2d/a/d/j;->e:Z

    return-void
.end method

.method public static a(ILorg/cocos2d/l/m;)Lorg/cocos2d/a/d/j;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/d/j;

    const/4 v1, 0x0

    const/high16 v2, 0x40a0

    invoke-direct {v0, p0, v1, p1, v2}, Lorg/cocos2d/a/d/j;-><init>(IZLorg/cocos2d/l/m;F)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 7

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/a/d/j;->d:Lorg/cocos2d/l/m;

    iget v1, v1, Lorg/cocos2d/l/m;->a:I

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    move v1, v6

    :goto_1
    iget-object v2, p0, Lorg/cocos2d/a/d/j;->d:Lorg/cocos2d/l/m;

    iget v2, v2, Lorg/cocos2d/l/m;->b:I

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2d/a/d/j;->a(Lorg/cocos2d/l/m;)Lorg/cocos2d/l/c;

    move-result-object v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, p0, Lorg/cocos2d/a/d/j;->c:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, v2, Lorg/cocos2d/l/c;->a:F

    iget v5, p0, Lorg/cocos2d/a/d/j;->c:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    add-float/2addr v4, v5

    iput v4, v2, Lorg/cocos2d/l/c;->a:F

    iget v4, v2, Lorg/cocos2d/l/c;->b:F

    iget v5, p0, Lorg/cocos2d/a/d/j;->c:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    add-float/2addr v4, v5

    iput v4, v2, Lorg/cocos2d/l/c;->b:F

    iget-boolean v4, p0, Lorg/cocos2d/a/d/j;->e:Z

    if-eqz v4, :cond_2

    iget v4, v2, Lorg/cocos2d/l/c;->c:F

    iget v5, p0, Lorg/cocos2d/a/d/j;->c:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    add-float/2addr v3, v4

    iput v3, v2, Lorg/cocos2d/l/c;->c:F

    :cond_2
    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lorg/cocos2d/a/d/j;->a(Lorg/cocos2d/l/m;Lorg/cocos2d/l/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final synthetic j()Lorg/cocos2d/a/d/c;
    .locals 5

    new-instance v0, Lorg/cocos2d/a/d/j;

    iget v1, p0, Lorg/cocos2d/a/d/j;->c:I

    iget-boolean v2, p0, Lorg/cocos2d/a/d/j;->e:Z

    iget-object v3, p0, Lorg/cocos2d/a/d/j;->d:Lorg/cocos2d/l/m;

    iget v4, p0, Lorg/cocos2d/a/d/j;->b:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/a/d/j;-><init>(IZLorg/cocos2d/l/m;F)V

    return-object v0
.end method
