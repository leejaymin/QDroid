.class public abstract Lccc71/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/ArrayList;

.field protected b:Z

.field protected c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/a/a/a/b;->a:Ljava/util/ArrayList;

    .line 20
    iput-boolean v1, p0, Lccc71/a/a/a/b;->b:Z

    .line 22
    iput-boolean v1, p0, Lccc71/a/a/a/b;->c:Z

    .line 28
    new-instance v0, Lccc71/a/a/a/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lccc71/a/a/a/c;-><init>(Lccc71/a/a/a/b;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/a/a/a/b;->b:Z

    .line 43
    return-void
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lccc71/a/a/a/b;->c:Z

    .line 53
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lccc71/a/a/a/b;->c:Z

    return v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lccc71/a/a/a/b;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lccc71/a/a/a/b;->a:Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
