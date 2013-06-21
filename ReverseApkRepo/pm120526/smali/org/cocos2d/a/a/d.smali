.class public final Lorg/cocos2d/a/a/d;
.super Lorg/cocos2d/a/a/a;


# instance fields
.field protected b:Lorg/cocos2d/a/f/i;


# direct methods
.method private constructor <init>(Lorg/cocos2d/a/f/i;)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/a/a/a;-><init>()V

    iput-object p1, p0, Lorg/cocos2d/a/a/d;->b:Lorg/cocos2d/a/f/i;

    return-void
.end method

.method public static a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/a/d;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/a/d;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/a/a/d;->b:Lorg/cocos2d/a/f/i;

    invoke-virtual {v0, p1}, Lorg/cocos2d/a/f/i;->a(F)V

    iget-object v0, p0, Lorg/cocos2d/a/a/d;->b:Lorg/cocos2d/a/f/i;

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/a/a/d;->b:Lorg/cocos2d/a/f/i;

    iget v0, v0, Lorg/cocos2d/a/f/i;->b:F

    add-float/2addr v0, p1

    iget-object v1, p0, Lorg/cocos2d/a/a/d;->b:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->p()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/cocos2d/a/a/d;->b:Lorg/cocos2d/a/f/i;

    iget-object v2, p0, Lorg/cocos2d/a/a/d;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v1, v2}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    iget-object v1, p0, Lorg/cocos2d/a/a/d;->b:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1, v0}, Lorg/cocos2d/a/f/i;->a(F)V

    :cond_0
    return-void
.end method

.method public final a(Lorg/cocos2d/g/i;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2d/a/a/a;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/a/d;->b:Lorg/cocos2d/a/f/i;

    iget-object v1, p0, Lorg/cocos2d/a/a/d;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    return-void
.end method

.method public final c()Lorg/cocos2d/a/a/a;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/a/d;

    iget-object v1, p0, Lorg/cocos2d/a/a/d;->b:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2d/a/a/d;-><init>(Lorg/cocos2d/a/f/i;)V

    return-object v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
