.class public Lorg/cocos2d/f/c;
.super Lorg/cocos2d/g/i;


# static fields
.field static a:I

.field static b:Ljava/lang/String;


# instance fields
.field protected c:Z

.field protected d:Z

.field protected e:Ljava/lang/Object;

.field protected f:Ljava/lang/String;

.field private g:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    sput v0, Lorg/cocos2d/f/c;->a:I

    const-string v0, "DroidSans"

    sput-object v0, Lorg/cocos2d/f/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v0, 0x3f00

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    iput-object p1, p0, Lorg/cocos2d/f/c;->e:Ljava/lang/Object;

    iput-object p2, p0, Lorg/cocos2d/f/c;->f:Ljava/lang/String;

    invoke-static {v0, v0}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/f/c;->d(Lorg/cocos2d/l/e;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/f/c;->g:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/f/c;->g:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iput-boolean v5, p0, Lorg/cocos2d/f/c;->c:Z

    iput-boolean v4, p0, Lorg/cocos2d/f/c;->d:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/l/f;)V
    .locals 6

    invoke-virtual {p0}, Lorg/cocos2d/f/c;->s()Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cocos2d/f/c;->q()Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cocos2d/f/c;->o()Lorg/cocos2d/l/g;

    move-result-object v2

    iget v3, v0, Lorg/cocos2d/l/e;->a:F

    iget v4, v2, Lorg/cocos2d/l/g;->a:F

    iget v5, v1, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v0, v0, Lorg/cocos2d/l/e;->b:F

    iget v4, v2, Lorg/cocos2d/l/g;->b:F

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    iget v1, v2, Lorg/cocos2d/l/g;->a:F

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    invoke-virtual {p1, v3, v0, v1, v2}, Lorg/cocos2d/l/f;->b(FFFF)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/cocos2d/f/c;->c:Z

    return-void
.end method

.method public c()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/cocos2d/f/c;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/f/c;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    iget-object v1, p0, Lorg/cocos2d/f/c;->g:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/f/c;->g:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/cocos2d/f/c;->e:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/f/c;->d:Z

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/f/c;->d:Z

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2d/f/c;->c:Z

    return v0
.end method
