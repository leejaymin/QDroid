.class public final Lorg/cocos2d/a/c/c;
.super Lorg/cocos2d/a/c/a;


# direct methods
.method private constructor <init>(Lorg/cocos2d/a/f/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cocos2d/a/c/a;-><init>(Lorg/cocos2d/a/f/i;)V

    return-void
.end method

.method public static a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/c/c;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/c/c;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/c/c;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method


# virtual methods
.method public final b(F)V
    .locals 7

    const v6, 0x406612ff

    const v5, 0x402612ff

    const/high16 v4, 0x3f80

    const/high16 v3, 0x4000

    mul-float v0, p1, v3

    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/a/c/c;->c:Lorg/cocos2d/a/f/i;

    mul-float v2, v0, v0

    mul-float/2addr v0, v6

    sub-float/2addr v0, v5

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    invoke-virtual {v1, v0}, Lorg/cocos2d/a/f/i;->b(F)V

    :goto_0
    return-void

    :cond_0
    sub-float/2addr v0, v3

    iget-object v1, p0, Lorg/cocos2d/a/c/c;->c:Lorg/cocos2d/a/f/i;

    mul-float v2, v0, v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    add-float/2addr v0, v4

    invoke-virtual {v1, v0}, Lorg/cocos2d/a/f/i;->b(F)V

    goto :goto_0
.end method

.method public final j()Lorg/cocos2d/a/c/a;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/c;

    iget-object v1, p0, Lorg/cocos2d/a/c/c;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/c;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method

.method public final k()Lorg/cocos2d/a/f/i;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/c/c;

    iget-object v1, p0, Lorg/cocos2d/a/c/c;->c:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/c/c;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method
