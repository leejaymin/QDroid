.class public final La/a/b/c;
.super La/a/b/d;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/a/b/d;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/b/c;->a:I

    return-void
.end method


# virtual methods
.method public final e(La/a/b/a;)V
    .locals 1

    iget v0, p0, La/a/b/c;->a:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    return-void
.end method

.method public final f(La/a/b/a;)V
    .locals 1

    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    iput v0, p0, La/a/b/c;->a:I

    return-void
.end method
