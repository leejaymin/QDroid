.class public La/a/a/l;
.super La/a/g;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:La/a/b/d;

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Ljava/lang/String;La/a/b/d;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, La/a/g;-><init>()V

    iput-object p1, p0, La/a/a/l;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, La/a/a/l;->c:I

    iput-object p2, p0, La/a/a/l;->d:La/a/b/d;

    const/4 v0, -0x1

    iput v0, p0, La/a/a/l;->l:I

    iput v1, p0, La/a/a/l;->m:I

    iput v1, p0, La/a/a/l;->n:I

    return-void
.end method


# virtual methods
.method public final a(La/a/b/a;)V
    .locals 1

    iget-object v0, p0, La/a/a/l;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/b/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/l;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/l;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/b/a;->a(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, La/a/a/l;->c:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    iget v0, p0, La/a/a/l;->c:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    iget-object v0, p0, La/a/a/l;->d:La/a/b/d;

    invoke-virtual {p1, v0}, La/a/b/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/l;->d:La/a/b/d;

    if-eqz v0, :cond_1

    iget-object p1, p1, La/a/b/a;->e:La/a/b/a;

    iget-object v0, p0, La/a/a/l;->d:La/a/b/d;

    invoke-virtual {v0, p1}, La/a/b/d;->e(La/a/b/a;)V

    :cond_1
    iget v0, p0, La/a/a/l;->l:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    iget v0, p0, La/a/a/l;->n:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public final b(La/a/b/a;)V
    .locals 1

    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    iput v0, p0, La/a/a/l;->c:I

    invoke-virtual {p1}, La/a/b/a;->d()I

    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/l;->d:La/a/b/d;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/o;

    invoke-direct {v0}, La/a/a/o;-><init>()V

    iput-object v0, p0, La/a/a/l;->d:La/a/b/d;

    :cond_0
    iget-object p1, p1, La/a/b/a;->e:La/a/b/a;

    iget-object v0, p0, La/a/a/l;->d:La/a/b/d;

    invoke-virtual {v0, p1}, La/a/b/d;->f(La/a/b/a;)V

    :cond_1
    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    iput v0, p0, La/a/a/l;->m:I

    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    iput v0, p0, La/a/a/l;->n:I

    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    iput v0, p0, La/a/a/l;->a:I

    return-void
.end method
