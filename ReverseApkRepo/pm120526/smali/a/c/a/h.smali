.class public final La/c/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:La/c/a/i;

.field private b:La/c/a/c;

.field private final c:Ljava/util/Map;

.field private d:La/c/a/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, La/a/d;->a()La/a/a;

    move-result-object v0

    iput-object v0, p0, La/c/a/h;->a:La/c/a/i;

    iget-object v0, p0, La/c/a/h;->a:La/c/a/i;

    invoke-interface {v0}, La/c/a/i;->n()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, La/c/a/h;->c:Ljava/util/Map;

    iget-object v0, p0, La/c/a/h;->a:La/c/a/i;

    invoke-static {v0}, La/c/a/e;->a(La/c/a/d;)La/c/a/c;

    move-result-object v0

    iput-object v0, p0, La/c/a/h;->b:La/c/a/c;

    return-void
.end method

.method public constructor <init>(La/c/a/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/c/a/h;->a:La/c/a/i;

    invoke-interface {p1}, La/c/a/i;->n()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, La/c/a/h;->c:Ljava/util/Map;

    invoke-static {p1}, La/c/a/e;->a(La/c/a/d;)La/c/a/c;

    move-result-object v0

    iput-object v0, p0, La/c/a/h;->b:La/c/a/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[La/c/a/j;La/b/b;)La/c/a/l;
    .locals 6

    new-instance v0, La/c/a/k;

    sget-object v1, La/c/a/q;->b:La/c/a/q;

    iget-object v5, p0, La/c/a/h;->c:Ljava/util/Map;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, La/c/a/k;-><init>(La/c/a/q;Ljava/lang/String;[La/c/a/j;La/b/b;Ljava/util/Map;)V

    iget-object v1, p0, La/c/a/h;->b:La/c/a/c;

    invoke-interface {v1, v0}, La/c/a/c;->a(La/c/a/k;)La/c/a/l;

    move-result-object v1

    iget-object v2, p0, La/c/a/h;->d:La/c/a/p;

    if-eqz v2, :cond_0

    iget-object v2, p0, La/c/a/h;->d:La/c/a/p;

    new-instance v3, La/c/a/n;

    invoke-direct {v3, v0, v1}, La/c/a/n;-><init>(La/c/a/k;La/c/a/l;)V

    invoke-interface {v2, v3}, La/c/a/p;->a(La/c/a/n;)V

    :cond_0
    return-object v1
.end method

.method public final a(La/c/a/p;)V
    .locals 0

    iput-object p1, p0, La/c/a/h;->d:La/c/a/p;

    return-void
.end method
