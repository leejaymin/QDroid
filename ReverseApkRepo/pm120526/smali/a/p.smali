.class public final La/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:La/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, La/a/d;->a()La/a/a;

    move-result-object v0

    invoke-direct {p0, v0}, La/p;-><init>(La/a/a;)V

    return-void
.end method

.method public constructor <init>(La/a/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "configuration cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, La/p;->a:La/a/a;

    return-void
.end method


# virtual methods
.method public final a()La/m;
    .locals 5

    iget-object v0, p0, La/p;->a:La/a/a;

    iget-object v1, p0, La/p;->a:La/a/a;

    const/4 v2, 0x0

    invoke-interface {v1}, La/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, La/a/a;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    new-instance v2, La/b/e;

    invoke-direct {v2, v1, v3, v4}, La/b/e;-><init>(La/a/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, La/a/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, La/a/a;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    new-instance v4, La/b/a;

    invoke-direct {v4, v3, v1}, La/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, La/b/e;->a(La/b/a;)V

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    invoke-static {}, La/b/d;->b()La/b/d;

    move-result-object v1

    :cond_1
    new-instance v2, La/m;

    invoke-direct {v2, v0, v1}, La/m;-><init>(La/a/a;La/b/b;)V

    return-object v2

    :cond_2
    invoke-interface {v1}, La/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, La/a/a;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    new-instance v2, La/b/c;

    invoke-direct {v2, v3, v1}, La/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method
