.class final Lorg/cocos2d/g/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lorg/cocos2d/g/i;

    check-cast p2, Lorg/cocos2d/g/i;

    invoke-static {p1}, Lorg/cocos2d/g/i;->b(Lorg/cocos2d/g/i;)I

    move-result v0

    invoke-static {p2}, Lorg/cocos2d/g/i;->b(Lorg/cocos2d/g/i;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
