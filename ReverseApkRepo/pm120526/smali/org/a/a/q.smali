.class public final Lorg/a/a/q;
.super Lorg/a/a/c/a;


# instance fields
.field private a:Lorg/a/a/p;

.field private b:Lorg/a/a/c;


# direct methods
.method constructor <init>(Lorg/a/a/p;Lorg/a/a/c;)V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/c/a;-><init>()V

    iput-object p1, p0, Lorg/a/a/q;->a:Lorg/a/a/p;

    iput-object p2, p0, Lorg/a/a/q;->b:Lorg/a/a/c;

    return-void
.end method


# virtual methods
.method public final a()Lorg/a/a/c;
    .locals 1

    iget-object v0, p0, Lorg/a/a/q;->b:Lorg/a/a/c;

    return-object v0
.end method

.method public final a(I)Lorg/a/a/p;
    .locals 4

    iget-object v0, p0, Lorg/a/a/q;->a:Lorg/a/a/p;

    iget-object v1, p0, Lorg/a/a/q;->b:Lorg/a/a/c;

    iget-object v2, p0, Lorg/a/a/q;->a:Lorg/a/a/p;

    invoke-virtual {v2}, Lorg/a/a/p;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/a/a/c;->b(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/a/a/p;->a(J)V

    iget-object v0, p0, Lorg/a/a/q;->a:Lorg/a/a/p;

    return-object v0
.end method

.method protected final b()J
    .locals 2

    iget-object v0, p0, Lorg/a/a/q;->a:Lorg/a/a/p;

    invoke-virtual {v0}, Lorg/a/a/p;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final c()Lorg/a/a/a;
    .locals 1

    iget-object v0, p0, Lorg/a/a/q;->a:Lorg/a/a/p;

    invoke-virtual {v0}, Lorg/a/a/p;->b()Lorg/a/a/a;

    move-result-object v0

    return-object v0
.end method
