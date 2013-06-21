.class public final Lorg/cocos2d/g/n;
.super Ljava/lang/Object;


# instance fields
.field a:[F

.field b:[F

.field c:[F

.field d:[F

.field e:Z

.field f:I

.field g:I

.field h:Ljava/nio/FloatBuffer;

.field i:Ljava/nio/FloatBuffer;

.field j:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/cocos2d/g/n;->a:[F

    const/16 v0, 0xc8

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/cocos2d/g/n;->b:[F

    const/16 v0, 0x190

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/cocos2d/g/n;->c:[F

    const/16 v0, 0x32

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/cocos2d/g/n;->d:[F

    const/16 v0, 0x4b0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/n;->h:Ljava/nio/FloatBuffer;

    const/16 v0, 0x320

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/n;->i:Ljava/nio/FloatBuffer;

    const/16 v0, 0x640

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/n;->j:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lorg/cocos2d/g/n;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/g/n;->f:I

    iput v0, p0, Lorg/cocos2d/g/n;->g:I

    iput-boolean v0, p0, Lorg/cocos2d/g/n;->e:Z

    return-void
.end method
