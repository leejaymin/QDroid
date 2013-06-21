.class public final Lorg/cocos2d/l/m;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/cocos2d/l/m;->a:I

    iput p2, p0, Lorg/cocos2d/l/m;->b:I

    return-void
.end method

.method public constructor <init>(Lorg/cocos2d/l/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/cocos2d/l/m;->a:I

    iput v0, p0, Lorg/cocos2d/l/m;->a:I

    iget v0, p1, Lorg/cocos2d/l/m;->b:I

    iput v0, p0, Lorg/cocos2d/l/m;->b:I

    return-void
.end method

.method public static a(II)Lorg/cocos2d/l/m;
    .locals 1

    new-instance v0, Lorg/cocos2d/l/m;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/l/m;-><init>(II)V

    return-object v0
.end method
