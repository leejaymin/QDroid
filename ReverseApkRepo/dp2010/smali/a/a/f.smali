.class public abstract La/a/f;
.super Ljava/lang/Object;

# interfaces
.implements La/a/c;


# static fields
.field private static g:I


# instance fields
.field protected a:La/a/b;

.field protected b:I

.field protected c:I

.field protected d:I

.field protected f:La/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, La/a/f;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10b8

    iput v0, p0, La/a/f;->b:I

    iget v0, p0, La/a/f;->b:I

    iput v0, p0, La/a/f;->c:I

    const/4 v0, 0x0

    iput v0, p0, La/a/f;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, La/a/f;->f:La/a/i;

    return-void
.end method

.method public static a(Ljava/lang/String;La/d/t;)La/a/f;
    .locals 3

    const-string v0, "ncacn_np:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, La/a/h;

    invoke-direct {v0, p0, p1}, La/a/h;-><init>(Ljava/lang/String;La/d/t;)V

    return-object v0

    :cond_0
    new-instance v0, La/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DCERPC transport not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(La/a/g;)V
    .locals 11

    const/16 v0, 0x18

    const/4 v10, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v1, p0, La/a/f;->d:I

    if-nez v1, :cond_0

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, La/a/f;->d:I

    new-instance v1, La/a/a;

    iget-object v2, p0, La/a/f;->a:La/a/b;

    invoke-direct {v1, v2, p0}, La/a/a;-><init>(La/a/b;La/a/f;)V

    invoke-virtual {p0, v1}, La/a/f;->a(La/a/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-static {}, La/d/c;->a()[B

    move-result-object v1

    :try_start_2
    new-instance v7, La/a/b/a;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, La/a/b/a;-><init>([BI)V

    const/4 v2, 0x3

    iput v2, p1, La/a/g;->g:I

    sget v2, La/a/f;->g:I

    add-int/lit8 v3, v2, 0x1

    sput v3, La/a/f;->g:I

    iput v2, p1, La/a/g;->i:I

    invoke-virtual {p1, v7}, La/a/g;->e(La/a/b/a;)V

    iget-object v2, p0, La/a/f;->f:La/a/i;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput v2, v7, La/a/b/a;->c:I

    iget-object v2, p0, La/a/f;->f:La/a/i;

    :cond_1
    iget-object v2, v7, La/a/b/a;->e:La/a/b/a;

    iget v2, v2, La/a/b/a;->d:I

    add-int/lit8 v8, v2, -0x18

    move v6, v4

    :goto_0
    if-ge v6, v8, :cond_5

    sub-int v2, v8, v6

    add-int/lit8 v3, v2, 0x18

    iget v9, p0, La/a/f;->b:I

    if-le v3, v9, :cond_4

    iget v2, p1, La/a/g;->g:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p1, La/a/g;->g:I

    iget v2, p0, La/a/f;->b:I

    add-int/lit8 v2, v2, -0x18

    move v3, v5

    :goto_1
    add-int/lit8 v5, v2, 0x18

    iput v5, p1, La/a/g;->h:I

    if-lez v6, :cond_2

    iget v5, p1, La/a/g;->g:I

    and-int/lit8 v5, v5, -0x2

    iput v5, p1, La/a/g;->g:I

    :cond_2
    iget v5, p1, La/a/g;->g:I

    and-int/lit8 v5, v5, 0x3

    if-eq v5, v10, :cond_3

    iput v6, v7, La/a/b/a;->b:I

    invoke-virtual {v7}, La/a/b/a;->a()V

    invoke-virtual {p1, v7}, La/a/g;->c(La/a/b/a;)V

    iget v5, p1, La/a/g;->j:I

    invoke-virtual {v7, v5}, La/a/b/a;->g(I)V

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, La/a/b/a;->f(I)V

    invoke-virtual {p1}, La/a/g;->b()I

    move-result v5

    invoke-virtual {v7, v5}, La/a/b/a;->f(I)V

    :cond_3
    iget v5, p1, La/a/g;->h:I

    invoke-virtual {p0, v1, v6, v5, v3}, La/a/f;->a([BIIZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/2addr v2, v6

    move v6, v2

    move v5, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput v1, p0, La/a/f;->d:I

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_4
    iget v3, p1, La/a/g;->g:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p1, La/a/g;->g:I

    iput v2, p1, La/a/g;->j:I

    move v3, v4

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1, v5}, La/a/f;->a([BZ)V

    invoke-virtual {v7}, La/a/b/a;->a()V

    const/16 v2, 0x8

    iput v2, v7, La/a/b/a;->c:I

    invoke-virtual {v7}, La/a/b/a;->c()I

    move-result v2

    invoke-virtual {v7, v2}, La/a/b/a;->b(I)V

    iget-object v2, p0, La/a/f;->f:La/a/i;

    if-eqz v2, :cond_6

    iget-object v2, p0, La/a/f;->f:La/a/i;

    :cond_6
    const/4 v2, 0x0

    iput v2, v7, La/a/b/a;->c:I

    invoke-virtual {p1, v7}, La/a/g;->d(La/a/b/a;)V

    iget v2, p1, La/a/g;->f:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    invoke-virtual {p1}, La/a/g;->c()Z

    move-result v2

    if-nez v2, :cond_7

    iget v0, p1, La/a/g;->h:I

    :cond_7
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1}, La/a/g;->c()Z

    move-result v4

    if-nez v4, :cond_b

    if-nez v3, :cond_8

    iget v2, p0, La/a/f;->c:I

    new-array v3, v2, [B

    new-instance v2, La/a/b/a;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, La/a/b/a;-><init>([BI)V

    :cond_8
    invoke-virtual {p0, v3, v5}, La/a/f;->a([BZ)V

    invoke-virtual {v2}, La/a/b/a;->a()V

    const/16 v4, 0x8

    iput v4, v2, La/a/b/a;->c:I

    invoke-virtual {v2}, La/a/b/a;->c()I

    move-result v4

    invoke-virtual {v2, v4}, La/a/b/a;->b(I)V

    iget-object v4, p0, La/a/f;->f:La/a/i;

    if-eqz v4, :cond_9

    iget-object v4, p0, La/a/f;->f:La/a/i;

    :cond_9
    invoke-virtual {v2}, La/a/b/a;->a()V

    invoke-virtual {p1, v2}, La/a/g;->d(La/a/b/a;)V

    iget v4, p1, La/a/g;->h:I

    add-int/lit8 v6, v4, -0x18

    add-int v4, v0, v6

    array-length v7, v1

    if-le v4, v7, :cond_a

    add-int v4, v0, v6

    new-array v4, v4, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v7, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v4

    :cond_a
    const/16 v4, 0x18

    invoke-static {v3, v4, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v6

    goto :goto_2

    :cond_b
    new-instance v0, La/a/b/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/b/a;-><init>([BI)V

    invoke-virtual {p1, v0}, La/a/g;->f(La/a/b/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v1}, La/d/c;->a([B)V

    invoke-virtual {p1}, La/a/g;->a()La/a/e;

    move-result-object v0

    if-eqz v0, :cond_c

    throw v0

    :catchall_1
    move-exception v0

    invoke-static {v1}, La/d/c;->a([B)V

    throw v0

    :cond_c
    return-void
.end method

.method protected abstract a([BIIZ)V
.end method

.method protected abstract a([BZ)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/f;->a:La/a/b;

    invoke-virtual {v0}, La/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
