.class public final Lb/b/a/a/n;
.super Lb/b/a/a/b;


# instance fields
.field private a:Lb/b/a/a/c;

.field private b:Lb/b/a/a/c/l;

.field private c:Z

.field private d:S

.field private e:I

.field private f:[I

.field private g:I

.field private h:I

.field private i:Lb/b/a/a/b;


# direct methods
.method public constructor <init>(Lb/b/a/a/c/l;)V
    .locals 1

    invoke-direct {p0}, Lb/b/a/a/b;-><init>()V

    iput-object p1, p0, Lb/b/a/a/n;->b:Lb/b/a/a/c/l;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/a/a/n;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/a/a/n;->i:Lb/b/a/a/b;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lb/b/a/a/n;->f:[I

    invoke-virtual {p0}, Lb/b/a/a/n;->d()V

    return-void
.end method

.method public constructor <init>(Lb/b/a/a/c/l;ZLb/b/a/a/b;)V
    .locals 1

    invoke-direct {p0}, Lb/b/a/a/b;-><init>()V

    iput-object p1, p0, Lb/b/a/a/n;->b:Lb/b/a/a/c/l;

    iput-boolean p2, p0, Lb/b/a/a/n;->c:Z

    iput-object p3, p0, Lb/b/a/a/n;->i:Lb/b/a/a/b;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lb/b/a/a/n;->f:[I

    invoke-virtual {p0}, Lb/b/a/a/n;->d()V

    return-void
.end method


# virtual methods
.method public final a([BII)Lb/b/a/a/c;
    .locals 7

    const/16 v6, 0x40

    add-int v0, p2, p3

    :goto_0
    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lb/b/a/a/n;->a:Lb/b/a/a/c;

    sget-object v1, Lb/b/a/a/c;->a:Lb/b/a/a/c;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lb/b/a/a/n;->e:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lb/b/a/a/n;->b()F

    move-result v0

    const v1, 0x3f733333

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    sget-object v0, Lb/b/a/a/c;->b:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/n;->a:Lb/b/a/a/c;

    :cond_0
    :goto_1
    iget-object v0, p0, Lb/b/a/a/n;->a:Lb/b/a/a/c;

    return-object v0

    :cond_1
    iget-object v1, p0, Lb/b/a/a/n;->b:Lb/b/a/a/c/l;

    aget-byte v2, p1, p2

    invoke-virtual {v1, v2}, Lb/b/a/a/c/l;->a(B)S

    move-result v1

    const/16 v2, 0xfa

    if-ge v1, v2, :cond_2

    iget v2, p0, Lb/b/a/a/n;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lb/b/a/a/n;->g:I

    :cond_2
    if-ge v1, v6, :cond_3

    iget v2, p0, Lb/b/a/a/n;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lb/b/a/a/n;->h:I

    iget-short v2, p0, Lb/b/a/a/n;->d:S

    if-ge v2, v6, :cond_3

    iget v2, p0, Lb/b/a/a/n;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lb/b/a/a/n;->e:I

    iget-boolean v2, p0, Lb/b/a/a/n;->c:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lb/b/a/a/n;->f:[I

    iget-object v3, p0, Lb/b/a/a/n;->b:Lb/b/a/a/c/l;

    iget-short v4, p0, Lb/b/a/a/n;->d:S

    mul-int/lit8 v4, v4, 0x40

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lb/b/a/a/c/l;->a(I)B

    move-result v3

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    :cond_3
    :goto_2
    iput-short v1, p0, Lb/b/a/a/n;->d:S

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lb/b/a/a/n;->f:[I

    iget-object v3, p0, Lb/b/a/a/n;->b:Lb/b/a/a/c/l;

    mul-int/lit8 v4, v1, 0x40

    iget-short v5, p0, Lb/b/a/a/n;->d:S

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lb/b/a/a/c/l;->a(I)B

    move-result v3

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    goto :goto_2

    :cond_5
    const v1, 0x3d4ccccd

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Lb/b/a/a/c;->c:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/n;->a:Lb/b/a/a/c;

    goto :goto_1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/b/a/a/n;->i:Lb/b/a/a/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/n;->b:Lb/b/a/a/c/l;

    invoke-virtual {v0}, Lb/b/a/a/c/l;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lb/b/a/a/n;->i:Lb/b/a/a/b;

    invoke-virtual {v0}, Lb/b/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()F
    .locals 3

    const/high16 v2, 0x3f80

    iget v0, p0, Lb/b/a/a/n;->e:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lb/b/a/a/n;->f:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lb/b/a/a/n;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lb/b/a/a/n;->b:Lb/b/a/a/c/l;

    invoke-virtual {v1}, Lb/b/a/a/c/l;->a()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p0, Lb/b/a/a/n;->h:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lb/b/a/a/n;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_0

    const v0, 0x3f7d70a4

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v0, 0x3c23d70a

    goto :goto_0
.end method

.method public final c()Lb/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lb/b/a/a/n;->a:Lb/b/a/a/c;

    return-object v0
.end method

.method public final d()V
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lb/b/a/a/c;->a:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/n;->a:Lb/b/a/a/c;

    const/16 v0, 0xff

    iput-short v0, p0, Lb/b/a/a/n;->d:S

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    iput v1, p0, Lb/b/a/a/n;->e:I

    iput v1, p0, Lb/b/a/a/n;->g:I

    iput v1, p0, Lb/b/a/a/n;->h:I

    return-void

    :cond_0
    iget-object v2, p0, Lb/b/a/a/n;->f:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
