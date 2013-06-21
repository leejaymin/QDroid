.class Lorg/cocos2d/tests/ar;
.super Lorg/cocos2d/tests/aq;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x0

    const/high16 v6, 0x3f00

    invoke-direct {p0}, Lorg/cocos2d/tests/aq;-><init>()V

    move v0, v7

    :goto_0
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const-string v1, "-%d-"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bitmapFontTest.fnt"

    invoke-static {v1, v2}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/cocos2d/opengl/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/tests/ar;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    double-to-float v3, v3

    iget v4, v2, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v3, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v4, v4

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v2, v4

    invoke-static {v3, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/opengl/a;->e(Lorg/cocos2d/l/e;)V

    invoke-static {v6, v6}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/opengl/a;->d(Lorg/cocos2d/l/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "CCBitmapFontAtlas AtlasFastBitmap"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Creating several CCBitmapFontAtlas with the same .fnt file should be fast"

    return-object v0
.end method
