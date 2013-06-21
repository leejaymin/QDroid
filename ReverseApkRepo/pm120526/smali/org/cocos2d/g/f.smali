.class public final enum Lorg/cocos2d/g/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/cocos2d/g/f;

.field public static final enum b:Lorg/cocos2d/g/f;

.field public static final enum c:Lorg/cocos2d/g/f;

.field private static final synthetic d:[Lorg/cocos2d/g/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/cocos2d/g/f;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/g/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/g/f;->a:Lorg/cocos2d/g/f;

    new-instance v0, Lorg/cocos2d/g/f;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lorg/cocos2d/g/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/g/f;->b:Lorg/cocos2d/g/f;

    new-instance v0, Lorg/cocos2d/g/f;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lorg/cocos2d/g/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/g/f;->c:Lorg/cocos2d/g/f;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/cocos2d/g/f;

    sget-object v1, Lorg/cocos2d/g/f;->a:Lorg/cocos2d/g/f;

    aput-object v1, v0, v2

    sget-object v1, Lorg/cocos2d/g/f;->b:Lorg/cocos2d/g/f;

    aput-object v1, v0, v3

    sget-object v1, Lorg/cocos2d/g/f;->c:Lorg/cocos2d/g/f;

    aput-object v1, v0, v4

    sput-object v0, Lorg/cocos2d/g/f;->d:[Lorg/cocos2d/g/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lorg/cocos2d/g/f;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/cocos2d/g/f;->d:[Lorg/cocos2d/g/f;

    array-length v1, v0

    new-array v2, v1, [Lorg/cocos2d/g/f;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
