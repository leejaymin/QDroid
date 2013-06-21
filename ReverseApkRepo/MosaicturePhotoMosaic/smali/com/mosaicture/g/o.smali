.class final Lcom/mosaicture/g/o;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:F

.field private final c:[Ljava/lang/Object;

.field private final d:[F

.field private final e:I

.field private f:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/mosaicture/g/o;->c:[Ljava/lang/Object;

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/mosaicture/g/o;->d:[F

    iput p1, p0, Lcom/mosaicture/g/o;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mosaicture/g/o;->f:I

    return-void
.end method

.method static synthetic a(Lcom/mosaicture/g/o;)I
    .locals 1

    iget v0, p0, Lcom/mosaicture/g/o;->f:I

    return v0
.end method

.method private a(I)V
    .locals 5

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/mosaicture/g/o;->f:I

    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/mosaicture/g/o;->f:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/mosaicture/g/o;->d:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/mosaicture/g/o;->d:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/mosaicture/g/o;->d:[F

    aget v0, v0, p1

    iget-object v2, p0, Lcom/mosaicture/g/o;->d:[F

    aget v2, v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/g/o;->c:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/mosaicture/g/o;->d:[F

    aget v2, v2, p1

    iget-object v3, p0, Lcom/mosaicture/g/o;->c:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/mosaicture/g/o;->c:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v3, p1

    iget-object v3, p0, Lcom/mosaicture/g/o;->d:[F

    iget-object v4, p0, Lcom/mosaicture/g/o;->d:[F

    aget v4, v4, v1

    aput v4, v3, p1

    iget-object v3, p0, Lcom/mosaicture/g/o;->c:[Ljava/lang/Object;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/mosaicture/g/o;->d:[F

    aput v2, v0, v1

    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/mosaicture/g/o;)[F
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/g/o;->d:[F

    return-object v0
.end method

.method static synthetic c(Lcom/mosaicture/g/o;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/g/o;->c:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/mosaicture/g/o;->f:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/g/o;->c:[Ljava/lang/Object;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/mosaicture/g/o;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/mosaicture/g/o;->d:[F

    aget v0, v0, v3

    iput v0, p0, Lcom/mosaicture/g/o;->b:F

    iget v0, p0, Lcom/mosaicture/g/o;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mosaicture/g/o;->f:I

    iget-object v0, p0, Lcom/mosaicture/g/o;->c:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/mosaicture/g/o;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/mosaicture/g/o;->f:I

    aget-object v1, v1, v2

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/mosaicture/g/o;->d:[F

    iget-object v1, p0, Lcom/mosaicture/g/o;->d:[F

    iget v2, p0, Lcom/mosaicture/g/o;->f:I

    aget v1, v1, v2

    aput v1, v0, v3

    invoke-direct {p0, v3}, Lcom/mosaicture/g/o;->a(I)V

    return-void
.end method

.method public final a(FLjava/lang/Object;)V
    .locals 7

    const/4 v2, 0x0

    iget v0, p0, Lcom/mosaicture/g/o;->f:I

    iget v1, p0, Lcom/mosaicture/g/o;->e:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/mosaicture/g/o;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/mosaicture/g/o;->f:I

    aput-object p2, v0, v1

    iget-object v0, p0, Lcom/mosaicture/g/o;->d:[F

    iget v1, p0, Lcom/mosaicture/g/o;->f:I

    aput p1, v0, v1

    iget v1, p0, Lcom/mosaicture/g/o;->f:I

    add-int/lit8 v0, v1, -0x1

    div-int/lit8 v0, v0, 0x2

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mosaicture/g/o;->d:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/mosaicture/g/o;->d:[F

    aget v3, v3, v0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    :cond_0
    iget v0, p0, Lcom/mosaicture/g/o;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mosaicture/g/o;->f:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/mosaicture/g/o;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/mosaicture/g/o;->d:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/mosaicture/g/o;->c:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/mosaicture/g/o;->c:[Ljava/lang/Object;

    aget-object v5, v5, v1

    aput-object v5, v4, v0

    iget-object v4, p0, Lcom/mosaicture/g/o;->d:[F

    iget-object v5, p0, Lcom/mosaicture/g/o;->d:[F

    aget v5, v5, v1

    aput v5, v4, v0

    iget-object v4, p0, Lcom/mosaicture/g/o;->c:[Ljava/lang/Object;

    aput-object v2, v4, v1

    iget-object v2, p0, Lcom/mosaicture/g/o;->d:[F

    aput v3, v2, v1

    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x2

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mosaicture/g/o;->d:[F

    aget v0, v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/mosaicture/g/o;->c:[Ljava/lang/Object;

    aput-object p2, v0, v2

    iget-object v0, p0, Lcom/mosaicture/g/o;->d:[F

    aput p1, v0, v2

    invoke-direct {p0, v2}, Lcom/mosaicture/g/o;->a(I)V

    goto :goto_1
.end method

.method public final b()F
    .locals 2

    iget v0, p0, Lcom/mosaicture/g/o;->f:I

    iget v1, p0, Lcom/mosaicture/g/o;->e:I

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x7f80

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mosaicture/g/o;->d:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0
.end method
