.class final Lorg/a/a/b/e;
.super Lorg/a/a/c/l;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-static {}, Lorg/a/a/d;->k()Lorg/a/a/d;

    move-result-object v0

    invoke-static {}, Lorg/a/a/b/d;->U()Lorg/a/a/k;

    move-result-object v1

    invoke-static {}, Lorg/a/a/b/d;->V()Lorg/a/a/k;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/a/a/c/l;-><init>(Lorg/a/a/d;Lorg/a/a/k;Lorg/a/a/k;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Locale;)I
    .locals 1

    invoke-static {p1}, Lorg/a/a/b/p;->a(Ljava/util/Locale;)Lorg/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/b/p;->d()I

    move-result v0

    return v0
.end method

.method public final a(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 2

    invoke-static {p4}, Lorg/a/a/b/p;->a(Ljava/util/Locale;)Lorg/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/a/a/b/p;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/a/a/b/e;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Lorg/a/a/b/p;->a(Ljava/util/Locale;)Lorg/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/a/a/b/p;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
