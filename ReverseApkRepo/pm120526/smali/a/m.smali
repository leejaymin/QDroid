.class public final La/m;
.super La/r;

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, La/a/d;->a()La/a/a;

    move-result-object v0

    invoke-direct {p0, v0}, La/r;-><init>(La/a/a;)V

    return-void
.end method

.method constructor <init>(La/a/a;La/b/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, La/r;-><init>(La/a/a;La/b/b;)V

    return-void
.end method


# virtual methods
.method public final a(La/b/h;Ljava/lang/String;)La/b/a;
    .locals 1

    invoke-super {p0, p1, p2}, La/r;->a(La/b/h;Ljava/lang/String;)La/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)La/k;
    .locals 8

    invoke-virtual {p0}, La/m;->a()V

    new-instance v0, La/l;

    iget-object v1, p0, La/m;->c:La/c/a/h;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, La/m;->a:La/a/a;

    invoke-interface {v3}, La/a/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "statuses/update.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [La/c/a/j;

    const/4 v4, 0x0

    new-instance v5, La/c/a/j;

    const-string v6, "status"

    invoke-direct {v5, v6, p1}, La/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, La/c/a/j;

    const-string v6, "source"

    iget-object v7, p0, La/m;->a:La/a/a;

    invoke-interface {v7}, La/a/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, La/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    iget-object v4, p0, La/m;->b:La/b/b;

    invoke-virtual {v1, v2, v3, v4}, La/c/a/h;->a(Ljava/lang/String;[La/c/a/j;La/b/b;)La/c/a/l;

    move-result-object v1

    invoke-direct {v0, v1}, La/l;-><init>(La/c/a/l;)V

    return-object v0
.end method

.method public final a(La/c/a/n;)V
    .locals 0

    invoke-super {p0, p1}, La/r;->a(La/c/a/n;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)La/b/h;
    .locals 1

    invoke-super {p0, p1}, La/r;->b(Ljava/lang/String;)La/b/h;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, La/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, La/r;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Twitter{auth=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/m;->b:La/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
