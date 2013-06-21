.class public Lorg/cocos2d/f/f;
.super Lorg/cocos2d/f/c;

# interfaces
.implements Lorg/cocos2d/i/c;


# instance fields
.field private g:Lorg/cocos2d/i/b;

.field private h:Lorg/cocos2d/l/j;

.field private i:Lorg/cocos2d/l/j;

.field private j:F


# direct methods
.method protected constructor <init>(Lorg/cocos2d/i/b;Lorg/cocos2d/g/i;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0xff

    const/16 v1, 0x7e

    invoke-direct {p0, p2, p3}, Lorg/cocos2d/f/c;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/cocos2d/f/f;->j:F

    iput-object p1, p0, Lorg/cocos2d/f/f;->g:Lorg/cocos2d/i/b;

    iget-object v0, p0, Lorg/cocos2d/f/f;->g:Lorg/cocos2d/i/b;

    check-cast v0, Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->n()Lorg/cocos2d/l/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/f/f;->a(Lorg/cocos2d/l/g;)V

    new-instance v0, Lorg/cocos2d/l/j;

    invoke-direct {v0, v2, v2, v2}, Lorg/cocos2d/l/j;-><init>(III)V

    iput-object v0, p0, Lorg/cocos2d/f/f;->h:Lorg/cocos2d/l/j;

    new-instance v0, Lorg/cocos2d/l/j;

    invoke-direct {v0, v1, v1, v1}, Lorg/cocos2d/l/j;-><init>(III)V

    iput-object v0, p0, Lorg/cocos2d/f/f;->i:Lorg/cocos2d/l/j;

    return-void
.end method

.method public static a(Lorg/cocos2d/i/b;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/f;
    .locals 1

    new-instance v0, Lorg/cocos2d/f/f;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/f/f;-><init>(Lorg/cocos2d/i/b;Lorg/cocos2d/g/i;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lorg/cocos2d/l/j;
    .locals 1

    iget-object p0, p0, Lorg/cocos2d/f/f;->g:Lorg/cocos2d/i/b;

    check-cast p0, Lorg/cocos2d/i/c;

    invoke-interface {p0}, Lorg/cocos2d/i/c;->a()Lorg/cocos2d/l/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iget-object p0, p0, Lorg/cocos2d/f/f;->g:Lorg/cocos2d/i/b;

    check-cast p0, Lorg/cocos2d/i/c;

    invoke-interface {p0, p1}, Lorg/cocos2d/i/c;->a(I)V

    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    iget-object p0, p0, Lorg/cocos2d/f/f;->g:Lorg/cocos2d/i/b;

    check-cast p0, Lorg/cocos2d/g/i;

    invoke-virtual {p0, p1}, Lorg/cocos2d/g/i;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public final a(Lorg/cocos2d/l/j;)V
    .locals 0

    iget-object p0, p0, Lorg/cocos2d/f/f;->g:Lorg/cocos2d/i/b;

    check-cast p0, Lorg/cocos2d/i/c;

    invoke-interface {p0, p1}, Lorg/cocos2d/i/c;->a(Lorg/cocos2d/l/j;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/cocos2d/f/f;->c:Z

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/cocos2d/f/f;->g:Lorg/cocos2d/i/b;

    check-cast v0, Lorg/cocos2d/i/c;

    invoke-interface {v0}, Lorg/cocos2d/i/c;->a()Lorg/cocos2d/l/j;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/f/f;->h:Lorg/cocos2d/l/j;

    iget-object v0, p0, Lorg/cocos2d/f/f;->g:Lorg/cocos2d/i/b;

    check-cast v0, Lorg/cocos2d/i/c;

    iget-object v1, p0, Lorg/cocos2d/f/f;->i:Lorg/cocos2d/l/j;

    invoke-interface {v0, v1}, Lorg/cocos2d/i/c;->a(Lorg/cocos2d/l/j;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/cocos2d/f/c;->a(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/f/f;->g:Lorg/cocos2d/i/b;

    check-cast v0, Lorg/cocos2d/i/c;

    iget-object v1, p0, Lorg/cocos2d/f/f;->h:Lorg/cocos2d/l/j;

    invoke-interface {v0, v1}, Lorg/cocos2d/i/c;->a(Lorg/cocos2d/l/j;)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget-object p0, p0, Lorg/cocos2d/f/f;->g:Lorg/cocos2d/i/b;

    check-cast p0, Lorg/cocos2d/i/c;

    invoke-interface {p0}, Lorg/cocos2d/i/c;->b()I

    move-result v0

    return v0
.end method

.method public final b(Lorg/cocos2d/l/j;)V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/f/f;->i:Lorg/cocos2d/l/j;

    iget v1, p1, Lorg/cocos2d/l/j;->j:I

    iput v1, v0, Lorg/cocos2d/l/j;->j:I

    iget-object v0, p0, Lorg/cocos2d/f/f;->i:Lorg/cocos2d/l/j;

    iget v1, p1, Lorg/cocos2d/l/j;->k:I

    iput v1, v0, Lorg/cocos2d/l/j;->k:I

    iget-object v0, p0, Lorg/cocos2d/f/f;->i:Lorg/cocos2d/l/j;

    iget v1, p1, Lorg/cocos2d/l/j;->l:I

    iput v1, v0, Lorg/cocos2d/l/j;->l:I

    return-void
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2d/f/f;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/cocos2d/a/a;->a()Lorg/cocos2d/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/a/a;->a(Lorg/cocos2d/g/i;)V

    iget v0, p0, Lorg/cocos2d/f/f;->j:F

    invoke-virtual {p0, v0}, Lorg/cocos2d/f/f;->e(F)V

    invoke-super {p0}, Lorg/cocos2d/f/c;->c()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    iget-boolean v0, p0, Lorg/cocos2d/f/f;->c:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/cocos2d/f/c;->d()V

    invoke-virtual {p0}, Lorg/cocos2d/f/f;->C()V

    invoke-virtual {p0}, Lorg/cocos2d/f/f;->l()F

    move-result v0

    iput v0, p0, Lorg/cocos2d/f/f;->j:F

    const v0, 0x3dcccccd

    const v1, 0x3f99999a

    iget v2, p0, Lorg/cocos2d/f/f;->j:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/u;->b(FF)Lorg/cocos2d/a/f/u;

    move-result-object v0

    const v1, -0x3f3faffe

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/a/a;->a(I)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/f/f;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Lorg/cocos2d/f/f;->c:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/cocos2d/f/c;->e()V

    invoke-virtual {p0}, Lorg/cocos2d/f/f;->C()V

    const v0, 0x3dcccccd

    iget v1, p0, Lorg/cocos2d/f/f;->j:F

    invoke-static {v0, v1}, Lorg/cocos2d/a/f/u;->b(FF)Lorg/cocos2d/a/f/u;

    move-result-object v0

    const v1, -0x3f3faffe

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/a/a;->a(I)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/f/f;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    :cond_0
    return-void
.end method
