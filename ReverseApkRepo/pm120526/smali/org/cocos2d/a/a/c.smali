.class public final Lorg/cocos2d/a/a/c;
.super Lorg/cocos2d/a/a/a;


# instance fields
.field b:Lorg/cocos2d/g/i;

.field c:Z

.field d:Z

.field e:Lorg/cocos2d/l/e;

.field f:Lorg/cocos2d/l/e;

.field g:F

.field h:F

.field i:F

.field j:F


# direct methods
.method private constructor <init>(Lorg/cocos2d/g/i;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/cocos2d/a/a/a;-><init>()V

    iput-object p1, p0, Lorg/cocos2d/a/a/c;->b:Lorg/cocos2d/g/i;

    iput-boolean v0, p0, Lorg/cocos2d/a/a/c;->c:Z

    iput-boolean v0, p0, Lorg/cocos2d/a/a/c;->d:Z

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/a/c;->f:Lorg/cocos2d/l/e;

    iget-object v0, p0, Lorg/cocos2d/a/a/c;->f:Lorg/cocos2d/l/e;

    const/high16 v1, 0x3f00

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/a/c;->e:Lorg/cocos2d/l/e;

    return-void
.end method

.method private constructor <init>(Lorg/cocos2d/g/i;Lorg/cocos2d/l/f;)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x4000

    invoke-direct {p0}, Lorg/cocos2d/a/a/a;-><init>()V

    iput-object p1, p0, Lorg/cocos2d/a/a/c;->b:Lorg/cocos2d/g/i;

    iput-boolean v3, p0, Lorg/cocos2d/a/a/c;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/a/a/c;->d:Z

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    invoke-static {v1, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/a/c;->f:Lorg/cocos2d/l/e;

    iget-object v0, p0, Lorg/cocos2d/a/a/c;->f:Lorg/cocos2d/l/e;

    const/high16 v1, 0x3f00

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/a/c;->e:Lorg/cocos2d/l/e;

    iget-object v0, p2, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p2, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/cocos2d/a/a/c;->f:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    iput v0, p0, Lorg/cocos2d/a/a/c;->g:F

    iget-object v0, p2, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    neg-float v0, v0

    iput v0, p0, Lorg/cocos2d/a/a/c;->h:F

    iget-object v0, p2, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    neg-float v0, v0

    iput v0, p0, Lorg/cocos2d/a/a/c;->i:F

    iget-object v0, p2, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    iget-object v1, p2, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/cocos2d/a/a/c;->f:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v0, v1

    neg-float v0, v0

    iput v0, p0, Lorg/cocos2d/a/a/c;->j:F

    iget v0, p0, Lorg/cocos2d/a/a/c;->h:F

    iget v1, p0, Lorg/cocos2d/a/a/c;->g:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/a/a/c;->g:F

    iget v1, p0, Lorg/cocos2d/a/a/c;->h:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lorg/cocos2d/a/a/c;->g:F

    iput v0, p0, Lorg/cocos2d/a/a/c;->h:F

    :cond_0
    iget v0, p0, Lorg/cocos2d/a/a/c;->i:F

    iget v1, p0, Lorg/cocos2d/a/a/c;->j:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lorg/cocos2d/a/a/c;->i:F

    iget v1, p0, Lorg/cocos2d/a/a/c;->j:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lorg/cocos2d/a/a/c;->j:F

    iput v0, p0, Lorg/cocos2d/a/a/c;->i:F

    :cond_1
    iget v0, p0, Lorg/cocos2d/a/a/c;->i:F

    iget v1, p0, Lorg/cocos2d/a/a/c;->j:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/cocos2d/a/a/c;->g:F

    iget v1, p0, Lorg/cocos2d/a/a/c;->h:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lorg/cocos2d/a/a/c;->d:Z

    :cond_2
    return-void
.end method

.method private static a(FFF)F
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static a(Lorg/cocos2d/g/i;Lorg/cocos2d/l/f;)Lorg/cocos2d/a/a/c;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/a/c;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/a/a/c;-><init>(Lorg/cocos2d/g/i;Lorg/cocos2d/l/f;)V

    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 5

    iget-boolean v0, p0, Lorg/cocos2d/a/a/c;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/cocos2d/a/a/c;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/a/a/c;->e:Lorg/cocos2d/l/e;

    iget-object v1, p0, Lorg/cocos2d/a/a/c;->b:Lorg/cocos2d/g/i;

    invoke-virtual {v1}, Lorg/cocos2d/g/i;->r()Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/a/a/c;->a:Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/e;->a:F

    iget v3, p0, Lorg/cocos2d/a/a/c;->g:F

    iget v4, p0, Lorg/cocos2d/a/a/c;->h:F

    invoke-static {v2, v3, v4}, Lorg/cocos2d/a/a/c;->a(FFF)F

    move-result v2

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    iget v3, p0, Lorg/cocos2d/a/a/c;->j:F

    iget v4, p0, Lorg/cocos2d/a/a/c;->i:F

    invoke-static {v0, v3, v4}, Lorg/cocos2d/a/a/c;->a(FFF)F

    move-result v0

    invoke-static {v2, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cocos2d/g/i;->e(Lorg/cocos2d/l/e;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/a/a/c;->a:Lorg/cocos2d/g/i;

    iget-object v1, p0, Lorg/cocos2d/a/a/c;->e:Lorg/cocos2d/l/e;

    iget-object v2, p0, Lorg/cocos2d/a/a/c;->b:Lorg/cocos2d/g/i;

    invoke-virtual {v2}, Lorg/cocos2d/g/i;->r()Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->e(Lorg/cocos2d/l/e;)V

    goto :goto_0
.end method

.method public final synthetic c()Lorg/cocos2d/a/a/a;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/a/c;

    iget-object v1, p0, Lorg/cocos2d/a/a/c;->b:Lorg/cocos2d/g/i;

    invoke-direct {v0, v1}, Lorg/cocos2d/a/a/c;-><init>(Lorg/cocos2d/g/i;)V

    invoke-virtual {p0}, Lorg/cocos2d/a/a/c;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/a/c;->a(I)V

    return-object v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/a/a/c;->a:Lorg/cocos2d/g/i;

    invoke-super {p0}, Lorg/cocos2d/a/a/a;->d()V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/a/c;->b:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
