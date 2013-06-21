.class abstract La/q;
.super La/n;

# interfaces
.implements La/b/f;
.implements La/c/a/p;
.implements Ljava/io/Serializable;


# instance fields
.field protected transient c:La/c/a/h;

.field protected d:La/j;


# direct methods
.method constructor <init>(La/a/a;)V
    .locals 1

    invoke-direct {p0, p1}, La/n;-><init>(La/a/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, La/q;->d:La/j;

    invoke-direct {p0}, La/q;->b()V

    return-void
.end method

.method constructor <init>(La/a/a;La/b/b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, La/n;-><init>(La/a/a;La/b/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, La/q;->d:La/j;

    invoke-direct {p0}, La/q;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, La/q;->b:La/b/b;

    instance-of v0, v0, La/b/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/q;->a:La/a/a;

    invoke-interface {v0}, La/a/a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/q;->a:La/a/a;

    invoke-interface {v1}, La/a/a;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    new-instance v2, La/b/e;

    iget-object v3, p0, La/q;->a:La/a/a;

    invoke-direct {v2, v3, v0, v1}, La/b/e;-><init>(La/a/a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La/q;->a:La/a/a;

    invoke-interface {v0}, La/a/a;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/q;->a:La/a/a;

    invoke-interface {v1}, La/a/a;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v3, La/b/a;

    invoke-direct {v3, v0, v1}, La/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, La/b/e;->a(La/b/a;)V

    :cond_0
    iput-object v2, p0, La/q;->b:La/b/b;

    :cond_1
    new-instance v0, La/c/a/h;

    iget-object v1, p0, La/q;->a:La/a/a;

    invoke-direct {v0, v1}, La/c/a/h;-><init>(La/c/a/i;)V

    iput-object v0, p0, La/q;->c:La/c/a/h;

    iget-object v0, p0, La/q;->c:La/c/a/h;

    invoke-virtual {v0, p0}, La/c/a/h;->a(La/c/a/p;)V

    return-void
.end method


# virtual methods
.method public a(La/c/a/n;)V
    .locals 4

    iget-object v0, p0, La/q;->d:La/j;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, La/c/a/n;->a()La/c/a/l;

    move-result-object v0

    invoke-static {v0}, La/i;->a(La/c/a/l;)La/g;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, La/h;

    invoke-virtual {p1}, La/c/a/n;->b()Z

    move-result v3

    invoke-direct {v2, p0, v1, v3}, La/h;-><init>(Ljava/lang/Object;La/g;Z)V

    invoke-virtual {v0}, La/c/a/l;->a()I

    move-result v1

    const/16 v2, 0x1a4

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, La/c/a/l;->a()I

    move-result v0

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, La/q;->d:La/j;

    iget-object v0, p0, La/q;->d:La/j;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, La/q;->d:La/j;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, La/q;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, La/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, La/q;

    iget-object v0, p0, La/q;->d:La/j;

    if-eqz v0, :cond_4

    iget-object v0, p0, La/q;->d:La/j;

    iget-object v1, p1, La/q;->d:La/j;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p1, La/q;->d:La/j;

    if-nez v0, :cond_3

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, La/n;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La/q;->d:La/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, La/q;->d:La/j;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
