.class La/r;
.super La/q;


# instance fields
.field protected transient e:Ljava/lang/String;

.field protected transient f:I


# direct methods
.method constructor <init>(La/a/a;)V
    .locals 1

    invoke-direct {p0, p1}, La/q;-><init>(La/a/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, La/r;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, La/r;->f:I

    return-void
.end method

.method constructor <init>(La/a/a;La/b/b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, La/q;-><init>(La/a/a;La/b/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, La/r;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, La/r;->f:I

    return-void
.end method

.method private b()La/b/f;
    .locals 2

    iget-object v0, p0, La/r;->b:La/b/b;

    instance-of v0, v0, La/b/f;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OAuth consumer key/secret combination not supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object p0, p0, La/r;->b:La/b/b;

    check-cast p0, La/b/f;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(La/b/h;Ljava/lang/String;)La/b/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, La/r;->b()La/b/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, La/b/f;->a(La/b/h;Ljava/lang/String;)La/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)La/b/h;
    .locals 1

    invoke-direct {p0}, La/r;->b()La/b/f;

    move-result-object v0

    invoke-interface {v0, p1}, La/b/f;->b(Ljava/lang/String;)La/b/h;

    move-result-object v0

    return-object v0
.end method
