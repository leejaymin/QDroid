.class public Lorg/cocos2d/a/f/b;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field protected c:Lorg/cocos2d/l/a;

.field protected d:Lorg/cocos2d/l/e;


# direct methods
.method protected constructor <init>(FLorg/cocos2d/l/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/f/i;-><init>(F)V

    iput-object p2, p0, Lorg/cocos2d/a/f/b;->c:Lorg/cocos2d/l/a;

    invoke-static {v0, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/f/b;->d:Lorg/cocos2d/l/e;

    return-void
.end method

.method public static a(Lorg/cocos2d/l/a;)Lorg/cocos2d/a/f/b;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/f/b;

    const/high16 v1, 0x4040

    invoke-direct {v0, v1, p0}, Lorg/cocos2d/a/f/b;-><init>(FLorg/cocos2d/l/a;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/cocos2d/g/i;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/b;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->r()Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/f/b;->d:Lorg/cocos2d/l/e;

    return-void
.end method

.method public final b(F)V
    .locals 6

    iget-object v0, p0, Lorg/cocos2d/a/f/b;->c:Lorg/cocos2d/l/a;

    iget-object v0, v0, Lorg/cocos2d/l/a;->b:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p0, Lorg/cocos2d/a/f/b;->c:Lorg/cocos2d/l/a;

    iget-object v1, v1, Lorg/cocos2d/l/a;->c:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    iget-object v2, p0, Lorg/cocos2d/a/f/b;->c:Lorg/cocos2d/l/a;

    iget-object v2, v2, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->a:F

    iget-object v3, p0, Lorg/cocos2d/a/f/b;->c:Lorg/cocos2d/l/a;

    iget-object v3, v3, Lorg/cocos2d/l/a;->b:Lorg/cocos2d/l/e;

    iget v3, v3, Lorg/cocos2d/l/e;->b:F

    iget-object v4, p0, Lorg/cocos2d/a/f/b;->c:Lorg/cocos2d/l/a;

    iget-object v4, v4, Lorg/cocos2d/l/a;->c:Lorg/cocos2d/l/e;

    iget v4, v4, Lorg/cocos2d/l/e;->b:F

    iget-object v5, p0, Lorg/cocos2d/a/f/b;->c:Lorg/cocos2d/l/a;

    iget-object v5, v5, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    iget v5, v5, Lorg/cocos2d/l/e;->b:F

    invoke-static {v0, v1, v2, p1}, Lorg/cocos2d/l/a;->a(FFFF)F

    move-result v0

    invoke-static {v3, v4, v5, p1}, Lorg/cocos2d/l/a;->a(FFFF)F

    move-result v1

    iget-object v2, p0, Lorg/cocos2d/a/f/b;->a:Lorg/cocos2d/g/i;

    iget-object v3, p0, Lorg/cocos2d/a/f/b;->d:Lorg/cocos2d/l/e;

    iget v3, v3, Lorg/cocos2d/l/e;->a:F

    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/cocos2d/a/f/b;->d:Lorg/cocos2d/l/e;

    iget v3, v3, Lorg/cocos2d/l/e;->b:F

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/i;->e(Lorg/cocos2d/l/e;)V

    return-void
.end method

.method public j()Lorg/cocos2d/a/f/b;
    .locals 3

    new-instance v0, Lorg/cocos2d/l/a;

    invoke-direct {v0}, Lorg/cocos2d/l/a;-><init>()V

    iget-object v1, p0, Lorg/cocos2d/a/f/b;->c:Lorg/cocos2d/l/a;

    iget-object v1, v1, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    invoke-static {v1}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    iget-object v1, p0, Lorg/cocos2d/a/f/b;->c:Lorg/cocos2d/l/a;

    iget-object v1, v1, Lorg/cocos2d/l/a;->c:Lorg/cocos2d/l/e;

    iget-object v2, p0, Lorg/cocos2d/a/f/b;->c:Lorg/cocos2d/l/a;

    iget-object v2, v2, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    invoke-static {v2}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/l/a;->b:Lorg/cocos2d/l/e;

    iget-object v1, p0, Lorg/cocos2d/a/f/b;->c:Lorg/cocos2d/l/a;

    iget-object v1, v1, Lorg/cocos2d/l/a;->b:Lorg/cocos2d/l/e;

    iget-object v2, p0, Lorg/cocos2d/a/f/b;->c:Lorg/cocos2d/l/a;

    iget-object v2, v2, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    invoke-static {v2}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/l/a;->c:Lorg/cocos2d/l/e;

    new-instance v1, Lorg/cocos2d/a/f/b;

    iget v2, p0, Lorg/cocos2d/a/f/b;->b:F

    invoke-direct {v1, v2, v0}, Lorg/cocos2d/a/f/b;-><init>(FLorg/cocos2d/l/a;)V

    return-object v1
.end method

.method public final synthetic k()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/b;->j()Lorg/cocos2d/a/f/b;

    move-result-object v0

    return-object v0
.end method

.method public l()Lorg/cocos2d/a/f/i;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/b;

    iget v1, p0, Lorg/cocos2d/a/f/b;->b:F

    iget-object v2, p0, Lorg/cocos2d/a/f/b;->c:Lorg/cocos2d/l/a;

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/b;-><init>(FLorg/cocos2d/l/a;)V

    return-object v0
.end method
