.class final Lorg/a/a/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/d/p;
.implements Lorg/a/a/d/s;


# instance fields
.field private final a:[Lorg/a/a/d/s;

.field private final b:[Lorg/a/a/d/p;

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v1, v2}, Lorg/a/a/d/e;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iput-object v8, p0, Lorg/a/a/d/e;->a:[Lorg/a/a/d/s;

    iput v7, p0, Lorg/a/a/d/e;->c:I

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iput-object v8, p0, Lorg/a/a/d/e;->b:[Lorg/a/a/d/p;

    iput v7, p0, Lorg/a/a/d/e;->d:I

    :goto_1
    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Lorg/a/a/d/s;

    iput-object v0, p0, Lorg/a/a/d/e;->a:[Lorg/a/a/d/s;

    move v4, v7

    move v5, v7

    :goto_2
    if-ge v4, v3, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/d/s;

    invoke-interface {v0}, Lorg/a/a/d/s;->a()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/a/a/d/e;->a:[Lorg/a/a/d/s;

    aput-object v0, v6, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_1
    iput v5, p0, Lorg/a/a/d/e;->c:I

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lorg/a/a/d/p;

    iput-object v0, p0, Lorg/a/a/d/e;->b:[Lorg/a/a/d/p;

    move v3, v7

    move v4, v7

    :goto_3
    if-ge v3, v1, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/d/p;

    invoke-interface {v0}, Lorg/a/a/d/p;->b()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/a/a/d/e;->b:[Lorg/a/a/d/p;

    aput-object v0, v5, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_3
    iput v4, p0, Lorg/a/a/d/e;->d:I

    goto :goto_1
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lorg/a/a/d/s;

    if-eqz v3, :cond_0

    instance-of v3, v0, Lorg/a/a/d/e;

    if-eqz v3, :cond_2

    check-cast v0, Lorg/a/a/d/e;

    iget-object v0, v0, Lorg/a/a/d/e;->a:[Lorg/a/a/d/s;

    invoke-static {p1, v0}, Lorg/a/a/d/e;->a(Ljava/util/List;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lorg/a/a/d/p;

    if-eqz v3, :cond_1

    instance-of v3, v0, Lorg/a/a/d/e;

    if-eqz v3, :cond_3

    check-cast v0, Lorg/a/a/d/e;

    iget-object v0, v0, Lorg/a/a/d/e;->b:[Lorg/a/a/d/p;

    invoke-static {p2, v0}, Lorg/a/a/d/e;->a(Ljava/util/List;[Ljava/lang/Object;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static a(Ljava/util/List;[Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/a/a/d/e;->c:I

    return v0
.end method

.method public final a(Lorg/a/a/d/q;Ljava/lang/String;I)I
    .locals 5

    iget-object v0, p0, Lorg/a/a/d/e;->b:[Lorg/a/a/d/p;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, p3

    :goto_0
    if-ge v2, v1, :cond_1

    if-ltz v3, :cond_1

    aget-object v4, v0, v2

    invoke-interface {v4, p1, p2, v3}, Lorg/a/a/d/p;->a(Lorg/a/a/d/q;Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final a(Ljava/lang/StringBuffer;JLorg/a/a/a;ILorg/a/a/i;Ljava/util/Locale;)V
    .locals 11

    iget-object v8, p0, Lorg/a/a/d/e;->a:[Lorg/a/a/d/s;

    if-nez v8, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    if-nez p7, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    move-object v7, v0

    :goto_0
    array-length v9, v8

    const/4 v0, 0x0

    move v10, v0

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v0, v8, v10

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v7}, Lorg/a/a/d/s;->a(Ljava/lang/StringBuffer;JLorg/a/a/a;ILorg/a/a/i;Ljava/util/Locale;)V

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    move-object/from16 v7, p7

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lorg/a/a/d/e;->d:I

    return v0
.end method

.method final c()Z
    .locals 1

    iget-object v0, p0, Lorg/a/a/d/e;->a:[Lorg/a/a/d/s;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()Z
    .locals 1

    iget-object v0, p0, Lorg/a/a/d/e;->b:[Lorg/a/a/d/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
