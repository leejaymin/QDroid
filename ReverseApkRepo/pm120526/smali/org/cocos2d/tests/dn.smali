.class final Lorg/cocos2d/tests/dn;
.super Lorg/cocos2d/e/b;


# instance fields
.field a:Lorg/cocos2d/l/e;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 11

    const/high16 v10, 0x3f00

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    move v0, v6

    :goto_0
    if-lt v0, v8, :cond_0

    iput-boolean v7, p0, Lorg/cocos2d/tests/dn;->b:Z

    move v1, v6

    :goto_1
    if-lt v1, v8, :cond_1

    return-void

    :cond_0
    const-string v1, "btn-play-normal.png"

    const-string v2, "btn-play-selected.png"

    const-string v3, "menuCallbackBack"

    invoke-static {v1, v2, p0, v3}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v1

    const-string v2, "btn-highscores-normal.png"

    const-string v3, "btn-highscores-selected.png"

    const-string v4, "menuCallbackOpacity"

    invoke-static {v2, v3, p0, v4}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v2

    const-string v3, "btn-about-normal.png"

    const-string v4, "btn-about-selected.png"

    const-string v5, "menuCallbackAlign"

    invoke-static {v3, v4, p0, v5}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v3

    const/high16 v4, 0x3fc0

    invoke-virtual {v1, v4}, Lorg/cocos2d/f/e;->c(F)V

    invoke-virtual {v2, v10}, Lorg/cocos2d/f/e;->d(F)V

    invoke-virtual {v3, v10}, Lorg/cocos2d/f/e;->c(F)V

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/cocos2d/f/c;

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    invoke-static {v4}, Lorg/cocos2d/f/a;->a([Lorg/cocos2d/f/c;)Lorg/cocos2d/f/a;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/cocos2d/f/a;->c(I)V

    add-int/lit8 v2, v0, 0x64

    invoke-virtual {p0, v1, v6, v2}, Lorg/cocos2d/tests/dn;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    invoke-virtual {v1}, Lorg/cocos2d/f/a;->r()Lorg/cocos2d/l/e;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/tests/dn;->a:Lorg/cocos2d/l/e;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x64

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/dn;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/f/a;

    iget-object v2, p0, Lorg/cocos2d/tests/dn;->a:Lorg/cocos2d/l/e;

    invoke-virtual {v0, v2}, Lorg/cocos2d/f/a;->e(Lorg/cocos2d/l/e;)V

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/cocos2d/f/a;->b()V

    invoke-virtual {v0}, Lorg/cocos2d/f/a;->s()Lorg/cocos2d/l/e;

    move-result-object v2

    const/high16 v3, 0x41f0

    invoke-static {v9, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/f/a;->e(Lorg/cocos2d/l/e;)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/high16 v2, 0x4220

    invoke-virtual {v0, v2}, Lorg/cocos2d/f/a;->a(F)V

    invoke-virtual {v0}, Lorg/cocos2d/f/a;->s()Lorg/cocos2d/l/e;

    move-result-object v2

    const/high16 v3, 0x41f0

    invoke-static {v9, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/f/a;->e(Lorg/cocos2d/l/e;)V

    goto :goto_2
.end method
