.class public final Lb/b/a/a/k;
.super Lb/b/a/a/b;


# instance fields
.field private a:Lb/b/a/a/c;

.field private b:[Lb/b/a/a/b;

.field private c:[Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x7

    invoke-direct {p0}, Lb/b/a/a/b;-><init>()V

    new-array v0, v1, [Lb/b/a/a/b;

    iput-object v0, p0, Lb/b/a/a/k;->b:[Lb/b/a/a/b;

    new-array v0, v1, [Z

    iput-object v0, p0, Lb/b/a/a/k;->c:[Z

    iget-object v0, p0, Lb/b/a/a/k;->b:[Lb/b/a/a/b;

    const/4 v1, 0x0

    new-instance v2, Lb/b/a/a/o;

    invoke-direct {v2}, Lb/b/a/a/o;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lb/b/a/a/k;->b:[Lb/b/a/a/b;

    const/4 v1, 0x1

    new-instance v2, Lb/b/a/a/m;

    invoke-direct {v2}, Lb/b/a/a/m;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lb/b/a/a/k;->b:[Lb/b/a/a/b;

    const/4 v1, 0x2

    new-instance v2, Lb/b/a/a/d;

    invoke-direct {v2}, Lb/b/a/a/d;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lb/b/a/a/k;->b:[Lb/b/a/a/b;

    const/4 v1, 0x3

    new-instance v2, Lb/b/a/a/h;

    invoke-direct {v2}, Lb/b/a/a/h;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lb/b/a/a/k;->b:[Lb/b/a/a/b;

    const/4 v1, 0x4

    new-instance v2, Lb/b/a/a/e;

    invoke-direct {v2}, Lb/b/a/a/e;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lb/b/a/a/k;->b:[Lb/b/a/a/b;

    const/4 v1, 0x5

    new-instance v2, Lb/b/a/a/a;

    invoke-direct {v2}, Lb/b/a/a/a;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lb/b/a/a/k;->b:[Lb/b/a/a/b;

    const/4 v1, 0x6

    new-instance v2, Lb/b/a/a/f;

    invoke-direct {v2}, Lb/b/a/a/f;-><init>()V

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lb/b/a/a/k;->d()V

    return-void
.end method


# virtual methods
.method public final a([BII)Lb/b/a/a/c;
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v4, p3, [B

    add-int v5, p2, p3

    move v1, v3

    move v0, v2

    :goto_0
    if-lt p2, v5, :cond_0

    move v0, v3

    :goto_1
    iget-object v2, p0, Lb/b/a/a/k;->b:[Lb/b/a/a/b;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    :goto_2
    iget-object v0, p0, Lb/b/a/a/k;->a:Lb/b/a/a/c;

    return-object v0

    :cond_0
    aget-byte v6, p1, p2

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_1

    add-int/lit8 v0, v1, 0x1

    aget-byte v6, p1, p2

    aput-byte v6, v4, v1

    move v1, v2

    :goto_3
    add-int/lit8 p2, p2, 0x1

    move v7, v0

    move v0, v1

    move v1, v7

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_5

    add-int/lit8 v0, v1, 0x1

    aget-byte v6, p1, p2

    aput-byte v6, v4, v1

    move v1, v3

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lb/b/a/a/k;->c:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lb/b/a/a/k;->b:[Lb/b/a/a/b;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4, v3, v1}, Lb/b/a/a/b;->a([BII)Lb/b/a/a/c;

    move-result-object v2

    sget-object v5, Lb/b/a/a/c;->b:Lb/b/a/a/c;

    if-ne v2, v5, :cond_3

    iput v0, p0, Lb/b/a/a/k;->d:I

    sget-object v0, Lb/b/a/a/c;->b:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/k;->a:Lb/b/a/a/c;

    goto :goto_2

    :cond_3
    sget-object v5, Lb/b/a/a/c;->c:Lb/b/a/a/c;

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lb/b/a/a/k;->c:[Z

    aput-boolean v3, v2, v0

    iget v2, p0, Lb/b/a/a/k;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lb/b/a/a/k;->e:I

    iget v2, p0, Lb/b/a/a/k;->e:I

    if-gtz v2, :cond_4

    sget-object v0, Lb/b/a/a/c;->c:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/k;->a:Lb/b/a/a/c;

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_3
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lb/b/a/a/k;->d:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lb/b/a/a/k;->b()F

    iget v0, p0, Lb/b/a/a/k;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/a/k;->d:I

    :cond_0
    iget-object v0, p0, Lb/b/a/a/k;->b:[Lb/b/a/a/b;

    iget v1, p0, Lb/b/a/a/k;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lb/b/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()F
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lb/b/a/a/k;->a:Lb/b/a/a/c;

    sget-object v2, Lb/b/a/a/c;->b:Lb/b/a/a/c;

    if-ne v0, v2, :cond_1

    const v1, 0x3f7d70a4

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lb/b/a/a/k;->a:Lb/b/a/a/c;

    sget-object v2, Lb/b/a/a/c;->c:Lb/b/a/a/c;

    if-ne v0, v2, :cond_2

    const v1, 0x3c23d70a

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lb/b/a/a/k;->b:[Lb/b/a/a/b;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lb/b/a/a/k;->c:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lb/b/a/a/k;->b:[Lb/b/a/a/b;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lb/b/a/a/b;->b()F

    move-result v2

    cmpg-float v3, v1, v2

    if-gez v3, :cond_3

    iput v0, p0, Lb/b/a/a/k;->d:I

    move v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final c()Lb/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lb/b/a/a/k;->a:Lb/b/a/a/c;

    return-object v0
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/a/k;->e:I

    :goto_0
    iget-object v1, p0, Lb/b/a/a/k;->b:[Lb/b/a/a/b;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lb/b/a/a/k;->d:I

    sget-object v0, Lb/b/a/a/c;->a:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/k;->a:Lb/b/a/a/c;

    return-void

    :cond_0
    iget-object v1, p0, Lb/b/a/a/k;->b:[Lb/b/a/a/b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lb/b/a/a/b;->d()V

    iget-object v1, p0, Lb/b/a/a/k;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    iget v1, p0, Lb/b/a/a/k;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/b/a/a/k;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
