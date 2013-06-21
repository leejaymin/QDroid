.class Lorg/cocos2d/m/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile a:Ljava/lang/Object;

.field volatile b:Lorg/cocos2d/m/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/cocos2d/m/a/b;

    const-class v1, Lorg/cocos2d/m/a/b;

    const-string v2, "b"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/m/a/b;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/m/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lorg/cocos2d/m/a/b;Lorg/cocos2d/m/a/b;)Z
    .locals 1

    sget-object v0, Lorg/cocos2d/m/a/b;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
