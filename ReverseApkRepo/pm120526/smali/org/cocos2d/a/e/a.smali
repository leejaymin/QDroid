.class public Lorg/cocos2d/a/e/a;
.super Lorg/cocos2d/a/e/e;


# instance fields
.field protected c:Ljava/lang/Object;

.field protected d:Ljava/lang/String;

.field protected e:[Ljava/lang/Class;

.field protected f:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 3

    invoke-direct {p0}, Lorg/cocos2d/a/e/e;-><init>()V

    iput-object p1, p0, Lorg/cocos2d/a/e/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lorg/cocos2d/a/e/a;->d:Ljava/lang/String;

    iput-object p3, p0, Lorg/cocos2d/a/e/a;->e:[Ljava/lang/Class;

    iget-object v0, p0, Lorg/cocos2d/a/e/a;->e:[Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/a/e/a;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/a/e/a;->d:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/e/a;->f:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/cocos2d/a/e/a;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/a/e/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lorg/cocos2d/a/e/a;->e:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/e/a;->f:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/a;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/e/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/cocos2d/a/e/a;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cocos2d/a/e/e;->a(Lorg/cocos2d/g/i;)V

    invoke-virtual {p0}, Lorg/cocos2d/a/e/a;->j()V

    return-void
.end method

.method public j()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/a/e/a;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/cocos2d/a/e/a;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final synthetic k()Lorg/cocos2d/a/e/e;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/e/a;

    iget-object v1, p0, Lorg/cocos2d/a/e/a;->c:Ljava/lang/Object;

    iget-object v2, p0, Lorg/cocos2d/a/e/a;->d:Ljava/lang/String;

    iget-object v3, p0, Lorg/cocos2d/a/e/a;->e:[Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/a/e/a;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    return-object v0
.end method
