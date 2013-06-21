.class public final Lorg/cocos2d/a/e/f;
.super Lorg/cocos2d/a/e/e;


# instance fields
.field private c:Lorg/cocos2d/l/e;


# direct methods
.method private constructor <init>(Lorg/cocos2d/l/e;)V
    .locals 2

    invoke-direct {p0}, Lorg/cocos2d/a/e/e;-><init>()V

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/e/f;->c:Lorg/cocos2d/l/e;

    return-void
.end method

.method public static a(Lorg/cocos2d/l/e;)Lorg/cocos2d/a/e/f;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/e/f;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/e/f;-><init>(Lorg/cocos2d/l/e;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2d/a/e/e;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/e/f;->a:Lorg/cocos2d/g/i;

    iget-object v1, p0, Lorg/cocos2d/a/e/f;->c:Lorg/cocos2d/l/e;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->e(Lorg/cocos2d/l/e;)V

    return-void
.end method

.method public final synthetic k()Lorg/cocos2d/a/e/e;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/e/f;

    iget-object v1, p0, Lorg/cocos2d/a/e/f;->c:Lorg/cocos2d/l/e;

    invoke-direct {v0, v1}, Lorg/cocos2d/a/e/f;-><init>(Lorg/cocos2d/l/e;)V

    return-object v0
.end method
