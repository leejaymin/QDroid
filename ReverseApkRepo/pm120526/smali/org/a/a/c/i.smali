.class final Lorg/a/a/c/i;
.super Lorg/a/a/c/c;


# instance fields
.field final synthetic a:Lorg/a/a/c/h;


# direct methods
.method constructor <init>(Lorg/a/a/c/h;Lorg/a/a/l;)V
    .locals 0

    iput-object p1, p0, Lorg/a/a/c/i;->a:Lorg/a/a/c/h;

    invoke-direct {p0, p2}, Lorg/a/a/c/c;-><init>(Lorg/a/a/l;)V

    return-void
.end method


# virtual methods
.method public final a(JI)J
    .locals 2

    iget-object v0, p0, Lorg/a/a/c/i;->a:Lorg/a/a/c/h;

    invoke-virtual {v0, p1, p2, p3}, Lorg/a/a/c/h;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 2

    iget-object v0, p0, Lorg/a/a/c/i;->a:Lorg/a/a/c/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/a/a/c/h;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lorg/a/a/c/i;->a:Lorg/a/a/c/h;

    iget-wide v0, v0, Lorg/a/a/c/h;->b:J

    return-wide v0
.end method
