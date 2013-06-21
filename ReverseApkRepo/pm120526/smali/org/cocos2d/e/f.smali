.class public final Lorg/cocos2d/e/f;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Lorg/cocos2d/l/g;

.field c:Ljava/nio/IntBuffer;

.field d:Z

.field e:I

.field f:Z

.field g:I

.field h:I

.field i:Ljava/util/HashMap;

.field j:Lorg/cocos2d/l/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lorg/cocos2d/e/f;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/e/f;->f:Z

    const v0, 0x186a0

    iput v0, p0, Lorg/cocos2d/e/f;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/e/f;->h:I

    iput-object v1, p0, Lorg/cocos2d/e/f;->a:Ljava/lang/String;

    iput-object v1, p0, Lorg/cocos2d/e/f;->c:Ljava/nio/IntBuffer;

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/e/f;->j:Lorg/cocos2d/l/e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/e/f;->i:Ljava/util/HashMap;

    return-void
.end method
