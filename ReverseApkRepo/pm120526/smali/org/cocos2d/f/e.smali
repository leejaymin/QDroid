.class public final Lorg/cocos2d/f/e;
.super Lorg/cocos2d/f/g;


# direct methods
.method private constructor <init>(Lorg/cocos2d/g/o;Lorg/cocos2d/g/o;Lorg/cocos2d/g/i;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/f/g;-><init>(Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lorg/cocos2d/f/e;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lorg/cocos2d/f/e;->b(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lorg/cocos2d/f/e;->b(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;
    .locals 3

    new-instance v0, Lorg/cocos2d/f/e;

    invoke-static {p0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    invoke-static {p1}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2, p3}, Lorg/cocos2d/f/e;-><init>(Lorg/cocos2d/g/o;Lorg/cocos2d/g/o;Lorg/cocos2d/g/i;Ljava/lang/String;)V

    return-object v0
.end method
