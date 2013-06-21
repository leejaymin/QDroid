.class public final Lorg/a/a/e/i;
.super Lorg/a/a/i;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/a/a/i;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/a/a/e/i;->b:Ljava/lang/String;

    iput p3, p0, Lorg/a/a/e/i;->c:I

    iput p4, p0, Lorg/a/a/e/i;->d:I

    return-void
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/e/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)I
    .locals 1

    iget v0, p0, Lorg/a/a/e/i;->c:I

    return v0
.end method

.method public final c(J)I
    .locals 1

    iget v0, p0, Lorg/a/a/e/i;->c:I

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e(J)J
    .locals 0

    return-wide p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/a/a/e/i;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/a/a/e/i;

    invoke-virtual {p0}, Lorg/a/a/e/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/e/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/a/a/e/i;->d:I

    iget v1, p1, Lorg/a/a/e/i;->d:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/a/a/e/i;->c:I

    iget v1, p1, Lorg/a/a/e/i;->c:I

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final f(J)J
    .locals 0

    return-wide p1
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/a/a/e/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/a/a/e/i;->d:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget v1, p0, Lorg/a/a/e/i;->c:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
