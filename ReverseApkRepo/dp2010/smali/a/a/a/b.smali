.class public final La/a/a/b;
.super La/a/a/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, La/a/a/p;

    invoke-direct {v1}, La/a/a/p;-><init>()V

    invoke-direct {p0, v0, v1}, La/a/a/l;-><init>(Ljava/lang/String;La/a/b/d;)V

    const/4 v0, 0x0

    iput v0, p0, La/a/a/b;->f:I

    const/4 v0, 0x3

    iput v0, p0, La/a/a/b;->g:I

    return-void
.end method


# virtual methods
.method public final d()[La/d/h;
    .locals 5

    iget-object v0, p0, La/a/a/b;->d:La/a/b/d;

    check-cast v0, La/a/a/p;

    iget v1, v0, La/a/a/p;->a:I

    new-array v2, v1, [La/a/a/c;

    const/4 v1, 0x0

    :goto_0
    iget v3, v0, La/a/a/p;->a:I

    if-ge v1, v3, :cond_0

    new-instance v3, La/a/a/c;

    iget-object v4, v0, La/a/a/p;->b:[La/a/a/n;

    aget-object v4, v4, v1

    invoke-direct {v3, p0, v4}, La/a/a/c;-><init>(La/a/a/b;La/a/a/n;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method
