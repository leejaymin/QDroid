.class final enum Lorg/cocos2d/f/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/cocos2d/f/b;

.field public static final enum b:Lorg/cocos2d/f/b;

.field private static final synthetic c:[Lorg/cocos2d/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/cocos2d/f/b;

    const-string v1, "kMenuStateWaiting"

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/f/b;->a:Lorg/cocos2d/f/b;

    new-instance v0, Lorg/cocos2d/f/b;

    const-string v1, "kMenuStateTrackingTouch"

    invoke-direct {v0, v1, v3}, Lorg/cocos2d/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/f/b;->b:Lorg/cocos2d/f/b;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/cocos2d/f/b;

    sget-object v1, Lorg/cocos2d/f/b;->a:Lorg/cocos2d/f/b;

    aput-object v1, v0, v2

    sget-object v1, Lorg/cocos2d/f/b;->b:Lorg/cocos2d/f/b;

    aput-object v1, v0, v3

    sput-object v0, Lorg/cocos2d/f/b;->c:[Lorg/cocos2d/f/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
