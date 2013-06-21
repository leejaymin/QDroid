.class public final Lorg/cocos2d/a/f/l;
.super Lorg/cocos2d/a/f/m;


# direct methods
.method private constructor <init>(FLorg/cocos2d/l/e;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/cocos2d/a/f/m;-><init>(FLorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/l;->c:Lorg/cocos2d/l/e;

    iget v1, p2, Lorg/cocos2d/l/e;->a:F

    iget v2, p2, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/l/e;->b(FF)V

    return-void
.end method

.method public static a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/f/l;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/a/f/l;-><init>(FLorg/cocos2d/l/e;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/a/f/l;->c:Lorg/cocos2d/l/e;

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p0, Lorg/cocos2d/a/f/l;->c:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/m;->a(Lorg/cocos2d/g/i;)V

    iget-object v2, p0, Lorg/cocos2d/a/f/l;->c:Lorg/cocos2d/l/e;

    invoke-virtual {v2, v0, v1}, Lorg/cocos2d/l/e;->b(FF)V

    return-void
.end method

.method public final j()Lorg/cocos2d/a/f/l;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/l;

    iget v1, p0, Lorg/cocos2d/a/f/l;->b:F

    iget-object v2, p0, Lorg/cocos2d/a/f/l;->c:Lorg/cocos2d/l/e;

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/l;-><init>(FLorg/cocos2d/l/e;)V

    return-object v0
.end method

.method public final synthetic k()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/l;->m()Lorg/cocos2d/a/f/l;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/l;->j()Lorg/cocos2d/a/f/l;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lorg/cocos2d/a/f/l;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/l;

    iget v1, p0, Lorg/cocos2d/a/f/l;->b:F

    iget-object v2, p0, Lorg/cocos2d/a/f/l;->c:Lorg/cocos2d/l/e;

    invoke-static {v2}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/l;-><init>(FLorg/cocos2d/l/e;)V

    return-object v0
.end method
