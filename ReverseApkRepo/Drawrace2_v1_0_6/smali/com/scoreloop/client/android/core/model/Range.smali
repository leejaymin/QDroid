.class public Lcom/scoreloop/client/android/core/model/Range;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length & location must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    iput p1, p0, Lcom/scoreloop/client/android/core/model/Range;->b:I

    .line 27
    iput p2, p0, Lcom/scoreloop/client/android/core/model/Range;->a:I

    .line 28
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/scoreloop/client/android/core/model/Range;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 67
    if-gez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "location must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput p1, p0, Lcom/scoreloop/client/android/core/model/Range;->b:I

    .line 71
    return-void
.end method

.method final b()I
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/scoreloop/client/android/core/model/Range;->b:I

    iget v1, p0, Lcom/scoreloop/client/android/core/model/Range;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 106
    if-nez p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    instance-of v1, p1, Lcom/scoreloop/client/android/core/model/Range;

    if-nez v1, :cond_2

    .line 111
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 114
    :cond_2
    check-cast p1, Lcom/scoreloop/client/android/core/model/Range;

    .line 116
    iget v1, p0, Lcom/scoreloop/client/android/core/model/Range;->b:I

    iget v2, p1, Lcom/scoreloop/client/android/core/model/Range;->b:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Range;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Range;->b()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 37
    iget v0, p0, Lcom/scoreloop/client/android/core/model/Range;->a:I

    return v0
.end method

.method public getLocation()I
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
    .end annotation

    .prologue
    .line 47
    iget v0, p0, Lcom/scoreloop/client/android/core/model/Range;->b:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 122
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/scoreloop/client/android/core/model/Range;->b:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Range;->b()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/scoreloop/client/android/core/model/Range;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Range;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
