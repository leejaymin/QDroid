.class public final Lorg/cocos2d/a/g/n;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/cocos2d/l/e;

.field b:Lorg/cocos2d/l/e;

.field c:Lorg/cocos2d/l/m;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/m;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/g/n;->a:Lorg/cocos2d/l/e;

    iget v0, p2, Lorg/cocos2d/l/e;->a:F

    iget v1, p2, Lorg/cocos2d/l/e;->b:F

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/g/n;->b:Lorg/cocos2d/l/e;

    iget v0, p3, Lorg/cocos2d/l/m;->a:I

    iget v1, p3, Lorg/cocos2d/l/m;->b:I

    invoke-static {v0, v1}, Lorg/cocos2d/l/m;->a(II)Lorg/cocos2d/l/m;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/g/n;->c:Lorg/cocos2d/l/m;

    return-void
.end method

.method public static a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/m;)Lorg/cocos2d/a/g/n;
    .locals 1

    new-instance v0, Lorg/cocos2d/a/g/n;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/a/g/n;-><init>(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/m;)V

    return-object v0
.end method
