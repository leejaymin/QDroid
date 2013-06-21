.class public abstract Lorg/a/a/a/a;
.super Lorg/a/a/a/b;

# interfaces
.implements Lorg/a/a/t;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 3

    invoke-virtual {p0}, Lorg/a/a/a/a;->b()Lorg/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/a;->E()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/a/a/a/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/a/a/c;->a(J)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 3

    invoke-virtual {p0}, Lorg/a/a/a/a;->b()Lorg/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/a/a/a;->z()Lorg/a/a/c;

    move-result-object v0

    invoke-virtual {p0}, Lorg/a/a/a/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/a/a/c;->a(J)I

    move-result v0

    return v0
.end method
