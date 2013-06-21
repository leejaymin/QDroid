.class public Lcom/lumensoft/ks/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# instance fields
.field public a:I

.field public a:S

.field public a:[B

.field public b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lumensoft/ks/a;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/lumensoft/ks/a;->a:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lumensoft/ks/a;->a:[B

    iget v0, p0, Lcom/lumensoft/ks/a;->a:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lumensoft/ks/a;->b:[B

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/lumensoft/ks/a;->a:S

    return-void

    :array_0
    .array-data 0x1
        0x41t
        0x8t
        0x22t
        0x76t
        0xbft
        0x3at
        0x27t
        0x25t
        0x1ft
        0x86t
        0xc6t
        0xa1t
        0x1dt
        0xct
        0x18t
        0xe9t
    .end array-data
.end method

.method public constructor <init>(S)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/lumensoft/ks/a;->a:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lumensoft/ks/a;->a:[B

    iget v0, p0, Lcom/lumensoft/ks/a;->a:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lumensoft/ks/a;->b:[B

    iput-short p1, p0, Lcom/lumensoft/ks/a;->a:S

    return-void

    nop

    :array_0
    .array-data 0x1
        0x41t
        0x8t
        0x22t
        0x76t
        0xbft
        0x3at
        0x27t
        0x25t
        0x1ft
        0x86t
        0xc6t
        0xa1t
        0x1dt
        0xct
        0x18t
        0xe9t
    .end array-data
.end method

.method private a()V
    .locals 10

    const/16 v2, 0x37

    const/16 v1, 0x30

    const/4 v9, 0x2

    const/16 v8, 0xa

    const/4 v7, 0x0

    new-array v3, v8, [B

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iget-short v0, p0, Lcom/lumensoft/ks/a;->a:S

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    aput-byte v0, v3, v7

    const/4 v0, 0x1

    iget-short v5, p0, Lcom/lumensoft/ks/a;->a:S

    shr-int/lit8 v5, v5, 0x8

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    iget-short v0, p0, Lcom/lumensoft/ks/a;->a:S

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    aput-byte v0, v3, v9

    const/4 v0, 0x3

    iget-short v5, p0, Lcom/lumensoft/ks/a;->a:S

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    aget-byte v5, v3, v7

    aget-byte v0, v3, v7

    if-ge v0, v8, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, v3, v7

    const/4 v5, 0x1

    aget-byte v6, v3, v5

    const/4 v0, 0x1

    aget-byte v0, v3, v0

    if-ge v0, v8, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v6

    int-to-byte v0, v0

    aput-byte v0, v3, v5

    aget-byte v5, v3, v9

    aget-byte v0, v3, v9

    if-ge v0, v8, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, v3, v9

    const/4 v0, 0x3

    aget-byte v5, v3, v0

    const/4 v6, 0x3

    aget-byte v6, v3, v6

    if-ge v6, v8, :cond_3

    :goto_3
    add-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/16 v2, 0xe

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    const/4 v0, 0x6

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    const/16 v0, 0x8

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    const/16 v1, 0x9

    const/16 v2, 0xc

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    const/16 v0, 0xd

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    new-instance v0, Lcom/lumensoft/ks/j;

    invoke-direct {v0}, Lcom/lumensoft/ks/j;-><init>()V

    array-length v1, v3

    invoke-virtual {v0, v3, v7, v1}, Lcom/lumensoft/ks/j;->a([BII)V

    iget-object v1, p0, Lcom/lumensoft/ks/a;->a:[B

    iget-object v2, p0, Lcom/lumensoft/ks/a;->a:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/lumensoft/ks/j;->a([BII)V

    iget-object v1, p0, Lcom/lumensoft/ks/a;->b:[B

    invoke-virtual {v0, v1, v7}, Lcom/lumensoft/ks/j;->a([BI)I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method public a(I)[B
    .locals 5

    const/4 v1, 0x0

    sget-boolean v0, Lcom/lumensoft/ks/a;->a:Z

    if-eqz v0, :cond_1

    new-array v0, p1, [B

    :goto_0
    if-lt v1, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    const/16 v2, 0x30

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v2, p1, [B

    move v0, v1

    :goto_2
    sub-int v3, p1, v0

    iget v4, p0, Lcom/lumensoft/ks/a;->a:I

    if-gt v3, v4, :cond_3

    sub-int v3, p1, v0

    if-lez v3, :cond_2

    invoke-direct {p0}, Lcom/lumensoft/ks/a;->a()V

    iget-object v3, p0, Lcom/lumensoft/ks/a;->b:[B

    sub-int v4, p1, v0

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/lumensoft/ks/a;->a()V

    iget-object v3, p0, Lcom/lumensoft/ks/a;->b:[B

    iget v4, p0, Lcom/lumensoft/ks/a;->a:I

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/lumensoft/ks/a;->a:I

    add-int/2addr v0, v3

    goto :goto_2
.end method
