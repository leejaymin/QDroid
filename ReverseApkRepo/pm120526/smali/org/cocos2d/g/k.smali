.class public Lorg/cocos2d/g/k;
.super Lorg/cocos2d/g/i;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Ljava/util/ArrayList;

.field private c:Lorg/cocos2d/l/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/g/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/g/k;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 3

    const/high16 v2, -0x3d38

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2d/g/k;->b:Ljava/util/ArrayList;

    invoke-static {v2, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/k;->c:Lorg/cocos2d/l/e;

    return-void
.end method

.method public static a()Lorg/cocos2d/g/k;
    .locals 1

    new-instance v0, Lorg/cocos2d/g/k;

    invoke-direct {v0}, Lorg/cocos2d/g/k;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;IFFFF)Lorg/cocos2d/g/i;
    .locals 2

    sget-boolean v0, Lorg/cocos2d/g/k;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/cocos2d/g/l;

    invoke-direct {v0, p3, p4, p5, p6}, Lorg/cocos2d/g/l;-><init>(FFFF)V

    invoke-virtual {v0, p1}, Lorg/cocos2d/g/l;->a(Lorg/cocos2d/g/i;)V

    iget-object v1, p0, Lorg/cocos2d/g/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/cocos2d/g/k;->r()Lorg/cocos2d/l/e;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v1, p3

    add-float/2addr v1, p5

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v0, p4

    add-float/2addr v0, p6

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cocos2d/g/i;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {p1}, Lorg/cocos2d/g/i;->x()I

    move-result v0

    invoke-super {p0, p1, p2, v0}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;
    .locals 2

    sget-boolean v0, Lorg/cocos2d/g/k;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "ParallaxNode: use addChild:z:parallaxRatio:positionOffset instead"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lorg/cocos2d/g/i;Z)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/cocos2d/g/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_1
    invoke-super {p0, p1, p2}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/g/i;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/l;

    invoke-virtual {v0}, Lorg/cocos2d/g/l;->a()Lorg/cocos2d/g/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/g/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    invoke-virtual {p0}, Lorg/cocos2d/g/k;->r()Lorg/cocos2d/l/e;

    move-result-object v1

    move-object v0, p0

    :goto_0
    iget-object v2, v0, Lorg/cocos2d/g/i;->A:Lorg/cocos2d/g/i;

    if-nez v2, :cond_1

    iget-object v0, p0, Lorg/cocos2d/g/k;->c:Lorg/cocos2d/l/e;

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lorg/cocos2d/g/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    iput-object v1, p0, Lorg/cocos2d/g/k;->c:Lorg/cocos2d/l/e;

    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2d/g/i;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void

    :cond_1
    iget-object v0, v0, Lorg/cocos2d/g/i;->A:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->r()Lorg/cocos2d/l/e;

    move-result-object v2

    iget v3, v1, Lorg/cocos2d/l/e;->a:F

    iget v4, v2, Lorg/cocos2d/l/e;->a:F

    add-float/2addr v3, v4

    iput v3, v1, Lorg/cocos2d/l/e;->a:F

    iget v3, v1, Lorg/cocos2d/l/e;->b:F

    iget v2, v2, Lorg/cocos2d/l/e;->b:F

    add-float/2addr v2, v3

    iput v2, v1, Lorg/cocos2d/l/e;->b:F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/g/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/l;

    iget v3, v1, Lorg/cocos2d/l/e;->a:F

    neg-float v3, v3

    iget v4, v1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v0}, Lorg/cocos2d/g/l;->b()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lorg/cocos2d/g/l;->d()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, v1, Lorg/cocos2d/l/e;->b:F

    neg-float v4, v4

    iget v5, v1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0}, Lorg/cocos2d/g/l;->c()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0}, Lorg/cocos2d/g/l;->e()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v0}, Lorg/cocos2d/g/l;->a()Lorg/cocos2d/g/i;

    move-result-object v0

    invoke-static {v3, v4}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/cocos2d/g/i;->e(Lorg/cocos2d/l/e;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0, p1}, Lorg/cocos2d/g/i;->d(Z)V

    return-void
.end method
