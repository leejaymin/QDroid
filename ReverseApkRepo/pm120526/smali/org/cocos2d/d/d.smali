.class final Lorg/cocos2d/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/r;


# instance fields
.field final synthetic a:Lorg/cocos2d/d/c;

.field private final synthetic b:Lorg/cocos2d/l/m;


# direct methods
.method constructor <init>(Lorg/cocos2d/d/c;Lorg/cocos2d/l/m;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/d/d;->a:Lorg/cocos2d/d/c;

    iput-object p2, p0, Lorg/cocos2d/d/d;->b:Lorg/cocos2d/l/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/cocos2d/opengl/s;)V
    .locals 7

    const/16 v6, 0x400

    const/4 v5, 0x0

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v1

    const/16 v2, 0x8

    :goto_0
    int-to-float v3, v2

    iget v4, v1, Lorg/cocos2d/l/g;->a:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    int-to-float v3, v2

    iget v4, v1, Lorg/cocos2d/l/g;->b:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    if-le v2, v6, :cond_0

    move v2, v6

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v0, p1

    check-cast v0, Lorg/cocos2d/opengl/i;

    move-object v1, v0

    int-to-float v4, v2

    int-to-float v2, v2

    invoke-static {v4, v2}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/cocos2d/opengl/i;->a(Landroid/graphics/Bitmap;Lorg/cocos2d/l/g;)V

    iget-object v1, p0, Lorg/cocos2d/d/d;->a:Lorg/cocos2d/d/c;

    iget-object v2, p0, Lorg/cocos2d/d/d;->b:Lorg/cocos2d/l/m;

    check-cast p1, Lorg/cocos2d/opengl/i;

    invoke-static {v1, v2, p1}, Lorg/cocos2d/d/c;->a(Lorg/cocos2d/d/c;Lorg/cocos2d/l/m;Lorg/cocos2d/opengl/i;)V

    return-void

    :cond_1
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method
