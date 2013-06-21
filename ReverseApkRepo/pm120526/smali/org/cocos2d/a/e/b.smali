.class public Lorg/cocos2d/a/e/b;
.super Lorg/cocos2d/a/e/a;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2d/a/e/a;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/b;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/e/b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-direct {v0, p0, p1, v1}, Lorg/cocos2d/a/e/b;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public j()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/a/e/b;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/cocos2d/a/e/b;->c:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/cocos2d/a/e/b;->a:Lorg/cocos2d/g/i;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
