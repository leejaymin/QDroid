.class public final Lcom/scoreloop/client/android/core/model/Award;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/model/Award$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private final b:Lcom/scoreloop/client/android/core/model/Award$a;

.field private final c:Lcom/scoreloop/client/android/core/model/Range;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:Lcom/scoreloop/client/android/core/model/Money;

.field private h:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/model/Award$a;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Range;ILcom/scoreloop/client/android/core/model/Money;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/scoreloop/client/android/core/model/Award;->a:Landroid/graphics/Bitmap;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Award;->e:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/Award;->f:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/scoreloop/client/android/core/model/Award;->h:Landroid/graphics/Bitmap;

    .line 88
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-ltz p4, :cond_0

    if-nez p5, :cond_1

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 91
    :cond_1
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Award;->b:Lcom/scoreloop/client/android/core/model/Award$a;

    .line 92
    iput-object p2, p0, Lcom/scoreloop/client/android/core/model/Award;->d:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/scoreloop/client/android/core/model/Award;->c:Lcom/scoreloop/client/android/core/model/Range;

    .line 94
    iput-object p5, p0, Lcom/scoreloop/client/android/core/model/Award;->g:Lcom/scoreloop/client/android/core/model/Money;

    .line 96
    return-void
.end method

.method constructor <init>(Lcom/scoreloop/client/android/core/model/Award$a;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Range;ILcom/scoreloop/client/android/core/model/Money;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct/range {p0 .. p5}, Lcom/scoreloop/client/android/core/model/Award;-><init>(Lcom/scoreloop/client/android/core/model/Award$a;Ljava/lang/String;Lcom/scoreloop/client/android/core/model/Range;ILcom/scoreloop/client/android/core/model/Money;)V

    .line 83
    return-void
.end method


# virtual methods
.method public final a()Lcom/scoreloop/client/android/core/model/Award$a;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Award;->b:Lcom/scoreloop/client/android/core/model/Award$a;

    return-object v0
.end method

.method final a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Award;->a:Landroid/graphics/Bitmap;

    .line 326
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Award;->e:Ljava/lang/String;

    .line 330
    return-void
.end method

.method final b(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Award;->h:Landroid/graphics/Bitmap;

    .line 338
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/Award;->f:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    if-ne p0, p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 109
    goto :goto_0

    .line 112
    :cond_3
    check-cast p1, Lcom/scoreloop/client/android/core/model/Award;

    .line 113
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Award;->b:Lcom/scoreloop/client/android/core/model/Award$a;

    invoke-interface {v2}, Lcom/scoreloop/client/android/core/model/Award$a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/scoreloop/client/android/core/model/Award;->b:Lcom/scoreloop/client/android/core/model/Award$a;

    invoke-interface {v3}, Lcom/scoreloop/client/android/core/model/Award$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 114
    goto :goto_0

    .line 116
    :cond_4
    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/Award;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/scoreloop/client/android/core/model/Award;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 117
    goto :goto_0
.end method

.method public final getAchievedImage()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Award;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getAchievingValue()I
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Award;->c:Lcom/scoreloop/client/android/core/model/Range;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Range;->b()I

    move-result v0

    return v0
.end method

.method public final getCounterRange()Lcom/scoreloop/client/android/core/model/Range;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Award;->c:Lcom/scoreloop/client/android/core/model/Range;

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Award;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getInitialValue()I
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Award;->c:Lcom/scoreloop/client/android/core/model/Range;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Range;->getLocation()I

    move-result v0

    return v0
.end method

.method public final getLocalizedDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Award;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalizedTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Award;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getRewardMoney()Lcom/scoreloop/client/android/core/model/Money;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Award;->g:Lcom/scoreloop/client/android/core/model/Money;

    return-object v0
.end method

.method public final getUnachievedImage()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Award;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Award;->b:Lcom/scoreloop/client/android/core/model/Award$a;

    invoke-interface {v0}, Lcom/scoreloop/client/android/core/model/Award$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 294
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/Award;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 295
    return v0
.end method

.method public final isAchievedByValue(I)Z
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Award;->getAchievingValue()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isValidCounterValue(I)Z
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_1_0;
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Award;->getInitialValue()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Award;->getAchievingValue()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Award [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/model/Award;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
