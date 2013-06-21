.class public abstract LfT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LfV;


# instance fields
.field private final a:[LfU;


# direct methods
.method public constructor <init>([LfU;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, LfT;->a:[LfU;

    .line 251
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LfT;->a:[LfU;

    aget-object v0, v0, p1

    iget-object v0, v0, LfU;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LfT;->a:[LfU;

    aget-object v0, v0, p1

    .line 263
    iput-object p2, v0, LfU;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lgi;)V
    .locals 2
    .parameter

    .prologue
    .line 268
    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, LfT;->a:[LfU;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 269
    iget-object v1, p0, LfT;->a:[LfU;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, LfU;->a(Lgi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lgi;)V
    .locals 2
    .parameter

    .prologue
    .line 274
    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, LfT;->a:[LfU;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 275
    iget-object v1, p0, LfT;->a:[LfU;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, LfU;->b(Lgi;)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p1}, Lgi;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
