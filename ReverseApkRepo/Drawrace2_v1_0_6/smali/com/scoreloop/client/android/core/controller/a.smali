.class final Lcom/scoreloop/client/android/core/controller/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/f;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/scoreloop/client/android/core/model/Range;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/a;->a:Z

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/a;->b:Z

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/a;->c:Lcom/scoreloop/client/android/core/model/Range;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/a;->d:Ljava/util/List;

    .line 16
    const/16 v0, 0x19

    iput v0, p0, Lcom/scoreloop/client/android/core/controller/a;->e:I

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/controller/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "_lastRequestedRange must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/a;->k()V

    .line 27
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/a;->c:Lcom/scoreloop/client/android/core/model/Range;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Range;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 69
    new-instance v0, Lcom/scoreloop/client/android/core/model/Range;

    iget v1, p0, Lcom/scoreloop/client/android/core/controller/a;->e:I

    invoke-direct {v0, p1, v1}, Lcom/scoreloop/client/android/core/model/Range;-><init>(II)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/a;->c:Lcom/scoreloop/client/android/core/model/Range;

    .line 70
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/a;->k()V

    .line 86
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/a;->c:Lcom/scoreloop/client/android/core/model/Range;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Range;->getLocation()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/a;->b:Z

    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/a;->c:Lcom/scoreloop/client/android/core/model/Range;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Range;->getLength()I

    move-result v3

    if-le v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/scoreloop/client/android/core/controller/a;->a:Z

    .line 89
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/a;->c:Lcom/scoreloop/client/android/core/model/Range;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Range;->getLength()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    move v0, v2

    .line 86
    goto :goto_0

    :cond_1
    move v1, v2

    .line 87
    goto :goto_1

    .line 93
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/a;->d:Ljava/util/List;

    .line 94
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/a;->k()V

    .line 33
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/a;->c:Lcom/scoreloop/client/android/core/model/Range;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Range;->getLocation()I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 77
    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid range length: must be within [1..100]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    iput p1, p0, Lcom/scoreloop/client/android/core/controller/a;->e:I

    .line 81
    return-void
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/a;->k()V

    .line 39
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/a;->c:Lcom/scoreloop/client/android/core/model/Range;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Range;->getLocation()I

    move-result v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final c(I)V
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/a;->k()V

    .line 99
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/a;->c:Lcom/scoreloop/client/android/core/model/Range;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/model/Range;->a(I)V

    .line 100
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public final e()I
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/controller/a;->k()V

    .line 49
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/a;->c:Lcom/scoreloop/client/android/core/model/Range;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Range;->getLocation()I

    move-result v1

    iget v2, p0, Lcom/scoreloop/client/android/core/controller/a;->e:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/scoreloop/client/android/core/controller/a;->e:I

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/a;->c:Lcom/scoreloop/client/android/core/model/Range;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/a;->a:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/a;->b:Z

    return v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/a;->a:Z

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/controller/a;->b:Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/a;->c:Lcom/scoreloop/client/android/core/model/Range;

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/controller/a;->d:Ljava/util/List;

    .line 109
    return-void
.end method
