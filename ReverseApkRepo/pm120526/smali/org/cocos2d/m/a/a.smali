.class public Lorg/cocos2d/m/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile a:Lorg/cocos2d/m/a/b;

.field private volatile d:Lorg/cocos2d/m/a/b;

.field private volatile e:Lorg/cocos2d/m/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/cocos2d/m/a/a;

    const-class v1, Lorg/cocos2d/m/a/b;

    const-string v2, "e"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/m/a/a;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lorg/cocos2d/m/a/a;

    const-class v1, Lorg/cocos2d/m/a/b;

    const-string v2, "d"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/m/a/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lorg/cocos2d/m/a/a;

    const-class v1, Lorg/cocos2d/m/a/b;

    const-string v2, "a"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/m/a/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/cocos2d/m/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/cocos2d/m/a/b;-><init>(B)V

    iput-object v0, p0, Lorg/cocos2d/m/a/a;->d:Lorg/cocos2d/m/a/b;

    iget-object v0, p0, Lorg/cocos2d/m/a/a;->d:Lorg/cocos2d/m/a/b;

    iput-object v0, p0, Lorg/cocos2d/m/a/a;->e:Lorg/cocos2d/m/a/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/m/a/a;->a:Lorg/cocos2d/m/a/b;

    return-void
.end method

.method private a(Lorg/cocos2d/m/a/b;Lorg/cocos2d/m/a/b;)Z
    .locals 1

    sget-object v0, Lorg/cocos2d/m/a/a;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(Lorg/cocos2d/m/a/b;Lorg/cocos2d/m/a/b;)Z
    .locals 1

    sget-object v0, Lorg/cocos2d/m/a/a;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/cocos2d/m/a/a;->d:Lorg/cocos2d/m/a/b;

    iget-object v1, p0, Lorg/cocos2d/m/a/a;->e:Lorg/cocos2d/m/a/b;

    iget-object v2, v0, Lorg/cocos2d/m/a/b;->b:Lorg/cocos2d/m/a/b;

    iget-object v3, p0, Lorg/cocos2d/m/a/a;->d:Lorg/cocos2d/m/a/b;

    if-ne v0, v3, :cond_0

    if-ne v0, v1, :cond_2

    if-nez v2, :cond_1

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_1
    invoke-direct {p0, v1, v2}, Lorg/cocos2d/m/a/a;->a(Lorg/cocos2d/m/a/b;Lorg/cocos2d/m/a/b;)Z

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/cocos2d/m/a/a;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v4, v0, Lorg/cocos2d/m/a/b;->a:Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lorg/cocos2d/m/a/a;->a:Lorg/cocos2d/m/a/b;

    iput-object v1, v0, Lorg/cocos2d/m/a/b;->b:Lorg/cocos2d/m/a/b;

    invoke-direct {p0, v1, v0}, Lorg/cocos2d/m/a/a;->b(Lorg/cocos2d/m/a/b;Lorg/cocos2d/m/a/b;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v2, Lorg/cocos2d/m/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iput-object v4, v2, Lorg/cocos2d/m/a/b;->a:Ljava/lang/Object;

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/m/a/a;->a:Lorg/cocos2d/m/a/b;

    if-nez v0, :cond_2

    new-instance v0, Lorg/cocos2d/m/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/cocos2d/m/a/b;-><init>(B)V

    :goto_0
    iput-object p1, v0, Lorg/cocos2d/m/a/b;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/cocos2d/m/a/b;->b:Lorg/cocos2d/m/a/b;

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/cocos2d/m/a/a;->e:Lorg/cocos2d/m/a/b;

    iget-object v2, v1, Lorg/cocos2d/m/a/b;->b:Lorg/cocos2d/m/a/b;

    iget-object v3, p0, Lorg/cocos2d/m/a/a;->e:Lorg/cocos2d/m/a/b;

    if-ne v1, v3, :cond_1

    if-nez v2, :cond_3

    invoke-virtual {v1, v2, v0}, Lorg/cocos2d/m/a/b;->a(Lorg/cocos2d/m/a/b;Lorg/cocos2d/m/a/b;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, v0}, Lorg/cocos2d/m/a/a;->a(Lorg/cocos2d/m/a/b;Lorg/cocos2d/m/a/b;)Z

    return-void

    :cond_2
    iget-object v1, v0, Lorg/cocos2d/m/a/b;->b:Lorg/cocos2d/m/a/b;

    invoke-direct {p0, v0, v1}, Lorg/cocos2d/m/a/a;->b(Lorg/cocos2d/m/a/b;Lorg/cocos2d/m/a/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1, v2}, Lorg/cocos2d/m/a/a;->a(Lorg/cocos2d/m/a/b;Lorg/cocos2d/m/a/b;)Z

    goto :goto_1
.end method
