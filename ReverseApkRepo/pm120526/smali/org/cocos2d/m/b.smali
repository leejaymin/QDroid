.class public final Lorg/cocos2d/m/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Lorg/cocos2d/m/b;


# instance fields
.field private a:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cocos2d/m/b;

    invoke-direct {v0}, Lorg/cocos2d/m/b;-><init>()V

    sput-object v0, Lorg/cocos2d/m/b;->b:Lorg/cocos2d/m/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/m/b;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static a(I)Ljava/nio/FloatBuffer;
    .locals 2

    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lorg/cocos2d/m/b;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Ljava/nio/ShortBuffer;
    .locals 2

    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lorg/cocos2d/m/b;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static c(I)Ljava/nio/ByteBuffer;
    .locals 5

    const/high16 v2, 0x10

    sget-object v0, Lorg/cocos2d/m/b;->b:Lorg/cocos2d/m/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/cocos2d/m/b;->b:Lorg/cocos2d/m/b;

    if-lt p0, v2, :cond_0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v2, v1, Lorg/cocos2d/m/b;->a:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/cocos2d/m/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le p0, v2, :cond_2

    :cond_1
    const/high16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v1, Lorg/cocos2d/m/b;->a:Ljava/nio/ByteBuffer;

    :cond_2
    iget-object v2, v1, Lorg/cocos2d/m/b;->a:Ljava/nio/ByteBuffer;

    iget-object v3, v1, Lorg/cocos2d/m/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, p0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, v1, Lorg/cocos2d/m/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, v1, Lorg/cocos2d/m/b;->a:Ljava/nio/ByteBuffer;

    iget-object v4, v1, Lorg/cocos2d/m/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, v1, Lorg/cocos2d/m/b;->a:Ljava/nio/ByteBuffer;

    iget-object v1, v1, Lorg/cocos2d/m/b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
