.class public final La/a/a/m;
.super La/a/b/d;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(La/a/b/a;)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, La/a/b/a;->d(I)I

    iget-object v0, p0, La/a/a/m;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/b/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/m;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, La/a/b/a;->e:La/a/b/a;

    iget-object v1, p0, La/a/a/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, La/a/b/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final f(La/a/b/a;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, La/a/b/a;->d(I)I

    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, La/a/b/a;->e:La/a/b/a;

    invoke-virtual {v0}, La/a/b/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/m;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method
