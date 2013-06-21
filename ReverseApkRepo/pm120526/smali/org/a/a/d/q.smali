.class public final Lorg/a/a/d/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/a/a/a;

.field private final b:J

.field private c:Lorg/a/a/i;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/util/Locale;

.field private f:Ljava/lang/Integer;

.field private g:I

.field private h:[Lorg/a/a/d/r;

.field private i:I

.field private j:Z

.field private k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/a/a/a;Ljava/util/Locale;Ljava/lang/Integer;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/a/a/d/r;

    iput-object v0, p0, Lorg/a/a/d/q;->h:[Lorg/a/a/d/r;

    invoke-static {p1}, Lorg/a/a/f;->a(Lorg/a/a/a;)Lorg/a/a/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/a/a/d/q;->b:J

    invoke-virtual {v0}, Lorg/a/a/a;->a()Lorg/a/a/i;

    move-result-object v1

    iput-object v1, p0, Lorg/a/a/d/q;->c:Lorg/a/a/i;

    invoke-virtual {v0}, Lorg/a/a/a;->b()Lorg/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/d/q;->a:Lorg/a/a/a;

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/a/a/d/q;->e:Ljava/util/Locale;

    iput-object p3, p0, Lorg/a/a/d/q;->f:Ljava/lang/Integer;

    iput p4, p0, Lorg/a/a/d/q;->g:I

    return-void

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method static a(Lorg/a/a/k;Lorg/a/a/k;)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/a/a/k;->b()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/a/a/k;->b()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/a/a/k;->b()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lorg/a/a/k;->compareTo(Ljava/lang/Object;)I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method

.method private a(Lorg/a/a/d/r;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/a/a/d/q;->h:[Lorg/a/a/d/r;

    iget v1, p0, Lorg/a/a/d/q;->i:I

    array-length v2, v0

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Lorg/a/a/d/q;->j:Z

    if-eqz v2, :cond_1

    :cond_0
    array-length v2, v0

    if-ne v1, v2, :cond_2

    mul-int/lit8 v2, v1, 0x2

    :goto_0
    new-array v2, v2, [Lorg/a/a/d/r;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/a/a/d/q;->h:[Lorg/a/a/d/r;

    iput-boolean v3, p0, Lorg/a/a/d/q;->j:Z

    move-object v0, v2

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/a/a/d/q;->k:Ljava/lang/Object;

    aput-object p1, v0, v1

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/a/a/d/q;->i:I

    return-void

    :cond_2
    array-length v2, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lorg/a/a/d/q;->h:[Lorg/a/a/d/r;

    iget v1, p0, Lorg/a/a/d/q;->i:I

    iget-boolean v2, p0, Lorg/a/a/d/q;->j:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lorg/a/a/d/q;->h:[Lorg/a/a/d/r;

    invoke-virtual {v0}, [Lorg/a/a/d/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/a/a/d/r;

    iput-object v0, p0, Lorg/a/a/d/q;->h:[Lorg/a/a/d/r;

    iput-boolean v7, p0, Lorg/a/a/d/q;->j:Z

    :cond_0
    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    invoke-static {v0, v7, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    :cond_1
    if-lez v1, :cond_4

    invoke-static {}, Lorg/a/a/l;->i()Lorg/a/a/l;

    move-result-object v2

    iget-object v3, p0, Lorg/a/a/d/q;->a:Lorg/a/a/a;

    invoke-virtual {v2, v3}, Lorg/a/a/l;->a(Lorg/a/a/a;)Lorg/a/a/k;

    move-result-object v2

    invoke-static {}, Lorg/a/a/l;->f()Lorg/a/a/l;

    move-result-object v3

    iget-object v4, p0, Lorg/a/a/d/q;->a:Lorg/a/a/a;

    invoke-virtual {v3, v4}, Lorg/a/a/l;->a(Lorg/a/a/a;)Lorg/a/a/k;

    move-result-object v3

    aget-object v4, v0, v7

    iget-object v4, v4, Lorg/a/a/d/r;->a:Lorg/a/a/c;

    invoke-virtual {v4}, Lorg/a/a/c;->d()Lorg/a/a/k;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/a/a/d/q;->a(Lorg/a/a/k;Lorg/a/a/k;)I

    move-result v2

    if-ltz v2, :cond_4

    invoke-static {v4, v3}, Lorg/a/a/d/q;->a(Lorg/a/a/k;Lorg/a/a/k;)I

    move-result v2

    if-gtz v2, :cond_4

    invoke-static {}, Lorg/a/a/d;->s()Lorg/a/a/d;

    move-result-object v0

    iget v1, p0, Lorg/a/a/d/q;->g:I

    invoke-virtual {p0, v0, v1}, Lorg/a/a/d/q;->a(Lorg/a/a/d;I)V

    goto :goto_0

    :cond_2
    move v2, v7

    :goto_1
    if-ge v2, v1, :cond_1

    move v3, v2

    :goto_2
    if-lez v3, :cond_3

    sub-int v4, v3, v8

    aget-object v4, v0, v4

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lorg/a/a/d/r;->a(Lorg/a/a/d/r;)I

    move-result v4

    if-lez v4, :cond_3

    aget-object v4, v0, v3

    sub-int v5, v3, v8

    aget-object v5, v0, v5

    aput-object v5, v0, v3

    sub-int v5, v3, v8

    aput-object v4, v0, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-wide v2, p0, Lorg/a/a/d/q;->b:J

    move v4, v7

    :goto_3
    if-ge v4, v1, :cond_5

    :try_start_0
    aget-object v5, v0, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v3, v6}, Lorg/a/a/d/r;->a(JZ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    move v4, v7

    :goto_4
    if-ge v4, v1, :cond_8

    aget-object v5, v0, v4

    sub-int v6, v1, v8

    if-ne v4, v6, :cond_6

    move v6, v8

    :goto_5
    invoke-virtual {v5, v2, v3, v6}, Lorg/a/a/d/r;->a(JZ)J
    :try_end_0
    .catch Lorg/a/a/n; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    move v6, v7

    goto :goto_5

    :catch_0
    move-exception v0

    if-eqz p1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot parse \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/a/a/n;->a(Ljava/lang/String;)V

    :cond_7
    throw v0

    :cond_8
    iget-object v0, p0, Lorg/a/a/d/q;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/a/a/d/q;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sub-long v0, v2, v0

    :goto_6
    return-wide v0

    :cond_9
    iget-object v0, p0, Lorg/a/a/d/q;->c:Lorg/a/a/i;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/a/a/d/q;->c:Lorg/a/a/i;

    invoke-virtual {v0, v2, v3}, Lorg/a/a/i;->c(J)I

    move-result v0

    int-to-long v4, v0

    sub-long v1, v2, v4

    iget-object v3, p0, Lorg/a/a/d/q;->c:Lorg/a/a/i;

    invoke-virtual {v3, v1, v2}, Lorg/a/a/i;->b(J)I

    move-result v3

    if-eq v0, v3, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal instant due to time zone offset transition ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/a/a/d/q;->c:Lorg/a/a/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot parse \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move-wide v0, v1

    goto :goto_6

    :cond_c
    move-wide v0, v2

    goto :goto_6
.end method

.method public final a()Lorg/a/a/a;
    .locals 1

    iget-object v0, p0, Lorg/a/a/d/q;->a:Lorg/a/a/a;

    return-object v0
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/d/q;->k:Ljava/lang/Object;

    iput-object p1, p0, Lorg/a/a/d/q;->d:Ljava/lang/Integer;

    return-void
.end method

.method public final a(Lorg/a/a/c;I)V
    .locals 1

    new-instance v0, Lorg/a/a/d/r;

    invoke-direct {v0, p1, p2}, Lorg/a/a/d/r;-><init>(Lorg/a/a/c;I)V

    invoke-direct {p0, v0}, Lorg/a/a/d/q;->a(Lorg/a/a/d/r;)V

    return-void
.end method

.method public final a(Lorg/a/a/d;I)V
    .locals 2

    new-instance v0, Lorg/a/a/d/r;

    iget-object v1, p0, Lorg/a/a/d/q;->a:Lorg/a/a/a;

    invoke-virtual {p1, v1}, Lorg/a/a/d;->a(Lorg/a/a/a;)Lorg/a/a/c;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/a/a/d/r;-><init>(Lorg/a/a/c;I)V

    invoke-direct {p0, v0}, Lorg/a/a/d/q;->a(Lorg/a/a/d/r;)V

    return-void
.end method

.method public final a(Lorg/a/a/d;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2

    new-instance v0, Lorg/a/a/d/r;

    iget-object v1, p0, Lorg/a/a/d/q;->a:Lorg/a/a/a;

    invoke-virtual {p1, v1}, Lorg/a/a/d;->a(Lorg/a/a/a;)Lorg/a/a/c;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/a/a/d/r;-><init>(Lorg/a/a/c;Ljava/lang/String;Ljava/util/Locale;)V

    invoke-direct {p0, v0}, Lorg/a/a/d/q;->a(Lorg/a/a/d/r;)V

    return-void
.end method

.method public final a(Lorg/a/a/i;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/d/q;->k:Ljava/lang/Object;

    iput-object p1, p0, Lorg/a/a/d/q;->c:Lorg/a/a/i;

    return-void
.end method

.method public final b()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/a/a/d/q;->e:Ljava/util/Locale;

    return-object v0
.end method

.method public final c()Lorg/a/a/i;
    .locals 1

    iget-object v0, p0, Lorg/a/a/d/q;->c:Lorg/a/a/i;

    return-object v0
.end method

.method public final d()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/a/a/d/q;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public final e()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lorg/a/a/d/q;->f:Ljava/lang/Integer;

    return-object v0
.end method
