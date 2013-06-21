.class final Lorg/cocos2d/tests/hk;
.super Lorg/cocos2d/e/b;


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v10, 0x42c8

    const/high16 v9, 0x41f0

    const/high16 v8, 0x4000

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    iget v2, v0, Lorg/cocos2d/l/g;->b:F

    const-string v3, "background1.jpg"

    invoke-static {v3}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v3

    iget v4, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v4, v8

    iget v5, v0, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v5, v8

    invoke-virtual {v3, v4, v5}, Lorg/cocos2d/g/o;->d(FF)V

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Lorg/cocos2d/tests/hk;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    sget-object v3, Lorg/cocos2d/tests/TransitionsTest;->b:[Ljava/lang/Class;

    sget v4, Lorg/cocos2d/tests/TransitionsTest;->a:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DroidSans"

    const/high16 v5, 0x41c0

    invoke-static {v3, v4, v5}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/cocos2d/tests/hk;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    new-instance v4, Lorg/cocos2d/l/j;

    const/16 v5, 0xff

    const/16 v6, 0x20

    const/16 v7, 0x20

    invoke-direct {v4, v5, v6, v7}, Lorg/cocos2d/l/j;-><init>(III)V

    invoke-virtual {v3, v4}, Lorg/cocos2d/g/d;->a(Lorg/cocos2d/l/j;)V

    div-float v4, v1, v8

    sub-float v5, v2, v10

    invoke-static {v4, v5}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/cocos2d/g/d;->e(Lorg/cocos2d/l/e;)V

    const-string v3, "SCENE 1"

    const-string v4, "DroidSans"

    const/high16 v5, 0x4200

    invoke-static {v3, v4, v5}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v3

    new-instance v4, Lorg/cocos2d/l/j;

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v7, 0xff

    invoke-direct {v4, v5, v6, v7}, Lorg/cocos2d/l/j;-><init>(III)V

    invoke-virtual {v3, v4}, Lorg/cocos2d/g/d;->a(Lorg/cocos2d/l/j;)V

    div-float/2addr v1, v8

    div-float/2addr v2, v8

    invoke-virtual {v3, v1, v2}, Lorg/cocos2d/g/d;->d(FF)V

    invoke-virtual {p0, v3}, Lorg/cocos2d/tests/hk;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    const-string v1, "b1.png"

    const-string v2, "b2.png"

    const-string v3, "backCallback"

    invoke-static {v1, v2, p0, v3}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v1

    const-string v2, "r1.png"

    const-string v3, "r2.png"

    const-string v4, "restartCallback"

    invoke-static {v2, v3, p0, v4}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v2

    const-string v3, "f1.png"

    const-string v4, "f2.png"

    const-string v5, "nextCallback"

    invoke-static {v3, v4, p0, v5}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/cocos2d/f/c;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v12

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {v4}, Lorg/cocos2d/f/a;->a([Lorg/cocos2d/f/c;)Lorg/cocos2d/f/a;

    move-result-object v4

    invoke-virtual {v4, v11, v11}, Lorg/cocos2d/f/a;->d(FF)V

    iget v5, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v5, v8

    sub-float/2addr v5, v10

    invoke-virtual {v1, v5, v9}, Lorg/cocos2d/f/e;->d(FF)V

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v8

    invoke-virtual {v2, v1, v9}, Lorg/cocos2d/f/e;->d(FF)V

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v8

    add-float/2addr v0, v10

    invoke-virtual {v3, v0, v9}, Lorg/cocos2d/f/e;->d(FF)V

    invoke-virtual {p0, v4, v12}, Lorg/cocos2d/tests/hk;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    const-string v0, "step"

    const/high16 v1, 0x3f80

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/hk;->a(Ljava/lang/String;F)V

    return-void
.end method

.method public static a()Lorg/cocos2d/e/d;
    .locals 2

    invoke-static {}, Lorg/cocos2d/e/d;->a()Lorg/cocos2d/e/d;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/tests/hk;

    invoke-direct {v1}, Lorg/cocos2d/tests/hk;-><init>()V

    invoke-virtual {v0, v1}, Lorg/cocos2d/e/d;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    return-object v0
.end method


# virtual methods
.method public final G()V
    .locals 2

    invoke-super {p0}, Lorg/cocos2d/e/b;->G()V

    const-string v0, "TransitionTest"

    const-string v1, "Scene 1: transition did finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a_()V
    .locals 2

    invoke-super {p0}, Lorg/cocos2d/e/b;->a_()V

    const-string v0, "TransitionTest"

    const-string v1, "Scene 1 onEnter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final finalize()V
    .locals 2

    const-string v0, "TransitionTest"

    const-string v1, "------> Scene#1 dealloc!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final g()V
    .locals 2

    const-string v0, "TransitionTest"

    const-string v1, "Scene 1 onExit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lorg/cocos2d/e/b;->g()V

    return-void
.end method
