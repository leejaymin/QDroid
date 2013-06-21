.class public final Lcom/a/a/a/a/d;
.super Lcom/a/a/a/a/b;


# instance fields
.field private c:I

.field private d:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/a/a/d;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 5

    const-wide/16 v0, 0x0

    const/16 v2, 0x58

    new-instance v3, Lcom/a/a/b/b;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/a/a/b/b;-><init>(I)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/a/a/a/a/b;-><init>(JILcom/a/a/b/b;)V

    invoke-virtual {p0}, Lcom/a/a/a/a/d;->e()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/a/a/a/a/b;->a(Ljava/io/OutputStream;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/a/a/a/a/d;->c:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/a/a/a/a/d;->d:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/a/a/a/a/d;->g:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/a/a/a/a/d;->h:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    check-cast p1, Lcom/a/a/a/b;

    iget-wide v0, p0, Lcom/a/a/a/a/d;->e:J

    invoke-virtual {p1}, Lcom/a/a/a/b;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/a/a/a/a/d;->e:J

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
    iget-object v0, p0, Lcom/a/a/a/a/d;->f:Lcom/a/a/b/b;

    invoke-virtual {v0}, Lcom/a/a/b/b;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/a/a/a/b;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/a/a/a/d;->f:Lcom/a/a/b/b;

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
    instance-of v0, p1, Lcom/a/a/a/a/d;

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    check-cast p1, Lcom/a/a/a/a/d;

    iget v0, p0, Lcom/a/a/a/a/d;->c:I

    iget v1, p1, Lcom/a/a/a/a/d;->c:I

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/a/a/a/a/d;->c:I

    iget v1, p1, Lcom/a/a/a/a/d;->c:I

    if-ge v0, v1, :cond_5

    move v0, v5

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/a/a/a/a/d;->d:I

    iget v1, p1, Lcom/a/a/a/a/d;->d:I

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/a/a/a/a/d;->d:I

    iget v1, p1, Lcom/a/a/a/a/d;->d:I

    if-ge v0, v1, :cond_7

    move v0, v5

    goto :goto_0

    :cond_7
    move v0, v4

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/a/a/a/a/d;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/a/a/a/a/d;->d:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/a/a/a/a/d;->g:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/a/a/a/a/d;->h:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/a/a/a/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/a/a/a/a/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/high16 v1, 0x4000

    iget v3, p0, Lcom/a/a/a/a/d;->d:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
