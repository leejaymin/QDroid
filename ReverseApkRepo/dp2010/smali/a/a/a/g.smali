.class public final La/a/a/g;
.super La/a/b/d;


# instance fields
.field public a:I

.field public b:La/a/b/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(La/a/b/a;)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, La/a/b/a;->d(I)I

    iget v0, p0, La/a/a/g;->a:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    iget v0, p0, La/a/a/g;->a:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    iget-object v0, p0, La/a/a/g;->b:La/a/b/d;

    invoke-virtual {p1, v0}, La/a/b/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/g;->b:La/a/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p1, La/a/b/a;->e:La/a/b/a;

    iget-object v1, p0, La/a/a/g;->b:La/a/b/d;

    invoke-virtual {v1, v0}, La/a/b/d;->e(La/a/b/a;)V

    :cond_0
    return-void
.end method

.method public final f(La/a/b/a;)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, La/a/b/a;->d(I)I

    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    iput v0, p0, La/a/a/g;->a:I

    invoke-virtual {p1}, La/a/b/a;->d()I

    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/g;->b:La/a/b/d;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/e;

    invoke-direct {v0}, La/a/a/e;-><init>()V

    iput-object v0, p0, La/a/a/g;->b:La/a/b/d;

    :cond_0
    iget-object v0, p1, La/a/b/a;->e:La/a/b/a;

    iget-object v1, p0, La/a/a/g;->b:La/a/b/d;

    invoke-virtual {v1, v0}, La/a/b/d;->f(La/a/b/a;)V

    :cond_1
    return-void
.end method
