.class public final La/a/a/a;
.super La/a/a/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, La/a/a/g;

    invoke-direct {v0}, La/a/a/g;-><init>()V

    new-instance v1, La/a/b/c;

    invoke-direct {v1}, La/a/b/c;-><init>()V

    invoke-direct {p0, p1, v0, v1}, La/a/a/j;-><init>(Ljava/lang/String;La/a/a/g;La/a/b/c;)V

    iget-object v0, p0, La/a/a/a;->l:La/a/a/g;

    iget v1, p0, La/a/a/a;->c:I

    iput v1, v0, La/a/a/g;->a:I

    iget-object v0, p0, La/a/a/a;->l:La/a/a/g;

    new-instance v1, La/a/a/f;

    invoke-direct {v1}, La/a/a/f;-><init>()V

    iput-object v1, v0, La/a/a/g;->b:La/a/b/d;

    const/4 v0, 0x0

    iput v0, p0, La/a/a/a;->f:I

    const/4 v0, 0x3

    iput v0, p0, La/a/a/a;->g:I

    return-void
.end method


# virtual methods
.method public final d()[La/d/h;
    .locals 5

    iget-object v0, p0, La/a/a/a;->l:La/a/a/g;

    iget-object v0, v0, La/a/a/g;->b:La/a/b/d;

    check-cast v0, La/a/a/f;

    iget v1, v0, La/a/a/f;->a:I

    new-array v2, v1, [La/d/bf;

    const/4 v1, 0x0

    :goto_0
    iget v3, v0, La/a/a/f;->a:I

    if-ge v1, v3, :cond_0

    new-instance v3, La/d/bf;

    iget-object v4, v0, La/a/a/f;->b:[La/a/a/i;

    aget-object v4, v4, v1

    iget-object v4, v4, La/a/a/i;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, La/d/bf;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
