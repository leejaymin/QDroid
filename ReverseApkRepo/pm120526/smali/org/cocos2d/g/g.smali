.class public final Lorg/cocos2d/g/g;
.super Lorg/cocos2d/g/b;

# interfaces
.implements Lorg/cocos2d/i/b;


# instance fields
.field m:Lorg/cocos2d/m/b/b;

.field n:C


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;IIC)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {p0, p2, p3, p4, v0}, Lorg/cocos2d/g/b;-><init>(Ljava/lang/String;III)V

    new-instance v0, Lorg/cocos2d/m/b/b;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/cocos2d/m/b/b;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2d/g/g;->m:Lorg/cocos2d/m/b/b;

    iget-object v0, p0, Lorg/cocos2d/g/g;->m:Lorg/cocos2d/m/b/b;

    invoke-virtual {v0, p1}, Lorg/cocos2d/m/b/b;->a(Ljava/lang/CharSequence;)Lorg/cocos2d/m/b/b;

    iput-char p5, p0, Lorg/cocos2d/g/g;->n:C

    invoke-direct {p0}, Lorg/cocos2d/g/g;->d()V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/g/g;
    .locals 6

    new-instance v0, Lorg/cocos2d/g/g;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/g/g;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;IIC)V

    return-object v0
.end method

