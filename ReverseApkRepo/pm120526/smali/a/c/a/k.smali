.class public final La/c/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final f:[La/c/a/j;


# instance fields
.field private final a:La/c/a/q;

.field private final b:Ljava/lang/String;

.field private final c:[La/c/a/j;

.field private final d:La/b/b;

.field private e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [La/c/a/j;

    sput-object v0, La/c/a/k;->f:[La/c/a/j;

    return-void
.end method

.method public constructor <init>(La/c/a/q;Ljava/lang/String;[La/c/a/j;La/b/b;Ljava/util/Map;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/c/a/k;->a:La/c/a/q;

    sget-object v0, La/c/a/q;->b:La/c/a/q;

    if-eq p1, v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p3}, La/c/a/j;->b([La/c/a/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/c/a/k;->b:Ljava/lang/String;

    sget-object v0, La/c/a/k;->f:[La/c/a/j;

    iput-object v0, p0, La/c/a/k;->c:[La/c/a/j;

    :goto_0
    iput-object p4, p0, La/c/a/k;->d:La/b/b;

    iput-object p5, p0, La/c/a/k;->e:Ljava/util/Map;

    return-void

    :cond_0
    iput-object p2, p0, La/c/a/k;->b:Ljava/lang/String;

    iput-object p3, p0, La/c/a/k;->c:[La/c/a/j;

    goto :goto_0
.end method


# virtual methods
.method public final a()La/c/a/q;
    .locals 1

    iget-object v0, p0, La/c/a/k;->a:La/c/a/q;

    return-object v0
.end method

.method public final b()[La/c/a/j;
    .locals 1

    iget-object v0, p0, La/c/a/k;->c:[La/c/a/j;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/a/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()La/b/b;
    .locals 1

    iget-object v0, p0, La/c/a/k;->d:La/b/b;

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, La/c/a/k;->e:Ljava/util/Map;

    return-object v0
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
    check-cast p1, La/c/a/k;

    iget-object v0, p0, La/c/a/k;->d:La/b/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, La/c/a/k;->d:La/b/b;

    iget-object v1, p1, La/c/a/k;->d:La/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p1, La/c/a/k;->d:La/b/b;

    if-nez v0, :cond_3

    :cond_5
    iget-object v0, p0, La/c/a/k;->c:[La/c/a/j;

    iget-object v1, p1, La/c/a/k;->c:[La/c/a/j;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, La/c/a/k;->e:Ljava/util/Map;

    if-eqz v0, :cond_8

    iget-object v0, p0, La/c/a/k;->e:Ljava/util/Map;

    iget-object v1, p1, La/c/a/k;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    iget-object v0, p1, La/c/a/k;->e:Ljava/util/Map;

    if-nez v0, :cond_7

    :cond_9
    iget-object v0, p0, La/c/a/k;->a:La/c/a/q;

    if-eqz v0, :cond_b

    iget-object v0, p0, La/c/a/k;->a:La/c/a/q;

    iget-object v1, p1, La/c/a/k;->a:La/c/a/q;

    invoke-virtual {v0, v1}, La/c/a/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    move v0, v2

    goto :goto_0

    :cond_b
    iget-object v0, p1, La/c/a/k;->a:La/c/a/q;

    if-nez v0, :cond_a

    :cond_c
    iget-object v0, p0, La/c/a/k;->b:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, La/c/a/k;->b:Ljava/lang/String;

    iget-object v1, p1, La/c/a/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move v0, v2

    goto :goto_0

    :cond_e
    iget-object v0, p1, La/c/a/k;->b:Ljava/lang/String;

    if-nez v0, :cond_d

    :cond_f
    move v0, v3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, La/c/a/k;->a:La/c/a/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/c/a/k;->a:La/c/a/q;

    invoke-virtual {v0}, La/c/a/q;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La/c/a/k;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, La/c/a/k;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La/c/a/k;->c:[La/c/a/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, La/c/a/k;->c:[La/c/a/j;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La/c/a/k;->d:La/b/b;

    if-eqz v1, :cond_3

    iget-object v1, p0, La/c/a/k;->d:La/b/b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La/c/a/k;->e:Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object v1, p0, La/c/a/k;->e:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "HttpRequest{requestMethod="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/c/a/k;->a:La/c/a/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/c/a/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", postParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/c/a/k;->c:[La/c/a/j;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", authentication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/c/a/k;->d:La/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", requestHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/c/a/k;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, La/c/a/k;->c:[La/c/a/j;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
