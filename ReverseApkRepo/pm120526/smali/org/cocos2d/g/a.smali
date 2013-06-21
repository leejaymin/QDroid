.class public final Lorg/cocos2d/g/a;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/ArrayList;

.field private b:Ljava/lang/String;

.field private c:F


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/cocos2d/g/a;-><init>(Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;B)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/cocos2d/g/a;-><init>(Ljava/lang/String;FLjava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;C)V
    .locals 2

    const v0, 0x3e4ccccd

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/cocos2d/g/a;-><init>(Ljava/lang/String;FLjava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;FLjava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/cocos2d/g/a;->c:F

    iput-object p1, p0, Lorg/cocos2d/g/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/g/a;->a:Ljava/util/ArrayList;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/cocos2d/g/a;
    .locals 1

    new-instance v0, Lorg/cocos2d/g/a;

    invoke-direct {v0, p0}, Lorg/cocos2d/g/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/g/a;
    .locals 1

    new-instance v0, Lorg/cocos2d/g/a;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/g/a;-><init>(Ljava/lang/String;FLjava/util/ArrayList;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lorg/cocos2d/g/a;
    .locals 2

    new-instance v0, Lorg/cocos2d/g/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/cocos2d/g/a;-><init>(Ljava/lang/String;C)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lorg/cocos2d/g/a;->c:F

    return v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/a;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-static {v1, v1, v1, v1}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v1

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->h()Lorg/cocos2d/l/g;

    move-result-object v2

    iput-object v2, v1, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/cocos2d/g/p;->a(Lorg/cocos2d/opengl/i;Lorg/cocos2d/l/f;Lorg/cocos2d/l/e;)Lorg/cocos2d/g/p;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/g/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
