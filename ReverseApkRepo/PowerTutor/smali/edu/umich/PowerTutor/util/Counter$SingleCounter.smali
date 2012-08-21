.class Ledu/umich/PowerTutor/util/Counter$SingleCounter;
.super Ljava/lang/Object;
.source "Counter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/util/Counter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleCounter"
.end annotation


# static fields
.field public static final BUCKETS:I = 0x3c


# instance fields
.field private base:J

.field private baseIdx:I

.field private bucketSum:[J

.field private droppingBucket:J

.field private total:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v0, 0x3c

    new-array v0, v0, [J

    iput-object v0, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->bucketSum:[J

    .line 80
    return-void
.end method

.method private wind(J)V
    .locals 10
    .parameter "now"

    .prologue
    const/16 v9, 0x3c

    const/4 v2, 0x0

    const-wide/16 v7, 0x0

    .line 83
    iget-wide v3, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->base:J

    const-wide/16 v5, 0x78

    add-long/2addr v3, v5

    cmp-long v1, v3, p1

    if-gtz v1, :cond_2

    .line 85
    iput-wide v7, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->droppingBucket:J

    .line 86
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v9, :cond_0

    .line 89
    iput-wide v7, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->total:J

    .line 90
    iput-wide p1, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->base:J

    .line 91
    iput v2, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->baseIdx:I

    .line 99
    .end local v0           #i:I
    :goto_1
    return-void

    .line 87
    .restart local v0       #i:I
    :cond_0
    iget-object v1, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->bucketSum:[J

    aput-wide v7, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->bucketSum:[J

    iget v3, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->baseIdx:I

    aget-wide v3, v1, v3

    iput-wide v3, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->droppingBucket:J

    .line 94
    iget-wide v3, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->total:J

    iget-wide v5, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->droppingBucket:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->total:J

    .line 95
    iget-object v1, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->bucketSum:[J

    iget v3, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->baseIdx:I

    aput-wide v7, v1, v3

    .line 96
    iget-wide v3, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->base:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->base:J

    .line 97
    iget v1, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->baseIdx:I

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v9, :cond_3

    move v1, v2

    :goto_2
    iput v1, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->baseIdx:I

    .line 92
    :cond_2
    iget-wide v3, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->base:J

    const-wide/16 v5, 0x3c

    add-long/2addr v3, v5

    cmp-long v1, v3, p1

    if-lez v1, :cond_1

    goto :goto_1

    .line 97
    :cond_3
    iget v1, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->baseIdx:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public add(JJ)V
    .locals 5
    .parameter "x"
    .parameter "now"

    .prologue
    .line 102
    invoke-direct {p0, p3, p4}, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->wind(J)V

    .line 103
    iget-wide v1, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->total:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->total:J

    .line 104
    iget v1, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->baseIdx:I

    int-to-long v1, v1

    add-long/2addr v1, p3

    iget-wide v3, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->base:J

    sub-long/2addr v1, v3

    long-to-int v0, v1

    .line 105
    .local v0, idx:I
    iget-object v1, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->bucketSum:[J

    const/16 v2, 0x3c

    if-ge v0, v2, :cond_0

    .end local v0           #idx:I
    :goto_0
    aget-wide v2, v1, v0

    add-long/2addr v2, p1

    aput-wide v2, v1, v0

    .line 106
    return-void

    .line 105
    .restart local v0       #idx:I
    :cond_0
    add-int/lit8 v0, v0, -0x3c

    goto :goto_0
.end method

.method public get(JD)J
    .locals 6
    .parameter "now"
    .parameter "prog"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->wind(J)V

    .line 115
    iget-wide v0, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->total:J

    const-wide/high16 v2, 0x3ff0

    sub-double/2addr v2, p3

    iget-wide v4, p0, Ledu/umich/PowerTutor/util/Counter$SingleCounter;->droppingBucket:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
