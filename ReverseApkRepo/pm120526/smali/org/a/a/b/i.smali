.class abstract Lorg/a/a/b/i;
.super Lorg/a/a/b/d;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[J

.field private static final d:[J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-wide/32 v7, 0x5265c00

    const-wide/16 v2, 0x0

    const/16 v1, 0xc

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/a/a/b/i;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/a/a/b/i;->b:[I

    new-array v0, v1, [J

    sput-object v0, Lorg/a/a/b/i;->c:[J

    new-array v0, v1, [J

    sput-object v0, Lorg/a/a/b/i;->d:[J

    const/4 v0, 0x0

    move-wide v9, v2

    move-wide v11, v2

    move-wide v3, v11

    move-wide v1, v9

    :goto_0
    const/16 v5, 0xb

    if-ge v0, v5, :cond_0

    sget-object v5, Lorg/a/a/b/i;->a:[I

    aget v5, v5, v0

    int-to-long v5, v5

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    sget-object v5, Lorg/a/a/b/i;->c:[J

    add-int/lit8 v6, v0, 0x1

    aput-wide v3, v5, v6

    sget-object v5, Lorg/a/a/b/i;->b:[I

    aget v5, v5, v0

    int-to-long v5, v5

    mul-long/2addr v5, v7

    add-long/2addr v1, v5

    sget-object v5, Lorg/a/a/b/i;->d:[J

    add-int/lit8 v6, v0, 0x1

    aput-wide v1, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Lorg/a/a/a;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/a/a/b/d;-><init>(Lorg/a/a/a;I)V

    return-void
.end method


# virtual methods
.method final a(JI)I
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v2, 0xa

    invoke-virtual {p0, p3}, Lorg/a/a/b/i;->c(I)J

    move-result-wide v0

    sub-long v0, p1, v0

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, p3}, Lorg/a/a/b/i;->d(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0xea515a

    if-ge v0, v1, :cond_5

    const v1, 0x7528ad

    if-ge v0, v1, :cond_2

    const v1, 0x27e949

    if-ge v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const v1, 0x4d3f64

    if-ge v0, v1, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    const v1, 0x9bc85f

    if-ge v0, v1, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    const v1, 0xc3b1a8

    if-ge v0, v1, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const v1, 0x160c39e

    if-ge v0, v1, :cond_8

    const v1, 0x1123aa3

    if-ge v0, v1, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const v1, 0x13a23ec

    if-ge v0, v1, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const v1, 0x188ace7

    if-ge v0, v1, :cond_9

    move v0, v2

    goto :goto_0

    :cond_9
    const v1, 0x1af4c99

    if-ge v0, v1, :cond_a

    const/16 v0, 0xb

    goto :goto_0

    :cond_a
    const/16 v0, 0xc

    goto :goto_0

    :cond_b
    const v1, 0xe907c3

    if-ge v0, v1, :cond_11

    const v1, 0x73df16

    if-ge v0, v1, :cond_e

    const v1, 0x27e949

    if-ge v0, v1, :cond_c

    move v0, v3

    goto :goto_0

    :cond_c
    const v1, 0x4bf5cd

    if-ge v0, v1, :cond_d

    move v0, v4

    goto :goto_0

    :cond_d
    move v0, v5

    goto :goto_0

    :cond_e
    const v1, 0x9a7ec8

    if-ge v0, v1, :cond_f

    move v0, v6

    goto :goto_0

    :cond_f
    const v1, 0xc26811

    if-ge v0, v1, :cond_10

    const/4 v0, 0x5

    goto :goto_0

    :cond_10
    const/4 v0, 0x6

    goto :goto_0

    :cond_11
    const v1, 0x15f7a07

    if-ge v0, v1, :cond_14

    const v1, 0x110f10c

    if-ge v0, v1, :cond_12

    const/4 v0, 0x7

    goto :goto_0

    :cond_12
    const v1, 0x138da55

    if-ge v0, v1, :cond_13

    const/16 v0, 0x8

    goto :goto_0

    :cond_13
    const/16 v0, 0x9

    goto/16 :goto_0

    :cond_14
    const v1, 0x1876350

    if-ge v0, v1, :cond_15

    move v0, v2

    goto/16 :goto_0

    :cond_15
    const v1, 0x1ae0302

    if-ge v0, v1, :cond_16

    const/16 v0, 0xb

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0xc

    goto/16 :goto_0
.end method

.method final b(II)I
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lorg/a/a/b/i;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/a/a/b/i;->b:[I

    sub-int v1, p2, v1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/a/a/b/i;->a:[I

    sub-int v1, p2, v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method final c(II)J
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lorg/a/a/b/i;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/a/a/b/i;->d:[J

    sub-int v1, p2, v1

    aget-wide v0, v0, v1

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lorg/a/a/b/i;->c:[J

    sub-int v1, p2, v1

    aget-wide v0, v0, v1

    goto :goto_0
.end method

.method final d(JI)I
    .locals 1

    const/16 v0, 0x1c

    if-le p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/i;->i(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method final e(JI)J
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/a/a/b/i;->a(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/a/a/b/i;->c(JI)I

    move-result v1

    invoke-static {p1, p2}, Lorg/a/a/b/i;->h(J)I

    move-result v2

    const/16 v3, 0x3b

    if-le v1, v3, :cond_1

    invoke-virtual {p0, v0}, Lorg/a/a/b/i;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lorg/a/a/b/i;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, p3, v1, v0}, Lorg/a/a/b/i;->a(III)J

    move-result-wide v0

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-virtual {p0, p3}, Lorg/a/a/b/i;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
