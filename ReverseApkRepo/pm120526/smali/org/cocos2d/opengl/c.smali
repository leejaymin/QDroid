.class final Lorg/cocos2d/opengl/c;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Lorg/cocos2d/l/f;

.field c:I

.field d:I

.field e:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v0, v0, v0}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/c;->b:Lorg/cocos2d/l/f;

    return-void
.end method
