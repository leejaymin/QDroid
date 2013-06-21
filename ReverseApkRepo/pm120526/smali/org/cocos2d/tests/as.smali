.class Lorg/cocos2d/tests/as;
.super Lorg/cocos2d/tests/aq;


# instance fields
.field a:F


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v7, 0x30

    const/16 v6, 0x20

    const/4 v5, 0x1

    const/high16 v3, 0x4120

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/cocos2d/tests/aq;-><init>()V

    const-string v0, "123 Test"

    const-string v1, "tuffy_bold_italic-charmap.png"

    const/16 v2, 0x40

    invoke-static {v0, v1, v7, v2, v6}, Lorg/cocos2d/g/g;->a(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/g/g;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v4}, Lorg/cocos2d/tests/as;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    const/high16 v1, 0x42c8

    invoke-static {v3, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/g;->e(Lorg/cocos2d/l/e;)V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/g;->a(I)V

    const-string v0, "0123456789"

    const-string v1, "tuffy_bold_italic-charmap.png"

    const/16 v2, 0x40

    invoke-static {v0, v1, v7, v2, v6}, Lorg/cocos2d/g/g;->a(Ljava/lang/CharSequence;Ljava/lang/String;IIC)Lorg/cocos2d/g/g;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v5}, Lorg/cocos2d/tests/as;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    const/high16 v1, 0x4348

    invoke-static {v3, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/g;->e(Lorg/cocos2d/l/e;)V

    sget-object v1, Lorg/cocos2d/l/j;->e:Lorg/cocos2d/l/j;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/g;->a(Lorg/cocos2d/l/j;)V

    const/high16 v1, 0x3f80

    invoke-static {v1}, Lorg/cocos2d/a/f/g;->c(F)Lorg/cocos2d/a/f/g;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/a/f/g;->j()Lorg/cocos2d/a/f/f;

    move-result-object v2

    new-array v3, v5, [Lorg/cocos2d/a/a/b;

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/g;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    new-instance v0, Lorg/cocos2d/tests/at;

    invoke-direct {v0, p0}, Lorg/cocos2d/tests/at;-><init>(Lorg/cocos2d/tests/as;)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/as;->a(Lorg/cocos2d/a/i;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "CCLabelAtlas LabelAtlasColorTest"

    return-object v0
.end method

.method public final a(F)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lorg/cocos2d/tests/as;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/cocos2d/tests/as;->a:F

    const-string v0, "%2.2f Test"

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lorg/cocos2d/tests/as;->a:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lorg/cocos2d/m/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4}, Lorg/cocos2d/tests/as;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/g;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/g;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Lorg/cocos2d/tests/as;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/g;

    const-string v1, "%d"

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lorg/cocos2d/tests/as;->a:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lorg/cocos2d/m/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/g;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Opacity + Color should work at the same time"

    return-object v0
.end method
