.class final Lorg/cocos2d/tests/db;
.super Lorg/cocos2d/e/a;


# direct methods
.method public constructor <init>()V
    .locals 14

    const/high16 v13, 0x41f0

    const/high16 v12, 0x4040

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/high16 v9, 0x4000

    const/16 v0, 0x20

    const/16 v1, 0x20

    const/16 v2, 0x20

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cocos2d/e/a;-><init>(Lorg/cocos2d/l/k;)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v1

    iget v2, v1, Lorg/cocos2d/l/g;->a:F

    iget v3, v1, Lorg/cocos2d/l/g;->b:F

    const-string v0, "background3.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v4

    iget v0, v1, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v9

    iget v5, v1, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v5, v9

    invoke-static {v0, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    invoke-static {}, Lorg/cocos2d/tests/EffectsTest;->a()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v5, "action"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/high16 v8, 0x4040

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/f/i;

    invoke-virtual {v4, v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    invoke-virtual {p0, v4, v11, v10}, Lorg/cocos2d/tests/db;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    const-string v0, "grossinis_sister2.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v0

    invoke-virtual {v4, v0, v10}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    div-float v5, v2, v12

    div-float v6, v3, v9

    invoke-static {v5, v6}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v5, 0x40a0

    invoke-static {v9, v5}, Lorg/cocos2d/a/f/t;->a(FF)Lorg/cocos2d/a/f/t;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v6

    new-array v7, v10, [Lorg/cocos2d/a/a/b;

    aput-object v6, v7, v11

    invoke-static {v5, v7}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v5

    invoke-static {v5}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const-string v0, "grossinis_sister1.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v0

    invoke-virtual {v4, v0, v10}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    mul-float v4, v9, v2

    div-float/2addr v4, v12

    div-float v5, v3, v9

    invoke-static {v4, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    const/high16 v4, 0x40a0

    invoke-static {v9, v4}, Lorg/cocos2d/a/f/t;->a(FF)Lorg/cocos2d/a/f/t;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cocos2d/a/f/i;->k()Lorg/cocos2d/a/f/i;

    move-result-object v5

    new-array v6, v10, [Lorg/cocos2d/a/a/b;

    aput-object v5, v6, v11

    invoke-static {v4, v6}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v4

    invoke-static {v4}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    sget-object v0, Lorg/cocos2d/tests/EffectsTest;->c:[Ljava/lang/String;

    sget v4, Lorg/cocos2d/tests/EffectsTest;->a:I

    aget-object v0, v0, v4

    const-string v4, "DroidSans"

    const/high16 v5, 0x41c0

    invoke-static {v0, v4, v5}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v0

    div-float/2addr v2, v9

    const/high16 v4, 0x42a0

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/d;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/db;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/d;->c(I)V

    const-string v0, "b1.png"

    const-string v2, "b2.png"

    const-string v3, "backCallback"

    invoke-static {v0, v2, p0, v3}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v0

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

    aput-object v0, v4, v11

    aput-object v2, v4, v10

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {v4}, Lorg/cocos2d/f/a;->a([Lorg/cocos2d/f/c;)Lorg/cocos2d/f/a;

    move-result-object v4

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/cocos2d/f/a;->e(Lorg/cocos2d/l/e;)V

    iget v5, v1, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v5, v9

    const/high16 v6, 0x42c8

    sub-float/2addr v5, v6

    invoke-static {v5, v13}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    iget v0, v1, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v9

    invoke-static {v0, v13}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    iget v0, v1, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v9

    const/high16 v1, 0x42c8

    add-float/2addr v0, v1

    invoke-static {v0, v13}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0, v4, v10}, Lorg/cocos2d/tests/db;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    new-instance v0, Lorg/cocos2d/tests/dc;

    invoke-direct {v0, p0}, Lorg/cocos2d/tests/dc;-><init>(Lorg/cocos2d/tests/db;)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/db;->a(Lorg/cocos2d/a/i;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final h()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/db;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    invoke-static {}, Lorg/cocos2d/a/a;->a()Lorg/cocos2d/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/cocos2d/a/a;->c(Lorg/cocos2d/g/i;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->u()Lorg/cocos2d/d/c;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/d/c;)V

    :cond_0
    return-void
.end method
