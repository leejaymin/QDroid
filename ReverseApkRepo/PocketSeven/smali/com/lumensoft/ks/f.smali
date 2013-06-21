.class public Lcom/lumensoft/ks/f;
.super Lcom/lumensoft/ks/k;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/lumensoft/ks/k;-><init>()V

    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/lumensoft/ks/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/lumensoft/ks/k;-><init>([B)V

    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/lumensoft/ks/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/lumensoft/ks/l;
    .locals 2

    new-instance v0, Lcom/lumensoft/ks/l;

    iget-object v1, p0, Lcom/lumensoft/ks/f;->g:[B

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/l;-><init>([B)V

    return-object v0
.end method

.method public a()Z
    .locals 12

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v10, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "lumen"

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/lumensoft/ks/f;->f:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/lumensoft/ks/f;->e:[B

    aget-byte v2, v2, v0

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    iget-object v3, p0, Lcom/lumensoft/ks/f;->e:[B

    aget-byte v3, v3, v1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x30

    add-int/lit16 v2, v2, 0x7d0

    iget-object v3, p0, Lcom/lumensoft/ks/f;->e:[B

    aget-byte v3, v3, v10

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0xa

    iget-object v4, p0, Lcom/lumensoft/ks/f;->e:[B

    aget-byte v4, v4, v8

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x30

    iget-object v4, p0, Lcom/lumensoft/ks/f;->e:[B

    aget-byte v4, v4, v9

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0xa

    iget-object v5, p0, Lcom/lumensoft/ks/f;->e:[B

    aget-byte v5, v5, v1

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x30

    iget-object v5, p0, Lcom/lumensoft/ks/f;->f:[B

    aget-byte v5, v5, v0

    add-int/lit8 v5, v5, -0x30

    mul-int/lit8 v5, v5, 0xa

    iget-object v6, p0, Lcom/lumensoft/ks/f;->f:[B

    aget-byte v6, v6, v1

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x30

    add-int/lit16 v5, v5, 0x7d0

    iget-object v6, p0, Lcom/lumensoft/ks/f;->f:[B

    aget-byte v6, v6, v10

    add-int/lit8 v6, v6, -0x30

    mul-int/lit8 v6, v6, 0xa

    iget-object v7, p0, Lcom/lumensoft/ks/f;->f:[B

    aget-byte v7, v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x30

    iget-object v7, p0, Lcom/lumensoft/ks/f;->f:[B

    aget-byte v7, v7, v9

    add-int/lit8 v7, v7, -0x30

    mul-int/lit8 v7, v7, 0xa

    iget-object v8, p0, Lcom/lumensoft/ks/f;->f:[B

    aget-byte v8, v8, v1

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x30

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x5

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-gt v9, v2, :cond_0

    if-ne v9, v2, :cond_2

    if-gt v10, v3, :cond_0

    if-ne v10, v3, :cond_2

    if-lt v8, v4, :cond_2

    :cond_0
    if-lt v9, v5, :cond_1

    if-ne v9, v5, :cond_2

    if-lt v10, v6, :cond_1

    if-ne v10, v6, :cond_2

    if-gt v8, v7, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method
