.class public final La/d/c;
.super Ljava/lang/Object;


# static fields
.field static a:[Ljava/lang/Object;

.field private static final b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.maxBuffers"

    const/16 v1, 0x10

    invoke-static {v0, v1}, La/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, La/d/c;->b:I

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, La/d/c;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, La/d/c;->c:I

    return-void
.end method

.method static a(La/d/ao;La/d/ap;)V
    .locals 2

    sget-object v1, La/d/c;->a:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, La/d/c;->a()[B

    move-result-object v0

    iput-object v0, p0, La/d/ao;->V:[B

    invoke-static {}, La/d/c;->a()[B

    move-result-object v0

    iput-object v0, p1, La/d/ap;->O:[B

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a([B)V
    .locals 3

    sget-object v1, La/d/c;->a:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, La/d/c;->c:I

    sget v2, La/d/c;->b:I

    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget v2, La/d/c;->b:I

    if-ge v0, v2, :cond_1

    sget-object v2, La/d/c;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    sget-object v2, La/d/c;->a:[Ljava/lang/Object;

    aput-object p0, v2, v0

    sget v0, La/d/c;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, La/d/c;->c:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()[B
    .locals 5

    sget-object v2, La/d/c;->a:[Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget v0, La/d/c;->c:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, La/d/c;->b:I

    if-ge v1, v0, :cond_1

    sget-object v0, La/d/c;->a:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v0, La/d/c;->a:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, [B

    sget-object v3, La/d/c;->a:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    sget v1, La/d/c;->c:I

    add-int/lit8 v1, v1, -0x1

    sput v1, La/d/c;->c:I

    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const v0, 0xffff

    new-array v0, v0, [B

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
