.class public final Lcv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcv;

.field private static c:Lcu;


# instance fields
.field private volatile b:Lct;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcv;
    .locals 2

    .prologue
    .line 11
    const-class v1, Lcv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcv;->a:Lcv;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcv;

    invoke-direct {v0}, Lcv;-><init>()V

    sput-object v0, Lcv;->a:Lcv;

    .line 15
    :cond_0
    sget-object v0, Lcv;->a:Lcv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 30
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcv;->b:Lct;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcv;->b:Lct;

    invoke-virtual {v0}, Lct;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    if-eqz p1, :cond_2

    .line 36
    iget-object v0, p0, Lcv;->b:Lct;

    invoke-virtual {v0}, Lct;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    iget-object v0, p0, Lcv;->b:Lct;

    invoke-virtual {v0}, Lct;->join()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Lct;

    invoke-direct {v0, p1}, Lct;-><init>(Z)V

    iput-object v0, p0, Lcv;->b:Lct;

    .line 48
    iget-object v0, p0, Lcv;->b:Lct;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lct;->setPriority(I)V

    .line 49
    iget-object v0, p0, Lcv;->b:Lct;

    invoke-virtual {v0}, Lct;->start()V

    .line 50
    sget-object v0, Lcv;->c:Lcu;

    if-eqz v0, :cond_1

    .line 52
    sget-object v0, Lcv;->c:Lcu;

    invoke-virtual {v0}, Lcu;->a()V

    .line 54
    :cond_1
    new-instance v0, Lcu;

    iget-object v1, p0, Lcv;->b:Lct;

    invoke-direct {v0, v1}, Lcu;-><init>(Lct;)V

    sput-object v0, Lcv;->c:Lcu;

    .line 55
    monitor-exit p0

    :goto_1
    return-void

    .line 44
    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcv;->a(Z)V

    .line 21
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcv;->a(Z)V

    .line 26
    return-void
.end method
