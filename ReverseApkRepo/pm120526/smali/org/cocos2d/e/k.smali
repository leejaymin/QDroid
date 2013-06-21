.class public final Lorg/cocos2d/e/k;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Lorg/cocos2d/l/g;

.field d:I

.field e:I

.field f:Ljava/lang/String;

.field g:Lorg/cocos2d/l/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lorg/cocos2d/l/f;
    .locals 7

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/e/k;->c:Lorg/cocos2d/l/g;

    invoke-static {v0, v1}, Lorg/cocos2d/l/f;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/g;)Lorg/cocos2d/l/f;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/e/k;->b:I

    sub-int v1, p1, v1

    iget-object v2, p0, Lorg/cocos2d/e/k;->g:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->a:F

    iget v3, p0, Lorg/cocos2d/e/k;->e:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/cocos2d/e/k;->d:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/cocos2d/e/k;->c:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->a:F

    iget v4, p0, Lorg/cocos2d/e/k;->d:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v3, v0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    rem-int v4, v1, v2

    int-to-float v4, v4

    iget-object v5, p0, Lorg/cocos2d/e/k;->c:Lorg/cocos2d/l/g;

    iget v5, v5, Lorg/cocos2d/l/g;->a:F

    iget v6, p0, Lorg/cocos2d/e/k;->d:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    iget v5, p0, Lorg/cocos2d/e/k;->e:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v3, Lorg/cocos2d/l/e;->a:F

    iget-object v3, v0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    div-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/cocos2d/e/k;->c:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    iget v4, p0, Lorg/cocos2d/e/k;->d:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    mul-float/2addr v1, v2

    iget v2, p0, Lorg/cocos2d/e/k;->e:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v3, Lorg/cocos2d/l/e;->b:F

    return-object v0
.end method
