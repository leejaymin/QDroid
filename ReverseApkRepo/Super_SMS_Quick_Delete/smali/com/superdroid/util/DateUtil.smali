.class public Lcom/superdroid/util/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "time"
    .parameter "format"

    .prologue
    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, f:Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/superdroid/util/DateUtil;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "when"
    .parameter "fullFormat"

    .prologue
    .line 77
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 78
    .local v2, then:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 79
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 80
    .local v1, now:Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 82
    const v0, 0x80b00

    .line 86
    .local v0, format_flags:I
    iget v3, v2, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_1

    .line 87
    or-int/lit8 v0, v0, 0x14

    .line 94
    :goto_0
    if-eqz p3, :cond_0

    .line 95
    or-int/lit8 v0, v0, 0x11

    .line 98
    :cond_0
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 88
    :cond_1
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    iget v4, v1, Landroid/text/format/Time;->yearDay:I

    if-eq v3, v4, :cond_2

    .line 89
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 91
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getDefaultFormat(JZ)Ljava/lang/String;
    .locals 8
    .parameter "time"
    .parameter "format24"

    .prologue
    const/4 v7, 0x1

    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 48
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 49
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 50
    .local v3, thisYear:I
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 51
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 54
    .local v4, year:I
    if-eqz p2, :cond_1

    .line 55
    if-ne v4, v3, :cond_0

    .line 56
    const-string v2, "MM-dd HH:mm"

    .line 68
    .local v2, format:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, f:Ljava/text/DateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 58
    .end local v1           #f:Ljava/text/DateFormat;
    .end local v2           #format:Ljava/lang/String;
    :cond_0
    const-string v2, "MM-dd-yyyy HH:mm"

    .restart local v2       #format:Ljava/lang/String;
    goto :goto_0

    .line 61
    .end local v2           #format:Ljava/lang/String;
    :cond_1
    if-ne v4, v3, :cond_2

    .line 62
    const-string v2, "MM-dd hh:mm a"

    .restart local v2       #format:Ljava/lang/String;
    goto :goto_0

    .line 64
    .end local v2           #format:Ljava/lang/String;
    :cond_2
    const-string v2, "MM-dd-yyyy hh:mm a"

    .restart local v2       #format:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getSearchableTime(J)Ljava/lang/String;
    .locals 2
    .parameter "millisecond"

    .prologue
    .line 16
    invoke-static {p0, p1}, Lcom/superdroid/util/DateUtil;->getSearchableTimeList(J)Ljava/util/List;

    move-result-object v0

    .line 17
    .local v0, timeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "\n"

    invoke-static {v1, v0}, Lcom/superdroid/util/StringUtil;->joinString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSearchableTimeList(J)Ljava/util/List;
    .locals 3
    .parameter "millisecond"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 22
    .local v0, format:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 23
    .local v1, timeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-static {p0, p1, v0, v2}, Lcom/superdroid/util/DateUtil;->getYearMonthDay(JLjava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    const-string v2, "yyyy/MM/dd KK:mm a"

    invoke-static {p0, p1, v0, v2}, Lcom/superdroid/util/DateUtil;->getYearMonthDay(JLjava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v2, "d MMMMM yyyy"

    invoke-static {p0, p1, v0, v2}, Lcom/superdroid/util/DateUtil;->getYearMonthDay(JLjava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-object v1
.end method

.method public static getStandardTimeNoYear(J)Ljava/lang/String;
    .locals 2
    .parameter "millisecond"

    .prologue
    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 38
    .local v0, format:Ljava/text/SimpleDateFormat;
    const-string v1, "MM-dd HH:mm"

    invoke-static {p0, p1, v0, v1}, Lcom/superdroid/util/DateUtil;->getYearMonthDay(JLjava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getYearMonthDay(JLjava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "millisecond"
    .parameter "format"
    .parameter "pattern"

    .prologue
    .line 32
    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
