.class public Lorg/cocos2d/m/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile a:Lorg/cocos2d/m/a/d;

.field volatile b:Lorg/cocos2d/m/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/cocos2d/m/a/c;

    const-class v1, Lorg/cocos2d/m/a/d;

    const-string v2, "a"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/m/a/c;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lorg/cocos2d/m/a/c;

    const-class v1, Lorg/cocos2d/m/a/d;

    const-string v2, "b"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/m/a/c;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/m/a/c;->a:Lorg/cocos2d/m/a/d;

    iput-object v0, p0, Lorg/cocos2d/m/a/c;->b:Lorg/cocos2d/m/a/d;

    return-void
.end method

.method private a(Lorg/cocos2d/m/a/d;Lorg/cocos2d/m/a/d;)Z
    .locals 1

    sget-object v0, Lorg/cocos2d/m/a/c;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(Lorg/cocos2d/m/a/d;Lorg/cocos2d/m/a/d;)Z
    .locals 1

    sget-object v0, Lorg/cocos2d/m/a/c;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/m/a/c;->a:Lorg/cocos2d/m/a/d;

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, v0, Lorg/cocos2d/m/a/d;->b:Lorg/cocos2d/m/a/d;

    invoke-direct {p0, v0, v1}, Lorg/cocos2d/m/a/c;->a(Lorg/cocos2d/m/a/d;Lorg/cocos2d/m/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/cocos2d/m/a/d;->a:Ljava/lang/Object;

    iput-object v2, v0, Lorg/cocos2d/m/a/d;->a:Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lorg/cocos2d/m/a/c;->b:Lorg/cocos2d/m/a/d;

    iput-object v2, v0, Lorg/cocos2d/m/a/d;->b:Lorg/cocos2d/m/a/d;

    invoke-direct {p0, v2, v0}, Lorg/cocos2d/m/a/c;->b(Lorg/cocos2d/m/a/d;Lorg/cocos2d/m/a/d;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/m/a/c;->b:Lorg/cocos2d/m/a/d;

    if-nez v0, :cond_2

    new-instance v0, Lorg/cocos2d/m/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/cocos2d/m/a/d;-><init>(B)V

    :goto_0
    iput-object p1, v0, Lorg/cocos2d/m/a/d;->a:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lorg/cocos2d/m/a/c;->a:Lorg/cocos2d/m/a/d;

    iput-object v1, v0, Lorg/cocos2d/m/a/d;->b:Lorg/cocos2d/m/a/d;

    invoke-direct {p0, v1, v0}, Lorg/cocos2d/m/a/c;->a(Lorg/cocos2d/m/a/d;Lorg/cocos2d/m/a/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_2
    iget-object v1, v0, Lorg/cocos2d/m/a/d;->b:Lorg/cocos2d/m/a/d;

    invoke-direct {p0, v0, v1}, Lorg/cocos2d/m/a/c;->b(Lorg/cocos2d/m/a/d;Lorg/cocos2d/m/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
