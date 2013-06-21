.class public final enum Lorg/cocos2d/opengl/aj;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/cocos2d/opengl/aj;

.field public static final enum b:Lorg/cocos2d/opengl/aj;

.field public static final enum c:Lorg/cocos2d/opengl/aj;

.field public static final enum d:Lorg/cocos2d/opengl/aj;

.field public static final enum e:Lorg/cocos2d/opengl/aj;

.field public static final enum f:Lorg/cocos2d/opengl/aj;

.field private static final synthetic g:[Lorg/cocos2d/opengl/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/cocos2d/opengl/aj;

    const-string v1, "TGA_OK"

    invoke-direct {v0, v1, v3}, Lorg/cocos2d/opengl/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/opengl/aj;->a:Lorg/cocos2d/opengl/aj;

    new-instance v0, Lorg/cocos2d/opengl/aj;

    const-string v1, "TGA_ERROR_FILE_OPEN"

    invoke-direct {v0, v1, v4}, Lorg/cocos2d/opengl/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/opengl/aj;->b:Lorg/cocos2d/opengl/aj;

    new-instance v0, Lorg/cocos2d/opengl/aj;

    const-string v1, "TGA_ERROR_READING_FILE"

    invoke-direct {v0, v1, v5}, Lorg/cocos2d/opengl/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/opengl/aj;->c:Lorg/cocos2d/opengl/aj;

    new-instance v0, Lorg/cocos2d/opengl/aj;

    const-string v1, "TGA_ERROR_INDEXED_COLOR"

    invoke-direct {v0, v1, v6}, Lorg/cocos2d/opengl/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/opengl/aj;->d:Lorg/cocos2d/opengl/aj;

    new-instance v0, Lorg/cocos2d/opengl/aj;

    const-string v1, "TGA_ERROR_MEMORY"

    invoke-direct {v0, v1, v7}, Lorg/cocos2d/opengl/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/opengl/aj;->e:Lorg/cocos2d/opengl/aj;

    new-instance v0, Lorg/cocos2d/opengl/aj;

    const-string v1, "TGA_ERROR_COMPRESSED_FILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/opengl/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/cocos2d/opengl/aj;->f:Lorg/cocos2d/opengl/aj;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/cocos2d/opengl/aj;

    sget-object v1, Lorg/cocos2d/opengl/aj;->a:Lorg/cocos2d/opengl/aj;

    aput-object v1, v0, v3

    sget-object v1, Lorg/cocos2d/opengl/aj;->b:Lorg/cocos2d/opengl/aj;

    aput-object v1, v0, v4

    sget-object v1, Lorg/cocos2d/opengl/aj;->c:Lorg/cocos2d/opengl/aj;

    aput-object v1, v0, v5

    sget-object v1, Lorg/cocos2d/opengl/aj;->d:Lorg/cocos2d/opengl/aj;

    aput-object v1, v0, v6

    sget-object v1, Lorg/cocos2d/opengl/aj;->e:Lorg/cocos2d/opengl/aj;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/cocos2d/opengl/aj;->f:Lorg/cocos2d/opengl/aj;

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2d/opengl/aj;->g:[Lorg/cocos2d/opengl/aj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
