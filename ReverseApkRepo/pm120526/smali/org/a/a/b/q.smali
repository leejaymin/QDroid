.class final Lorg/a/a/b/q;
.super Lorg/a/a/b/j;


# direct methods
.method constructor <init>(Lorg/a/a/b/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/a/a/b/j;-><init>(Lorg/a/a/b/d;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/util/Locale;)I
    .locals 1

    invoke-static {p2}, Lorg/a/a/b/p;->a(Ljava/util/Locale;)Lorg/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/a/a/b/p;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/Locale;)I
    .locals 1

    invoke-static {p1}, Lorg/a/a/b/p;->a(Ljava/util/Locale;)Lorg/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/b/p;->b()I

    move-result v0

    return v0
.end method

.method public final a(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Lorg/a/a/b/p;->a(Ljava/util/Locale;)Lorg/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/a/a/b/p;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Lorg/a/a/b/p;->a(Ljava/util/Locale;)Lorg/a/a/b/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/a/a/b/p;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
