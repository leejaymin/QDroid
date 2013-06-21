.class final Lorg/a/a/b/n;
.super Lorg/a/a/c/m;


# instance fields
.field private final b:Lorg/a/a/b/d;


# direct methods
.method constructor <init>(Lorg/a/a/b/d;Lorg/a/a/k;)V
    .locals 1

    invoke-static {}, Lorg/a/a/d;->l()Lorg/a/a/d;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/a/a/c/m;-><init>(Lorg/a/a/d;Lorg/a/a/k;)V

    iput-object p1, p0, Lorg/a/a/b/n;->b:Lorg/a/a/b/d;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/n;->b:Lorg/a/a/b/d;

    invoke-static {p1, p2}, Lorg/a/a/b/d;->g(J)I

    move-result v0

    return v0
.end method

.method protected final a(Ljava/lang/String;Ljava/util/Locale;)I
    .locals 1

    invoke-static {p2}, Lorg/a/a/b/p;->a(Ljava/util/Locale;)Lorg/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/a/a/b/p;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Locale;)I
    .locals 1

    invoke-static {p1}, Lorg/a/a/b/p;->a(Ljava/util/Locale;)Lorg/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/b/p;->c()I

    move-result v0

    return v0
.end method

.method public final a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Lorg/a/a/b/p;->a(Ljava/util/Locale;)Lorg/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/a/a/b/p;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Lorg/a/a/b/p;->a(Ljava/util/Locale;)Lorg/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/a/a/b/p;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lorg/a/a/k;
    .locals 1

    iget-object v0, p0, Lorg/a/a/b/n;->b:Lorg/a/a/b/d;

    invoke-virtual {v0}, Lorg/a/a/b/d;->w()Lorg/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method
