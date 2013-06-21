.class public final Lcom/a/a/a/a/c;
.super Lcom/a/a/a/a/b;


# instance fields
.field private c:I

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/a/a/c;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 5

    const-wide/16 v0, 0x0

    const/16 v2, 0x51

    new-instance v3, Lcom/a/a/b/b;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/a/a/b/b;-><init>(I)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/a/a/a/a/b;-><init>(JILcom/a/a/b/b;)V

    const v0, 0x7a120

    iput v0, p0, Lcom/a/a/a/a/c;->c:I

    const v0, 0x4c64e1c0

    iget v1, p0, Lcom/a/a/a/a/c;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/a/a/a/a/c;->d:F

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    const/4 v1, 0x3

    invoke-super {p0, p1}, Lcom/a/a/a/a/b;->a(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/a/a/a/a/c;->c:I

    invoke-static {v0, v1}, Lcom/a/a/b/a;->a(II)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    check-cast p1, Lcom/a/a/a/b;

    iget-wide v0, p0, Lcom/a/a/a/a/c;->e:J

    invoke-virtual {p1}, Lcom/a/a/a/b;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/a/a/a/a/c;->e:J

    invoke-virtual {p1}, Lcom/a/a/a/b;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/a/c;->f:Lcom/a/a/b/b;

    invoke-virtual {v0}, Lcom/a/a/b/b;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/a/a/a/b;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/a/a/a/c;->f:Lcom/a/a/b/b;

    invoke-virtual {v0}, Lcom/a/a/b/b;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/a/a/a/b;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/a/a/a/a/c;

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    check-cast p1, Lcom/a/a/a/a/c;

    iget v0, p0, Lcom/a/a/a/a/c;->c:I

    iget v1, p1, Lcom/a/a/a/a/c;->c:I

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/a/a/a/a/c;->c:I

    iget v1, p1, Lcom/a/a/a/a/c;->c:I

    if-ge v0, v1, :cond_5

    move v0, v5

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method
