.class public Lnet/ser1/timetracker/TimeRange;
.super Ljava/lang/Object;
.source "TimeRange.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lnet/ser1/timetracker/TimeRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIELDS:[I = null

.field protected static FORMAT:Ljava/text/DateFormat; = null

.field public static final NULL:J = -0x1L


# instance fields
.field private end:J

.field private start:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/ser1/timetracker/TimeRange;->FORMAT:Ljava/text/DateFormat;

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/ser1/timetracker/TimeRange;->FIELDS:[I

    .line 13
    return-void

    .line 85
    :array_0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lnet/ser1/timetracker/TimeRange;->start:J

    .line 20
    iput-wide p3, p0, Lnet/ser1/timetracker/TimeRange;->end:J

    .line 21
    return-void
.end method

.method public static overlap(Ljava/util/Calendar;JJ)J
    .locals 5
    .parameter "day"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 101
    sget-object v1, Lnet/ser1/timetracker/TimeRange;->FIELDS:[I

    array-length v2, v1

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 102
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 103
    .local v2, ms_start:J
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 104
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 106
    .local v0, ms_end:J
    cmp-long p0, v0, p1

    if-ltz p0, :cond_0

    cmp-long p0, p3, v2

    if-gez p0, :cond_2

    :cond_0
    const-wide/16 p0, 0x0

    .line 111
    .end local v2           #ms_start:J
    .end local p1
    :goto_1
    return-wide p0

    .line 101
    .end local v0           #ms_end:J
    .restart local p0
    .restart local p1
    :cond_1
    aget v0, v1, v3

    .local v0, x:I
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 108
    .end local p0
    .local v0, ms_end:J
    .restart local v2       #ms_start:J
    :cond_2
    cmp-long p0, v2, p1

    if-lez p0, :cond_3

    .line 109
    .local v2, off_start:J
    :goto_2
    cmp-long p0, v0, p3

    if-gez p0, :cond_4

    move-wide p0, v0

    .line 110
    .end local p1
    .local p0, off_end:J
    :goto_3
    sub-long/2addr p0, v2

    .line 111
    .local p0, off_diff:J
    goto :goto_1

    .end local p0           #off_diff:J
    .local v2, ms_start:J
    .restart local p1
    :cond_3
    move-wide v2, p1

    .line 108
    goto :goto_2

    .local v2, off_start:J
    :cond_4
    move-wide p0, p3

    .line 109
    goto :goto_3
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {p0, p1}, Lnet/ser1/timetracker/TimeRange;->compareTo(Lnet/ser1/timetracker/TimeRange;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnet/ser1/timetracker/TimeRange;)I
    .locals 8
    .parameter "another"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 53
    iget-wide v0, p0, Lnet/ser1/timetracker/TimeRange;->start:J

    iget-wide v2, p1, Lnet/ser1/timetracker/TimeRange;->start:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    move v0, v4

    .line 65
    :goto_0
    return v0

    .line 55
    :cond_0
    iget-wide v0, p0, Lnet/ser1/timetracker/TimeRange;->start:J

    iget-wide v2, p1, Lnet/ser1/timetracker/TimeRange;->start:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    move v0, v5

    .line 56
    goto :goto_0

    .line 58
    :cond_1
    iget-wide v0, p0, Lnet/ser1/timetracker/TimeRange;->end:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    move v0, v5

    goto :goto_0

    .line 59
    :cond_2
    iget-wide v0, p1, Lnet/ser1/timetracker/TimeRange;->end:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_0

    .line 60
    :cond_3
    iget-wide v0, p0, Lnet/ser1/timetracker/TimeRange;->end:J

    iget-wide v2, p1, Lnet/ser1/timetracker/TimeRange;->end:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    move v0, v4

    .line 61
    goto :goto_0

    .line 62
    :cond_4
    iget-wide v0, p0, Lnet/ser1/timetracker/TimeRange;->end:J

    iget-wide v2, p1, Lnet/ser1/timetracker/TimeRange;->end:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    move v0, v5

    .line 63
    goto :goto_0

    .line 65
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 72
    instance-of v2, p1, Lnet/ser1/timetracker/TimeRange;

    if-eqz v2, :cond_1

    .line 73
    move-object v0, p1

    check-cast v0, Lnet/ser1/timetracker/TimeRange;

    move-object v1, v0

    .line 74
    .local v1, t:Lnet/ser1/timetracker/TimeRange;
    iget-wide v2, v1, Lnet/ser1/timetracker/TimeRange;->start:J

    iget-wide v4, p0, Lnet/ser1/timetracker/TimeRange;->start:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v1, Lnet/ser1/timetracker/TimeRange;->end:J

    iget-wide v4, p0, Lnet/ser1/timetracker/TimeRange;->end:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 76
    .end local v1           #t:Lnet/ser1/timetracker/TimeRange;
    :goto_0
    return v2

    .restart local v1       #t:Lnet/ser1/timetracker/TimeRange;
    :cond_0
    move v2, v6

    .line 74
    goto :goto_0

    .end local v1           #t:Lnet/ser1/timetracker/TimeRange;
    :cond_1
    move v2, v6

    .line 76
    goto :goto_0
.end method

.method public getEnd()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lnet/ser1/timetracker/TimeRange;->end:J

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lnet/ser1/timetracker/TimeRange;->start:J

    return-wide v0
.end method

.method public getTotal()J
    .locals 4

    .prologue
    .line 35
    iget-wide v0, p0, Lnet/ser1/timetracker/TimeRange;->end:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnet/ser1/timetracker/TimeRange;->start:J

    sub-long/2addr v0, v2

    .line 36
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lnet/ser1/timetracker/TimeRange;->end:J

    iget-wide v2, p0, Lnet/ser1/timetracker/TimeRange;->start:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 82
    iget-wide v0, p0, Lnet/ser1/timetracker/TimeRange;->start:J

    iget-wide v2, p0, Lnet/ser1/timetracker/TimeRange;->end:J

    const-wide/16 v4, 0x65

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public setEnd(J)V
    .locals 0
    .parameter "end"

    .prologue
    .line 32
    iput-wide p1, p0, Lnet/ser1/timetracker/TimeRange;->end:J

    .line 33
    return-void
.end method

.method public setStart(J)V
    .locals 0
    .parameter "start"

    .prologue
    .line 26
    iput-wide p1, p0, Lnet/ser1/timetracker/TimeRange;->start:J

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 41
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lnet/ser1/timetracker/TimeRange;->start:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 42
    .local v1, s:Ljava/util/Date;
    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v2, Lnet/ser1/timetracker/TimeRange;->FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, b:Ljava/lang/StringBuffer;
    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    iget-wide v2, p0, Lnet/ser1/timetracker/TimeRange;->end:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 45
    sget-object v2, Lnet/ser1/timetracker/TimeRange;->FORMAT:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lnet/ser1/timetracker/TimeRange;->end:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 47
    :cond_0
    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
