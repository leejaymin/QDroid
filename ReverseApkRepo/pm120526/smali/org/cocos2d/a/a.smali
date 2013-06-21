.class public Lorg/cocos2d/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/a/i;


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/lang/String;

.field private static e:Lorg/cocos2d/a/a;


# instance fields
.field private c:Lorg/cocos2d/m/c/a;

.field private final d:Lorg/cocos2d/m/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/a/a;->a:Z

    const-class v0, Lorg/cocos2d/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/a/a;->b:Ljava/lang/String;

    new-instance v0, Lorg/cocos2d/a/a;

    invoke-direct {v0}, Lorg/cocos2d/a/a;-><init>()V

    sput-object v0, Lorg/cocos2d/a/a;->e:Lorg/cocos2d/a/a;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/cocos2d/a/b;

    invoke-direct {v0, p0}, Lorg/cocos2d/a/b;-><init>(Lorg/cocos2d/a/a;)V

    iput-object v0, p0, Lorg/cocos2d/a/a;->c:Lorg/cocos2d/m/c/a;

    invoke-static {}, Lorg/cocos2d/a/e;->a()Lorg/cocos2d/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/a/e;->a(Lorg/cocos2d/a/i;)V

    new-instance v0, Lorg/cocos2d/m/a/e;

    invoke-direct {v0}, Lorg/cocos2d/m/a/e;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/a/a;->d:Lorg/cocos2d/m/a/e;

    return-void
.end method

.method public static a()Lorg/cocos2d/a/a;
    .locals 1

    sget-object v0, Lorg/cocos2d/a/a;->e:Lorg/cocos2d/a/a;

    return-object v0
.end method

.method private a(ILorg/cocos2d/a/c;)V
    .locals 3

    iget-object v0, p2, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p2, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v1, p2, Lorg/cocos2d/a/c;->c:I

    if-lt v1, p1, :cond_0

    iget v1, p2, Lorg/cocos2d/a/c;->c:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p2, Lorg/cocos2d/a/c;->c:I

    :cond_0
    iget-object v1, p2, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lorg/cocos2d/a/a;->a(Lorg/cocos2d/a/c;)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Lorg/cocos2d/a/c;)V
    .locals 2

    iget-object v0, p1, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    iput v0, p1, Lorg/cocos2d/a/c;->c:I

    iget-object v0, p0, Lorg/cocos2d/a/a;->d:Lorg/cocos2d/m/a/e;

    iget-object v1, p1, Lorg/cocos2d/a/c;->b:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/m/a/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/cocos2d/a/c;->b:Lorg/cocos2d/g/i;

    iget-object v1, p0, Lorg/cocos2d/a/a;->c:Lorg/cocos2d/m/c/a;

    invoke-virtual {v1, v0}, Lorg/cocos2d/m/c/a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(F)V
    .locals 5

    iget-object v0, p0, Lorg/cocos2d/a/a;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0}, Lorg/cocos2d/m/a/e;->a()Lorg/cocos2d/m/a/g;

    move-result-object v0

    move-object v2, v0

    :goto_0
    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lorg/cocos2d/m/a/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/c;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lorg/cocos2d/a/c;->d:Z

    if-nez v1, :cond_1

    iget-object v3, v0, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_0
    iput v1, v0, Lorg/cocos2d/a/c;->c:I

    :goto_1
    iget v1, v0, Lorg/cocos2d/a/c;->c:I

    iget-object v4, v0, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_3

    const/4 v1, -0x1

    iput v1, v0, Lorg/cocos2d/a/c;->c:I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v1, v0, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lorg/cocos2d/a/a;->a(Lorg/cocos2d/a/c;)V

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/a/a;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0, v2}, Lorg/cocos2d/m/a/e;->a(Lorg/cocos2d/m/a/g;)Lorg/cocos2d/m/a/g;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, v0, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    iget v4, v0, Lorg/cocos2d/a/c;->c:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/a/a/a;

    invoke-virtual {v1, p1}, Lorg/cocos2d/a/a/a;->a(F)V

    invoke-virtual {v1}, Lorg/cocos2d/a/a/a;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lorg/cocos2d/a/a/a;->d()V

    iget-object v1, p0, Lorg/cocos2d/a/a;->d:Lorg/cocos2d/m/a/e;

    iget-object v4, v0, Lorg/cocos2d/a/c;->b:Lorg/cocos2d/g/i;

    invoke-virtual {v1, v4}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/a/c;

    if-eqz v1, :cond_4

    iget v1, v0, Lorg/cocos2d/a/c;->c:I

    if-ltz v1, :cond_4

    iget v1, v0, Lorg/cocos2d/a/c;->c:I

    invoke-direct {p0, v1, v0}, Lorg/cocos2d/a/a;->a(ILorg/cocos2d/a/c;)V

    :cond_4
    iget v1, v0, Lorg/cocos2d/a/c;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/cocos2d/a/c;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final a(Lorg/cocos2d/a/a/a;Lorg/cocos2d/g/i;Z)V
    .locals 3

    sget-boolean v0, Lorg/cocos2d/a/a;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument action must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v0, Lorg/cocos2d/a/a;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Argument target must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/a/a;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0, p2}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/c;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/a/a;->c:Lorg/cocos2d/m/c/a;

    invoke-virtual {v0}, Lorg/cocos2d/m/c/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/c;

    iput-object p2, v0, Lorg/cocos2d/a/c;->b:Lorg/cocos2d/g/i;

    iput-boolean p3, v0, Lorg/cocos2d/a/c;->d:Z

    iget-object v1, p0, Lorg/cocos2d/a/a;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v1, p2, v0}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object v1, v0, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lorg/cocos2d/a/a;->a:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "runAction: Action already running"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, v0, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1, p2}, Lorg/cocos2d/a/a/a;->a(Lorg/cocos2d/g/i;)V

    return-void
.end method

.method public final a(Lorg/cocos2d/g/i;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/a/a;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0, p1}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/c;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/cocos2d/a/a;->a(Lorg/cocos2d/a/c;)V

    goto :goto_0
.end method

.method public final b(Lorg/cocos2d/g/i;)V
    .locals 7

    sget-boolean v0, Lorg/cocos2d/a/a;->a:Z

    iget-object v0, p0, Lorg/cocos2d/a/a;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0, p1}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/a/c;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, v0, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-lt v4, v3, :cond_1

    monitor-exit v2

    :cond_0
    return-void

    :cond_1
    iget-object v1, v0, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cocos2d/a/a/a;

    invoke-virtual {v1}, Lorg/cocos2d/a/a/a;->b()I

    move-result v5

    const v6, -0x3f3faffe

    if-ne v5, v6, :cond_2

    invoke-virtual {v1}, Lorg/cocos2d/a/a/a;->a()Lorg/cocos2d/g/i;

    move-result-object v1

    if-ne v1, p1, :cond_2

    invoke-direct {p0, v4, v0}, Lorg/cocos2d/a/a;->a(ILorg/cocos2d/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final c(Lorg/cocos2d/g/i;)I
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/a/a;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0, p1}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/a/c;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/cocos2d/a/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_0
    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Lorg/cocos2d/g/i;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/a;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0, p1}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/a/c;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/a/c;->d:Z

    :cond_0
    return-void
.end method

.method public final e(Lorg/cocos2d/g/i;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/a;->d:Lorg/cocos2d/m/a/e;

    invoke-virtual {v0, p1}, Lorg/cocos2d/m/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/a/c;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/a/c;->d:Z

    :cond_0
    return-void
.end method
