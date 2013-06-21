.class public final Lorg/cocos2d/a/a/e;
.super Lorg/cocos2d/a/a/a;


# instance fields
.field protected b:Lorg/cocos2d/a/f/i;

.field protected c:F


# direct methods
.method private constructor <init>(Lorg/cocos2d/a/f/i;F)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/a/a/a;-><init>()V

    iput-object p1, p0, Lorg/cocos2d/a/a/e;->b:Lorg/cocos2d/a/f/i;

    iput p2, p0, Lorg/cocos2d/a/a/e;->c:F

    return-void
.end method

.method public static a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/e;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/a/e;

    const/high16 v1, 0x3f80

    invoke-direct {v0, p0, v1}, Lorg/cocos2d/a/a/e;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/a/a/e;->b:Lorg/cocos2d/a/f/i;

    iget v1, p0, Lorg/cocos2d/a/a/e;->c:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/f/i;->a(F)V

    return-void
.end method

.method public final a(Lorg/cocos2d/g/i;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2d/a/a/a;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/a/e;->b:Lorg/cocos2d/a/f/i;

    iget-object v1, p0, Lorg/cocos2d/a/a/e;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    return-void
.end method

.method public final synthetic c()Lorg/cocos2d/a/a/a;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/a/e;

    iget-object v1, p0, Lorg/cocos2d/a/a/e;->b:Lorg/cocos2d/a/f/i;

    invoke-virtual {v1}, Lorg/cocos2d/a/f/i;->l()Lorg/cocos2d/a/f/i;

    move-result-object v1

    iget v2, p0, Lorg/cocos2d/a/a/e;->c:F

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/a/e;-><init>(Lorg/cocos2d/a/f/i;F)V

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/a/e;->b:Lorg/cocos2d/a/f/i;

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->d()V

    invoke-super {p0}, Lorg/cocos2d/a/a/a;->d()V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/a/e;->b:Lorg/cocos2d/a/f/i;

    invoke-virtual {v0}, Lorg/cocos2d/a/f/i;->e()Z

    move-result v0

    return v0
.end method
