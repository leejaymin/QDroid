.class public final Lorg/cocos2d/a/e/c;
.super Lorg/cocos2d/a/e/b;


# instance fields
.field protected g:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lorg/cocos2d/a/e/b;-><init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object p3, p0, Lorg/cocos2d/a/e/c;->g:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/a/e/c;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/e/c;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/cocos2d/a/e/c;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final j()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/a/e/c;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/cocos2d/a/e/c;->c:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/cocos2d/a/e/c;->a:Lorg/cocos2d/g/i;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/cocos2d/a/e/c;->g:Ljava/lang/Object;

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
