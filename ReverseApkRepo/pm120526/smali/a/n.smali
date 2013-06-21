.class abstract La/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected final a:La/a/a;

.field protected b:La/b/b;


# direct methods
.method constructor <init>(La/a/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/n;->a:La/a/a;

    invoke-interface {p1}, La/a/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, La/a/a;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, La/b/c;

    invoke-direct {v2, v0, v1}, La/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, La/n;->b:La/b/b;

    :cond_0
    iget-object v0, p0, La/n;->b:La/b/b;

    if-nez v0, :cond_1

    invoke-static {}, La/b/d;->b()La/b/d;

    move-result-object v0

    iput-object v0, p0, La/n;->b:La/b/b;

    :cond_1
    return-void
.end method

.method constructor <init>(La/a/a;La/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/n;->a:La/a/a;

    iput-object p2, p0, La/n;->b:La/b/b;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iget-object v0, p0, La/n;->b:La/b/b;

    invoke-interface {v0}, La/b/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Neither user ID/password combination nor OAuth consumer key/secret combination supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
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
    instance-of v0, p1, La/n;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, La/n;

    iget-object v0, p0, La/n;->b:La/b/b;

    iget-object v1, p1, La/n;->b:La/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, La/n;->b:La/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/n;->b:La/b/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "TwitterBase{auth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/n;->b:La/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
