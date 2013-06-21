.class final Lorg/a/a/d/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final a:Lorg/a/a/c;

.field final b:I

.field final c:Ljava/lang/String;

.field final d:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lorg/a/a/c;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/d/r;->a:Lorg/a/a/c;

    iput p2, p0, Lorg/a/a/d/r;->b:I

    iput-object v0, p0, Lorg/a/a/d/r;->c:Ljava/lang/String;

    iput-object v0, p0, Lorg/a/a/d/r;->d:Ljava/util/Locale;

    return-void
.end method

.method constructor <init>(Lorg/a/a/c;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/d/r;->a:Lorg/a/a/c;

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/d/r;->b:I

    iput-object p2, p0, Lorg/a/a/d/r;->c:Ljava/lang/String;

    iput-object p3, p0, Lorg/a/a/d/r;->d:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final a(Lorg/a/a/d/r;)I
    .locals 3

    iget-object v0, p1, Lorg/a/a/d/r;->a:Lorg/a/a/c;

    iget-object v1, p0, Lorg/a/a/d/r;->a:Lorg/a/a/c;

    invoke-virtual {v1}, Lorg/a/a/c;->e()Lorg/a/a/k;

    move-result-object v1

    invoke-virtual {v0}, Lorg/a/a/c;->e()Lorg/a/a/k;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/a/a/d/q;->a(Lorg/a/a/k;Lorg/a/a/k;)I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/a/a/d/r;->a:Lorg/a/a/c;

    invoke-virtual {v1}, Lorg/a/a/c;->d()Lorg/a/a/k;

    move-result-object v1

    invoke-virtual {v0}, Lorg/a/a/c;->d()Lorg/a/a/k;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/a/a/d/q;->a(Lorg/a/a/k;Lorg/a/a/k;)I

    move-result v0

    goto :goto_0
.end method

.method final a(JZ)J
    .locals 3

    iget-object v0, p0, Lorg/a/a/d/r;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/a/a/d/r;->a:Lorg/a/a/c;

    iget v1, p0, Lorg/a/a/d/r;->b:I

    invoke-virtual {v0, p1, p2, v1}, Lorg/a/a/c;->b(JI)J

    move-result-wide v0

    :goto_0
    if-eqz p3, :cond_0

    iget-object v2, p0, Lorg/a/a/d/r;->a:Lorg/a/a/c;

    invoke-virtual {v2, v0, v1}, Lorg/a/a/c;->d(J)J

    move-result-wide v0

    :cond_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/a/a/d/r;->a:Lorg/a/a/c;

    iget-object v1, p0, Lorg/a/a/d/r;->c:Ljava/lang/String;

    iget-object v2, p0, Lorg/a/a/d/r;->d:Ljava/util/Locale;

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/a/a/c;->a(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/a/a/d/r;

    invoke-virtual {p0, p1}, Lorg/a/a/d/r;->a(Lorg/a/a/d/r;)I

    move-result v0

    return v0
.end method
