.class public final La/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:D

.field protected b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, La/d;->a:D

    iput-wide p3, p0, La/d;->b:D

    return-void
.end method

.method static a(La/c/c/a/c;)La/d;
    .locals 6

    const/4 v3, 0x1

    :try_start_0
    const-string v0, "geo"

    invoke-virtual {p0, v0}, La/c/c/a/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "geo"

    invoke-virtual {p0, v0}, La/c/c/a/c;->b(Ljava/lang/String;)La/c/c/a/c;

    move-result-object v0

    const-string v1, "coordinates"

    invoke-virtual {v0, v1}, La/c/c/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, La/c/d/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, La/d;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, La/d;-><init>(DD)V
    :try_end_0
    .catch La/c/c/a/b; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, La/o;

    invoke-direct {v1, v0}, La/o;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(La/c/c/a/a;)[[La/d;
    .locals 12

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {p0}, La/c/c/a/a;->a()I

    move-result v0

    new-array v0, v0, [[La/d;

    move v1, v11

    :goto_0
    invoke-virtual {p0}, La/c/c/a/a;->a()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, La/c/c/a/a;->c(I)La/c/c/a/a;

    move-result-object v2

    invoke-virtual {v2}, La/c/c/a/a;->a()I

    move-result v3

    new-array v3, v3, [La/d;

    aput-object v3, v0, v1

    move v3, v11

    :goto_1
    invoke-virtual {v2}, La/c/c/a/a;->a()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v3}, La/c/c/a/a;->c(I)La/c/c/a/a;

    move-result-object v4

    aget-object v5, v0, v1

    new-instance v6, La/d;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, La/c/c/a/a;->b(I)D

    move-result-wide v7

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, La/c/c/a/a;->b(I)D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, La/d;-><init>(DD)V

    aput-object v6, v5, v3
    :try_end_0
    .catch La/c/c/a/b; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, La/o;

    invoke-direct {v1, v0}, La/o;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, La/d;

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    check-cast p1, La/d;

    iget-wide v0, p1, La/d;->a:D

    iget-wide v2, p0, La/d;->a:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    iget-wide v0, p1, La/d;->b:D

    iget-wide v2, p0, La/d;->b:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 9

    const-wide/16 v7, 0x0

    const/16 v6, 0x20

    const-wide/16 v4, 0x0

    iget-wide v0, p0, La/d;->a:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, La/d;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    :goto_0
    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v1, p0, La/d;->b:D

    cmpl-double v1, v1, v4

    if-eqz v1, :cond_1

    iget-wide v1, p0, La/d;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v3, v1, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    move-wide v0, v7

    goto :goto_0

    :cond_1
    move-wide v1, v7

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "GeoLocation{latitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, La/d;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, La/d;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
