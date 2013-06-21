.class public final La/a/a/p;
.super La/a/b/d;


# instance fields
.field public a:I

.field public b:[La/a/a/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(La/a/b/a;)V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, La/a/b/a;->d(I)I

    iget v0, p0, La/a/a/p;->a:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    iget-object v0, p0, La/a/a/p;->b:[La/a/a/n;

    invoke-virtual {p1, v0}, La/a/b/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/p;->b:[La/a/a/n;

    if-eqz v0, :cond_0

    iget-object v0, p1, La/a/b/a;->e:La/a/b/a;

    iget v1, p0, La/a/a/p;->a:I

    invoke-virtual {v0, v1}, La/a/b/a;->g(I)V

    iget v2, v0, La/a/b/a;->c:I

    mul-int/lit8 v3, v1, 0xc

    invoke-virtual {v0, v3}, La/a/b/a;->c(I)V

    invoke-virtual {v0, v2}, La/a/b/a;->a(I)La/a/b/a;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, La/a/a/p;->b:[La/a/a/n;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, La/a/a/n;->e(La/a/b/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(La/a/b/a;)V
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, La/a/b/a;->d(I)I

    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    iput v0, p0, La/a/a/p;->a:I

    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, La/a/b/a;->e:La/a/b/a;

    invoke-virtual {v0}, La/a/b/a;->d()I

    move-result v1

    iget v2, v0, La/a/b/a;->c:I

    mul-int/lit8 v3, v1, 0xc

    invoke-virtual {v0, v3}, La/a/b/a;->c(I)V

    iget-object v3, p0, La/a/a/p;->b:[La/a/a/n;

    if-nez v3, :cond_2

    if-ltz v1, :cond_0

    const v3, 0xffff

    if-le v1, v3, :cond_1

    :cond_0
    new-instance v0, La/a/b/b;

    const-string v1, "invalid array conformance"

    invoke-direct {v0, v1}, La/a/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v3, v1, [La/a/a/n;

    iput-object v3, p0, La/a/a/p;->b:[La/a/a/n;

    :cond_2
    invoke-virtual {v0, v2}, La/a/b/a;->a(I)La/a/b/a;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    iget-object v3, p0, La/a/a/p;->b:[La/a/a/n;

    aget-object v3, v3, v0

    if-nez v3, :cond_3

    iget-object v3, p0, La/a/a/p;->b:[La/a/a/n;

    new-instance v4, La/a/a/n;

    invoke-direct {v4}, La/a/a/n;-><init>()V

    aput-object v4, v3, v0

    :cond_3
    iget-object v3, p0, La/a/a/p;->b:[La/a/a/n;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, La/a/a/n;->f(La/a/b/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