.method private d()V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/cocos2d/g/g;->m:Lorg/cocos2d/m/b/b;

    invoke-virtual {v0}, Lorg/cocos2d/m/b/b;->length()I

    move-result v2

    invoke-static {}, Lorg/cocos2d/l/a/b;->a()Lorg/cocos2d/l/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cocos2d/l/a/b;->c()Lorg/cocos2d/m/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/m/c/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/l/n;

    invoke-virtual {v3}, Lorg/cocos2d/l/a/b;->d()Lorg/cocos2d/m/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/m/c/c;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/l/o;

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v2, :cond_0

    invoke-virtual {v3}, Lorg/cocos2d/l/a/b;->c()Lorg/cocos2d/m/c/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/cocos2d/m/c/c;->a(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/cocos2d/l/a/b;->d()Lorg/cocos2d/m/c/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/cocos2d/m/c/c;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v5, p0, Lorg/cocos2d/g/g;->m:Lorg/cocos2d/m/b/b;

    invoke-virtual {v5, v4}, Lorg/cocos2d/m/b/b;->charAt(I)C

    move-result v5

    iget-char v6, p0, Lorg/cocos2d/g/g;->n:C

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/cocos2d/g/g;->b:I

    rem-int v6, v5, v6

    int-to-float v6, v6

    iget v7, p0, Lorg/cocos2d/g/g;->d:F

    mul-float/2addr v6, v7

    iget v7, p0, Lorg/cocos2d/g/g;->b:I

    div-int/2addr v5, v7

    int-to-float v5, v5

    iget v7, p0, Lorg/cocos2d/g/g;->e:F

    mul-float/2addr v5, v7

    iput v6, v0, Lorg/cocos2d/l/n;->e:F

    iput v5, v0, Lorg/cocos2d/l/n;->f:F

    iget v7, p0, Lorg/cocos2d/g/g;->d:F

    add-float/2addr v7, v6

    iput v7, v0, Lorg/cocos2d/l/n;->g:F

    iput v5, v0, Lorg/cocos2d/l/n;->h:F

    iput v6, v0, Lorg/cocos2d/l/n;->a:F

    iget v7, p0, Lorg/cocos2d/g/g;->e:F

    add-float/2addr v7, v5

    iput v7, v0, Lorg/cocos2d/l/n;->b:F

    iget v7, p0, Lorg/cocos2d/g/g;->d:F

    add-float/2addr v6, v7

    iput v6, v0, Lorg/cocos2d/l/n;->c:F

    iget v6, p0, Lorg/cocos2d/g/g;->e:F

    add-float/2addr v5, v6

    iput v5, v0, Lorg/cocos2d/l/n;->d:F

    iget v5, p0, Lorg/cocos2d/g/g;->f:I

    mul-int/2addr v5, v4

    int-to-float v5, v5

    iput v5, v1, Lorg/cocos2d/l/o;->a:F

    iput v8, v1, Lorg/cocos2d/l/o;->b:F

    iput v8, v1, Lorg/cocos2d/l/o;->c:F

    iget v5, p0, Lorg/cocos2d/g/g;->f:I

    mul-int/2addr v5, v4

    iget v6, p0, Lorg/cocos2d/g/g;->f:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, v1, Lorg/cocos2d/l/o;->d:F

    iput v8, v1, Lorg/cocos2d/l/o;->e:F

    iput v8, v1, Lorg/cocos2d/l/o;->f:F

    iget v5, p0, Lorg/cocos2d/g/g;->f:I

    mul-int/2addr v5, v4

    int-to-float v5, v5

    iput v5, v1, Lorg/cocos2d/l/o;->g:F

    iget v5, p0, Lorg/cocos2d/g/g;->g:I

    int-to-float v5, v5

    iput v5, v1, Lorg/cocos2d/l/o;->h:F

    iput v8, v1, Lorg/cocos2d/l/o;->i:F

    iget v5, p0, Lorg/cocos2d/g/g;->f:I

    mul-int/2addr v5, v4

    iget v6, p0, Lorg/cocos2d/g/g;->f:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, v1, Lorg/cocos2d/l/o;->j:F

    iget v5, p0, Lorg/cocos2d/g/g;->g:I

    int-to-float v5, v5

    iput v5, v1, Lorg/cocos2d/l/o;->k:F

    iput v8, v1, Lorg/cocos2d/l/o;->l:F

    iget-object v5, p0, Lorg/cocos2d/g/g;->a:Lorg/cocos2d/opengl/m;

    invoke-virtual {v5, v0, v1, v4}, Lorg/cocos2d/opengl/m;->a(Lorg/cocos2d/l/n;Lorg/cocos2d/l/o;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lorg/cocos2d/g/g;->a:Lorg/cocos2d/opengl/m;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/m;->b()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/g;->a:Lorg/cocos2d/opengl/m;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/m;->b(I)V

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/g;->m:Lorg/cocos2d/m/b/b;

    invoke-virtual {v0}, Lorg/cocos2d/m/b/b;->a()V

    iget-object v0, p0, Lorg/cocos2d/g/g;->m:Lorg/cocos2d/m/b/b;

    invoke-virtual {v0, p1}, Lorg/cocos2d/m/b/b;->a(Ljava/lang/CharSequence;)Lorg/cocos2d/m/b/b;

    invoke-direct {p0}, Lorg/cocos2d/g/g;->d()V

    iget-object v0, p0, Lorg/cocos2d/g/g;->m:Lorg/cocos2d/m/b/b;

    invoke-virtual {v0}, Lorg/cocos2d/m/b/b;->length()I

    move-result v0

    iget v1, p0, Lorg/cocos2d/g/g;->f:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/cocos2d/g/g;->g:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/g/g;->b(FF)V

    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    const v7, 0x8076

    const/16 v6, 0x303

    const/4 v5, 0x1

    const/high16 v4, 0x437f

    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    iget-object v0, p0, Lorg/cocos2d/g/g;->j:Lorg/cocos2d/l/j;

    iget v0, v0, Lorg/cocos2d/l/j;->j:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget-object v1, p0, Lorg/cocos2d/g/g;->j:Lorg/cocos2d/l/j;

    iget v1, v1, Lorg/cocos2d/l/j;->k:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lorg/cocos2d/g/g;->j:Lorg/cocos2d/l/j;

    iget v2, v2, Lorg/cocos2d/l/j;->l:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v3, p0, Lorg/cocos2d/g/g;->i:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/cocos2d/g/g;->h:Lorg/cocos2d/l/i;

    iget v1, v1, Lorg/cocos2d/l/i;->a:I

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lorg/cocos2d/g/g;->h:Lorg/cocos2d/l/i;

    iget v1, v1, Lorg/cocos2d/l/i;->b:I

    if-eq v1, v6, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/g/g;->h:Lorg/cocos2d/l/i;

    iget v0, v0, Lorg/cocos2d/l/i;->a:I

    iget-object v1, p0, Lorg/cocos2d/g/g;->h:Lorg/cocos2d/l/i;

    iget v1, v1, Lorg/cocos2d/l/i;->b:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    move v0, v5

    :cond_1
    iget-object v1, p0, Lorg/cocos2d/g/g;->a:Lorg/cocos2d/opengl/m;

    iget-object v2, p0, Lorg/cocos2d/g/g;->m:Lorg/cocos2d/m/b/b;

    invoke-virtual {v2}, Lorg/cocos2d/m/b/b;->length()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lorg/cocos2d/opengl/m;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    if-eqz v0, :cond_2

    invoke-interface {p1, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    :cond_2
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    return-void
.end method
