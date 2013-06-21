.class public final Lorg/cocos2d/a/f/o;
.super Lorg/cocos2d/a/f/i;


# instance fields
.field c:Ljava/lang/reflect/Method;

.field d:Ljava/lang/String;

.field e:F

.field f:F

.field g:F


# direct methods
.method private constructor <init>(FLjava/lang/String;FF)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/cocos2d/a/f/i;-><init>(F)V

    iput-object p2, p0, Lorg/cocos2d/a/f/o;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/a/f/o;->c:Ljava/lang/reflect/Method;

    iput p4, p0, Lorg/cocos2d/a/f/o;->f:F

    iput p3, p0, Lorg/cocos2d/a/f/o;->e:F

    return-void
.end method

.method public static a(Ljava/lang/String;FF)Lorg/cocos2d/a/f/o;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/f/o;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/cocos2d/a/f/o;-><init>(FLjava/lang/String;FF)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    iget v0, p0, Lorg/cocos2d/a/f/o;->f:F

    iget v1, p0, Lorg/cocos2d/a/f/o;->e:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/cocos2d/a/f/o;->g:F

    return-void
.end method

.method public final b(F)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/a/f/o;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/a/f/o;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/a/f/o;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/f/o;->c:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/a/f/o;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/cocos2d/a/f/o;->a:Lorg/cocos2d/g/i;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/cocos2d/a/f/o;->f:F

    iget v5, p0, Lorg/cocos2d/a/f/o;->g:F

    const/high16 v6, 0x3f80

    sub-float/2addr v6, p1

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public final j()Lorg/cocos2d/a/f/o;
    .locals 5

    new-instance v0, Lorg/cocos2d/a/f/o;

    iget v1, p0, Lorg/cocos2d/a/f/o;->b:F

    iget-object v2, p0, Lorg/cocos2d/a/f/o;->d:Ljava/lang/String;

    iget v3, p0, Lorg/cocos2d/a/f/o;->f:F

    iget v4, p0, Lorg/cocos2d/a/f/o;->e:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/a/f/o;-><init>(FLjava/lang/String;FF)V

    return-object v0
.end method

.method public final synthetic k()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/o;->j()Lorg/cocos2d/a/f/o;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 5

    new-instance v0, Lorg/cocos2d/a/f/o;

    iget v1, p0, Lorg/cocos2d/a/f/o;->b:F

    iget-object v2, p0, Lorg/cocos2d/a/f/o;->d:Ljava/lang/String;

    iget v3, p0, Lorg/cocos2d/a/f/o;->e:F

    iget v4, p0, Lorg/cocos2d/a/f/o;->f:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/a/f/o;-><init>(FLjava/lang/String;FF)V

    return-object v0
.end method
