.class Lorg/cocos2d/tests/g;
.super Lorg/cocos2d/tests/m;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Animation"

    return-object v0
.end method

.method public final a_()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Lorg/cocos2d/tests/m;->a_()V

    invoke-virtual {p0, v5}, Lorg/cocos2d/tests/g;->b(I)V

    const-string v0, "dance"

    invoke-static {v0}, Lorg/cocos2d/g/a;->a(Ljava/lang/String;)Lorg/cocos2d/g/a;

    move-result-object v0

    move v1, v5

    :goto_0
    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    const/high16 v1, 0x4040

    invoke-static {v1, v0, v6}, Lorg/cocos2d/a/f/a;->a(FLorg/cocos2d/g/a;Z)Lorg/cocos2d/a/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/a/f/a;->j()Lorg/cocos2d/a/f/a;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/tests/g;->a:Lorg/cocos2d/g/o;

    new-array v3, v5, [Lorg/cocos2d/a/a/b;

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void

    :cond_0
    const-string v2, "grossini_dance_%02d.png"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/a;->c(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
