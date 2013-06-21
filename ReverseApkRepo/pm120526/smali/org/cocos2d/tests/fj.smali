.class Lorg/cocos2d/tests/fj;
.super Lorg/cocos2d/tests/fo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/fo;-><init>()V

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

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lorg/cocos2d/tests/fo;->a_()V

    invoke-virtual {p0}, Lorg/cocos2d/tests/fj;->b()V

    iget-object v0, p0, Lorg/cocos2d/tests/fj;->b:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v5}, Lorg/cocos2d/g/o;->c(Z)V

    const-string v0, "dance"

    invoke-static {v0}, Lorg/cocos2d/g/a;->b(Ljava/lang/String;)Lorg/cocos2d/g/a;

    move-result-object v0

    move v1, v6

    :goto_0
    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lorg/cocos2d/m/d;

    invoke-direct {v2}, Lorg/cocos2d/m/d;-><init>()V

    const-string v2, "grossini_dance_%02d.png"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lorg/cocos2d/m/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/a;->c(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
