.class public final La/c/a/n;
.super Ljava/lang/Object;


# instance fields
.field private a:La/c/a/k;

.field private b:La/c/a/l;


# direct methods
.method public constructor <init>(La/c/a/k;La/c/a/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/c/a/n;->a:La/c/a/k;

    iput-object p2, p0, La/c/a/n;->b:La/c/a/l;

    return-void
.end method


# virtual methods
.method public final a()La/c/a/l;
    .locals 1

    iget-object v0, p0, La/c/a/n;->b:La/c/a/l;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, La/c/a/n;->a:La/c/a/k;

    invoke-virtual {v0}, La/c/a/k;->d()La/b/b;

    move-result-object v0

    invoke-interface {v0}, La/b/b;->a()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, La/c/a/n;

    iget-object v0, p0, La/c/a/n;->a:La/c/a/k;

    if-eqz v0, :cond_4

    iget-object v0, p0, La/c/a/n;->a:La/c/a/k;

    iget-object v1, p1, La/c/a/n;->a:La/c/a/k;

    invoke-virtual {v0, v1}, La/c/a/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p1, La/c/a/n;->a:La/c/a/k;

    if-nez v0, :cond_3

    :cond_5
    iget-object v0, p0, La/c/a/n;->b:La/c/a/l;

    if-eqz v0, :cond_7

    iget-object v0, p0, La/c/a/n;->b:La/c/a/l;

    iget-object v1, p1, La/c/a/n;->b:La/c/a/l;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p1, La/c/a/n;->b:La/c/a/l;

    if-nez v0, :cond_6

    :cond_8
    move v0, v3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/c/a/n;->a:La/c/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/c/a/n;->a:La/c/a/k;

    invoke-virtual {v0}, La/c/a/k;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La/c/a/n;->b:La/c/a/l;

    if-eqz v1, :cond_1

    iget-object v1, p0, La/c/a/n;->b:La/c/a/l;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "HttpResponseEvent{request="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/c/a/n;->a:La/c/a/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/c/a/n;->b:La/c/a/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
