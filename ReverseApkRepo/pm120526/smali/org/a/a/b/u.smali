.class final Lorg/a/a/b/u;
.super Lorg/a/a/c/d;


# static fields
.field static final a:Lorg/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/a/a/b/u;

    invoke-direct {v0}, Lorg/a/a/b/u;-><init>()V

    sput-object v0, Lorg/a/a/b/u;->a:Lorg/a/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/a/a/b/s;->W()Lorg/a/a/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/b/s;->E()Lorg/a/a/c;

    move-result-object v0

    invoke-static {}, Lorg/a/a/d;->t()Lorg/a/a/d;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/a/a/c/d;-><init>(Lorg/a/a/c;Lorg/a/a/d;)V

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    invoke-virtual {p0}, Lorg/a/a/b/u;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->a(J)I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method public final a(JI)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/b/u;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/a/a/c;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/b/u;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/a/a/c;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(JI)J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/a/a/b/u;->i()Lorg/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/a/a/c;->h()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/a/a/c/g;->a(Lorg/a/a/c;III)V

    invoke-virtual {p0}, Lorg/a/a/b/u;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->a(J)I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, p3

    :goto_0
    invoke-super {p0, p1, p2, v0}, Lorg/a/a/c/d;->b(JI)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move v0, p3

    goto :goto_0
.end method

.method public final d(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/b/u;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/b/u;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()I
    .locals 1

    invoke-virtual {p0}, Lorg/a/a/b/u;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/c;->h()I

    move-result v0

    return v0
.end method

.method public final i(J)J
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/b/u;->i()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/c;->i(J)J

    move-result-wide v0

    return-wide v0
.end method
