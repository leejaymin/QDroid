.class public Lcom/a/a/a/a;
.super Lcom/a/a/a/b;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I


# direct methods
.method protected constructor <init>(JIIII)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/a/a/a/a;-><init>(JIIIIB)V

    return-void
.end method

.method private constructor <init>(JIIIIB)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/a/a/a/b;-><init>(J)V

    and-int/lit8 v0, p3, 0xf

    iput v0, p0, Lcom/a/a/a/a;->a:I

    and-int/lit8 v0, p4, 0xf

    iput v0, p0, Lcom/a/a/a/a;->b:I

    and-int/lit16 v0, p5, 0xff

    iput v0, p0, Lcom/a/a/a/a;->c:I

    and-int/lit16 v0, p6, 0xff

    iput v0, p0, Lcom/a/a/a/a;->d:I

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/a;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/io/OutputStream;Z)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/a/a/a/b;->a(Ljava/io/OutputStream;Z)V

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/a/a/a/a;->a:I

    shl-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/a/a/a/a;->b:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    iget v0, p0, Lcom/a/a/a/a;->c:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/a/a/a/a;->a:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/a/a/a/a;->a:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/a/a/a/a;->d:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/a/a/a/b;)Z
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/a/a/a/a;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/a/a/a/a;

    iget v0, p0, Lcom/a/a/a/a;->a:I

    iget v1, p1, Lcom/a/a/a/a;->a:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/a/a/a/a;->b:I

    iget v1, p1, Lcom/a/a/a/a;->b:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    check-cast p1, Lcom/a/a/a/b;

    iget-wide v0, p0, Lcom/a/a/a/a;->e:J

    invoke-virtual {p1}, Lcom/a/a/a/b;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/a/a/a/a;->e:J

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
    iget-object v0, p0, Lcom/a/a/a/a;->f:Lcom/a/a/b/b;

    invoke-virtual {v0}, Lcom/a/a/b/b;->a()I

    move-result v0

    iget-object v1, p1, Lcom/a/a/a/b;->f:Lcom/a/a/b/b;

    invoke-virtual {v1}, Lcom/a/a/b/b;->a()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/a/a/a/a;->f:Lcom/a/a/b/b;

    invoke-virtual {v0}, Lcom/a/a/b/b;->a()I

    move-result v0

    iget-object v1, p1, Lcom/a/a/a/b;->f:Lcom/a/a/b/b;

    invoke-virtual {v1}, Lcom/a/a/b/b;->a()I

    move-result v1

    if-ge v0, v1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/a/a/a/a;

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    check-cast p1, Lcom/a/a/a/a;

    iget v0, p0, Lcom/a/a/a/a;->a:I

    iget v1, p1, Lcom/a/a/a/a;->a:I

    if-eq v0, v1, :cond_5

    move v0, v4

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/a/a/a/a;->c:I

    iget v1, p1, Lcom/a/a/a/a;->c:I

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/a/a/a/a;->c:I

    iget v1, p1, Lcom/a/a/a/a;->c:I

    if-ge v0, v1, :cond_6

    move v0, v5

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/a/a/a/a;->d:I

    iget v1, p1, Lcom/a/a/a/a;->d:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/a/a/a/a;->d:I

    iget v1, p1, Lcom/a/a/a/a;->d:I

    if-ge v0, v1, :cond_8

    move v0, v5

    goto :goto_0

    :cond_8
    move v0, v4

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/a/a/a/a;->b:I

    iget v1, p1, Lcom/a/a/a/a;->b:I

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/a/a/a/a;->b:I

    iget v1, p1, Lcom/a/a/a/a;->b:I

    if-ge v0, v1, :cond_a

    move v0, v5

    goto :goto_0

    :cond_a
    move v0, v4

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_0
.end method
