.class public final Lorg/cocos2d/g/q;
.super Ljava/lang/Object;


# static fields
.field private static b:Lorg/cocos2d/g/q;


# instance fields
.field a:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2d/g/q;->b:Lorg/cocos2d/g/q;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lorg/cocos2d/g/q;->b:Lorg/cocos2d/g/q;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/cocos2d/g/q;->b:Lorg/cocos2d/g/q;

    iget-object v0, v0, Lorg/cocos2d/g/q;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2d/g/q;->b:Lorg/cocos2d/g/q;

    :cond_0
    return-void
.end method
