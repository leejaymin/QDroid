.class final La/i;
.super Ljava/lang/Object;

# interfaces
.implements La/g;
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/Date;


# direct methods
.method private constructor <init>(IIILjava/util/Date;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/i;->b:I

    iput p2, p0, La/i;->a:I

    iput-object p4, p0, La/i;->e:Ljava/util/Date;

    iput p3, p0, La/i;->c:I

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, La/i;->d:I

    return-void
.end method

.method static a(La/c/a/l;)La/g;
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v3, 0x0

    if-nez p0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "X-RateLimit-Limit"

    invoke-virtual {p0, v0}, La/c/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "X-RateLimit-Remaining"

    invoke-virtual {p0, v1}, La/c/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "X-RateLimit-Reset"

    invoke-virtual {p0, v2}, La/c/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    div-long v4, v2, v6

    long-to-int v4, v4

    new-instance v5, Ljava/util/Date;

    mul-long/2addr v2, v6

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, La/i;

    invoke-direct {v2, v0, v1, v4, v5}, La/i;-><init>(IIILjava/util/Date;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v0, v3

    goto :goto_0
.end method

.method static b(La/c/a/l;)La/g;
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v3, 0x0

    if-nez p0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "X-FeatureRateLimit-Limit"

    invoke-virtual {p0, v0}, La/c/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "X-FeatureRateLimit-Remaining"

    invoke-virtual {p0, v1}, La/c/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "X-FeatureRateLimit-Reset"

    invoke-virtual {p0, v2}, La/c/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    div-long v4, v2, v6

    long-to-int v4, v4

    new-instance v5, Ljava/util/Date;

    mul-long/2addr v2, v6

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, La/i;

    invoke-direct {v2, v0, v1, v4, v5}, La/i;-><init>(IIILjava/util/Date;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, La/i;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, La/i;

    iget v0, p0, La/i;->b:I

    iget v1, p1, La/i;->b:I

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget v0, p0, La/i;->a:I

    iget v1, p1, La/i;->a:I

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, La/i;->c:I

    iget v1, p1, La/i;->c:I

    if-eq v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, La/i;->d:I

    iget v1, p1, La/i;->d:I

    if-eq v0, v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, La/i;->e:Ljava/util/Date;

    if-eqz v0, :cond_7

    iget-object v0, p0, La/i;->e:Ljava/util/Date;

    iget-object v1, p1, La/i;->e:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p1, La/i;->e:Ljava/util/Date;

    if-nez v0, :cond_6

    :cond_8
    move v0, v3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, La/i;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/i;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/i;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/i;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La/i;->e:Ljava/util/Date;

    if-eqz v1, :cond_0

    iget-object v1, p0, La/i;->e:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "RateLimitStatusJSONImpl{remainingHits="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, La/i;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", hourlyLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, La/i;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", resetTimeInSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, La/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", secondsUntilReset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, La/i;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", resetTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, La/i;->e:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
