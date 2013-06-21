.class public abstract Lcom/mosaicture/g/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Lcom/mosaicture/g/l;

.field private final c:Ljava/util/LinkedList;

.field private final d:Ljava/lang/Integer;

.field private e:[[F

.field private f:[Ljava/lang/Object;

.field private g:I

.field private h:Lcom/mosaicture/g/l;

.field private i:Lcom/mosaicture/g/l;

.field private j:I

.field private k:F

.field private l:[F

.field private m:[F

.field private n:Z

.field private o:Lcom/mosaicture/g/p;


# direct methods
.method private constructor <init>(Lcom/mosaicture/g/l;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/mosaicture/g/l;->a:I

    iput v0, p0, Lcom/mosaicture/g/l;->a:I

    iget v0, p1, Lcom/mosaicture/g/l;->g:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [[F

    iput-object v0, p0, Lcom/mosaicture/g/l;->e:[[F

    iget v0, p1, Lcom/mosaicture/g/l;->g:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/mosaicture/g/l;->f:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mosaicture/g/l;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mosaicture/g/l;->n:Z

    iput-object p1, p0, Lcom/mosaicture/g/l;->b:Lcom/mosaicture/g/l;

    iput-object v2, p0, Lcom/mosaicture/g/l;->c:Ljava/util/LinkedList;

    iput-object v2, p0, Lcom/mosaicture/g/l;->d:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mosaicture/g/l;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mosaicture/g/l;-><init>(Lcom/mosaicture/g/l;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Integer;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1b

    iput v0, p0, Lcom/mosaicture/g/l;->a:I

    new-array v0, v1, [[F

    iput-object v0, p0, Lcom/mosaicture/g/l;->e:[[F

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/mosaicture/g/l;->f:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mosaicture/g/l;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mosaicture/g/l;->n:Z

    iput-object v2, p0, Lcom/mosaicture/g/l;->b:Lcom/mosaicture/g/l;

    iput-object p1, p0, Lcom/mosaicture/g/l;->d:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mosaicture/g/l;->c:Ljava/util/LinkedList;

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/mosaicture/g/l;->c:Ljava/util/LinkedList;

    goto :goto_0
.end method

.method private final a([F)V
    .locals 5

    const/high16 v4, 0x7fc0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mosaicture/g/l;->l:[F

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mosaicture/g/l;->a:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mosaicture/g/l;->l:[F

    iget-object v0, p0, Lcom/mosaicture/g/l;->l:[F

    iget v2, p0, Lcom/mosaicture/g/l;->a:I

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/mosaicture/g/l;->a:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mosaicture/g/l;->m:[F

    iget-object v0, p0, Lcom/mosaicture/g/l;->m:[F

    iget v2, p0, Lcom/mosaicture/g/l;->a:I

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/mosaicture/g/l;->a:I

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mosaicture/g/l;->l:[F

    aput v4, v2, v0

    iget-object v2, p0, Lcom/mosaicture/g/l;->m:[F

    aput v4, v2, v0

    iput-boolean v1, p0, Lcom/mosaicture/g/l;->n:Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/mosaicture/g/l;->l:[F

    aget v2, v2, v0

    aget v3, p1, v0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/mosaicture/g/l;->l:[F

    aget v3, p1, v0

    aput v3, v2, v0

    iput-boolean v1, p0, Lcom/mosaicture/g/l;->n:Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/mosaicture/g/l;->m:[F

    aget v2, v2, v0

    aget v3, p1, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/mosaicture/g/l;->m:[F

    aget v3, p1, v0

    aput v3, v2, v0

    iput-boolean v1, p0, Lcom/mosaicture/g/l;->n:Z

    goto :goto_1
.end method


# virtual methods
.method protected abstract a([F[F)F
.end method

.method protected abstract a([F[F[F)F
.end method

.method public final a([FIZ)Ljava/util/List;
    .locals 7

    const/4 v2, 0x0

    sget-object v0, Lcom/mosaicture/g/p;->a:Lcom/mosaicture/g/p;

    iput-object v0, p0, Lcom/mosaicture/g/l;->o:Lcom/mosaicture/g/p;

    const/high16 v0, 0x7f80

    new-instance v4, Lcom/mosaicture/g/o;

    invoke-direct {v4, p2}, Lcom/mosaicture/g/o;-><init>(I)V

    move-object v1, p0

    :cond_0
    iget-object v3, v1, Lcom/mosaicture/g/l;->o:Lcom/mosaicture/g/p;

    sget-object v5, Lcom/mosaicture/g/p;->d:Lcom/mosaicture/g/p;

    if-ne v3, v5, :cond_4

    iget-object v1, v1, Lcom/mosaicture/g/l;->b:Lcom/mosaicture/g/l;

    :cond_1
    :goto_0
    iget-object v3, v1, Lcom/mosaicture/g/l;->b:Lcom/mosaicture/g/l;

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/mosaicture/g/l;->o:Lcom/mosaicture/g/p;

    sget-object v5, Lcom/mosaicture/g/p;->d:Lcom/mosaicture/g/p;

    if-ne v3, v5, :cond_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/mosaicture/g/o;->a(Lcom/mosaicture/g/o;)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p3, :cond_10

    :goto_1
    invoke-static {v4}, Lcom/mosaicture/g/o;->a(Lcom/mosaicture/g/o;)I

    move-result v0

    if-gtz v0, :cond_f

    :cond_3
    return-object v1

    :cond_4
    iget-object v3, v1, Lcom/mosaicture/g/l;->o:Lcom/mosaicture/g/p;

    sget-object v5, Lcom/mosaicture/g/p;->a:Lcom/mosaicture/g/p;

    if-ne v3, v5, :cond_9

    iget-object v3, v1, Lcom/mosaicture/g/l;->e:[[F

    if-eqz v3, :cond_9

    iget v3, v1, Lcom/mosaicture/g/l;->g:I

    if-lez v3, :cond_6

    iget-boolean v3, v1, Lcom/mosaicture/g/l;->n:Z

    if-eqz v3, :cond_8

    iget-object v3, v1, Lcom/mosaicture/g/l;->e:[[F

    aget-object v3, v3, v2

    invoke-virtual {p0, v3, p1}, Lcom/mosaicture/g/l;->a([F[F)F

    move-result v3

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_5

    move v0, v2

    :goto_2
    iget v5, v1, Lcom/mosaicture/g/l;->g:I

    if-lt v0, v5, :cond_7

    :cond_5
    invoke-virtual {v4}, Lcom/mosaicture/g/o;->b()F

    move-result v0

    :cond_6
    iget-object v3, v1, Lcom/mosaicture/g/l;->b:Lcom/mosaicture/g/l;

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/mosaicture/g/l;->b:Lcom/mosaicture/g/l;

    goto :goto_0

    :cond_7
    iget-object v5, v1, Lcom/mosaicture/g/l;->f:[Ljava/lang/Object;

    aget-object v5, v5, v0

    invoke-virtual {v4, v3, v5}, Lcom/mosaicture/g/o;->a(FLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_3
    iget v3, v1, Lcom/mosaicture/g/l;->g:I

    if-ge v0, v3, :cond_5

    iget-object v3, v1, Lcom/mosaicture/g/l;->e:[[F

    aget-object v3, v3, v0

    invoke-virtual {p0, v3, p1}, Lcom/mosaicture/g/l;->a([F[F)F

    move-result v3

    iget-object v5, v1, Lcom/mosaicture/g/l;->f:[Ljava/lang/Object;

    aget-object v5, v5, v0

    invoke-virtual {v4, v3, v5}, Lcom/mosaicture/g/o;->a(FLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    iget-object v5, v1, Lcom/mosaicture/g/l;->o:Lcom/mosaicture/g/p;

    sget-object v6, Lcom/mosaicture/g/p;->a:Lcom/mosaicture/g/p;

    if-ne v5, v6, :cond_d

    iget v3, v1, Lcom/mosaicture/g/l;->j:I

    aget v3, p1, v3

    iget v5, v1, Lcom/mosaicture/g/l;->k:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_c

    iget-object v3, v1, Lcom/mosaicture/g/l;->i:Lcom/mosaicture/g/l;

    sget-object v5, Lcom/mosaicture/g/p;->c:Lcom/mosaicture/g/p;

    iput-object v5, v1, Lcom/mosaicture/g/l;->o:Lcom/mosaicture/g/p;

    :cond_a
    :goto_4
    iget-object v5, v1, Lcom/mosaicture/g/l;->o:Lcom/mosaicture/g/p;

    sget-object v6, Lcom/mosaicture/g/p;->d:Lcom/mosaicture/g/p;

    if-ne v5, v6, :cond_b

    iget v5, v3, Lcom/mosaicture/g/l;->g:I

    if-eqz v5, :cond_1

    iget-boolean v5, v3, Lcom/mosaicture/g/l;->n:Z

    if-nez v5, :cond_b

    iget-object v5, v3, Lcom/mosaicture/g/l;->l:[F

    iget-object v6, v3, Lcom/mosaicture/g/l;->m:[F

    invoke-virtual {p0, p1, v5, v6}, Lcom/mosaicture/g/l;->a([F[F[F)F

    move-result v5

    cmpl-float v5, v5, v0

    if-gtz v5, :cond_1

    :cond_b
    sget-object v1, Lcom/mosaicture/g/p;->a:Lcom/mosaicture/g/p;

    iput-object v1, v3, Lcom/mosaicture/g/l;->o:Lcom/mosaicture/g/p;

    move-object v1, v3

    goto/16 :goto_0

    :cond_c
    iget-object v3, v1, Lcom/mosaicture/g/l;->h:Lcom/mosaicture/g/l;

    sget-object v5, Lcom/mosaicture/g/p;->b:Lcom/mosaicture/g/p;

    iput-object v5, v1, Lcom/mosaicture/g/l;->o:Lcom/mosaicture/g/p;

    goto :goto_4

    :cond_d
    iget-object v5, v1, Lcom/mosaicture/g/l;->o:Lcom/mosaicture/g/p;

    sget-object v6, Lcom/mosaicture/g/p;->b:Lcom/mosaicture/g/p;

    if-ne v5, v6, :cond_e

    iget-object v3, v1, Lcom/mosaicture/g/l;->i:Lcom/mosaicture/g/l;

    sget-object v5, Lcom/mosaicture/g/p;->d:Lcom/mosaicture/g/p;

    iput-object v5, v1, Lcom/mosaicture/g/l;->o:Lcom/mosaicture/g/p;

    goto :goto_4

    :cond_e
    iget-object v5, v1, Lcom/mosaicture/g/l;->o:Lcom/mosaicture/g/p;

    sget-object v6, Lcom/mosaicture/g/p;->c:Lcom/mosaicture/g/p;

    if-ne v5, v6, :cond_a

    iget-object v3, v1, Lcom/mosaicture/g/l;->h:Lcom/mosaicture/g/l;

    sget-object v5, Lcom/mosaicture/g/p;->d:Lcom/mosaicture/g/p;

    iput-object v5, v1, Lcom/mosaicture/g/l;->o:Lcom/mosaicture/g/p;

    goto :goto_4

    :cond_f
    invoke-virtual {v4}, Lcom/mosaicture/g/o;->a()V

    new-instance v0, Lcom/mosaicture/g/n;

    iget v3, v4, Lcom/mosaicture/g/o;->b:F

    iget-object v5, v4, Lcom/mosaicture/g/o;->a:Ljava/lang/Object;

    invoke-direct {v0, v3, v5, v2}, Lcom/mosaicture/g/n;-><init>(FLjava/lang/Object;B)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_10
    move v0, v2

    :goto_5
    invoke-static {v4}, Lcom/mosaicture/g/o;->a(Lcom/mosaicture/g/o;)I

    move-result v3

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/mosaicture/g/n;

    invoke-static {v4}, Lcom/mosaicture/g/o;->b(Lcom/mosaicture/g/o;)[F

    move-result-object v5

    aget v5, v5, v0

    invoke-static {v4}, Lcom/mosaicture/g/o;->c(Lcom/mosaicture/g/o;)[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-direct {v3, v5, v6, v2}, Lcom/mosaicture/g/n;-><init>(FLjava/lang/Object;B)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public final a([FLjava/lang/Object;)V
    .locals 13

    const/high16 v11, 0x3f80

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lcom/mosaicture/g/l;->e:[[F

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/mosaicture/g/l;->g:I

    iget-object v3, v0, Lcom/mosaicture/g/l;->e:[[F

    array-length v3, v3

    if-ge v1, v3, :cond_1

    :goto_1
    iget-object v1, v0, Lcom/mosaicture/g/l;->e:[[F

    iget v2, v0, Lcom/mosaicture/g/l;->g:I

    aput-object p1, v1, v2

    iget-object v1, v0, Lcom/mosaicture/g/l;->f:[Ljava/lang/Object;

    iget v2, v0, Lcom/mosaicture/g/l;->g:I

    aput-object p2, v1, v2

    iget v1, v0, Lcom/mosaicture/g/l;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mosaicture/g/l;->g:I

    invoke-direct {v0, p1}, Lcom/mosaicture/g/l;->a([F)V

    iget-object v0, p0, Lcom/mosaicture/g/l;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/g/l;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/mosaicture/g/l;->g:I

    iget-object v1, p0, Lcom/mosaicture/g/l;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/mosaicture/g/l;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    :goto_2
    iget-object v1, p0, Lcom/mosaicture/g/l;->e:[[F

    if-eqz v1, :cond_f

    :goto_3
    iget v1, p0, Lcom/mosaicture/g/l;->g:I

    if-lt v5, v1, :cond_11

    :cond_0
    :goto_4
    return-void

    :cond_1
    iget-object v1, v0, Lcom/mosaicture/g/l;->e:[[F

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/mosaicture/g/l;->m:[F

    aget v1, v1, v5

    iget-object v3, v0, Lcom/mosaicture/g/l;->l:[F

    aget v3, v3, v5

    sub-float/2addr v1, v3

    mul-float/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    const/4 v3, 0x1

    move v4, v5

    move v12, v1

    move v1, v3

    move v3, v12

    :goto_5
    iget v6, v0, Lcom/mosaicture/g/l;->a:I

    if-lt v1, v6, :cond_4

    iput v4, v0, Lcom/mosaicture/g/l;->j:I

    iget-object v1, v0, Lcom/mosaicture/g/l;->l:[F

    iget v3, v0, Lcom/mosaicture/g/l;->j:I

    aget v1, v1, v3

    iget-object v3, v0, Lcom/mosaicture/g/l;->m:[F

    iget v4, v0, Lcom/mosaicture/g/l;->j:I

    aget v3, v3, v4

    add-float/2addr v1, v3

    const/high16 v3, 0x3f00

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/mosaicture/g/l;->k:F

    iget v1, v0, Lcom/mosaicture/g/l;->k:F

    const/high16 v3, 0x7f80

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7

    const v1, 0x7f7fffff

    iput v1, v0, Lcom/mosaicture/g/l;->k:F

    :cond_3
    :goto_6
    iget-object v1, v0, Lcom/mosaicture/g/l;->l:[F

    iget v3, v0, Lcom/mosaicture/g/l;->j:I

    aget v1, v1, v3

    iget-object v3, v0, Lcom/mosaicture/g/l;->m:[F

    iget v4, v0, Lcom/mosaicture/g/l;->j:I

    aget v3, v3, v4

    cmpl-float v1, v1, v3

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/mosaicture/g/l;->e:[[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [[F

    iget-object v2, v0, Lcom/mosaicture/g/l;->e:[[F

    iget v3, v0, Lcom/mosaicture/g/l;->g:I

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, v0, Lcom/mosaicture/g/l;->e:[[F

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/mosaicture/g/l;->f:[Ljava/lang/Object;

    iget v3, v0, Lcom/mosaicture/g/l;->g:I

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, v0, Lcom/mosaicture/g/l;->f:[Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    iget-object v6, v0, Lcom/mosaicture/g/l;->m:[F

    aget v6, v6, v1

    iget-object v7, v0, Lcom/mosaicture/g/l;->l:[F

    aget v7, v7, v1

    sub-float/2addr v6, v7

    mul-float/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_5

    move v6, v2

    :cond_5
    cmpl-float v7, v6, v3

    if-lez v7, :cond_6

    move v3, v6

    move v4, v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    iget v1, v0, Lcom/mosaicture/g/l;->k:F

    const/high16 v3, -0x80

    cmpl-float v1, v1, v3

    if-nez v1, :cond_8

    const v1, -0x800001

    iput v1, v0, Lcom/mosaicture/g/l;->k:F

    goto :goto_6

    :cond_8
    iget v1, v0, Lcom/mosaicture/g/l;->k:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_3

    iput v2, v0, Lcom/mosaicture/g/l;->k:F

    goto :goto_6

    :cond_9
    iget v1, v0, Lcom/mosaicture/g/l;->k:F

    iget-object v3, v0, Lcom/mosaicture/g/l;->m:[F

    iget v4, v0, Lcom/mosaicture/g/l;->j:I

    aget v3, v3, v4

    cmpl-float v1, v1, v3

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/mosaicture/g/l;->l:[F

    iget v3, v0, Lcom/mosaicture/g/l;->j:I

    aget v1, v1, v3

    iput v1, v0, Lcom/mosaicture/g/l;->k:F

    :cond_a
    new-instance v3, Lcom/mosaicture/g/m;

    invoke-direct {v3, p0, v0, v5}, Lcom/mosaicture/g/m;-><init>(Lcom/mosaicture/g/l;Lcom/mosaicture/g/l;B)V

    new-instance v4, Lcom/mosaicture/g/m;

    invoke-direct {v4, p0, v0, v5}, Lcom/mosaicture/g/m;-><init>(Lcom/mosaicture/g/l;Lcom/mosaicture/g/l;B)V

    move v1, v5

    :goto_7
    iget v6, v0, Lcom/mosaicture/g/l;->g:I

    if-lt v1, v6, :cond_c

    iput-object v3, v0, Lcom/mosaicture/g/l;->h:Lcom/mosaicture/g/l;

    iput-object v4, v0, Lcom/mosaicture/g/l;->i:Lcom/mosaicture/g/l;

    iput-object v10, v0, Lcom/mosaicture/g/l;->e:[[F

    iput-object v10, v0, Lcom/mosaicture/g/l;->f:[Ljava/lang/Object;

    :cond_b
    iget v1, v0, Lcom/mosaicture/g/l;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mosaicture/g/l;->g:I

    invoke-direct {v0, p1}, Lcom/mosaicture/g/l;->a([F)V

    iget v1, v0, Lcom/mosaicture/g/l;->j:I

    aget v1, p1, v1

    iget v3, v0, Lcom/mosaicture/g/l;->k:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_e

    iget-object v0, v0, Lcom/mosaicture/g/l;->i:Lcom/mosaicture/g/l;

    goto/16 :goto_0

    :cond_c
    iget-object v6, v0, Lcom/mosaicture/g/l;->e:[[F

    aget-object v6, v6, v1

    iget-object v7, v0, Lcom/mosaicture/g/l;->f:[Ljava/lang/Object;

    aget-object v7, v7, v1

    iget v8, v0, Lcom/mosaicture/g/l;->j:I

    aget v8, v6, v8

    iget v9, v0, Lcom/mosaicture/g/l;->k:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_d

    iget-object v8, v4, Lcom/mosaicture/g/l;->e:[[F

    iget v9, v4, Lcom/mosaicture/g/l;->g:I

    aput-object v6, v8, v9

    iget-object v8, v4, Lcom/mosaicture/g/l;->f:[Ljava/lang/Object;

    iget v9, v4, Lcom/mosaicture/g/l;->g:I

    aput-object v7, v8, v9

    iget v7, v4, Lcom/mosaicture/g/l;->g:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/mosaicture/g/l;->g:I

    invoke-direct {v4, v6}, Lcom/mosaicture/g/l;->a([F)V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_d
    iget-object v8, v3, Lcom/mosaicture/g/l;->e:[[F

    iget v9, v3, Lcom/mosaicture/g/l;->g:I

    aput-object v6, v8, v9

    iget-object v8, v3, Lcom/mosaicture/g/l;->f:[Ljava/lang/Object;

    iget v9, v3, Lcom/mosaicture/g/l;->g:I

    aput-object v7, v8, v9

    iget v7, v3, Lcom/mosaicture/g/l;->g:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v3, Lcom/mosaicture/g/l;->g:I

    invoke-direct {v3, v6}, Lcom/mosaicture/g/l;->a([F)V

    goto :goto_8

    :cond_e
    iget-object v0, v0, Lcom/mosaicture/g/l;->h:Lcom/mosaicture/g/l;

    goto/16 :goto_0

    :cond_f
    iget v1, p0, Lcom/mosaicture/g/l;->j:I

    aget v1, v0, v1

    iget v2, p0, Lcom/mosaicture/g/l;->k:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    iget-object p0, p0, Lcom/mosaicture/g/l;->i:Lcom/mosaicture/g/l;

    goto/16 :goto_2

    :cond_10
    iget-object p0, p0, Lcom/mosaicture/g/l;->h:Lcom/mosaicture/g/l;

    goto/16 :goto_2

    :cond_11
    iget-object v1, p0, Lcom/mosaicture/g/l;->e:[[F

    aget-object v1, v1, v5

    if-ne v1, v0, :cond_13

    iget-object v0, p0, Lcom/mosaicture/g/l;->e:[[F

    add-int/lit8 v1, v5, 0x1

    iget-object v2, p0, Lcom/mosaicture/g/l;->e:[[F

    iget v3, p0, Lcom/mosaicture/g/l;->g:I

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/mosaicture/g/l;->e:[[F

    iget v1, p0, Lcom/mosaicture/g/l;->g:I

    add-int/lit8 v1, v1, -0x1

    aput-object v10, v0, v1

    iget-object v0, p0, Lcom/mosaicture/g/l;->f:[Ljava/lang/Object;

    add-int/lit8 v1, v5, 0x1

    iget-object v2, p0, Lcom/mosaicture/g/l;->f:[Ljava/lang/Object;

    iget v3, p0, Lcom/mosaicture/g/l;->g:I

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/mosaicture/g/l;->f:[Ljava/lang/Object;

    iget v1, p0, Lcom/mosaicture/g/l;->g:I

    add-int/lit8 v1, v1, -0x1

    aput-object v10, v0, v1

    :cond_12
    iget v0, p0, Lcom/mosaicture/g/l;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mosaicture/g/l;->g:I

    iget-object p0, p0, Lcom/mosaicture/g/l;->b:Lcom/mosaicture/g/l;

    if-nez p0, :cond_12

    goto/16 :goto_4

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3
.end method
