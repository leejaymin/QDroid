.class public final Lorg/cocos2d/g/p;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/cocos2d/l/f;

.field b:Lorg/cocos2d/l/e;

.field c:Lorg/cocos2d/l/g;

.field d:Lorg/cocos2d/opengl/i;

.field e:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lorg/cocos2d/opengl/i;Lorg/cocos2d/l/f;Lorg/cocos2d/l/e;)V
    .locals 6

    iget-object v4, p2, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/g/p;-><init>(Lorg/cocos2d/opengl/i;Lorg/cocos2d/l/f;Lorg/cocos2d/l/e;Lorg/cocos2d/l/g;Ljava/lang/Boolean;)V

    return-void
.end method

.method private constructor <init>(Lorg/cocos2d/opengl/i;Lorg/cocos2d/l/f;Lorg/cocos2d/l/e;Lorg/cocos2d/l/g;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/cocos2d/g/p;->d:Lorg/cocos2d/opengl/i;

    iput-object p3, p0, Lorg/cocos2d/g/p;->b:Lorg/cocos2d/l/e;

    iput-object p2, p0, Lorg/cocos2d/g/p;->a:Lorg/cocos2d/l/f;

    iput-object p4, p0, Lorg/cocos2d/g/p;->c:Lorg/cocos2d/l/g;

    iput-object p5, p0, Lorg/cocos2d/g/p;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Lorg/cocos2d/opengl/i;Lorg/cocos2d/l/f;Lorg/cocos2d/l/e;)Lorg/cocos2d/g/p;
    .locals 1

    new-instance v0, Lorg/cocos2d/g/p;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/g/p;-><init>(Lorg/cocos2d/opengl/i;Lorg/cocos2d/l/f;Lorg/cocos2d/l/e;)V

    return-object v0
.end method
