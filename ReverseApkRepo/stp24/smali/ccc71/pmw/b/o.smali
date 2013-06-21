.class public final Lccc71/pmw/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public a:Lccc71/pmw/b/z;

.field public b:J

.field public c:I

.field private d:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/b/o;->a:Lccc71/pmw/b/z;

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccc71/pmw/b/o;->b:J

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lccc71/pmw/b/o;->c:I

    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/b/o;->d:Ljava/text/Collator;

    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x2710

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    check-cast p1, Lccc71/pmw/b/p;

    .line 29
    check-cast p2, Lccc71/pmw/b/p;

    .line 30
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v2

    .line 32
    :cond_1
    if-nez p1, :cond_2

    move v2, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    if-nez p2, :cond_3

    .line 35
    const/4 v2, -0x1

    goto :goto_0

    .line 37
    :cond_3
    iget v0, p0, Lccc71/pmw/b/o;->c:I

    if-nez v0, :cond_4

    .line 39
    iget v0, p2, Lccc71/pmw/b/p;->a:I

    iget v1, p1, Lccc71/pmw/b/p;->a:I

    sub-int v2, v0, v1

    goto :goto_0

    .line 44
    :cond_4
    iget v0, p0, Lccc71/pmw/b/o;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 46
    iget-boolean v0, p2, Lccc71/pmw/b/p;->i:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_1
    iget-boolean v3, p1, Lccc71/pmw/b/p;->i:Z

    if-eqz v3, :cond_d

    :goto_2
    sub-int v2, v0, v1

    .line 47
    if-nez v2, :cond_0

    .line 51
    :cond_5
    iget v0, p0, Lccc71/pmw/b/o;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    .line 53
    iget v0, p1, Lccc71/pmw/b/p;->j:I

    iget v1, p2, Lccc71/pmw/b/p;->j:I

    sub-int v2, v0, v1

    .line 54
    if-nez v2, :cond_0

    .line 58
    :cond_6
    iget v0, p0, Lccc71/pmw/b/o;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    .line 60
    iget-wide v0, p2, Lccc71/pmw/b/p;->p:J

    iget-wide v2, p1, Lccc71/pmw/b/p;->p:J

    sub-long/2addr v0, v2

    long-to-int v2, v0

    .line 61
    if-nez v2, :cond_0

    .line 65
    :cond_7
    iget v0, p0, Lccc71/pmw/b/o;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    .line 67
    iget-wide v0, p2, Lccc71/pmw/b/p;->o:J

    iget-wide v2, p1, Lccc71/pmw/b/p;->o:J

    sub-long/2addr v0, v2

    long-to-int v2, v0

    .line 68
    if-nez v2, :cond_0

    .line 72
    :cond_8
    iget v0, p0, Lccc71/pmw/b/o;->c:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 74
    iget-wide v0, p1, Lccc71/pmw/b/p;->n:J

    iget-wide v2, p2, Lccc71/pmw/b/p;->n:J

    sub-long/2addr v0, v2

    long-to-int v2, v0

    .line 75
    if-nez v2, :cond_0

    .line 79
    :cond_9
    iget v0, p0, Lccc71/pmw/b/o;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    .line 81
    iget-wide v0, p0, Lccc71/pmw/b/o;->b:J

    iget-wide v2, p1, Lccc71/pmw/b/p;->n:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lccc71/pmw/b/o;->b:J

    iget-wide v2, p2, Lccc71/pmw/b/p;->n:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    .line 83
    iget-wide v0, p1, Lccc71/pmw/b/p;->o:J

    mul-long/2addr v0, v6

    iget-wide v2, p0, Lccc71/pmw/b/o;->b:J

    iget-wide v4, p1, Lccc71/pmw/b/p;->n:J

    sub-long/2addr v2, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 84
    iget-wide v1, p2, Lccc71/pmw/b/p;->o:J

    mul-long/2addr v1, v6

    iget-wide v3, p0, Lccc71/pmw/b/o;->b:J

    iget-wide v5, p2, Lccc71/pmw/b/p;->n:J

    sub-long/2addr v3, v5

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 85
    sub-int v2, v1, v0

    .line 86
    if-nez v2, :cond_0

    .line 91
    :cond_a
    iget v0, p0, Lccc71/pmw/b/o;->c:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_b

    .line 93
    iget v0, p2, Lccc71/pmw/b/p;->q:I

    iget v1, p1, Lccc71/pmw/b/p;->q:I

    sub-int v2, v0, v1

    .line 94
    if-nez v2, :cond_0

    .line 98
    :cond_b
    iget-object v0, p0, Lccc71/pmw/b/o;->d:Ljava/text/Collator;

    iget-object v1, p1, Lccc71/pmw/b/p;->e:Ljava/lang/String;

    iget-object v2, p2, Lccc71/pmw/b/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 100
    if-nez v2, :cond_0

    .line 103
    iget-object v0, p1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    iget-object v1, p2, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    :cond_c
    move v0, v2

    .line 46
    goto/16 :goto_1

    :cond_d
    move v1, v2

    goto/16 :goto_2
.end method
