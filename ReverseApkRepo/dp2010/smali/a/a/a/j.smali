.class public La/a/a/j;
.super La/a/g;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public l:La/a/a/g;

.field public m:La/a/b/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;La/a/a/g;La/a/b/c;)V
    .locals 1

    invoke-direct {p0}, La/a/g;-><init>()V

    iput-object p1, p0, La/a/a/j;->b:Ljava/lang/String;

    const/16 v0, 0xc8

    iput v0, p0, La/a/a/j;->c:I

    const v0, 0xffff

    iput v0, p0, La/a/a/j;->d:I

    iput-object p2, p0, La/a/a/j;->l:La/a/a/g;

    iput-object p3, p0, La/a/a/j;->m:La/a/b/c;

    return-void
.end method


# virtual methods
.method public final a(La/a/b/a;)V
    .locals 1

    iget-object v0, p0, La/a/a/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/b/a;->a(Ljava/lang/String;)V

    iget v0, p0, La/a/a/j;->c:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    iget v0, p0, La/a/a/j;->d:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    iget-object v0, p0, La/a/a/j;->l:La/a/a/g;

    invoke-virtual {p1, v0}, La/a/b/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/j;->l:La/a/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/j;->l:La/a/a/g;

    invoke-virtual {v0, p1}, La/a/a/g;->e(La/a/b/a;)V

    :cond_0
    iget-object v0, p0, La/a/a/j;->m:La/a/b/c;

    invoke-virtual {p1, v0}, La/a/b/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/j;->m:La/a/b/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/j;->m:La/a/b/c;

    invoke-virtual {v0, p1}, La/a/b/c;->e(La/a/b/a;)V

    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public final b(La/a/b/a;)V
    .locals 1

    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/j;->l:La/a/a/g;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/g;

    invoke-direct {v0}, La/a/a/g;-><init>()V

    iput-object v0, p0, La/a/a/j;->l:La/a/a/g;

    :cond_0
    iget-object v0, p0, La/a/a/j;->l:La/a/a/g;

    invoke-virtual {v0, p1}, La/a/a/g;->f(La/a/b/a;)V

    :cond_1
    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/j;->m:La/a/b/c;

    invoke-virtual {v0, p1}, La/a/b/c;->f(La/a/b/a;)V

    :cond_2
    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    iput v0, p0, La/a/a/j;->a:I

    return-void
.end method
