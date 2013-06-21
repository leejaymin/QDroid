.class public final La/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:La/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/f;

    invoke-direct {v0}, La/a/f;-><init>()V

    iput-object v0, p0, La/a/c;->a:La/a/b;

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, La/a/c;->a:La/a/b;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use this builder any longer, build() has already been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()La/a/c;
    .locals 2

    invoke-direct {p0}, La/a/c;->c()V

    iget-object v0, p0, La/a/c;->a:La/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/a/b;->a(Z)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)La/a/c;
    .locals 1

    invoke-direct {p0}, La/a/c;->c()V

    iget-object v0, p0, La/a/c;->a:La/a/b;

    invoke-virtual {v0, p1}, La/a/b;->h(Ljava/lang/String;)V

    return-object p0
.end method

.method public final b()La/a/a;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/a/c;->c()V

    :try_start_0
    iget-object v0, p0, La/a/c;->a:La/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, La/a/c;->a:La/a/b;

    return-object v0

    :catchall_0
    move-exception v0

    iput-object v1, p0, La/a/c;->a:La/a/b;

    throw v0
.end method

.method public final b(Ljava/lang/String;)La/a/c;
    .locals 1

    invoke-direct {p0}, La/a/c;->c()V

    iget-object v0, p0, La/a/c;->a:La/a/b;

    invoke-virtual {v0, p1}, La/a/b;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)La/a/c;
    .locals 1

    invoke-direct {p0}, La/a/c;->c()V

    iget-object v0, p0, La/a/c;->a:La/a/b;

    invoke-virtual {v0, p1}, La/a/b;->j(Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(Ljava/lang/String;)La/a/c;
    .locals 1

    invoke-direct {p0}, La/a/c;->c()V

    iget-object v0, p0, La/a/c;->a:La/a/b;

    invoke-virtual {v0, p1}, La/a/b;->k(Ljava/lang/String;)V

    return-object p0
.end method
