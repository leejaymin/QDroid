.class public final enum Lorg/cocos2d/c/h;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/cocos2d/c/h;

.field public static final enum b:Lorg/cocos2d/c/h;

.field public static final enum c:Lorg/cocos2d/c/h;

.field public static final enum d:Lorg/cocos2d/c/h;

.field public static final enum e:Lorg/cocos2d/c/h;

.field public static final enum f:Lorg/cocos2d/c/h;

.field private static final synthetic h:[Lorg/cocos2d/c/h;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, Lorg/cocos2d/c/h;

    const-string v1, "ccTouchSelectorNoneBit"

    invoke-direct {v0, v1, v8, v5}, Lorg/cocos2d/c/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/cocos2d/c/h;->a:Lorg/cocos2d/c/h;

    new-instance v0, Lorg/cocos2d/c/h;

    const-string v1, "ccTouchSelectorBeganBit"

    invoke-direct {v0, v1, v5, v5}, Lorg/cocos2d/c/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/cocos2d/c/h;->b:Lorg/cocos2d/c/h;

    new-instance v0, Lorg/cocos2d/c/h;

    const-string v1, "ccTouchSelectorMovedBit"

    invoke-direct {v0, v1, v6, v6}, Lorg/cocos2d/c/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/cocos2d/c/h;->c:Lorg/cocos2d/c/h;

    new-instance v0, Lorg/cocos2d/c/h;

    const-string v1, "ccTouchSelectorEndedBit"

    invoke-direct {v0, v1, v9, v7}, Lorg/cocos2d/c/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/cocos2d/c/h;->d:Lorg/cocos2d/c/h;

    new-instance v0, Lorg/cocos2d/c/h;

    const-string v1, "ccTouchSelectorCancelledBit"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lorg/cocos2d/c/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/cocos2d/c/h;->e:Lorg/cocos2d/c/h;

    new-instance v0, Lorg/cocos2d/c/h;

    const-string v1, "ccTouchSelectorAllBits"

    const/4 v2, 0x5

    sget-object v3, Lorg/cocos2d/c/h;->b:Lorg/cocos2d/c/h;

    iget v3, v3, Lorg/cocos2d/c/h;->g:I

    sget-object v4, Lorg/cocos2d/c/h;->c:Lorg/cocos2d/c/h;

    iget v4, v4, Lorg/cocos2d/c/h;->g:I

    or-int/2addr v3, v4

    sget-object v4, Lorg/cocos2d/c/h;->d:Lorg/cocos2d/c/h;

    iget v4, v4, Lorg/cocos2d/c/h;->g:I

    or-int/2addr v3, v4

    sget-object v4, Lorg/cocos2d/c/h;->e:Lorg/cocos2d/c/h;

    iget v4, v4, Lorg/cocos2d/c/h;->g:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/c/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/cocos2d/c/h;->f:Lorg/cocos2d/c/h;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/cocos2d/c/h;

    sget-object v1, Lorg/cocos2d/c/h;->a:Lorg/cocos2d/c/h;

    aput-object v1, v0, v8

    sget-object v1, Lorg/cocos2d/c/h;->b:Lorg/cocos2d/c/h;

    aput-object v1, v0, v5

    sget-object v1, Lorg/cocos2d/c/h;->c:Lorg/cocos2d/c/h;

    aput-object v1, v0, v6

    sget-object v1, Lorg/cocos2d/c/h;->d:Lorg/cocos2d/c/h;

    aput-object v1, v0, v9

    sget-object v1, Lorg/cocos2d/c/h;->e:Lorg/cocos2d/c/h;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/cocos2d/c/h;->f:Lorg/cocos2d/c/h;

    aput-object v2, v0, v1

    sput-object v0, Lorg/cocos2d/c/h;->h:[Lorg/cocos2d/c/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/cocos2d/c/h;->g:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/c/h;->g:I

    return v0
.end method
