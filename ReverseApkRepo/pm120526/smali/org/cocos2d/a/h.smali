.class public final Lorg/cocos2d/a/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/reflect/Method;

.field private d:Lorg/cocos2d/a/i;

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;F)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/cocos2d/a/h;->a:Ljava/lang/Object;

    iput-object p2, p0, Lorg/cocos2d/a/h;->b:Ljava/lang/String;

    iput p3, p0, Lorg/cocos2d/a/h;->e:F

    const/high16 v0, -0x4080

    iput v0, p0, Lorg/cocos2d/a/h;->f:F

    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/a/h;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/h;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/cocos2d/a/i;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/cocos2d/a/h;->a:Ljava/lang/Object;

    iput-object p2, p0, Lorg/cocos2d/a/h;->d:Lorg/cocos2d/a/i;

    iput p3, p0, Lorg/cocos2d/a/h;->e:F

    const/high16 v0, -0x4080

    iput v0, p0, Lorg/cocos2d/a/h;->f:F

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(F)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lorg/cocos2d/a/h;->f:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iput v5, p0, Lorg/cocos2d/a/h;->f:F

    :goto_0
    iget v0, p0, Lorg/cocos2d/a/h;->f:F

    iget v1, p0, Lorg/cocos2d/a/h;->e:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/a/h;->d:Lorg/cocos2d/a/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/a/h;->d:Lorg/cocos2d/a/i;

    iget v1, p0, Lorg/cocos2d/a/h;->f:F

    invoke-interface {v0, v1}, Lorg/cocos2d/a/i;->a(F)V

    :goto_1
    iput v5, p0, Lorg/cocos2d/a/h;->f:F

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lorg/cocos2d/a/h;->f:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/cocos2d/a/h;->f:F

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/a/h;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/cocos2d/a/h;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/cocos2d/a/h;->f:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final b()Lorg/cocos2d/a/i;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/h;->d:Lorg/cocos2d/a/i;

    return-object v0
.end method
