.class public final Lorg/a/a/c/k;
.super Lorg/a/a/c/d;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lorg/a/a/c;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x63

    invoke-direct {p0, p1, v0, v1}, Lorg/a/a/c/k;-><init>(Lorg/a/a/c;Lorg/a/a/d;I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/a/a/c;->a()Lorg/a/a/d;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/a/a/c;Lorg/a/a/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/a/a/c/k;-><init>(Lorg/a/a/c;Lorg/a/a/d;I)V

    return-void
.end method

.method private constructor <init>(Lorg/a/a/c;Lorg/a/a/d;I)V
    .locals 3

    const v2, 0x7fffffff

    const/high16 v1, -0x8000

    invoke-direct {p0, p1, p2}, Lorg/a/a/c/d;-><init>(Lorg/a/a/c;Lorg/a/a/d;)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The offset cannot be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p3, p0, Lorg/a/a/c/k;->a:I

    invoke-virtual {p1}, Lorg/a/a/c;->g()I

    move-result v0

    add-int/2addr v0, p3

    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Lorg/a/a/c;->g()I

    move-result v0

    add-int/2addr v0, p3

    iput v0, p0, Lorg/a/a/c/k;->b:I

    :goto_0
    invoke-virtual {p1}, Lorg/a/a/c;->h()I

    move-result v0

    add-int/2addr v0, p3

    if-le v2, v0, :cond_2

    invoke-virtual {p1}, Lorg/a/a/c;->h()I

    move-result v0

    add-int/2addr v0, p3

    iput v0, p0, Lorg/a/a/c/k;->c:I

    :goto_1
    return-void

    :cond_1
    iput v1, p0, Lorg/a/a/c/k;->b:I

    goto :goto_0

    :cond_2
    iput v2, p0, Lorg/a/a/c/k;->c:I

    goto :goto_1
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/a/a/c/d;->a(J)I

    move-result v0

    iget v1, p0, Lorg/a/a/c/k;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(JI)J
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lorg/a/a/c/d;->a(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/a/a/c/k;->a(J)I

    move-result v2

    iget v3, p0, Lorg/a/a/c/k;->b:I

    iget v4, p0, Lorg/a/a/c/k;->c:I

    invoke-static {p0, v2, v3, v4}, Lorg/a/a/c/g;->a(Lorg/a/a/c;III)V

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Lorg/a/a/c/d;->a(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/a/a/c/k;->a(J)I

    move-result v2

    iget v3, p0, Lorg/a/a/c/k;->b:I

    iget v4, p0, Lorg/a/a/c/k;->c:I

    invoke-static {p0, v2, v3, v4}, Lorg/a/a/c/g;->a(Lorg/a/a/c;III)V

    return-wide v0
.end method

.method public final b(JI)J
    .locals 2

    iget v0, p0, Lorg/a/a/c/k;->b:I

    iget v1, p0, Lorg/a/a/c/k;->c:I

    invoke-static {p0, p3, v0, v1}, Lorg/a/a/c/g;->a(Lorg/a/a/c;III)V

    iget v0, p0, Lorg/a/a/c/k;->a:I

    sub-int v0, p3, v0

    invoke-super {p0, p1, p2, v0}, Lorg/a/a/c/d;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(J)Z
    .locals 1

    invoke-virtual {p0}, Lorg/a/a/c/k;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->b(J)Z

    move-result v0

    return v0
.end method

.method public final d(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/c/k;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/c/k;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/c/k;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Lorg/a/a/k;
    .locals 1

    invoke-virtual {p0}, Lorg/a/a/c/k;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/c;->f()Lorg/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lorg/a/a/c/k;->b:I

    return v0
.end method

.method public final g(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/c/k;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->g(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lorg/a/a/c/k;->c:I

    return v0
.end method

.method public final h(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/c/k;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->h(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final i(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/c/k;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->i(J)J

    move-result-wide v0

    return-wide v0
.end method
