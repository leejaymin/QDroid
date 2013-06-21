.class public final Lorg/cocos2d/a/f/q;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field private c:Lorg/cocos2d/a/a/b;


# direct methods
.method private constructor <init>(Lorg/cocos2d/a/a/b;)V
    .locals 1

    invoke-virtual {p1}, Lorg/cocos2d/a/a/b;->g()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/cocos2d/a/f/i;-><init>(F)V

    iput-object p1, p0, Lorg/cocos2d/a/f/q;->c:Lorg/cocos2d/a/a/b;

    return-void
.end method

.method public static a(Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/q;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/f/q;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/f/q;-><init>(Lorg/cocos2d/a/a/b;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/q;->c:Lorg/cocos2d/a/a/b;

    iget-object v1, p0, Lorg/cocos2d/a/f/q;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/a/b;->a(Lorg/cocos2d/g/i;)V

    return-void
.end method

.method public final b(F)V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/a/f/q;->c:Lorg/cocos2d/a/a/b;

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/a/b;->b(F)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/f/q;->c:Lorg/cocos2d/a/a/b;

    invoke-virtual {v0}, Lorg/cocos2d/a/a/b;->d()V

    invoke-super {p0}, Lorg/cocos2d/a/f/i;->d()V

    return-void
.end method

.method public final synthetic k()Lorg/cocos2d/a/f/i;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/f/q;

    iget-object v1, p0, Lorg/cocos2d/a/f/q;->c:Lorg/cocos2d/a/a/b;

    invoke-virtual {v1}, Lorg/cocos2d/a/a/b;->h()Lorg/cocos2d/a/a/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/f/q;-><init>(Lorg/cocos2d/a/a/b;)V

    return-object v0
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/f/q;

    iget-object v1, p0, Lorg/cocos2d/a/f/q;->c:Lorg/cocos2d/a/a/b;

    invoke-virtual {v1}, Lorg/cocos2d/a/a/b;->h()Lorg/cocos2d/a/a/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/f/q;-><init>(Lorg/cocos2d/a/a/b;)V

    return-object v0
.end method
