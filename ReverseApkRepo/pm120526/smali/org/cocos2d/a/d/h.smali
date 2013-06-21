.class public final Lorg/cocos2d/a/d/h;
.super Lorg/cocos2d/a/e/e;


# instance fields
.field c:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/a/e/e;-><init>()V

    iput p1, p0, Lorg/cocos2d/a/d/h;->c:I

    return-void
.end method

.method public static b(I)Lorg/cocos2d/a/d/h;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/d/h;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/d/h;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/cocos2d/a/e/e;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/d/h;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->u()Lorg/cocos2d/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cocos2d/d/c;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/cocos2d/d/c;->d()I

    move-result v1

    iget v2, p0, Lorg/cocos2d/a/d/h;->c:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/cocos2d/d/c;->a(I)V

    :cond_0
    return-void
.end method
