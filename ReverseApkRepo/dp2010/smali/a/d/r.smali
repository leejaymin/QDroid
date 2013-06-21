.class public abstract La/d/r;
.super Ljava/lang/Object;


# static fields
.field private static a:La/d/r;


# instance fields
.field private b:Ljava/lang/String;

.field private c:La/d/w;


# direct methods
.method public static a(Ljava/lang/String;La/d/w;)La/d/t;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, La/d/r;->a:La/d/r;

    if-nez v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    sget-object v1, La/d/r;->a:La/d/r;

    monitor-enter v1

    :try_start_0
    sget-object v0, La/d/r;->a:La/d/r;

    iput-object p0, v0, La/d/r;->b:Ljava/lang/String;

    sget-object v0, La/d/r;->a:La/d/r;

    iput-object p1, v0, La/d/r;->c:La/d/w;

    sget-object v0, La/d/r;->a:La/d/r;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
