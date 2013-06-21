.class public final Lorg/cocos2d/f/d;
.super Lorg/cocos2d/f/f;


# static fields
.field static g:I

.field static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    sput v0, Lorg/cocos2d/f/d;->g:I

    const-string v0, "DroidSans"

    sput-object v0, Lorg/cocos2d/f/d;->h:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/cocos2d/g/d;Lorg/cocos2d/g/i;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2d/f/f;-><init>(Lorg/cocos2d/i/b;Lorg/cocos2d/g/i;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/d;
    .locals 2

    sget-object v0, Lorg/cocos2d/f/d;->h:Ljava/lang/String;

    sget v1, Lorg/cocos2d/f/d;->g:I

    int-to-float v1, v1

    invoke-static {p0, v0, v1}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v0

    new-instance v1, Lorg/cocos2d/f/d;

    invoke-direct {v1, v0, p1, p2}, Lorg/cocos2d/f/d;-><init>(Lorg/cocos2d/g/d;Lorg/cocos2d/g/i;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lorg/cocos2d/f/d;->h:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lorg/cocos2d/f/d;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lorg/cocos2d/f/d;

    sget-object v1, Lorg/cocos2d/f/d;->h:Ljava/lang/String;

    sget v2, Lorg/cocos2d/f/d;->g:I

    int-to-float v2, v2

    invoke-static {p0, v1, v2}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Lorg/cocos2d/f/d;-><init>(Lorg/cocos2d/g/d;Lorg/cocos2d/g/i;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lorg/cocos2d/f/d;->g:I

    return-void
.end method
