.class public La/a/l;
.super La/a/b/d;


# instance fields
.field public b:I

.field public c:S

.field public d:S

.field public e:B

.field public f:B

.field public g:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(La/a/b/a;)V
    .locals 4

    const/4 v3, 0x6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, La/a/b/a;->d(I)I

    iget v0, p0, La/a/l;->b:I

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    iget-short v0, p0, La/a/l;->c:S

    invoke-virtual {p1, v0}, La/a/b/a;->f(I)V

    iget-short v0, p0, La/a/l;->d:S

    invoke-virtual {p1, v0}, La/a/b/a;->f(I)V

    iget-byte v0, p0, La/a/l;->e:B

    invoke-virtual {p1, v0}, La/a/b/a;->e(I)V

    iget-byte v0, p0, La/a/l;->f:B

    invoke-virtual {p1, v0}, La/a/b/a;->e(I)V

    iget v0, p1, La/a/b/a;->c:I

    invoke-virtual {p1, v3}, La/a/b/a;->c(I)V

    invoke-virtual {p1, v0}, La/a/b/a;->a(I)La/a/b/a;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v2, p0, La/a/l;->g:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, La/a/b/a;->e(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(La/a/b/a;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, La/a/b/a;->d(I)I

    invoke-virtual {p1}, La/a/b/a;->d()I

    move-result v0

    iput v0, p0, La/a/l;->b:I

    invoke-virtual {p1}, La/a/b/a;->c()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, La/a/l;->c:S

    invoke-virtual {p1}, La/a/b/a;->c()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, La/a/l;->d:S

    invoke-virtual {p1}, La/a/b/a;->b()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/l;->e:B

    invoke-virtual {p1}, La/a/b/a;->b()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/l;->f:B

    iget v0, p1, La/a/b/a;->c:I

    invoke-virtual {p1, v4}, La/a/b/a;->c(I)V

    iget-object v1, p0, La/a/l;->g:[B

    if-nez v1, :cond_0

    new-array v1, v4, [B

    iput-object v1, p0, La/a/l;->g:[B

    :cond_0
    invoke-virtual {p1, v0}, La/a/b/a;->a(I)La/a/b/a;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    iget-object v2, p0, La/a/l;->g:[B

    invoke-virtual {v1}, La/a/b/a;->b()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
