.class final Lorg/mozilla/javascript/NativeDate;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeDate.java"


# static fields
.field private static final ConstructorId_UTC:I = -0x1

.field private static final ConstructorId_now:I = -0x3

.field private static final ConstructorId_parse:I = -0x2

.field private static final DATE_TAG:Ljava/lang/Object; = null

.field private static final HalfTimeDomain:D = 8.64E15

.field private static final HoursPerDay:D = 24.0

.field private static final Id_constructor:I = 0x1

.field private static final Id_getDate:I = 0x11

.field private static final Id_getDay:I = 0x13

.field private static final Id_getFullYear:I = 0xd

.field private static final Id_getHours:I = 0x15

.field private static final Id_getMilliseconds:I = 0x1b

.field private static final Id_getMinutes:I = 0x17

.field private static final Id_getMonth:I = 0xf

.field private static final Id_getSeconds:I = 0x19

.field private static final Id_getTime:I = 0xb

.field private static final Id_getTimezoneOffset:I = 0x1d

.field private static final Id_getUTCDate:I = 0x12

.field private static final Id_getUTCDay:I = 0x14

.field private static final Id_getUTCFullYear:I = 0xe

.field private static final Id_getUTCHours:I = 0x16

.field private static final Id_getUTCMilliseconds:I = 0x1c

.field private static final Id_getUTCMinutes:I = 0x18

.field private static final Id_getUTCMonth:I = 0x10

.field private static final Id_getUTCSeconds:I = 0x1a

.field private static final Id_getYear:I = 0xc

.field private static final Id_setDate:I = 0x27

.field private static final Id_setFullYear:I = 0x2b

.field private static final Id_setHours:I = 0x25

.field private static final Id_setMilliseconds:I = 0x1f

.field private static final Id_setMinutes:I = 0x23

.field private static final Id_setMonth:I = 0x29

.field private static final Id_setSeconds:I = 0x21

.field private static final Id_setTime:I = 0x1e

.field private static final Id_setUTCDate:I = 0x28

.field private static final Id_setUTCFullYear:I = 0x2c

.field private static final Id_setUTCHours:I = 0x26

.field private static final Id_setUTCMilliseconds:I = 0x20

.field private static final Id_setUTCMinutes:I = 0x24

.field private static final Id_setUTCMonth:I = 0x2a

.field private static final Id_setUTCSeconds:I = 0x22

.field private static final Id_setYear:I = 0x2d

.field private static final Id_toDateString:I = 0x4

.field private static final Id_toGMTString:I = 0x8

.field private static final Id_toISOString:I = 0x2e

.field private static final Id_toJSON:I = 0x2f

.field private static final Id_toLocaleDateString:I = 0x7

.field private static final Id_toLocaleString:I = 0x5

.field private static final Id_toLocaleTimeString:I = 0x6

.field private static final Id_toSource:I = 0x9

.field private static final Id_toString:I = 0x2

.field private static final Id_toTimeString:I = 0x3

.field private static final Id_toUTCString:I = 0x8

.field private static final Id_valueOf:I = 0xa

.field private static LocalTZA:D = 0.0

.field private static final MAXARGS:I = 0x7

.field private static final MAX_PROTOTYPE_ID:I = 0x2f

.field private static final MinutesPerDay:D = 1440.0

.field private static final MinutesPerHour:D = 60.0

.field private static final SecondsPerDay:D = 86400.0

.field private static final SecondsPerHour:D = 3600.0

.field private static final SecondsPerMinute:D = 60.0

.field private static final TZO_WORKAROUND:Z = false

.field private static final isoFormat:Ljava/text/DateFormat; = null

.field private static final js_NaN_date_str:Ljava/lang/String; = "Invalid Date"

.field private static localeDateFormatter:Ljava/text/DateFormat; = null

.field private static localeDateTimeFormatter:Ljava/text/DateFormat; = null

.field private static localeTimeFormatter:Ljava/text/DateFormat; = null

.field private static final msPerDay:D = 8.64E7

.field private static final msPerHour:D = 3600000.0

.field private static final msPerMinute:D = 60000.0

.field private static final msPerSecond:D = 1000.0

.field static final serialVersionUID:J = -0x7349f3ade5310b76L

.field private static thisTimeZone:Ljava/util/TimeZone;

.field private static timeZoneFormatter:Ljava/text/DateFormat;


# instance fields
.field private date:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    const-string v0, "Date"

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->isoFormat:Ljava/text/DateFormat;

    .line 68
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->isoFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string v2, "UTC"

    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 69
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->isoFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 70
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 82
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->thisTimeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->thisTimeZone:Ljava/util/TimeZone;

    .line 86
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->thisTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-double v0, v0

    sput-wide v0, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    .line 88
    :cond_0
    return-void
.end method

.method private static DateFromTime(D)I
    .locals 8
    .parameter "t"

    .prologue
    .line 569
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v3

    .line 570
    .local v3, year:I
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide v4

    int-to-double v6, v3

    invoke-static {v6, v7}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-int v0, v4

    .line 572
    .local v0, d:I
    add-int/lit8 v0, v0, -0x3b

    .line 573
    if-gez v0, :cond_1

    .line 574
    const/16 v4, -0x1c

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v0, 0x1f

    add-int/lit8 v4, v4, 0x1c

    add-int/lit8 v4, v4, 0x1

    .line 605
    :goto_0
    return v4

    .line 574
    :cond_0
    add-int/lit8 v4, v0, 0x1c

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 577
    :cond_1
    invoke-static {v3}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 578
    if-nez v0, :cond_2

    .line 579
    const/16 v4, 0x1d

    goto :goto_0

    .line 580
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 585
    :cond_3
    div-int/lit8 v4, v0, 0x1e

    packed-switch v4, :pswitch_data_0

    .line 598
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 586
    :pswitch_0
    add-int/lit8 v4, v0, 0x1

    goto :goto_0

    .line 587
    :pswitch_1
    const/16 v1, 0x1f

    .local v1, mdays:I
    const/16 v2, 0x1f

    .line 600
    .local v2, mstart:I
    :goto_1
    sub-int/2addr v0, v2

    .line 601
    if-gez v0, :cond_4

    .line 603
    add-int/2addr v0, v1

    .line 605
    :cond_4
    add-int/lit8 v4, v0, 0x1

    goto :goto_0

    .line 588
    .end local v1           #mdays:I
    .end local v2           #mstart:I
    :pswitch_2
    const/16 v1, 0x1e

    .restart local v1       #mdays:I
    const/16 v2, 0x3d

    .restart local v2       #mstart:I
    goto :goto_1

    .line 589
    .end local v1           #mdays:I
    .end local v2           #mstart:I
    :pswitch_3
    const/16 v1, 0x1f

    .restart local v1       #mdays:I
    const/16 v2, 0x5c

    .restart local v2       #mstart:I
    goto :goto_1

    .line 590
    .end local v1           #mdays:I
    .end local v2           #mstart:I
    :pswitch_4
    const/16 v1, 0x1e

    .restart local v1       #mdays:I
    const/16 v2, 0x7a

    .restart local v2       #mstart:I
    goto :goto_1

    .line 591
    .end local v1           #mdays:I
    .end local v2           #mstart:I
    :pswitch_5
    const/16 v1, 0x1f

    .restart local v1       #mdays:I
    const/16 v2, 0x99

    .restart local v2       #mstart:I
    goto :goto_1

    .line 592
    .end local v1           #mdays:I
    .end local v2           #mstart:I
    :pswitch_6
    const/16 v1, 0x1f

    .restart local v1       #mdays:I
    const/16 v2, 0xb8

    .restart local v2       #mstart:I
    goto :goto_1

    .line 593
    .end local v1           #mdays:I
    .end local v2           #mstart:I
    :pswitch_7
    const/16 v1, 0x1e

    .restart local v1       #mdays:I
    const/16 v2, 0xd6

    .restart local v2       #mstart:I
    goto :goto_1

    .line 594
    .end local v1           #mdays:I
    .end local v2           #mstart:I
    :pswitch_8
    const/16 v1, 0x1f

    .restart local v1       #mdays:I
    const/16 v2, 0xf5

    .restart local v2       #mstart:I
    goto :goto_1

    .line 595
    .end local v1           #mdays:I
    .end local v2           #mstart:I
    :pswitch_9
    const/16 v1, 0x1e

    .restart local v1       #mdays:I
    const/16 v2, 0x113

    .restart local v2       #mstart:I
    goto :goto_1

    .line 597
    .end local v1           #mdays:I
    .end local v2           #mstart:I
    :pswitch_a
    const/16 v4, 0x113

    sub-int v4, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static Day(D)D
    .locals 2
    .parameter "t"

    .prologue
    .line 453
    const-wide v0, 0x4194997000000000L

    div-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static DayFromMonth(II)D
    .locals 4
    .parameter "m"
    .parameter "year"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 519
    mul-int/lit8 v0, p0, 0x1e

    .line 521
    .local v0, day:I
    const/4 v1, 0x7

    if-lt p0, v1, :cond_1

    div-int/lit8 v1, p0, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 525
    :goto_0
    if-lt p0, v3, :cond_0

    invoke-static {p1}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 527
    :cond_0
    int-to-double v1, v0

    return-wide v1

    .line 522
    :cond_1
    if-lt p0, v3, :cond_2

    sub-int v1, p0, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    .line 523
    :cond_2
    add-int/2addr v0, p0

    goto :goto_0
.end method

.method private static DayFromYear(D)D
    .locals 6
    .parameter "y"

    .prologue
    .line 475
    const-wide v0, 0x4076d00000000000L

    const-wide v2, 0x409ec80000000000L

    sub-double v2, p0, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x409ec40000000000L

    sub-double v2, p0, v2

    const-wide/high16 v4, 0x4010

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide v2, 0x409db40000000000L

    sub-double v2, p0, v2

    const-wide/high16 v4, 0x4059

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x4099040000000000L

    sub-double v2, p0, v2

    const-wide/high16 v4, 0x4079

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static DaylightSavingTA(D)D
    .locals 12
    .parameter "t"

    .prologue
    const-wide/16 v10, 0x0

    .line 637
    cmpg-double v0, p0, v10

    if-ltz v0, :cond_0

    const-wide v0, 0x427f3a29bcc00000L

    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    .line 638
    :cond_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/NativeDate;->EquivalentYear(I)I

    move-result v9

    .line 639
    .local v9, year:I
    int-to-double v0, v9

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v2

    int-to-double v2, v2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v4

    int-to-double v4, v4

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v7

    .line 640
    .local v7, day:D
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide v0

    invoke-static {v7, v8, v0, v1}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p0

    .line 643
    .end local v7           #day:D
    .end local v9           #year:I
    :cond_1
    new-instance v6, Ljava/util/Date;

    double-to-long v0, p0

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 644
    .local v6, date:Ljava/util/Date;
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->thisTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    const-wide v0, 0x414b774000000000L

    .line 647
    :goto_0
    return-wide v0

    :cond_2
    move-wide v0, v10

    goto :goto_0
.end method

.method private static EquivalentYear(I)I
    .locals 3
    .parameter "year"

    .prologue
    .line 685
    int-to-double v1, p0

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v0, v1, 0x4

    .line 686
    .local v0, day:I
    rem-int/lit8 v0, v0, 0x7

    .line 687
    if-gez v0, :cond_0

    .line 688
    add-int/lit8 v0, v0, 0x7

    .line 690
    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 691
    packed-switch v0, :pswitch_data_0

    .line 712
    :goto_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 692
    :pswitch_0
    const/16 v1, 0x7c0

    .line 708
    :goto_1
    return v1

    .line 693
    :pswitch_1
    const/16 v1, 0x7cc

    goto :goto_1

    .line 694
    :pswitch_2
    const/16 v1, 0x7bc

    goto :goto_1

    .line 695
    :pswitch_3
    const/16 v1, 0x7c8

    goto :goto_1

    .line 696
    :pswitch_4
    const/16 v1, 0x7b8

    goto :goto_1

    .line 697
    :pswitch_5
    const/16 v1, 0x7c4

    goto :goto_1

    .line 698
    :pswitch_6
    const/16 v1, 0x7b4

    goto :goto_1

    .line 701
    :cond_1
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 702
    :pswitch_7
    const/16 v1, 0x7ba

    goto :goto_1

    .line 703
    :pswitch_8
    const/16 v1, 0x7b5

    goto :goto_1

    .line 704
    :pswitch_9
    const/16 v1, 0x7b6

    goto :goto_1

    .line 705
    :pswitch_a
    const/16 v1, 0x7b7

    goto :goto_1

    .line 706
    :pswitch_b
    const/16 v1, 0x7bd

    goto :goto_1

    .line 707
    :pswitch_c
    const/16 v1, 0x7b3

    goto :goto_1

    .line 708
    :pswitch_d
    const/16 v1, 0x7b9

    goto :goto_1

    .line 691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 701
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static HourFromTime(D)I
    .locals 6
    .parameter "t"

    .prologue
    const-wide/high16 v4, 0x4038

    .line 728
    const-wide v2, 0x414b774000000000L

    div-double v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    rem-double v0, v2, v4

    .line 729
    .local v0, result:D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 730
    add-double/2addr v0, v4

    .line 731
    :cond_0
    double-to-int v2, v0

    return v2
.end method

.method private static IsLeapYear(I)Z
    .locals 1
    .parameter "year"

    .prologue
    .line 467
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static LocalTime(D)D
    .locals 4
    .parameter "t"

    .prologue
    .line 717
    sget-wide v0, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    add-double/2addr v0, p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DaylightSavingTA(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static MakeDate(DD)D
    .locals 2
    .parameter "day"
    .parameter "time"

    .prologue
    .line 784
    const-wide v0, 0x4194997000000000L

    mul-double/2addr v0, p0

    add-double/2addr v0, p2

    return-wide v0
.end method

.method private static MakeDay(DDD)D
    .locals 8
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    const-wide/high16 v6, 0x4028

    .line 770
    div-double v4, p2, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    add-double/2addr p0, v4

    .line 772
    rem-double/2addr p2, v6

    .line 773
    const-wide/16 v4, 0x0

    cmpg-double v4, p2, v4

    if-gez v4, :cond_0

    .line 774
    add-double/2addr p2, v6

    .line 776
    :cond_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->TimeFromYear(D)D

    move-result-wide v4

    const-wide v6, 0x4194997000000000L

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 777
    .local v2, yearday:D
    double-to-int v4, p2

    double-to-int v5, p0

    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->DayFromMonth(II)D

    move-result-wide v0

    .line 779
    .local v0, monthday:D
    add-double v4, v2, v0

    add-double/2addr v4, p4

    const-wide/high16 v6, 0x3ff0

    sub-double/2addr v4, v6

    return-wide v4
.end method

.method private static MakeTime(DDDD)D
    .locals 4
    .parameter "hour"
    .parameter "min"
    .parameter "sec"
    .parameter "ms"

    .prologue
    const-wide/high16 v2, 0x404e

    .line 764
    mul-double v0, p0, v2

    add-double/2addr v0, p2

    mul-double/2addr v0, v2

    add-double/2addr v0, p4

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    add-double/2addr v0, p6

    return-wide v0
.end method

.method private static MinFromTime(D)I
    .locals 6
    .parameter "t"

    .prologue
    const-wide/high16 v4, 0x404e

    .line 737
    const-wide v2, 0x40ed4c0000000000L

    div-double v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    rem-double v0, v2, v4

    .line 738
    .local v0, result:D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 739
    add-double/2addr v0, v4

    .line 740
    :cond_0
    double-to-int v2, v0

    return v2
.end method

.method private static MonthFromTime(D)I
    .locals 9
    .parameter "t"

    .prologue
    const/4 v8, 0x1

    .line 532
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v3

    .line 533
    .local v3, year:I
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide v4

    int-to-double v6, v3

    invoke-static {v6, v7}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-int v0, v4

    .line 535
    .local v0, d:I
    add-int/lit8 v0, v0, -0x3b

    .line 536
    if-gez v0, :cond_1

    .line 537
    const/16 v4, -0x1c

    if-ge v0, v4, :cond_0

    const/4 v4, 0x0

    .line 564
    :goto_0
    return v4

    :cond_0
    move v4, v8

    .line 537
    goto :goto_0

    .line 540
    :cond_1
    invoke-static {v3}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 541
    if-nez v0, :cond_2

    move v4, v8

    .line 542
    goto :goto_0

    .line 543
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 547
    :cond_3
    div-int/lit8 v1, v0, 0x1e

    .line 549
    .local v1, estimate:I
    packed-switch v1, :pswitch_data_0

    .line 561
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 550
    :pswitch_0
    const/4 v4, 0x2

    goto :goto_0

    .line 551
    :pswitch_1
    const/16 v2, 0x1f

    .line 564
    .local v2, mstart:I
    :goto_1
    if-lt v0, v2, :cond_4

    add-int/lit8 v4, v1, 0x2

    goto :goto_0

    .line 552
    .end local v2           #mstart:I
    :pswitch_2
    const/16 v2, 0x3d

    .restart local v2       #mstart:I
    goto :goto_1

    .line 553
    .end local v2           #mstart:I
    :pswitch_3
    const/16 v2, 0x5c

    .restart local v2       #mstart:I
    goto :goto_1

    .line 554
    .end local v2           #mstart:I
    :pswitch_4
    const/16 v2, 0x7a

    .restart local v2       #mstart:I
    goto :goto_1

    .line 555
    .end local v2           #mstart:I
    :pswitch_5
    const/16 v2, 0x99

    .restart local v2       #mstart:I
    goto :goto_1

    .line 556
    .end local v2           #mstart:I
    :pswitch_6
    const/16 v2, 0xb8

    .restart local v2       #mstart:I
    goto :goto_1

    .line 557
    .end local v2           #mstart:I
    :pswitch_7
    const/16 v2, 0xd6

    .restart local v2       #mstart:I
    goto :goto_1

    .line 558
    .end local v2           #mstart:I
    :pswitch_8
    const/16 v2, 0xf5

    .restart local v2       #mstart:I
    goto :goto_1

    .line 559
    .end local v2           #mstart:I
    :pswitch_9
    const/16 v2, 0x113

    .restart local v2       #mstart:I
    goto :goto_1

    .line 560
    .end local v2           #mstart:I
    :pswitch_a
    const/16 v4, 0xb

    goto :goto_0

    .line 564
    .restart local v2       #mstart:I
    :cond_4
    add-int/lit8 v4, v1, 0x1

    goto :goto_0

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static SecFromTime(D)I
    .locals 6
    .parameter "t"

    .prologue
    const-wide/high16 v4, 0x404e

    .line 746
    const-wide v2, 0x408f400000000000L

    div-double v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    rem-double v0, v2, v4

    .line 747
    .local v0, result:D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 748
    add-double/2addr v0, v4

    .line 749
    :cond_0
    double-to-int v2, v0

    return v2
.end method

.method private static TimeClip(D)D
    .locals 6
    .parameter "d"

    .prologue
    const-wide/16 v4, 0x0

    .line 789
    cmpl-double v0, p0, p0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x7ff0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x10

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x433eb208c2dc0000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 794
    :cond_0
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    .line 799
    :goto_0
    return-wide v0

    .line 796
    :cond_1
    cmpl-double v0, p0, v4

    if-lez v0, :cond_2

    .line 797
    add-double v0, p0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0

    .line 799
    :cond_2
    add-double v0, p0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method private static TimeFromYear(D)D
    .locals 4
    .parameter "y"

    .prologue
    .line 481
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v0

    const-wide v2, 0x4194997000000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static TimeWithinDay(D)D
    .locals 6
    .parameter "t"

    .prologue
    const-wide v4, 0x4194997000000000L

    .line 459
    rem-double v0, p0, v4

    .line 460
    .local v0, result:D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 461
    add-double/2addr v0, v4

    .line 462
    :cond_0
    return-wide v0
.end method

.method private static WeekDay(D)I
    .locals 8
    .parameter "t"

    .prologue
    const-wide/high16 v6, 0x401c

    .line 611
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4010

    add-double v0, v2, v4

    .line 612
    .local v0, result:D
    rem-double/2addr v0, v6

    .line 613
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 614
    add-double/2addr v0, v6

    .line 615
    :cond_0
    double-to-int v2, v0

    return v2
.end method

.method private static YearFromTime(D)I
    .locals 10
    .parameter "t"

    .prologue
    const-wide v8, 0x4194997000000000L

    .line 486
    div-double v4, p0, v8

    const-wide v6, 0x4076e00000000000L

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit16 v1, v4, 0x7b2

    .line 487
    .local v1, lo:I
    div-double v4, p0, v8

    const-wide v6, 0x4076d00000000000L

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit16 v0, v4, 0x7b2

    .line 491
    .local v0, hi:I
    if-ge v0, v1, :cond_0

    .line 492
    move v3, v1

    .line 493
    .local v3, temp:I
    move v1, v0

    .line 494
    move v0, v3

    .line 503
    .end local v3           #temp:I
    :cond_0
    :goto_0
    if-le v0, v1, :cond_2

    .line 504
    add-int v4, v0, v1

    div-int/lit8 v2, v4, 0x2

    .line 505
    .local v2, mid:I
    int-to-double v4, v2

    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->TimeFromYear(D)D

    move-result-wide v4

    cmpl-double v4, v4, p0

    if-lez v4, :cond_1

    .line 506
    const/4 v4, 0x1

    sub-int v0, v2, v4

    goto :goto_0

    .line 508
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .line 509
    int-to-double v4, v1

    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->TimeFromYear(D)D

    move-result-wide v4

    cmpl-double v4, v4, p0

    if-lez v4, :cond_0

    move v4, v2

    .line 514
    .end local v2           #mid:I
    :goto_1
    return v4

    :cond_2
    move v4, v1

    goto :goto_1
.end method

.method private static append0PaddedUint(Ljava/lang/StringBuffer;II)V
    .locals 3
    .parameter "sb"
    .parameter "i"
    .parameter "minWidth"

    .prologue
    .line 1242
    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1243
    :cond_0
    const/4 v1, 0x1

    .line 1244
    .local v1, scale:I
    add-int/lit8 p2, p2, -0x1

    .line 1245
    const/16 v2, 0xa

    if-lt p1, v2, :cond_1

    .line 1246
    const v2, 0x3b9aca00

    if-ge p1, v2, :cond_3

    .line 1248
    :goto_0
    mul-int/lit8 v0, v1, 0xa

    .line 1249
    .local v0, newScale:I
    if-ge p1, v0, :cond_2

    .line 1259
    .end local v0           #newScale:I
    :cond_1
    :goto_1
    if-lez p2, :cond_4

    .line 1260
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1261
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 1250
    .restart local v0       #newScale:I
    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 1251
    move v1, v0

    .line 1252
    goto :goto_0

    .line 1255
    .end local v0           #newScale:I
    :cond_3
    add-int/lit8 p2, p2, -0x9

    .line 1256
    const v1, 0x3b9aca00

    goto :goto_1

    .line 1263
    :cond_4
    :goto_2
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 1264
    div-int v2, p1, v1

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1265
    rem-int/2addr p1, v1

    .line 1266
    div-int/lit8 v1, v1, 0xa

    goto :goto_2

    .line 1268
    :cond_5
    add-int/lit8 v2, p1, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1269
    return-void
.end method

.method private static appendMonthName(Ljava/lang/StringBuffer;I)V
    .locals 3
    .parameter "sb"
    .parameter "index"

    .prologue
    .line 1276
    const-string v1, "JanFebMarAprMayJunJulAugSepOctNovDec"

    .line 1278
    .local v1, months:Ljava/lang/String;
    mul-int/lit8 p1, p1, 0x3

    .line 1279
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 1280
    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1282
    :cond_0
    return-void
.end method

.method private static appendWeekDayName(Ljava/lang/StringBuffer;I)V
    .locals 3
    .parameter "sb"
    .parameter "index"

    .prologue
    .line 1286
    const-string v0, "SunMonTueWedThuFriSat"

    .line 1287
    .local v0, days:Ljava/lang/String;
    mul-int/lit8 p1, p1, 0x3

    .line 1288
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1289
    add-int v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1291
    :cond_0
    return-void
.end method

.method private static date_format(DI)Ljava/lang/String;
    .locals 7
    .parameter "t"
    .parameter "methodId"

    .prologue
    .line 1077
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v0, 0x3c

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1078
    .local v6, result:Ljava/lang/StringBuffer;
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v0

    .line 1084
    .local v0, local:D
    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    .line 1085
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->WeekDay(D)I

    move-result v2

    invoke-static {v6, v2}, Lorg/mozilla/javascript/NativeDate;->appendWeekDayName(Ljava/lang/StringBuffer;I)V

    .line 1086
    const/16 v2, 0x20

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1087
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v2

    invoke-static {v6, v2}, Lorg/mozilla/javascript/NativeDate;->appendMonthName(Ljava/lang/StringBuffer;I)V

    .line 1088
    const/16 v2, 0x20

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1089
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v6, v2, v3}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    .line 1090
    const/16 v2, 0x20

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1091
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v2

    .line 1092
    .local v2, year:I
    if-gez v2, :cond_0

    .line 1093
    const/16 v3, 0x2d

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1094
    neg-int v2, v2

    .line 1096
    :cond_0
    const/4 v3, 0x4

    invoke-static {v6, v2, v3}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    .line 1097
    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    .line 1098
    .end local v2           #year:I
    const/16 v2, 0x20

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1101
    :cond_1
    const/4 v2, 0x4

    if-eq p2, v2, :cond_5

    .line 1102
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result p2

    .end local p2
    const/4 v2, 0x2

    invoke-static {v6, p2, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    .line 1103
    const/16 p2, 0x3a

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1104
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result p2

    const/4 v2, 0x2

    invoke-static {v6, p2, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    .line 1105
    const/16 p2, 0x3a

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1106
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result p2

    const/4 v2, 0x2

    invoke-static {v6, p2, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    .line 1110
    sget-wide v2, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DaylightSavingTA(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide v4, 0x40ed4c0000000000L

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p2, v2

    .line 1113
    .local p2, minutes:I
    div-int/lit8 v2, p2, 0x3c

    mul-int/lit8 v2, v2, 0x64

    rem-int/lit8 p2, p2, 0x3c

    .end local p2           #minutes:I
    add-int/2addr p2, v2

    .line 1114
    .local p2, offset:I
    if-lez p2, :cond_6

    .line 1115
    const-string v2, " GMT+"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1120
    :goto_0
    const/4 v2, 0x4

    invoke-static {v6, p2, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    .line 1122
    sget-object p2, Lorg/mozilla/javascript/NativeDate;->timeZoneFormatter:Ljava/text/DateFormat;

    .end local p2           #offset:I
    if-nez p2, :cond_2

    .line 1123
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v2, "zzz"

    invoke-direct {p2, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object p2, Lorg/mozilla/javascript/NativeDate;->timeZoneFormatter:Ljava/text/DateFormat;

    .line 1127
    :cond_2
    const-wide/16 v2, 0x0

    cmpg-double p2, p0, v2

    if-ltz p2, :cond_3

    const-wide v2, 0x427f3a29bcc00000L

    cmpl-double p2, p0, v2

    if-lez p2, :cond_4

    .line 1128
    :cond_3
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result p2

    invoke-static {p2}, Lorg/mozilla/javascript/NativeDate;->EquivalentYear(I)I

    move-result p2

    .line 1129
    .local p2, equiv:I
    int-to-double v0, p2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    .end local v0           #local:D
    move-result p2

    .end local p2           #equiv:I
    int-to-double v2, p2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result p2

    int-to-double v4, p2

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v0

    .line 1130
    .local v0, day:D
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide p0

    .end local p0
    invoke-static {v0, v1, p0, p1}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p0

    .line 1132
    .end local v0           #day:D
    .restart local p0
    :cond_4
    const-string p2, " ("

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1133
    new-instance p2, Ljava/util/Date;

    double-to-long v0, p0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1134
    .local p2, date:Ljava/util/Date;
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->timeZoneFormatter:Ljava/text/DateFormat;

    monitor-enter v0

    .line 1135
    :try_start_0
    sget-object v1, Lorg/mozilla/javascript/NativeDate;->timeZoneFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .end local p2           #date:Ljava/util/Date;
    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    const/16 p2, 0x29

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1139
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    return-object p0

    .line 1117
    .local v0, local:D
    .restart local p0
    .local p2, offset:I
    :cond_6
    const-string v2, " GMT-"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1118
    neg-int p2, p2

    goto :goto_0

    .line 1136
    .end local v0           #local:D
    .end local p0
    .end local p2           #offset:I
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static date_msecFromArgs([Ljava/lang/Object;)D
    .locals 14
    .parameter "args"

    .prologue
    .line 824
    const/4 v0, 0x7

    new-array v12, v0, [D

    .line 828
    .local v12, array:[D
    const/4 v0, 0x0

    .local v0, loop:I
    move v2, v0

    .end local v0           #loop:I
    .local v2, loop:I
    :goto_0
    const/4 v0, 0x7

    if-ge v2, v0, :cond_4

    .line 829
    array-length v0, p0

    if-ge v2, v0, :cond_2

    .line 830
    aget-object v0, p0, v2

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    .line 831
    .local v0, d:D
    cmpl-double v3, v0, v0

    if-nez v3, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    .end local v0           #d:D
    if-eqz v0, :cond_1

    .line 832
    :cond_0
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    .line 848
    .end local v2           #loop:I
    .end local v12           #array:[D
    .end local p0
    :goto_1
    return-wide v0

    .line 834
    .restart local v2       #loop:I
    .restart local v12       #array:[D
    .restart local p0
    :cond_1
    aget-object v0, p0, v2

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v0

    aput-wide v0, v12, v2

    .line 828
    :goto_2
    add-int/lit8 v0, v2, 0x1

    .end local v2           #loop:I
    .local v0, loop:I
    move v2, v0

    .end local v0           #loop:I
    .restart local v2       #loop:I
    goto :goto_0

    .line 836
    :cond_2
    const/4 v0, 0x2

    if-ne v2, v0, :cond_3

    .line 837
    const-wide/high16 v0, 0x3ff0

    aput-wide v0, v12, v2

    goto :goto_2

    .line 839
    :cond_3
    const-wide/16 v0, 0x0

    aput-wide v0, v12, v2

    goto :goto_2

    .line 845
    :cond_4
    const/4 p0, 0x0

    aget-wide v0, v12, p0

    .end local p0
    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_5

    .end local v2           #loop:I
    const/4 p0, 0x0

    aget-wide v0, v12, p0

    const-wide v2, 0x4058c00000000000L

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_5

    .line 846
    const/4 p0, 0x0

    aget-wide v0, v12, p0

    const-wide v2, 0x409db00000000000L

    add-double/2addr v0, v2

    aput-wide v0, v12, p0

    .line 848
    :cond_5
    const/4 p0, 0x0

    aget-wide v0, v12, p0

    const/4 p0, 0x1

    aget-wide v2, v12, p0

    const/4 p0, 0x2

    aget-wide v4, v12, p0

    const/4 p0, 0x3

    aget-wide v6, v12, p0

    const/4 p0, 0x4

    aget-wide v8, v12, p0

    const/4 p0, 0x5

    aget-wide v10, v12, p0

    const/4 p0, 0x6

    aget-wide v12, v12, p0

    .end local v12           #array:[D
    invoke-static/range {v0 .. v13}, Lorg/mozilla/javascript/NativeDate;->date_msecFromDate(DDDDDDD)D

    move-result-wide v0

    goto :goto_1
.end method

.method private static date_msecFromDate(DDDDDDD)D
    .locals 0
    .parameter "year"
    .parameter "mon"
    .parameter "mday"
    .parameter "hour"
    .parameter "min"
    .parameter "sec"
    .parameter "msec"

    .prologue
    .line 814
    invoke-static/range {p0 .. p5}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide p0

    .line 815
    .local p0, day:D
    invoke-static/range {p6 .. p13}, Lorg/mozilla/javascript/NativeDate;->MakeTime(DDDD)D

    move-result-wide p2

    .line 816
    .local p2, time:D
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p0

    .line 817
    .local p0, result:D
    return-wide p0
.end method

.method private static date_parseString(Ljava/lang/String;)D
    .locals 27
    .parameter "s"

    .prologue
    .line 860
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_0

    .line 862
    sget-object v3, Lorg/mozilla/javascript/NativeDate;->isoFormat:Ljava/text/DateFormat;

    monitor-enter v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :try_start_1
    sget-object v2, Lorg/mozilla/javascript/NativeDate;->isoFormat:Ljava/text/DateFormat;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 864
    .local v2, d:Ljava/util/Date;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 865
    :try_start_2
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v2

    .end local v2           #d:Ljava/util/Date;
    long-to-double v2, v2

    .line 1071
    .end local p0
    :goto_0
    return-wide v2

    .line 864
    .restart local p0
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 867
    :catch_0
    move-exception v2

    .line 869
    :cond_0
    const/16 v16, -0x1

    .line 870
    .local v16, year:I
    const/4 v8, -0x1

    .line 871
    .local v8, mon:I
    const/4 v6, -0x1

    .line 872
    .local v6, mday:I
    const/4 v3, -0x1

    .line 873
    .local v3, hour:I
    const/4 v7, -0x1

    .line 874
    .local v7, min:I
    const/4 v11, -0x1

    .line 875
    .local v11, sec:I
    const/4 v2, 0x0

    .line 876
    .local v2, c:C
    const/4 v13, 0x0

    .line 877
    .local v13, si:C
    const/4 v4, 0x0

    .line 878
    .local v4, i:I
    const/4 v9, -0x1

    .line 879
    .local v9, n:I
    const-wide/high16 v14, -0x4010

    .line 880
    .local v14, tzoffset:D
    const/4 v10, 0x0

    .line 881
    .local v10, prevc:C
    const/4 v5, 0x0

    .line 882
    .local v5, limit:I
    const/4 v5, 0x0

    .line 884
    .local v5, seenplusminus:Z
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    .local v12, limit:I
    move/from16 v19, v5

    .end local v5           #seenplusminus:Z
    .local v19, seenplusminus:Z
    move/from16 v17, v10

    .end local v10           #prevc:C
    .local v17, prevc:C
    move-wide/from16 v22, v14

    .end local v14           #tzoffset:D
    .local v22, tzoffset:D
    move/from16 v20, v13

    .end local v13           #si:C
    .local v20, si:C
    move/from16 v18, v11

    .end local v11           #sec:I
    .local v18, sec:I
    move/from16 v24, v16

    .end local v16           #year:I
    .local v24, year:I
    move v14, v7

    .end local v7           #min:I
    .local v14, min:I
    move v13, v6

    .end local v6           #mday:I
    .local v13, mday:I
    move v15, v8

    .end local v8           #mon:I
    .local v15, mon:I
    move/from16 v16, v9

    .end local v9           #n:I
    .local v16, n:I
    move v9, v3

    .end local v3           #hour:I
    .local v9, hour:I
    move v3, v4

    .line 885
    .end local v4           #i:I
    .local v3, i:I
    :goto_1
    if-ge v3, v12, :cond_2d

    .line 886
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 887
    add-int/lit8 v4, v3, 0x1

    .line 888
    .end local v3           #i:I
    .restart local v4       #i:I
    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    .line 889
    :cond_1
    if-ge v4, v12, :cond_37

    .line 890
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 891
    .end local v20           #si:C
    .local v5, si:C
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_39

    const/16 v3, 0x30

    if-gt v3, v5, :cond_38

    const/16 v3, 0x39

    if-gt v5, v3, :cond_38

    .line 892
    move v3, v2

    .end local v17           #prevc:C
    .local v3, prevc:C
    move/from16 v17, v3

    .end local v3           #prevc:C
    .restart local v17       #prevc:C
    move/from16 v20, v5

    .end local v5           #si:C
    .restart local v20       #si:C
    move v3, v4

    .end local v4           #i:I
    .local v3, i:I
    goto :goto_1

    .line 897
    .end local v3           #i:I
    .restart local v4       #i:I
    :cond_2
    const/16 v3, 0x28

    if-ne v2, v3, :cond_5

    .line 898
    const/4 v3, 0x1

    .line 899
    .local v3, depth:I
    :cond_3
    :goto_2
    if-ge v4, v12, :cond_37

    .line 900
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 901
    add-int/lit8 v4, v4, 0x1

    .line 902
    const/16 v5, 0x28

    if-ne v2, v5, :cond_4

    .line 903
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 904
    :cond_4
    const/16 v5, 0x29

    if-ne v2, v5, :cond_3

    .line 905
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_3

    move v3, v4

    .line 906
    .end local v4           #i:I
    .local v3, i:I
    goto :goto_1

    .line 910
    .end local v3           #i:I
    .restart local v4       #i:I
    :cond_5
    const/16 v3, 0x30

    if-gt v3, v2, :cond_1e

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1e

    .line 911
    const/16 v3, 0x30

    sub-int v3, v2, v3

    .end local v16           #n:I
    .local v3, n:I
    move v5, v3

    .line 912
    .end local v3           #n:I
    .local v5, n:I
    :goto_3
    if-ge v4, v12, :cond_6

    const/16 v3, 0x30

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v3, v2, :cond_6

    const/16 v3, 0x39

    if-gt v2, v3, :cond_6

    .line 913
    mul-int/lit8 v3, v5, 0xa

    add-int/2addr v3, v2

    const/16 v5, 0x30

    sub-int v5, v3, v5

    .line 914
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .local v3, i:I
    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_3

    .line 924
    :cond_6
    const/16 v3, 0x2b

    move/from16 v0, v17

    move v1, v3

    if-eq v0, v1, :cond_7

    const/16 v3, 0x2d

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_b

    .line 926
    :cond_7
    const/4 v6, 0x1

    .line 929
    .end local v19           #seenplusminus:Z
    .local v6, seenplusminus:Z
    const/16 v3, 0x18

    if-ge v5, v3, :cond_9

    .line 930
    mul-int/lit8 v3, v5, 0x3c

    .line 933
    .end local v5           #n:I
    .local v3, n:I
    :goto_4
    const/16 v5, 0x2b

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_8

    .line 934
    neg-int v3, v3

    .line 935
    :cond_8
    const-wide/16 v7, 0x0

    cmpl-double v5, v22, v7

    if-eqz v5, :cond_a

    const-wide/high16 v7, -0x4010

    cmpl-double v5, v22, v7

    if-eqz v5, :cond_a

    .line 936
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    .line 932
    .end local v3           #n:I
    .restart local v5       #n:I
    :cond_9
    rem-int/lit8 v3, v5, 0x64

    div-int/lit8 v5, v5, 0x64

    .end local v5           #n:I
    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v3, v5

    .restart local v3       #n:I
    goto :goto_4

    .line 937
    :cond_a
    int-to-double v7, v3

    .end local v22           #tzoffset:D
    .local v7, tzoffset:D
    move v11, v6

    .end local v6           #seenplusminus:Z
    .local v11, seenplusminus:Z
    move/from16 v10, v18

    .end local v18           #sec:I
    .local v10, sec:I
    move v5, v13

    .end local v13           #mday:I
    .local v5, mday:I
    move v6, v14

    .end local v14           #min:I
    .local v6, min:I
    move-wide v13, v7

    .end local v7           #tzoffset:D
    .local v13, tzoffset:D
    move v8, v3

    .end local v3           #n:I
    .local v8, n:I
    move v7, v15

    .end local v15           #mon:I
    .local v7, mon:I
    move v3, v9

    .end local v9           #hour:I
    .local v3, hour:I
    move/from16 v15, v24

    .line 978
    .end local v24           #year:I
    .local v15, year:I
    :goto_5
    const/4 v9, 0x0

    .end local v17           #prevc:C
    .local v9, prevc:C
    move/from16 v19, v11

    .end local v11           #seenplusminus:Z
    .restart local v19       #seenplusminus:Z
    move/from16 v17, v9

    .end local v9           #prevc:C
    .restart local v17       #prevc:C
    move-wide/from16 v22, v13

    .end local v13           #tzoffset:D
    .restart local v22       #tzoffset:D
    move/from16 v16, v8

    .end local v8           #n:I
    .restart local v16       #n:I
    move/from16 v18, v10

    .end local v10           #sec:I
    .restart local v18       #sec:I
    move/from16 v24, v15

    .end local v15           #year:I
    .restart local v24       #year:I
    move v14, v6

    .end local v6           #min:I
    .restart local v14       #min:I
    move v9, v3

    .end local v3           #hour:I
    .local v9, hour:I
    move v13, v5

    .end local v5           #mday:I
    .local v13, mday:I
    move v15, v7

    .end local v7           #mon:I
    .local v15, mon:I
    move v3, v4

    .end local v4           #i:I
    .local v3, i:I
    goto/16 :goto_1

    .line 938
    .end local v3           #i:I
    .end local v16           #n:I
    .restart local v4       #i:I
    .local v5, n:I
    :cond_b
    const/16 v3, 0x46

    if-ge v5, v3, :cond_c

    const/16 v3, 0x2f

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_11

    if-ltz v15, :cond_11

    if-ltz v13, :cond_11

    if-gez v24, :cond_11

    .line 942
    :cond_c
    if-ltz v24, :cond_d

    .line 943
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    .line 944
    :cond_d
    const/16 v3, 0x20

    if-le v2, v3, :cond_e

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_e

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_e

    if-lt v4, v12, :cond_10

    .line 945
    :cond_e
    const/16 v3, 0x64

    if-ge v5, v3, :cond_f

    add-int/lit16 v3, v5, 0x76c

    .end local v24           #year:I
    .local v3, year:I
    :goto_6
    move/from16 v11, v19

    .end local v19           #seenplusminus:Z
    .restart local v11       #seenplusminus:Z
    move v8, v5

    .end local v5           #n:I
    .restart local v8       #n:I
    move/from16 v10, v18

    .end local v18           #sec:I
    .restart local v10       #sec:I
    move v6, v14

    .end local v14           #min:I
    .restart local v6       #min:I
    move v7, v15

    .end local v15           #mon:I
    .restart local v7       #mon:I
    move v5, v13

    .end local v13           #mday:I
    .local v5, mday:I
    move v15, v3

    .end local v3           #year:I
    .local v15, year:I
    move-wide/from16 v13, v22

    .end local v22           #tzoffset:D
    .local v13, tzoffset:D
    move v3, v9

    .end local v9           #hour:I
    .local v3, hour:I
    goto :goto_5

    .end local v3           #hour:I
    .end local v6           #min:I
    .end local v7           #mon:I
    .end local v8           #n:I
    .end local v10           #sec:I
    .end local v11           #seenplusminus:Z
    .local v5, n:I
    .restart local v9       #hour:I
    .local v13, mday:I
    .restart local v14       #min:I
    .local v15, mon:I
    .restart local v18       #sec:I
    .restart local v19       #seenplusminus:Z
    .restart local v22       #tzoffset:D
    .restart local v24       #year:I
    :cond_f
    move v3, v5

    goto :goto_6

    .line 947
    :cond_10
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    .line 948
    :cond_11
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_14

    .line 949
    if-gez v9, :cond_12

    .line 950
    move v3, v5

    .end local v9           #hour:I
    .restart local v3       #hour:I
    move/from16 v11, v19

    .end local v19           #seenplusminus:Z
    .restart local v11       #seenplusminus:Z
    move v8, v5

    .end local v5           #n:I
    .restart local v8       #n:I
    move/from16 v10, v18

    .end local v18           #sec:I
    .restart local v10       #sec:I
    move v6, v14

    .end local v14           #min:I
    .restart local v6       #min:I
    move v7, v15

    .end local v15           #mon:I
    .restart local v7       #mon:I
    move v5, v13

    .end local v13           #mday:I
    .local v5, mday:I
    move/from16 v15, v24

    .end local v24           #year:I
    .local v15, year:I
    move-wide/from16 v13, v22

    .end local v22           #tzoffset:D
    .local v13, tzoffset:D
    goto :goto_5

    .line 951
    .end local v3           #hour:I
    .end local v6           #min:I
    .end local v7           #mon:I
    .end local v8           #n:I
    .end local v10           #sec:I
    .end local v11           #seenplusminus:Z
    .local v5, n:I
    .restart local v9       #hour:I
    .local v13, mday:I
    .restart local v14       #min:I
    .local v15, mon:I
    .restart local v18       #sec:I
    .restart local v19       #seenplusminus:Z
    .restart local v22       #tzoffset:D
    .restart local v24       #year:I
    :cond_12
    if-gez v14, :cond_13

    .line 952
    move v3, v5

    .end local v14           #min:I
    .local v3, min:I
    move/from16 v11, v19

    .end local v19           #seenplusminus:Z
    .restart local v11       #seenplusminus:Z
    move v8, v5

    .end local v5           #n:I
    .restart local v8       #n:I
    move/from16 v10, v18

    .end local v18           #sec:I
    .restart local v10       #sec:I
    move v6, v3

    .end local v3           #min:I
    .restart local v6       #min:I
    move v7, v15

    .end local v15           #mon:I
    .restart local v7       #mon:I
    move v3, v9

    .end local v9           #hour:I
    .local v3, hour:I
    move v5, v13

    .end local v13           #mday:I
    .local v5, mday:I
    move/from16 v15, v24

    .end local v24           #year:I
    .local v15, year:I
    move-wide/from16 v13, v22

    .end local v22           #tzoffset:D
    .local v13, tzoffset:D
    goto :goto_5

    .line 954
    .end local v3           #hour:I
    .end local v6           #min:I
    .end local v7           #mon:I
    .end local v8           #n:I
    .end local v10           #sec:I
    .end local v11           #seenplusminus:Z
    .local v5, n:I
    .restart local v9       #hour:I
    .local v13, mday:I
    .restart local v14       #min:I
    .local v15, mon:I
    .restart local v18       #sec:I
    .restart local v19       #seenplusminus:Z
    .restart local v22       #tzoffset:D
    .restart local v24       #year:I
    :cond_13
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    .line 955
    :cond_14
    const/16 v3, 0x2f

    if-ne v2, v3, :cond_17

    .line 956
    if-gez v15, :cond_15

    .line 957
    const/4 v3, 0x1

    sub-int v3, v5, v3

    .end local v15           #mon:I
    .local v3, mon:I
    move/from16 v11, v19

    .end local v19           #seenplusminus:Z
    .restart local v11       #seenplusminus:Z
    move v8, v5

    .end local v5           #n:I
    .restart local v8       #n:I
    move/from16 v10, v18

    .end local v18           #sec:I
    .restart local v10       #sec:I
    move v6, v14

    .end local v14           #min:I
    .restart local v6       #min:I
    move v7, v3

    .end local v3           #mon:I
    .restart local v7       #mon:I
    move/from16 v15, v24

    .end local v24           #year:I
    .local v15, year:I
    move v5, v13

    .end local v13           #mday:I
    .local v5, mday:I
    move v3, v9

    .end local v9           #hour:I
    .local v3, hour:I
    move-wide/from16 v13, v22

    .end local v22           #tzoffset:D
    .local v13, tzoffset:D
    goto/16 :goto_5

    .line 958
    .end local v3           #hour:I
    .end local v6           #min:I
    .end local v7           #mon:I
    .end local v8           #n:I
    .end local v10           #sec:I
    .end local v11           #seenplusminus:Z
    .local v5, n:I
    .restart local v9       #hour:I
    .local v13, mday:I
    .restart local v14       #min:I
    .local v15, mon:I
    .restart local v18       #sec:I
    .restart local v19       #seenplusminus:Z
    .restart local v22       #tzoffset:D
    .restart local v24       #year:I
    :cond_15
    if-gez v13, :cond_16

    .line 959
    move v3, v5

    .end local v13           #mday:I
    .local v3, mday:I
    move/from16 v11, v19

    .end local v19           #seenplusminus:Z
    .restart local v11       #seenplusminus:Z
    move v8, v5

    .end local v5           #n:I
    .restart local v8       #n:I
    move/from16 v10, v18

    .end local v18           #sec:I
    .restart local v10       #sec:I
    move v6, v14

    .end local v14           #min:I
    .restart local v6       #min:I
    move v7, v15

    .end local v15           #mon:I
    .restart local v7       #mon:I
    move v5, v3

    .end local v3           #mday:I
    .local v5, mday:I
    move-wide/from16 v13, v22

    .end local v22           #tzoffset:D
    .local v13, tzoffset:D
    move/from16 v15, v24

    .end local v24           #year:I
    .local v15, year:I
    move v3, v9

    .end local v9           #hour:I
    .local v3, hour:I
    goto/16 :goto_5

    .line 961
    .end local v3           #hour:I
    .end local v6           #min:I
    .end local v7           #mon:I
    .end local v8           #n:I
    .end local v10           #sec:I
    .end local v11           #seenplusminus:Z
    .local v5, n:I
    .restart local v9       #hour:I
    .local v13, mday:I
    .restart local v14       #min:I
    .local v15, mon:I
    .restart local v18       #sec:I
    .restart local v19       #seenplusminus:Z
    .restart local v22       #tzoffset:D
    .restart local v24       #year:I
    :cond_16
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    .line 962
    :cond_17
    if-ge v4, v12, :cond_18

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_18

    const/16 v3, 0x20

    if-le v2, v3, :cond_18

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_18

    .line 963
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    .line 964
    :cond_18
    if-eqz v19, :cond_1a

    const/16 v3, 0x3c

    if-ge v5, v3, :cond_1a

    .line 965
    const-wide/16 v6, 0x0

    cmpg-double v3, v22, v6

    if-gez v3, :cond_19

    .line 966
    int-to-double v6, v5

    sub-double v6, v22, v6

    .end local v22           #tzoffset:D
    .local v6, tzoffset:D
    move/from16 v11, v19

    .end local v19           #seenplusminus:Z
    .restart local v11       #seenplusminus:Z
    move v8, v5

    .end local v5           #n:I
    .restart local v8       #n:I
    move/from16 v10, v18

    .end local v18           #sec:I
    .restart local v10       #sec:I
    move v3, v9

    .end local v9           #hour:I
    .restart local v3       #hour:I
    move v5, v13

    .end local v13           #mday:I
    .local v5, mday:I
    move-wide/from16 v25, v6

    .end local v6           #tzoffset:D
    .local v25, tzoffset:D
    move v6, v14

    .end local v14           #min:I
    .local v6, min:I
    move v7, v15

    .end local v15           #mon:I
    .restart local v7       #mon:I
    move-wide/from16 v13, v25

    .end local v25           #tzoffset:D
    .local v13, tzoffset:D
    move/from16 v15, v24

    .end local v24           #year:I
    .local v15, year:I
    goto/16 :goto_5

    .line 968
    .end local v3           #hour:I
    .end local v6           #min:I
    .end local v7           #mon:I
    .end local v8           #n:I
    .end local v10           #sec:I
    .end local v11           #seenplusminus:Z
    .local v5, n:I
    .restart local v9       #hour:I
    .local v13, mday:I
    .restart local v14       #min:I
    .local v15, mon:I
    .restart local v18       #sec:I
    .restart local v19       #seenplusminus:Z
    .restart local v22       #tzoffset:D
    .restart local v24       #year:I
    :cond_19
    int-to-double v6, v5

    add-double v6, v6, v22

    .end local v22           #tzoffset:D
    .local v6, tzoffset:D
    move/from16 v11, v19

    .end local v19           #seenplusminus:Z
    .restart local v11       #seenplusminus:Z
    move v8, v5

    .end local v5           #n:I
    .restart local v8       #n:I
    move/from16 v10, v18

    .end local v18           #sec:I
    .restart local v10       #sec:I
    move v3, v9

    .end local v9           #hour:I
    .restart local v3       #hour:I
    move v5, v13

    .end local v13           #mday:I
    .local v5, mday:I
    move-wide/from16 v25, v6

    .end local v6           #tzoffset:D
    .restart local v25       #tzoffset:D
    move v6, v14

    .end local v14           #min:I
    .local v6, min:I
    move v7, v15

    .end local v15           #mon:I
    .restart local v7       #mon:I
    move-wide/from16 v13, v25

    .end local v25           #tzoffset:D
    .local v13, tzoffset:D
    move/from16 v15, v24

    .end local v24           #year:I
    .local v15, year:I
    goto/16 :goto_5

    .line 969
    .end local v3           #hour:I
    .end local v6           #min:I
    .end local v7           #mon:I
    .end local v8           #n:I
    .end local v10           #sec:I
    .end local v11           #seenplusminus:Z
    .local v5, n:I
    .restart local v9       #hour:I
    .local v13, mday:I
    .restart local v14       #min:I
    .local v15, mon:I
    .restart local v18       #sec:I
    .restart local v19       #seenplusminus:Z
    .restart local v22       #tzoffset:D
    .restart local v24       #year:I
    :cond_1a
    if-ltz v9, :cond_1b

    if-gez v14, :cond_1b

    .line 970
    move v3, v5

    .end local v14           #min:I
    .local v3, min:I
    move/from16 v11, v19

    .end local v19           #seenplusminus:Z
    .restart local v11       #seenplusminus:Z
    move v8, v5

    .end local v5           #n:I
    .restart local v8       #n:I
    move/from16 v10, v18

    .end local v18           #sec:I
    .restart local v10       #sec:I
    move v6, v3

    .end local v3           #min:I
    .restart local v6       #min:I
    move v7, v15

    .end local v15           #mon:I
    .restart local v7       #mon:I
    move v3, v9

    .end local v9           #hour:I
    .local v3, hour:I
    move v5, v13

    .end local v13           #mday:I
    .local v5, mday:I
    move/from16 v15, v24

    .end local v24           #year:I
    .local v15, year:I
    move-wide/from16 v13, v22

    .end local v22           #tzoffset:D
    .local v13, tzoffset:D
    goto/16 :goto_5

    .line 971
    .end local v3           #hour:I
    .end local v6           #min:I
    .end local v7           #mon:I
    .end local v8           #n:I
    .end local v10           #sec:I
    .end local v11           #seenplusminus:Z
    .local v5, n:I
    .restart local v9       #hour:I
    .local v13, mday:I
    .restart local v14       #min:I
    .local v15, mon:I
    .restart local v18       #sec:I
    .restart local v19       #seenplusminus:Z
    .restart local v22       #tzoffset:D
    .restart local v24       #year:I
    :cond_1b
    if-ltz v14, :cond_1c

    if-gez v18, :cond_1c

    .line 972
    move v3, v5

    .end local v18           #sec:I
    .local v3, sec:I
    move/from16 v11, v19

    .end local v19           #seenplusminus:Z
    .restart local v11       #seenplusminus:Z
    move v8, v5

    .end local v5           #n:I
    .restart local v8       #n:I
    move v10, v3

    .end local v3           #sec:I
    .restart local v10       #sec:I
    move v6, v14

    .end local v14           #min:I
    .restart local v6       #min:I
    move v7, v15

    .end local v15           #mon:I
    .restart local v7       #mon:I
    move v3, v9

    .end local v9           #hour:I
    .local v3, hour:I
    move v5, v13

    .end local v13           #mday:I
    .local v5, mday:I
    move/from16 v15, v24

    .end local v24           #year:I
    .local v15, year:I
    move-wide/from16 v13, v22

    .end local v22           #tzoffset:D
    .local v13, tzoffset:D
    goto/16 :goto_5

    .line 973
    .end local v3           #hour:I
    .end local v6           #min:I
    .end local v7           #mon:I
    .end local v8           #n:I
    .end local v10           #sec:I
    .end local v11           #seenplusminus:Z
    .local v5, n:I
    .restart local v9       #hour:I
    .local v13, mday:I
    .restart local v14       #min:I
    .local v15, mon:I
    .restart local v18       #sec:I
    .restart local v19       #seenplusminus:Z
    .restart local v22       #tzoffset:D
    .restart local v24       #year:I
    :cond_1c
    if-gez v13, :cond_1d

    .line 974
    move v3, v5

    .end local v13           #mday:I
    .local v3, mday:I
    move/from16 v11, v19

    .end local v19           #seenplusminus:Z
    .restart local v11       #seenplusminus:Z
    move v8, v5

    .end local v5           #n:I
    .restart local v8       #n:I
    move/from16 v10, v18

    .end local v18           #sec:I
    .restart local v10       #sec:I
    move v6, v14

    .end local v14           #min:I
    .restart local v6       #min:I
    move v7, v15

    .end local v15           #mon:I
    .restart local v7       #mon:I
    move v5, v3

    .end local v3           #mday:I
    .local v5, mday:I
    move-wide/from16 v13, v22

    .end local v22           #tzoffset:D
    .local v13, tzoffset:D
    move/from16 v15, v24

    .end local v24           #year:I
    .local v15, year:I
    move v3, v9

    .end local v9           #hour:I
    .local v3, hour:I
    goto/16 :goto_5

    .line 976
    .end local v3           #hour:I
    .end local v6           #min:I
    .end local v7           #mon:I
    .end local v8           #n:I
    .end local v10           #sec:I
    .end local v11           #seenplusminus:Z
    .local v5, n:I
    .restart local v9       #hour:I
    .local v13, mday:I
    .restart local v14       #min:I
    .local v15, mon:I
    .restart local v18       #sec:I
    .restart local v19       #seenplusminus:Z
    .restart local v22       #tzoffset:D
    .restart local v24       #year:I
    :cond_1d
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    .line 979
    .end local v5           #n:I
    .restart local v16       #n:I
    :cond_1e
    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_20

    .line 980
    :cond_1f
    move v3, v2

    .end local v17           #prevc:C
    .local v3, prevc:C
    move/from16 v17, v3

    .end local v3           #prevc:C
    .restart local v17       #prevc:C
    move v3, v4

    .end local v4           #i:I
    .local v3, i:I
    goto/16 :goto_1

    .line 982
    .end local v3           #i:I
    .restart local v4       #i:I
    :cond_20
    const/4 v3, 0x1

    sub-int v6, v4, v3

    .local v6, st:I
    move v10, v4

    .line 983
    .end local v4           #i:I
    .local v10, i:I
    :goto_7
    if-ge v10, v12, :cond_36

    .line 984
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 985
    const/16 v3, 0x41

    if-gt v3, v2, :cond_21

    const/16 v3, 0x5a

    if-le v2, v3, :cond_22

    :cond_21
    const/16 v3, 0x61

    if-gt v3, v2, :cond_35

    const/16 v3, 0x7a

    if-le v2, v3, :cond_22

    move v8, v2

    .line 989
    .end local v2           #c:C
    .local v8, c:C
    :goto_8
    sub-int v7, v10, v6

    .line 990
    .local v7, letterCount:I
    const/4 v2, 0x2

    if-ge v7, v2, :cond_23

    .line 991
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    .line 987
    .end local v7           #letterCount:I
    .end local v8           #c:C
    .restart local v2       #c:C
    :cond_22
    add-int/lit8 v3, v10, 0x1

    .end local v10           #i:I
    .restart local v3       #i:I
    move v10, v3

    .end local v3           #i:I
    .restart local v10       #i:I
    goto :goto_7

    .line 997
    .end local v2           #c:C
    .restart local v7       #letterCount:I
    .restart local v8       #c:C
    :cond_23
    const-string v2, "am;pm;monday;tuesday;wednesday;thursday;friday;saturday;sunday;january;february;march;april;may;june;july;august;september;october;november;december;gmt;ut;utc;est;edt;cst;cdt;mst;mdt;pst;pdt;"

    .line 1003
    .local v2, wtb:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1004
    .local v3, index:I
    const/4 v4, 0x0

    .local v4, wtbOffset:I
    move v11, v3

    .line 1005
    .end local v3           #index:I
    .local v11, index:I
    :goto_9
    const/16 v3, 0x3b

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v21

    .line 1006
    .local v21, wtbNext:I
    if-gez v21, :cond_24

    .line 1007
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    .line 1008
    :cond_24
    const/4 v3, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1013
    const/4 v2, 0x2

    if-ge v11, v2, :cond_29

    .line 1018
    .end local v2           #wtb:Ljava/lang/String;
    const/16 v2, 0xc

    if-gt v9, v2, :cond_25

    if-gez v9, :cond_27

    .line 1019
    :cond_25
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    .line 1010
    .restart local v2       #wtb:Ljava/lang/String;
    :cond_26
    add-int/lit8 v4, v21, 0x1

    .line 1011
    add-int/lit8 v3, v11, 0x1

    .end local v11           #index:I
    .restart local v3       #index:I
    move v11, v3

    .line 1012
    .end local v3           #index:I
    .restart local v11       #index:I
    goto :goto_9

    .line 1020
    .end local v2           #wtb:Ljava/lang/String;
    :cond_27
    if-nez v11, :cond_28

    .line 1022
    const/16 v2, 0xc

    if-ne v9, v2, :cond_34

    .line 1023
    const/4 v2, 0x0

    .end local v9           #hour:I
    .local v2, hour:I
    move v3, v11

    .end local v11           #index:I
    .restart local v3       #index:I
    move-wide/from16 v5, v22

    .end local v6           #st:I
    .end local v22           #tzoffset:D
    .local v5, tzoffset:D
    move v4, v15

    .end local v15           #mon:I
    .local v4, mon:I
    :goto_a
    move-wide/from16 v22, v5

    .end local v5           #tzoffset:D
    .restart local v22       #tzoffset:D
    move v3, v10

    .end local v10           #i:I
    .local v3, i:I
    move v9, v2

    .end local v2           #hour:I
    .restart local v9       #hour:I
    move v15, v4

    .end local v4           #mon:I
    .restart local v15       #mon:I
    move v2, v8

    .line 1056
    .end local v8           #c:C
    .local v2, c:C
    goto/16 :goto_1

    .line 1026
    .end local v2           #c:C
    .end local v3           #i:I
    .local v4, wtbOffset:I
    .restart local v6       #st:I
    .restart local v8       #c:C
    .restart local v10       #i:I
    .restart local v11       #index:I
    :cond_28
    const/16 v2, 0xc

    if-eq v9, v2, :cond_34

    .line 1027
    add-int/lit8 v2, v9, 0xc

    .end local v9           #hour:I
    .local v2, hour:I
    move v3, v11

    .end local v11           #index:I
    .local v3, index:I
    move-wide/from16 v5, v22

    .end local v6           #st:I
    .end local v22           #tzoffset:D
    .restart local v5       #tzoffset:D
    move v4, v15

    .end local v15           #mon:I
    .local v4, mon:I
    goto :goto_a

    .line 1029
    .end local v2           #hour:I
    .end local v3           #index:I
    .end local v5           #tzoffset:D
    .local v4, wtbOffset:I
    .restart local v6       #st:I
    .restart local v9       #hour:I
    .restart local v11       #index:I
    .restart local v15       #mon:I
    .restart local v22       #tzoffset:D
    :cond_29
    add-int/lit8 v2, v11, -0x2

    .end local v11           #index:I
    .local v2, index:I
    const/4 v3, 0x7

    if-ge v2, v3, :cond_2a

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    move-wide/from16 v5, v22

    .end local v6           #st:I
    .end local v22           #tzoffset:D
    .restart local v5       #tzoffset:D
    move v4, v15

    .end local v15           #mon:I
    .local v4, mon:I
    move v2, v9

    .end local v9           #hour:I
    .local v2, hour:I
    goto :goto_a

    .line 1031
    .end local v3           #index:I
    .end local v5           #tzoffset:D
    .local v2, index:I
    .local v4, wtbOffset:I
    .restart local v6       #st:I
    .restart local v9       #hour:I
    .restart local v15       #mon:I
    .restart local v22       #tzoffset:D
    :cond_2a
    add-int/lit8 v2, v2, -0x7

    const/16 v3, 0xc

    if-ge v2, v3, :cond_2c

    .line 1033
    if-gez v15, :cond_2b

    .line 1034
    move v3, v2

    .end local v15           #mon:I
    .local v3, mon:I
    move-wide/from16 v5, v22

    .end local v6           #st:I
    .end local v22           #tzoffset:D
    .restart local v5       #tzoffset:D
    move v4, v3

    .end local v3           #mon:I
    .local v4, mon:I
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    move v2, v9

    .end local v9           #hour:I
    .local v2, hour:I
    goto :goto_a

    .line 1036
    .end local v3           #index:I
    .end local v5           #tzoffset:D
    .local v2, index:I
    .local v4, wtbOffset:I
    .restart local v6       #st:I
    .restart local v9       #hour:I
    .restart local v15       #mon:I
    .restart local v22       #tzoffset:D
    :cond_2b
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    .line 1039
    :cond_2c
    add-int/lit8 v2, v2, -0xc

    .line 1041
    packed-switch v2, :pswitch_data_0

    .line 1053
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    move-wide/from16 v5, v22

    .end local v6           #st:I
    .end local v22           #tzoffset:D
    .restart local v5       #tzoffset:D
    move v4, v15

    .end local v15           #mon:I
    .local v4, mon:I
    move v2, v9

    .end local v9           #hour:I
    .local v2, hour:I
    goto :goto_a

    .line 1042
    .end local v3           #index:I
    .end local v5           #tzoffset:D
    .local v2, index:I
    .local v4, wtbOffset:I
    .restart local v6       #st:I
    .restart local v9       #hour:I
    .restart local v15       #mon:I
    .restart local v22       #tzoffset:D
    :pswitch_0
    const-wide/16 v3, 0x0

    .end local v4           #wtbOffset:I
    .end local v22           #tzoffset:D
    .local v3, tzoffset:D
    move-wide v5, v3

    .end local v3           #tzoffset:D
    .end local v6           #st:I
    .restart local v5       #tzoffset:D
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    move v4, v15

    .end local v15           #mon:I
    .local v4, mon:I
    move v2, v9

    .end local v9           #hour:I
    .local v2, hour:I
    goto :goto_a

    .line 1043
    .end local v3           #index:I
    .end local v5           #tzoffset:D
    .local v2, index:I
    .local v4, wtbOffset:I
    .restart local v6       #st:I
    .restart local v9       #hour:I
    .restart local v15       #mon:I
    .restart local v22       #tzoffset:D
    :pswitch_1
    const-wide/16 v3, 0x0

    .end local v4           #wtbOffset:I
    .end local v22           #tzoffset:D
    .local v3, tzoffset:D
    move-wide v5, v3

    .end local v3           #tzoffset:D
    .end local v6           #st:I
    .restart local v5       #tzoffset:D
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    move v4, v15

    .end local v15           #mon:I
    .local v4, mon:I
    move v2, v9

    .end local v9           #hour:I
    .local v2, hour:I
    goto :goto_a

    .line 1044
    .end local v3           #index:I
    .end local v5           #tzoffset:D
    .local v2, index:I
    .local v4, wtbOffset:I
    .restart local v6       #st:I
    .restart local v9       #hour:I
    .restart local v15       #mon:I
    .restart local v22       #tzoffset:D
    :pswitch_2
    const-wide/16 v3, 0x0

    .end local v4           #wtbOffset:I
    .end local v22           #tzoffset:D
    .local v3, tzoffset:D
    move-wide v5, v3

    .end local v3           #tzoffset:D
    .end local v6           #st:I
    .restart local v5       #tzoffset:D
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    move v4, v15

    .end local v15           #mon:I
    .local v4, mon:I
    move v2, v9

    .end local v9           #hour:I
    .local v2, hour:I
    goto :goto_a

    .line 1045
    .end local v3           #index:I
    .end local v5           #tzoffset:D
    .local v2, index:I
    .local v4, wtbOffset:I
    .restart local v6       #st:I
    .restart local v9       #hour:I
    .restart local v15       #mon:I
    .restart local v22       #tzoffset:D
    :pswitch_3
    const-wide v3, 0x4072c00000000000L

    .end local v4           #wtbOffset:I
    .end local v22           #tzoffset:D
    .local v3, tzoffset:D
    move-wide v5, v3

    .end local v3           #tzoffset:D
    .end local v6           #st:I
    .restart local v5       #tzoffset:D
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    move v4, v15

    .end local v15           #mon:I
    .local v4, mon:I
    move v2, v9

    .end local v9           #hour:I
    .local v2, hour:I
    goto :goto_a

    .line 1046
    .end local v3           #index:I
    .end local v5           #tzoffset:D
    .local v2, index:I
    .local v4, wtbOffset:I
    .restart local v6       #st:I
    .restart local v9       #hour:I
    .restart local v15       #mon:I
    .restart local v22       #tzoffset:D
    :pswitch_4
    const-wide/high16 v3, 0x406e

    .end local v4           #wtbOffset:I
    .end local v22           #tzoffset:D
    .local v3, tzoffset:D
    move-wide v5, v3

    .end local v3           #tzoffset:D
    .end local v6           #st:I
    .restart local v5       #tzoffset:D
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    move v4, v15

    .end local v15           #mon:I
    .local v4, mon:I
    move v2, v9

    .end local v9           #hour:I
    .local v2, hour:I
    goto :goto_a

    .line 1047
    .end local v3           #index:I
    .end local v5           #tzoffset:D
    .local v2, index:I
    .local v4, wtbOffset:I
    .restart local v6       #st:I
    .restart local v9       #hour:I
    .restart local v15       #mon:I
    .restart local v22       #tzoffset:D
    :pswitch_5
    const-wide v3, 0x4076800000000000L

    .end local v4           #wtbOffset:I
    .end local v22           #tzoffset:D
    .local v3, tzoffset:D
    move-wide v5, v3

    .end local v3           #tzoffset:D
    .end local v6           #st:I
    .restart local v5       #tzoffset:D
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    move v4, v15

    .end local v15           #mon:I
    .local v4, mon:I
    move v2, v9

    .end local v9           #hour:I
    .local v2, hour:I
    goto :goto_a

    .line 1048
    .end local v3           #index:I
    .end local v5           #tzoffset:D
    .local v2, index:I
    .local v4, wtbOffset:I
    .restart local v6       #st:I
    .restart local v9       #hour:I
    .restart local v15       #mon:I
    .restart local v22       #tzoffset:D
    :pswitch_6
    const-wide v3, 0x4072c00000000000L

    .end local v4           #wtbOffset:I
    .end local v22           #tzoffset:D
    .local v3, tzoffset:D
    move-wide v5, v3

    .end local v3           #tzoffset:D
    .end local v6           #st:I
    .restart local v5       #tzoffset:D
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    move v4, v15

    .end local v15           #mon:I
    .local v4, mon:I
    move v2, v9

    .end local v9           #hour:I
    .local v2, hour:I
    goto :goto_a

    .line 1049
    .end local v3           #index:I
    .end local v5           #tzoffset:D
    .local v2, index:I
    .local v4, wtbOffset:I
    .restart local v6       #st:I
    .restart local v9       #hour:I
    .restart local v15       #mon:I
    .restart local v22       #tzoffset:D
    :pswitch_7
    const-wide v3, 0x407a400000000000L

    .end local v4           #wtbOffset:I
    .end local v22           #tzoffset:D
    .local v3, tzoffset:D
    move-wide v5, v3

    .end local v3           #tzoffset:D
    .end local v6           #st:I
    .restart local v5       #tzoffset:D
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    move v4, v15

    .end local v15           #mon:I
    .local v4, mon:I
    move v2, v9

    .end local v9           #hour:I
    .local v2, hour:I
    goto/16 :goto_a

    .line 1050
    .end local v3           #index:I
    .end local v5           #tzoffset:D
    .local v2, index:I
    .local v4, wtbOffset:I
    .restart local v6       #st:I
    .restart local v9       #hour:I
    .restart local v15       #mon:I
    .restart local v22       #tzoffset:D
    :pswitch_8
    const-wide v3, 0x4076800000000000L

    .end local v4           #wtbOffset:I
    .end local v22           #tzoffset:D
    .local v3, tzoffset:D
    move-wide v5, v3

    .end local v3           #tzoffset:D
    .end local v6           #st:I
    .restart local v5       #tzoffset:D
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    move v4, v15

    .end local v15           #mon:I
    .local v4, mon:I
    move v2, v9

    .end local v9           #hour:I
    .local v2, hour:I
    goto/16 :goto_a

    .line 1051
    .end local v3           #index:I
    .end local v5           #tzoffset:D
    .local v2, index:I
    .local v4, wtbOffset:I
    .restart local v6       #st:I
    .restart local v9       #hour:I
    .restart local v15       #mon:I
    .restart local v22       #tzoffset:D
    :pswitch_9
    const-wide/high16 v3, 0x407e

    .end local v4           #wtbOffset:I
    .end local v22           #tzoffset:D
    .local v3, tzoffset:D
    move-wide v5, v3

    .end local v3           #tzoffset:D
    .end local v6           #st:I
    .restart local v5       #tzoffset:D
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    move v4, v15

    .end local v15           #mon:I
    .local v4, mon:I
    move v2, v9

    .end local v9           #hour:I
    .local v2, hour:I
    goto/16 :goto_a

    .line 1052
    .end local v3           #index:I
    .end local v5           #tzoffset:D
    .local v2, index:I
    .local v4, wtbOffset:I
    .restart local v6       #st:I
    .restart local v9       #hour:I
    .restart local v15       #mon:I
    .restart local v22       #tzoffset:D
    :pswitch_a
    const-wide v3, 0x407a400000000000L

    .end local v4           #wtbOffset:I
    .end local v22           #tzoffset:D
    .local v3, tzoffset:D
    move-wide v5, v3

    .end local v3           #tzoffset:D
    .end local v6           #st:I
    .restart local v5       #tzoffset:D
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    move v4, v15

    .end local v15           #mon:I
    .local v4, mon:I
    move v2, v9

    .end local v9           #hour:I
    .local v2, hour:I
    goto/16 :goto_a

    .line 1058
    .end local v4           #mon:I
    .end local v5           #tzoffset:D
    .end local v7           #letterCount:I
    .end local v8           #c:C
    .end local v10           #i:I
    .end local v21           #wtbNext:I
    .local v2, c:C
    .local v3, i:I
    .restart local v9       #hour:I
    .restart local v15       #mon:I
    .restart local v22       #tzoffset:D
    :cond_2d
    if-ltz v24, :cond_2e

    if-ltz v15, :cond_2e

    if-gez v13, :cond_2f

    .line 1059
    :cond_2e
    sget-wide v2, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto/16 :goto_0

    .line 1060
    :cond_2f
    if-gez v18, :cond_33

    .line 1061
    const/16 p0, 0x0

    .end local v18           #sec:I
    .local p0, sec:I
    move/from16 v3, p0

    .line 1062
    .end local p0           #sec:I
    .local v3, sec:I
    :goto_b
    if-gez v14, :cond_32

    .line 1063
    const/16 p0, 0x0

    .end local v14           #min:I
    .local p0, min:I
    move/from16 v2, p0

    .line 1064
    .end local p0           #min:I
    .local v2, min:I
    :goto_c
    if-gez v9, :cond_31

    .line 1065
    const/16 p0, 0x0

    .line 1067
    .end local v9           #hour:I
    .local p0, hour:I
    :goto_d
    move/from16 v0, v24

    int-to-double v0, v0

    move-wide v8, v0

    int-to-double v10, v15

    int-to-double v12, v13

    move/from16 v0, p0

    int-to-double v0, v0

    move-wide v14, v0

    move v0, v2

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move v0, v3

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    invoke-static/range {v8 .. v21}, Lorg/mozilla/javascript/NativeDate;->date_msecFromDate(DDDDDDD)D

    .end local v12           #limit:I
    .end local v16           #n:I
    .end local v20           #si:C
    move-result-wide v2

    .line 1068
    .end local v3           #sec:I
    .local v2, msec:D
    const-wide/high16 v4, -0x4010

    cmpl-double p0, v22, v4

    if-nez p0, :cond_30

    .line 1069
    .end local p0           #hour:I
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide v2

    goto/16 :goto_0

    .line 1071
    :cond_30
    const-wide v4, 0x40ed4c0000000000L

    mul-double v4, v4, v22

    add-double/2addr v2, v4

    goto/16 :goto_0

    .local v2, min:I
    .restart local v3       #sec:I
    .restart local v9       #hour:I
    .restart local v12       #limit:I
    .restart local v16       #n:I
    .restart local v20       #si:C
    :cond_31
    move/from16 p0, v9

    .end local v9           #hour:I
    .restart local p0       #hour:I
    goto :goto_d

    .end local p0           #hour:I
    .local v2, c:C
    .restart local v9       #hour:I
    .restart local v14       #min:I
    :cond_32
    move v2, v14

    .end local v14           #min:I
    .local v2, min:I
    goto :goto_c

    .local v2, c:C
    .local v3, i:I
    .restart local v14       #min:I
    .restart local v18       #sec:I
    .local p0, s:Ljava/lang/String;
    :cond_33
    move/from16 v3, v18

    .end local v18           #sec:I
    .local v3, sec:I
    goto :goto_b

    .end local v2           #c:C
    .end local v3           #sec:I
    .local v4, wtbOffset:I
    .restart local v6       #st:I
    .restart local v7       #letterCount:I
    .restart local v8       #c:C
    .restart local v10       #i:I
    .restart local v11       #index:I
    .restart local v18       #sec:I
    .restart local v21       #wtbNext:I
    :cond_34
    move v3, v11

    .end local v11           #index:I
    .local v3, index:I
    move-wide/from16 v5, v22

    .end local v6           #st:I
    .end local v22           #tzoffset:D
    .restart local v5       #tzoffset:D
    move v2, v9

    .end local v9           #hour:I
    .local v2, hour:I
    move v4, v15

    .end local v15           #mon:I
    .local v4, mon:I
    goto/16 :goto_a

    .end local v3           #index:I
    .end local v4           #mon:I
    .end local v5           #tzoffset:D
    .end local v7           #letterCount:I
    .end local v8           #c:C
    .end local v21           #wtbNext:I
    .local v2, c:C
    .restart local v6       #st:I
    .restart local v9       #hour:I
    .restart local v15       #mon:I
    .restart local v22       #tzoffset:D
    :cond_35
    move v8, v2

    .end local v2           #c:C
    .restart local v8       #c:C
    goto/16 :goto_8

    .end local v8           #c:C
    .restart local v2       #c:C
    :cond_36
    move v8, v2

    .end local v2           #c:C
    .restart local v8       #c:C
    goto/16 :goto_8

    .end local v6           #st:I
    .end local v8           #c:C
    .end local v10           #i:I
    .restart local v2       #c:C
    .local v4, i:I
    :cond_37
    move v3, v4

    .end local v4           #i:I
    .local v3, i:I
    goto/16 :goto_1

    .end local v3           #i:I
    .end local v20           #si:C
    .restart local v4       #i:I
    .local v5, si:C
    :cond_38
    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    move/from16 v20, v5

    .end local v5           #si:C
    .restart local v20       #si:C
    goto/16 :goto_1

    .end local v3           #i:I
    .end local v20           #si:C
    .restart local v4       #i:I
    .restart local v5       #si:C
    :cond_39
    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    move/from16 v20, v5

    .end local v5           #si:C
    .restart local v20       #si:C
    goto/16 :goto_1

    .line 1041
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 3
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 74
    new-instance v0, Lorg/mozilla/javascript/NativeDate;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeDate;-><init>()V

    .line 76
    .local v0, obj:Lorg/mozilla/javascript/NativeDate;
    sget-wide v1, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    .line 77
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/NativeDate;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    .line 78
    return-void
.end method

.method private static internalUTC(D)D
    .locals 4
    .parameter "t"

    .prologue
    .line 722
    sget-wide v0, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    sub-double v0, p0, v0

    sget-wide v2, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    sub-double v2, p0, v2

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->DaylightSavingTA(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private static jsConstructor([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "args"

    .prologue
    .line 1145
    new-instance v3, Lorg/mozilla/javascript/NativeDate;

    invoke-direct {v3}, Lorg/mozilla/javascript/NativeDate;-><init>()V

    .line 1149
    .local v3, obj:Lorg/mozilla/javascript/NativeDate;
    array-length v6, p0

    if-nez v6, :cond_0

    .line 1150
    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->now()D

    move-result-wide v6

    iput-wide v6, v3, Lorg/mozilla/javascript/NativeDate;->date:D

    .line 1178
    :goto_0
    return-object v3

    .line 1155
    :cond_0
    array-length v6, p0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 1156
    const/4 v6, 0x0

    aget-object v0, p0, v6

    .line 1157
    .local v0, arg0:Ljava/lang/Object;
    instance-of v6, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v6, :cond_1

    .line 1158
    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    .end local v0           #arg0:Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1160
    .restart local v0       #arg0:Ljava/lang/Object;
    :cond_1
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1162
    check-cast v0, Ljava/lang/String;

    .end local v0           #arg0:Ljava/lang/Object;
    invoke-static {v0}, Lorg/mozilla/javascript/NativeDate;->date_parseString(Ljava/lang/String;)D

    move-result-wide v1

    .line 1167
    .local v1, date:D
    :goto_1
    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v6

    iput-wide v6, v3, Lorg/mozilla/javascript/NativeDate;->date:D

    goto :goto_0

    .line 1165
    .end local v1           #date:D
    .restart local v0       #arg0:Ljava/lang/Object;
    :cond_2
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    .restart local v1       #date:D
    goto :goto_1

    .line 1171
    .end local v0           #arg0:Ljava/lang/Object;
    .end local v1           #date:D
    :cond_3
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->date_msecFromArgs([Ljava/lang/Object;)D

    move-result-wide v4

    .line 1173
    .local v4, time:D
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1174
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v4

    .line 1176
    :cond_4
    iput-wide v4, v3, Lorg/mozilla/javascript/NativeDate;->date:D

    goto :goto_0
.end method

.method private static jsStaticFunction_UTC([Ljava/lang/Object;)D
    .locals 2
    .parameter "args"

    .prologue
    .line 854
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->date_msecFromArgs([Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static js_toUTCString(D)Ljava/lang/String;
    .locals 6
    .parameter "date"

    .prologue
    const/16 v5, 0x3a

    const/16 v4, 0x20

    const/4 v3, 0x2

    .line 1217
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x3c

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1219
    .local v0, result:Ljava/lang/StringBuffer;
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->WeekDay(D)I

    move-result v2

    invoke-static {v0, v2}, Lorg/mozilla/javascript/NativeDate;->appendWeekDayName(Ljava/lang/StringBuffer;I)V

    .line 1220
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1221
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v2

    invoke-static {v0, v2, v3}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    .line 1222
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1223
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v2

    invoke-static {v0, v2}, Lorg/mozilla/javascript/NativeDate;->appendMonthName(Ljava/lang/StringBuffer;I)V

    .line 1224
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1225
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v1

    .line 1226
    .local v1, year:I
    if-gez v1, :cond_0

    .line 1227
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int v1, v1

    .line 1229
    :cond_0
    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    .line 1230
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1231
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result v2

    invoke-static {v0, v2, v3}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    .line 1232
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1233
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v2

    invoke-static {v0, v2, v3}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    .line 1234
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1235
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result v2

    invoke-static {v0, v2, v3}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuffer;II)V

    .line 1236
    const-string v2, " GMT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1237
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static makeDate(D[Ljava/lang/Object;I)D
    .locals 12
    .parameter "date"
    .parameter "args"
    .parameter "methodId"

    .prologue
    .line 1405
    const/4 v0, 0x1

    .line 1406
    .local v0, local:Z
    packed-switch p3, :pswitch_data_0

    .line 1429
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1430
    const/4 p3, 0x0

    .local p3, maxargs:I
    move v6, v0

    .end local v0           #local:Z
    .local v6, local:Z
    move v4, p3

    .line 1434
    .end local p3           #maxargs:I
    .local v4, maxargs:I
    :goto_0
    const/4 p3, 0x3

    new-array p3, p3, [D

    .line 1440
    .local p3, conv:[D
    array-length v0, p2

    if-nez v0, :cond_0

    .line 1441
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->padArguments([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    .line 1443
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_3

    if-ge v0, v4, :cond_3

    .line 1444
    aget-object v1, p2, v0

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    aput-wide v1, p3, v0

    .line 1447
    aget-wide v1, p3, v0

    aget-wide v7, p3, v0

    cmpl-double v1, v1, v7

    if-nez v1, :cond_1

    aget-wide v1, p3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1448
    :cond_1
    sget-wide p0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    .end local p0
    move-wide v9, p0

    move-wide p1, v9

    move p0, v0

    .line 1494
    .end local v0           #i:I
    .end local v4           #maxargs:I
    .end local p2
    .local p0, i:I
    :goto_2
    return-wide p1

    .line 1408
    .end local v6           #local:Z
    .local v0, local:Z
    .local p0, date:D
    .restart local p2
    .local p3, methodId:I
    :pswitch_0
    const/4 p3, 0x0

    .line 1411
    .end local v0           #local:Z
    .local p3, local:Z
    :goto_3
    const/4 v0, 0x1

    .local v0, maxargs:I
    move v6, p3

    .end local p3           #local:Z
    .restart local v6       #local:Z
    move v4, v0

    .line 1412
    .end local v0           #maxargs:I
    .restart local v4       #maxargs:I
    goto :goto_0

    .line 1415
    .end local v4           #maxargs:I
    .end local v6           #local:Z
    .local v0, local:Z
    .local p3, methodId:I
    :pswitch_1
    const/4 p3, 0x0

    .line 1418
    .end local v0           #local:Z
    .local p3, local:Z
    :goto_4
    const/4 v0, 0x2

    .local v0, maxargs:I
    move v6, p3

    .end local p3           #local:Z
    .restart local v6       #local:Z
    move v4, v0

    .line 1419
    .end local v0           #maxargs:I
    .restart local v4       #maxargs:I
    goto :goto_0

    .line 1422
    .end local v4           #maxargs:I
    .end local v6           #local:Z
    .local v0, local:Z
    .local p3, methodId:I
    :pswitch_2
    const/4 p3, 0x0

    .line 1425
    .end local v0           #local:Z
    .local p3, local:Z
    :goto_5
    const/4 v0, 0x3

    .local v0, maxargs:I
    move v6, p3

    .end local p3           #local:Z
    .restart local v6       #local:Z
    move v4, v0

    .line 1426
    .end local v0           #maxargs:I
    .restart local v4       #maxargs:I
    goto :goto_0

    .line 1450
    .local v0, i:I
    .local p3, conv:[D
    :cond_2
    aget-wide v1, p3, v0

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(D)D

    move-result-wide v1

    aput-wide v1, p3, v0

    .line 1443
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1455
    :cond_3
    cmpl-double v1, p0, p0

    if-eqz v1, :cond_6

    .line 1456
    array-length p0, p2

    .end local p0           #date:D
    const/4 p1, 0x3

    if-ge p0, p1, :cond_4

    .line 1457
    sget-wide p0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    move-wide v9, p0

    move-wide p1, v9

    move p0, v0

    .end local v0           #i:I
    .local p0, i:I
    goto :goto_2

    .line 1459
    .end local p0           #i:I
    .restart local v0       #i:I
    :cond_4
    const-wide/16 p0, 0x0

    .local p0, lorutime:D
    move-wide v7, p0

    .line 1468
    .end local p0           #lorutime:D
    .local v7, lorutime:D
    :goto_6
    const/4 p0, 0x0

    .line 1469
    .end local v0           #i:I
    .local p0, i:I
    array-length p2, p2

    .line 1471
    .local p2, stop:I
    const/4 p1, 0x3

    if-lt v4, p1, :cond_8

    if-ge p0, p2, :cond_8

    .line 1472
    add-int/lit8 p1, p0, 0x1

    .end local p0           #i:I
    .local p1, i:I
    aget-wide v0, p3, p0

    .line 1476
    .local v0, year:D
    :goto_7
    const/4 p0, 0x2

    if-lt v4, p0, :cond_9

    if-ge p1, p2, :cond_9

    .line 1477
    add-int/lit8 p0, p1, 0x1

    .end local p1           #i:I
    .restart local p0       #i:I
    aget-wide v2, p3, p1

    .local v2, month:D
    move p1, p0

    .line 1481
    .end local p0           #i:I
    .restart local p1       #i:I
    :goto_8
    const/4 p0, 0x1

    if-lt v4, p0, :cond_a

    if-ge p1, p2, :cond_a

    .line 1482
    add-int/lit8 p0, p1, 0x1

    .end local p1           #i:I
    .restart local p0       #i:I
    aget-wide v4, p3, p1

    .local v4, day:D
    move p2, p0

    .line 1486
    .end local p0           #i:I
    .local p2, i:I
    :goto_9
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v4

    .line 1487
    invoke-static {v7, v8}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide p0

    invoke-static {v4, v5, p0, p1}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p0

    .line 1489
    .local p0, result:D
    if-eqz v6, :cond_5

    .line 1490
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide p0

    .line 1492
    :cond_5
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide p0

    .local p0, date:D
    move v9, p2

    .end local p2           #i:I
    .local v9, i:I
    move-wide v10, p0

    move-wide p1, v10

    move p0, v9

    .line 1494
    .end local v9           #i:I
    .local p0, i:I
    goto :goto_2

    .line 1462
    .end local v2           #month:D
    .end local v7           #lorutime:D
    .local v0, i:I
    .local v4, maxargs:I
    .local p0, date:D
    .local p2, args:[Ljava/lang/Object;
    :cond_6
    if-eqz v6, :cond_7

    .line 1463
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide p0

    .local p0, lorutime:D
    move-wide v7, p0

    .end local p0           #lorutime:D
    .restart local v7       #lorutime:D
    goto :goto_6

    .line 1465
    .end local v7           #lorutime:D
    .local p0, date:D
    :cond_7
    move-wide p0, p0

    .local p0, lorutime:D
    move-wide v7, p0

    .end local p0           #lorutime:D
    .restart local v7       #lorutime:D
    goto :goto_6

    .line 1474
    .end local v0           #i:I
    .local p0, i:I
    .local p2, stop:I
    :cond_8
    invoke-static {v7, v8}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result p1

    int-to-double v0, p1

    .local v0, year:D
    move p1, p0

    .end local p0           #i:I
    .restart local p1       #i:I
    goto :goto_7

    .line 1479
    :cond_9
    invoke-static {v7, v8}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result p0

    int-to-double v2, p0

    .restart local v2       #month:D
    goto :goto_8

    .line 1484
    :cond_a
    invoke-static {v7, v8}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result p0

    int-to-double v4, p0

    .local v4, day:D
    move p2, p1

    .end local p1           #i:I
    .local p2, i:I
    goto :goto_9

    .end local v2           #month:D
    .end local v4           #day:D
    .end local v6           #local:Z
    .end local v7           #lorutime:D
    .local v0, local:Z
    .local p0, date:D
    .local p2, args:[Ljava/lang/Object;
    .local p3, methodId:I
    :pswitch_3
    move p3, v0

    .end local v0           #local:Z
    .local p3, local:Z
    goto/16 :goto_3

    .restart local v0       #local:Z
    .local p3, methodId:I
    :pswitch_4
    move p3, v0

    .end local v0           #local:Z
    .local p3, local:Z
    goto/16 :goto_4

    .restart local v0       #local:Z
    .local p3, methodId:I
    :pswitch_5
    move p3, v0

    .end local v0           #local:Z
    .local p3, local:Z
    goto :goto_5

    .line 1406
    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private static makeTime(D[Ljava/lang/Object;I)D
    .locals 11
    .parameter "date"
    .parameter "args"
    .parameter "methodId"

    .prologue
    .line 1296
    const/4 v0, 0x1

    .line 1297
    .local v0, local:Z
    packed-switch p3, :pswitch_data_0

    .line 1327
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1328
    const/4 p3, 0x0

    .local p3, maxargs:I
    move v8, v0

    .end local v0           #local:Z
    .local v8, local:Z
    move v6, p3

    .line 1332
    .end local p3           #maxargs:I
    .local v6, maxargs:I
    :goto_0
    const/4 p3, 0x4

    new-array p3, p3, [D

    .line 1340
    .local p3, conv:[D
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    .line 1399
    .end local v6           #maxargs:I
    .end local p0
    :goto_1
    return-wide p0

    .line 1299
    .end local v8           #local:Z
    .restart local v0       #local:Z
    .restart local p0
    .local p3, methodId:I
    :pswitch_0
    const/4 p3, 0x0

    .line 1302
    .end local v0           #local:Z
    .local p3, local:Z
    :goto_2
    const/4 v0, 0x1

    .local v0, maxargs:I
    move v8, p3

    .end local p3           #local:Z
    .restart local v8       #local:Z
    move v6, v0

    .line 1303
    .end local v0           #maxargs:I
    .restart local v6       #maxargs:I
    goto :goto_0

    .line 1306
    .end local v6           #maxargs:I
    .end local v8           #local:Z
    .local v0, local:Z
    .local p3, methodId:I
    :pswitch_1
    const/4 p3, 0x0

    .line 1309
    .end local v0           #local:Z
    .local p3, local:Z
    :goto_3
    const/4 v0, 0x2

    .local v0, maxargs:I
    move v8, p3

    .end local p3           #local:Z
    .restart local v8       #local:Z
    move v6, v0

    .line 1310
    .end local v0           #maxargs:I
    .restart local v6       #maxargs:I
    goto :goto_0

    .line 1313
    .end local v6           #maxargs:I
    .end local v8           #local:Z
    .local v0, local:Z
    .local p3, methodId:I
    :pswitch_2
    const/4 p3, 0x0

    .line 1316
    .end local v0           #local:Z
    .local p3, local:Z
    :goto_4
    const/4 v0, 0x3

    .local v0, maxargs:I
    move v8, p3

    .end local p3           #local:Z
    .restart local v8       #local:Z
    move v6, v0

    .line 1317
    .end local v0           #maxargs:I
    .restart local v6       #maxargs:I
    goto :goto_0

    .line 1320
    .end local v6           #maxargs:I
    .end local v8           #local:Z
    .local v0, local:Z
    .local p3, methodId:I
    :pswitch_3
    const/4 p3, 0x0

    .line 1323
    .end local v0           #local:Z
    .local p3, local:Z
    :goto_5
    const/4 v0, 0x4

    .local v0, maxargs:I
    move v8, p3

    .end local p3           #local:Z
    .restart local v8       #local:Z
    move v6, v0

    .line 1324
    .end local v0           #maxargs:I
    .restart local v6       #maxargs:I
    goto :goto_0

    .line 1351
    .local p3, conv:[D
    :cond_0
    array-length v0, p2

    if-nez v0, :cond_1

    .line 1352
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->padArguments([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    .line 1354
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_4

    if-ge v0, v6, :cond_4

    .line 1355
    aget-object v1, p2, v0

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    aput-wide v1, p3, v0

    .line 1358
    aget-wide v1, p3, v0

    aget-wide v3, p3, v0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    aget-wide v1, p3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1359
    :cond_2
    sget-wide p0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    goto :goto_1

    .line 1361
    :cond_3
    aget-wide v1, p3, v0

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(D)D

    move-result-wide v1

    aput-wide v1, p3, v0

    .line 1354
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1364
    :cond_4
    if-eqz v8, :cond_6

    .line 1365
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide p0

    .local p0, lorutime:D
    move-wide v9, p0

    .line 1369
    .end local p0           #lorutime:D
    .local v9, lorutime:D
    :goto_7
    const/4 p0, 0x0

    .line 1370
    .end local v0           #i:I
    .local p0, i:I
    array-length v7, p2

    .line 1372
    .local v7, stop:I
    const/4 p1, 0x4

    if-lt v6, p1, :cond_7

    if-ge p0, v7, :cond_7

    .line 1373
    add-int/lit8 p1, p0, 0x1

    .end local p0           #i:I
    .local p1, i:I
    aget-wide v0, p3, p0

    .line 1377
    .local v0, hour:D
    :goto_8
    const/4 p0, 0x3

    if-lt v6, p0, :cond_8

    if-ge p1, v7, :cond_8

    .line 1378
    add-int/lit8 p0, p1, 0x1

    .end local p1           #i:I
    .restart local p0       #i:I
    aget-wide v2, p3, p1

    .local v2, min:D
    move p1, p0

    .line 1382
    .end local p0           #i:I
    .restart local p1       #i:I
    :goto_9
    const/4 p0, 0x2

    if-lt v6, p0, :cond_9

    if-ge p1, v7, :cond_9

    .line 1383
    add-int/lit8 p0, p1, 0x1

    .end local p1           #i:I
    .restart local p0       #i:I
    aget-wide v4, p3, p1

    .local v4, sec:D
    move p1, p0

    .line 1387
    .end local p0           #i:I
    .restart local p1       #i:I
    :goto_a
    const/4 p0, 0x1

    if-lt v6, p0, :cond_a

    if-ge p1, v7, :cond_a

    .line 1388
    add-int/lit8 p0, p1, 0x1

    .end local p1           #i:I
    .restart local p0       #i:I
    aget-wide v6, p3, p1

    .line 1392
    .end local v7           #stop:I
    .local v6, msec:D
    :goto_b
    invoke-static/range {v0 .. v7}, Lorg/mozilla/javascript/NativeDate;->MakeTime(DDDD)D

    move-result-wide p0

    .line 1393
    .local p0, time:D
    invoke-static {v9, v10}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide v0

    .end local v0           #hour:D
    invoke-static {v0, v1, p0, p1}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p0

    .line 1395
    .local p0, result:D
    if-eqz v8, :cond_5

    .line 1396
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide p0

    .line 1397
    :cond_5
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide p0

    .line 1399
    .local p0, date:D
    goto/16 :goto_1

    .line 1367
    .end local v2           #min:D
    .end local v4           #sec:D
    .end local v9           #lorutime:D
    .local v0, i:I
    .local v6, maxargs:I
    :cond_6
    move-wide p0, p0

    .local p0, lorutime:D
    move-wide v9, p0

    .end local p0           #lorutime:D
    .restart local v9       #lorutime:D
    goto :goto_7

    .line 1375
    .end local v0           #i:I
    .restart local v7       #stop:I
    .local p0, i:I
    :cond_7
    invoke-static {v9, v10}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result p1

    int-to-double v0, p1

    .local v0, hour:D
    move p1, p0

    .end local p0           #i:I
    .restart local p1       #i:I
    goto :goto_8

    .line 1380
    :cond_8
    invoke-static {v9, v10}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result p0

    int-to-double v2, p0

    .restart local v2       #min:D
    goto :goto_9

    .line 1385
    :cond_9
    invoke-static {v9, v10}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result p0

    int-to-double v4, p0

    .restart local v4       #sec:D
    goto :goto_a

    .line 1390
    :cond_a
    invoke-static {v9, v10}, Lorg/mozilla/javascript/NativeDate;->msFromTime(D)I

    move-result p0

    int-to-double v6, p0

    .end local v7           #stop:I
    .local v6, msec:D
    move p0, p1

    .end local p1           #i:I
    .restart local p0       #i:I
    goto :goto_b

    .end local v2           #min:D
    .end local v4           #sec:D
    .end local v6           #msec:D
    .end local v8           #local:Z
    .end local v9           #lorutime:D
    .local v0, local:Z
    .local p0, date:D
    .local p3, methodId:I
    :pswitch_4
    move p3, v0

    .end local v0           #local:Z
    .local p3, local:Z
    goto/16 :goto_2

    .restart local v0       #local:Z
    .local p3, methodId:I
    :pswitch_5
    move p3, v0

    .end local v0           #local:Z
    .local p3, local:Z
    goto/16 :goto_3

    .restart local v0       #local:Z
    .local p3, methodId:I
    :pswitch_6
    move p3, v0

    .end local v0           #local:Z
    .local p3, local:Z
    goto/16 :goto_4

    .restart local v0       #local:Z
    .local p3, methodId:I
    :pswitch_7
    move p3, v0

    .end local v0           #local:Z
    .local p3, local:Z
    goto/16 :goto_5

    .line 1297
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_3
    .end packed-switch
.end method

.method private static msFromTime(D)I
    .locals 6
    .parameter "t"

    .prologue
    const-wide v4, 0x408f400000000000L

    .line 755
    rem-double v0, p0, v4

    .line 756
    .local v0, result:D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 757
    add-double/2addr v0, v4

    .line 758
    :cond_0
    double-to-int v2, v0

    return v2
.end method

.method private static now()D
    .locals 2

    .prologue
    .line 620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method private toISOString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 428
    iget-wide v1, p0, Lorg/mozilla/javascript/NativeDate;->date:D

    iget-wide v3, p0, Lorg/mozilla/javascript/NativeDate;->date:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 429
    sget-object v1, Lorg/mozilla/javascript/NativeDate;->isoFormat:Ljava/text/DateFormat;

    monitor-enter v1

    .line 430
    :try_start_0
    sget-object v2, Lorg/mozilla/javascript/NativeDate;->isoFormat:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lorg/mozilla/javascript/NativeDate;->date:D

    double-to-long v4, v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 431
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 433
    :cond_0
    const-string v1, "msg.invalid.date"

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, msg:Ljava/lang/String;
    const-string v1, "RangeError"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    throw v1
.end method

.method private static toLocale_helper(DI)Ljava/lang/String;
    .locals 4
    .parameter "t"
    .parameter "methodId"

    .prologue
    const/4 v2, 0x1

    .line 1184
    packed-switch p2, :pswitch_data_0

    .line 1207
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1186
    :pswitch_0
    sget-object v1, Lorg/mozilla/javascript/NativeDate;->localeDateTimeFormatter:Ljava/text/DateFormat;

    if-nez v1, :cond_0

    .line 1187
    invoke-static {v2, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lorg/mozilla/javascript/NativeDate;->localeDateTimeFormatter:Ljava/text/DateFormat;

    .line 1191
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->localeDateTimeFormatter:Ljava/text/DateFormat;

    .line 1210
    .local v0, formatter:Ljava/text/DateFormat;
    :goto_0
    monitor-enter v0

    .line 1211
    :try_start_0
    new-instance v1, Ljava/util/Date;

    double-to-long v2, p0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1194
    .end local v0           #formatter:Ljava/text/DateFormat;
    :pswitch_1
    sget-object v1, Lorg/mozilla/javascript/NativeDate;->localeTimeFormatter:Ljava/text/DateFormat;

    if-nez v1, :cond_1

    .line 1195
    invoke-static {v2}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lorg/mozilla/javascript/NativeDate;->localeTimeFormatter:Ljava/text/DateFormat;

    .line 1198
    :cond_1
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->localeTimeFormatter:Ljava/text/DateFormat;

    .line 1199
    .restart local v0       #formatter:Ljava/text/DateFormat;
    goto :goto_0

    .line 1201
    .end local v0           #formatter:Ljava/text/DateFormat;
    :pswitch_2
    sget-object v1, Lorg/mozilla/javascript/NativeDate;->localeDateFormatter:Ljava/text/DateFormat;

    if-nez v1, :cond_2

    .line 1202
    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lorg/mozilla/javascript/NativeDate;->localeDateFormatter:Ljava/text/DateFormat;

    .line 1205
    :cond_2
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->localeDateFormatter:Ljava/text/DateFormat;

    .line 1206
    .restart local v0       #formatter:Ljava/text/DateFormat;
    goto :goto_0

    .line 1212
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1184
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 183
    sget-object v7, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 184
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 420
    .end local p4
    :goto_0
    return-object v7

    .line 186
    .restart local p4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v16

    .line 187
    .local v16, id:I
    sparse-switch v16, :sswitch_data_0

    .line 250
    move-object/from16 v0, p4

    instance-of v0, v0, Lorg/mozilla/javascript/NativeDate;

    move v7, v0

    if-nez v7, :cond_8

    .line 251
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/NativeDate;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v7

    throw v7

    .line 189
    :sswitch_0
    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->now()D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto :goto_0

    .line 193
    :sswitch_1
    const/4 v7, 0x0

    move-object/from16 v0, p5

    move v1, v7

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v13

    .line 194
    .local v13, dataStr:Ljava/lang/String;
    invoke-static {v13}, Lorg/mozilla/javascript/NativeDate;->date_parseString(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto :goto_0

    .line 198
    .end local v13           #dataStr:Ljava/lang/String;
    :sswitch_2
    invoke-static/range {p5 .. p5}, Lorg/mozilla/javascript/NativeDate;->jsStaticFunction_UTC([Ljava/lang/Object;)D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto :goto_0

    .line 204
    :sswitch_3
    if-eqz p4, :cond_1

    .line 205
    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->now()D

    move-result-wide v7

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Lorg/mozilla/javascript/NativeDate;->date_format(DI)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 206
    :cond_1
    invoke-static/range {p5 .. p5}, Lorg/mozilla/javascript/NativeDate;->jsConstructor([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 211
    :sswitch_4
    move-object/from16 v0, p4

    instance-of v0, v0, Lorg/mozilla/javascript/NativeDate;

    move v7, v0

    if-eqz v7, :cond_2

    .line 212
    check-cast p4, Lorg/mozilla/javascript/NativeDate;

    .end local p4
    invoke-direct/range {p4 .. p4}, Lorg/mozilla/javascript/NativeDate;->toISOString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 215
    .restart local p4
    :cond_2
    const-string v23, "toISOString"

    .line 217
    .local v23, toISOString:Ljava/lang/String;
    invoke-static/range {p2 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v17

    .line 218
    .local v17, o:Lorg/mozilla/javascript/Scriptable;
    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toPrimitive(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v24

    .line 219
    .local v24, tv:Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/Number;

    move v7, v0

    if-eqz v7, :cond_4

    .line 220
    check-cast v24, Ljava/lang/Number;

    .end local v24           #tv:Ljava/lang/Object;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    .line 221
    .local v11, d:D
    cmpl-double v7, v11, v11

    if-nez v7, :cond_3

    invoke-static {v11, v12}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 222
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 225
    .end local v11           #d:D
    :cond_4
    const-string v7, "toISOString"

    move-object/from16 v0, v17

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v22

    .line 226
    .local v22, toISO:Ljava/lang/Object;
    sget-object v7, Lorg/mozilla/javascript/NativeDate;->NOT_FOUND:Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object v1, v7

    if-ne v0, v1, :cond_5

    .line 227
    const-string v7, "msg.function.not.found.in"

    const-string v8, "toISOString"

    invoke-static/range {v17 .. v17}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v7

    throw v7

    .line 231
    :cond_5
    move-object/from16 v0, v22

    instance-of v0, v0, Lorg/mozilla/javascript/Callable;

    move v7, v0

    if-nez v7, :cond_6

    .line 232
    const-string v7, "msg.isnt.function.in"

    const-string v8, "toISOString"

    invoke-static/range {v17 .. v17}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v22 .. v22}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->typeError3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v7

    throw v7

    .line 237
    :cond_6
    check-cast v22, Lorg/mozilla/javascript/Callable;

    .end local v22           #toISO:Ljava/lang/Object;
    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    move-object v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 239
    .local v19, result:Ljava/lang/Object;
    invoke-static/range {v19 .. v19}, Lorg/mozilla/javascript/ScriptRuntime;->isPrimitive(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 240
    const-string v7, "msg.toisostring.must.return.primitive"

    invoke-static/range {v19 .. v19}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v7

    throw v7

    :cond_7
    move-object/from16 v7, v19

    .line 243
    goto/16 :goto_0

    .line 252
    .end local v17           #o:Lorg/mozilla/javascript/Scriptable;
    .end local v19           #result:Ljava/lang/Object;
    .end local v23           #toISOString:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p4

    check-cast v0, Lorg/mozilla/javascript/NativeDate;

    move-object/from16 v18, v0

    .line 253
    .local v18, realThis:Lorg/mozilla/javascript/NativeDate;
    move-object/from16 v0, v18

    iget-wide v0, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    move-wide/from16 v20, v0

    .line 255
    .local v20, t:D
    packed-switch v16, :pswitch_data_0

    .line 422
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 260
    :pswitch_0
    cmpl-double v7, v20, v20

    if-nez v7, :cond_9

    .line 261
    move-wide/from16 v0, v20

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->date_format(DI)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 263
    :cond_9
    const-string v7, "Invalid Date"

    goto/16 :goto_0

    .line 268
    :pswitch_1
    cmpl-double v7, v20, v20

    if-nez v7, :cond_a

    .line 269
    move-wide/from16 v0, v20

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->toLocale_helper(DI)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 271
    :cond_a
    const-string v7, "Invalid Date"

    goto/16 :goto_0

    .line 274
    :pswitch_2
    cmpl-double v7, v20, v20

    if-nez v7, :cond_b

    .line 275
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->js_toUTCString(D)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 277
    :cond_b
    const-string v7, "Invalid Date"

    goto/16 :goto_0

    .line 280
    :pswitch_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(new Date("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "))"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 284
    :pswitch_4
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto/16 :goto_0

    .line 289
    :pswitch_5
    cmpl-double v7, v20, v20

    if-nez v7, :cond_d

    .line 290
    const/16 v7, 0xe

    move/from16 v0, v16

    move v1, v7

    if-eq v0, v1, :cond_c

    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v20

    .line 291
    :cond_c
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v7

    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 292
    const/16 v7, 0xc

    move/from16 v0, v16

    move v1, v7

    if-ne v0, v1, :cond_d

    .line 293
    const/4 v7, 0x1

    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 294
    const-wide v7, 0x409db00000000000L

    cmpg-double v7, v7, v20

    if-gtz v7, :cond_d

    const-wide v7, 0x409f400000000000L

    cmpg-double v7, v20, v7

    if-gez v7, :cond_d

    .line 295
    const-wide v7, 0x409db00000000000L

    sub-double v20, v20, v7

    .line 302
    :cond_d
    :goto_1
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto/16 :goto_0

    .line 298
    :cond_e
    const-wide v7, 0x409db00000000000L

    sub-double v20, v20, v7

    goto :goto_1

    .line 306
    :pswitch_6
    cmpl-double v7, v20, v20

    if-nez v7, :cond_10

    .line 307
    const/16 v7, 0xf

    move/from16 v0, v16

    move v1, v7

    if-ne v0, v1, :cond_f

    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v20

    .line 308
    :cond_f
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v7

    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 310
    :cond_10
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto/16 :goto_0

    .line 314
    :pswitch_7
    cmpl-double v7, v20, v20

    if-nez v7, :cond_12

    .line 315
    const/16 v7, 0x11

    move/from16 v0, v16

    move v1, v7

    if-ne v0, v1, :cond_11

    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v20

    .line 316
    :cond_11
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v7

    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 318
    :cond_12
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto/16 :goto_0

    .line 322
    :pswitch_8
    cmpl-double v7, v20, v20

    if-nez v7, :cond_14

    .line 323
    const/16 v7, 0x13

    move/from16 v0, v16

    move v1, v7

    if-ne v0, v1, :cond_13

    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v20

    .line 324
    :cond_13
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->WeekDay(D)I

    move-result v7

    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 326
    :cond_14
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto/16 :goto_0

    .line 330
    :pswitch_9
    cmpl-double v7, v20, v20

    if-nez v7, :cond_16

    .line 331
    const/16 v7, 0x15

    move/from16 v0, v16

    move v1, v7

    if-ne v0, v1, :cond_15

    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v20

    .line 332
    :cond_15
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result v7

    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 334
    :cond_16
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto/16 :goto_0

    .line 338
    :pswitch_a
    cmpl-double v7, v20, v20

    if-nez v7, :cond_18

    .line 339
    const/16 v7, 0x17

    move/from16 v0, v16

    move v1, v7

    if-ne v0, v1, :cond_17

    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v20

    .line 340
    :cond_17
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v7

    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 342
    :cond_18
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto/16 :goto_0

    .line 346
    :pswitch_b
    cmpl-double v7, v20, v20

    if-nez v7, :cond_1a

    .line 347
    const/16 v7, 0x19

    move/from16 v0, v16

    move v1, v7

    if-ne v0, v1, :cond_19

    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v20

    .line 348
    :cond_19
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result v7

    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 350
    :cond_1a
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto/16 :goto_0

    .line 354
    :pswitch_c
    cmpl-double v7, v20, v20

    if-nez v7, :cond_1c

    .line 355
    const/16 v7, 0x1b

    move/from16 v0, v16

    move v1, v7

    if-ne v0, v1, :cond_1b

    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v20

    .line 356
    :cond_1b
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->msFromTime(D)I

    move-result v7

    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 358
    :cond_1c
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto/16 :goto_0

    .line 361
    :pswitch_d
    cmpl-double v7, v20, v20

    if-nez v7, :cond_1d

    .line 362
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v7

    sub-double v7, v20, v7

    const-wide v9, 0x40ed4c0000000000L

    div-double v20, v7, v9

    .line 364
    :cond_1d
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto/16 :goto_0

    .line 367
    :pswitch_e
    const/4 v7, 0x0

    move-object/from16 v0, p5

    move v1, v7

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v20

    .line 368
    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lorg/mozilla/javascript/NativeDate;->date:D

    .line 369
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto/16 :goto_0

    .line 379
    :pswitch_f
    move-wide/from16 v0, v20

    move-object/from16 v2, p5

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeDate;->makeTime(D[Ljava/lang/Object;I)D

    move-result-wide v20

    .line 380
    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lorg/mozilla/javascript/NativeDate;->date:D

    .line 381
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto/16 :goto_0

    .line 389
    :pswitch_10
    move-wide/from16 v0, v20

    move-object/from16 v2, p5

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeDate;->makeDate(D[Ljava/lang/Object;I)D

    move-result-wide v20

    .line 390
    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lorg/mozilla/javascript/NativeDate;->date:D

    .line 391
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto/16 :goto_0

    .line 395
    :pswitch_11
    const/4 v7, 0x0

    move-object/from16 v0, p5

    move v1, v7

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v5

    .line 397
    .local v5, year:D
    cmpl-double v7, v5, v5

    if-nez v7, :cond_1e

    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 398
    :cond_1e
    sget-wide v20, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    .line 416
    :goto_2
    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lorg/mozilla/javascript/NativeDate;->date:D

    .line 417
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v7

    goto/16 :goto_0

    .line 400
    :cond_1f
    cmpl-double v7, v20, v20

    if-eqz v7, :cond_21

    .line 401
    const-wide/16 v20, 0x0

    .line 406
    :goto_3
    const-wide/16 v7, 0x0

    cmpl-double v7, v5, v7

    if-ltz v7, :cond_20

    const-wide v7, 0x4058c00000000000L

    cmpg-double v7, v5, v7

    if-gtz v7, :cond_20

    .line 407
    const-wide v7, 0x409db00000000000L

    add-double/2addr v5, v7

    .line 409
    :cond_20
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v7

    int-to-double v7, v7

    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v9

    int-to-double v9, v9

    invoke-static/range {v5 .. v10}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v14

    .line 411
    .local v14, day:D
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide v7

    invoke-static {v14, v15, v7, v8}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide v20

    .line 412
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide v20

    .line 413
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v20

    goto :goto_2

    .line 403
    .end local v14           #day:D
    :cond_21
    invoke-static/range {v20 .. v21}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v20

    goto :goto_3

    .line 420
    .end local v5           #year:D
    :pswitch_12
    invoke-direct/range {v18 .. v18}, Lorg/mozilla/javascript/NativeDate;->toISOString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 187
    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2f -> :sswitch_4
    .end sparse-switch

    .line 255
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 7
    .parameter "ctor"

    .prologue
    const/4 v6, 0x1

    .line 112
    sget-object v2, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    const/4 v3, -0x3

    const-string v4, "now"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeDate;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 114
    sget-object v2, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    const/4 v3, -0x2

    const-string v4, "parse"

    move-object v0, p0

    move-object v1, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeDate;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 116
    sget-object v2, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    const/4 v3, -0x1

    const-string v4, "UTC"

    move-object v0, p0

    move-object v1, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeDate;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 118
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    .line 119
    return-void
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 9
    .parameter "s"

    .prologue
    const/4 v8, 0x3

    const/16 v7, 0x74

    const/16 v6, 0x73

    const/16 v5, 0x67

    const/4 v4, 0x0

    .line 1504
    const/4 v2, 0x0

    .local v2, id:I
    const/4 v0, 0x0

    .line 1505
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1613
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 1617
    :cond_1
    return v2

    .line 1506
    :pswitch_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1507
    .local v1, c:I
    if-ne v1, v5, :cond_2

    const-string v0, "getDay"

    const/16 v2, 0x13

    goto :goto_0

    .line 1508
    :cond_2
    if-ne v1, v7, :cond_0

    const-string v0, "toJSON"

    const/16 v2, 0x2f

    goto :goto_0

    .line 1510
    .end local v1           #c:I
    :pswitch_2
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 1511
    :sswitch_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1512
    .restart local v1       #c:I
    if-ne v1, v5, :cond_3

    const-string v0, "getDate"

    const/16 v2, 0x11

    goto :goto_0

    .line 1513
    :cond_3
    if-ne v1, v6, :cond_0

    const-string v0, "setDate"

    const/16 v2, 0x27

    goto :goto_0

    .line 1515
    .end local v1           #c:I
    :sswitch_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1516
    .restart local v1       #c:I
    if-ne v1, v5, :cond_4

    const-string v0, "getTime"

    const/16 v2, 0xb

    goto :goto_0

    .line 1517
    :cond_4
    if-ne v1, v6, :cond_0

    const-string v0, "setTime"

    const/16 v2, 0x1e

    goto :goto_0

    .line 1519
    .end local v1           #c:I
    :sswitch_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1520
    .restart local v1       #c:I
    if-ne v1, v5, :cond_5

    const-string v0, "getYear"

    const/16 v2, 0xc

    goto :goto_0

    .line 1521
    :cond_5
    if-ne v1, v6, :cond_0

    const-string v0, "setYear"

    const/16 v2, 0x2d

    goto :goto_0

    .line 1523
    .end local v1           #c:I
    :sswitch_3
    const-string v0, "valueOf"

    const/16 v2, 0xa

    goto :goto_0

    .line 1525
    :pswitch_3
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto :goto_0

    .line 1526
    :sswitch_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1527
    .restart local v1       #c:I
    if-ne v1, v5, :cond_6

    const-string v0, "getHours"

    const/16 v2, 0x15

    goto :goto_0

    .line 1528
    :cond_6
    if-ne v1, v6, :cond_0

    const-string v0, "setHours"

    const/16 v2, 0x25

    goto :goto_0

    .line 1530
    .end local v1           #c:I
    :sswitch_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1531
    .restart local v1       #c:I
    if-ne v1, v5, :cond_7

    const-string v0, "getMonth"

    const/16 v2, 0xf

    goto/16 :goto_0

    .line 1532
    :cond_7
    if-ne v1, v6, :cond_0

    const-string v0, "setMonth"

    const/16 v2, 0x29

    goto/16 :goto_0

    .line 1534
    .end local v1           #c:I
    :sswitch_6
    const-string v0, "toSource"

    const/16 v2, 0x9

    goto/16 :goto_0

    .line 1535
    :sswitch_7
    const-string v0, "toString"

    const/4 v2, 0x2

    goto/16 :goto_0

    .line 1537
    :pswitch_4
    const-string v0, "getUTCDay"

    const/16 v2, 0x14

    goto/16 :goto_0

    .line 1538
    :pswitch_5
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1539
    .restart local v1       #c:I
    const/16 v3, 0x4d

    if-ne v1, v3, :cond_9

    .line 1540
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1541
    if-ne v1, v5, :cond_8

    const-string v0, "getMinutes"

    const/16 v2, 0x17

    goto/16 :goto_0

    .line 1542
    :cond_8
    if-ne v1, v6, :cond_0

    const-string v0, "setMinutes"

    const/16 v2, 0x23

    goto/16 :goto_0

    .line 1544
    :cond_9
    const/16 v3, 0x53

    if-ne v1, v3, :cond_b

    .line 1545
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1546
    if-ne v1, v5, :cond_a

    const-string v0, "getSeconds"

    const/16 v2, 0x19

    goto/16 :goto_0

    .line 1547
    :cond_a
    if-ne v1, v6, :cond_0

    const-string v0, "setSeconds"

    const/16 v2, 0x21

    goto/16 :goto_0

    .line 1549
    :cond_b
    const/16 v3, 0x55

    if-ne v1, v3, :cond_0

    .line 1550
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1551
    if-ne v1, v5, :cond_c

    const-string v0, "getUTCDate"

    const/16 v2, 0x12

    goto/16 :goto_0

    .line 1552
    :cond_c
    if-ne v1, v6, :cond_0

    const-string v0, "setUTCDate"

    const/16 v2, 0x28

    goto/16 :goto_0

    .line 1555
    .end local v1           #c:I
    :pswitch_6
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_2

    goto/16 :goto_0

    .line 1556
    :sswitch_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1557
    .restart local v1       #c:I
    if-ne v1, v5, :cond_d

    const-string v0, "getFullYear"

    const/16 v2, 0xd

    goto/16 :goto_0

    .line 1558
    :cond_d
    if-ne v1, v6, :cond_0

    const-string v0, "setFullYear"

    const/16 v2, 0x2b

    goto/16 :goto_0

    .line 1560
    .end local v1           #c:I
    :sswitch_9
    const-string v0, "toGMTString"

    const/16 v2, 0x8

    goto/16 :goto_0

    .line 1561
    :sswitch_a
    const-string v0, "toISOString"

    const/16 v2, 0x2e

    goto/16 :goto_0

    .line 1562
    :sswitch_b
    const-string v0, "toUTCString"

    const/16 v2, 0x8

    goto/16 :goto_0

    .line 1563
    :sswitch_c
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1564
    .restart local v1       #c:I
    if-ne v1, v5, :cond_f

    .line 1565
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1566
    const/16 v3, 0x72

    if-ne v1, v3, :cond_e

    const-string v0, "getUTCHours"

    const/16 v2, 0x16

    goto/16 :goto_0

    .line 1567
    :cond_e
    if-ne v1, v7, :cond_0

    const-string v0, "getUTCMonth"

    const/16 v2, 0x10

    goto/16 :goto_0

    .line 1569
    :cond_f
    if-ne v1, v6, :cond_0

    .line 1570
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1571
    const/16 v3, 0x72

    if-ne v1, v3, :cond_10

    const-string v0, "setUTCHours"

    const/16 v2, 0x26

    goto/16 :goto_0

    .line 1572
    :cond_10
    if-ne v1, v7, :cond_0

    const-string v0, "setUTCMonth"

    const/16 v2, 0x2a

    goto/16 :goto_0

    .line 1575
    .end local v1           #c:I
    :sswitch_d
    const-string v0, "constructor"

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1577
    :pswitch_7
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1578
    .restart local v1       #c:I
    const/16 v3, 0x44

    if-ne v1, v3, :cond_11

    const-string v0, "toDateString"

    const/4 v2, 0x4

    goto/16 :goto_0

    .line 1579
    :cond_11
    const/16 v3, 0x54

    if-ne v1, v3, :cond_0

    const-string v0, "toTimeString"

    const/4 v2, 0x3

    goto/16 :goto_0

    .line 1581
    .end local v1           #c:I
    :pswitch_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1582
    .restart local v1       #c:I
    if-ne v1, v5, :cond_13

    .line 1583
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1584
    const/16 v3, 0x4d

    if-ne v1, v3, :cond_12

    const-string v0, "getUTCMinutes"

    const/16 v2, 0x18

    goto/16 :goto_0

    .line 1585
    :cond_12
    const/16 v3, 0x53

    if-ne v1, v3, :cond_0

    const-string v0, "getUTCSeconds"

    const/16 v2, 0x1a

    goto/16 :goto_0

    .line 1587
    :cond_13
    if-ne v1, v6, :cond_0

    .line 1588
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1589
    const/16 v3, 0x4d

    if-ne v1, v3, :cond_14

    const-string v0, "setUTCMinutes"

    const/16 v2, 0x24

    goto/16 :goto_0

    .line 1590
    :cond_14
    const/16 v3, 0x53

    if-ne v1, v3, :cond_0

    const-string v0, "setUTCSeconds"

    const/16 v2, 0x22

    goto/16 :goto_0

    .line 1593
    .end local v1           #c:I
    :pswitch_9
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1594
    .restart local v1       #c:I
    if-ne v1, v5, :cond_15

    const-string v0, "getUTCFullYear"

    const/16 v2, 0xe

    goto/16 :goto_0

    .line 1595
    :cond_15
    if-ne v1, v6, :cond_16

    const-string v0, "setUTCFullYear"

    const/16 v2, 0x2c

    goto/16 :goto_0

    .line 1596
    :cond_16
    if-ne v1, v7, :cond_0

    const-string v0, "toLocaleString"

    const/4 v2, 0x5

    goto/16 :goto_0

    .line 1598
    .end local v1           #c:I
    :pswitch_a
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1599
    .restart local v1       #c:I
    if-ne v1, v5, :cond_17

    const-string v0, "getMilliseconds"

    const/16 v2, 0x1b

    goto/16 :goto_0

    .line 1600
    :cond_17
    if-ne v1, v6, :cond_0

    const-string v0, "setMilliseconds"

    const/16 v2, 0x1f

    goto/16 :goto_0

    .line 1602
    .end local v1           #c:I
    :pswitch_b
    const-string v0, "getTimezoneOffset"

    const/16 v2, 0x1d

    goto/16 :goto_0

    .line 1603
    :pswitch_c
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1604
    .restart local v1       #c:I
    if-ne v1, v5, :cond_18

    const-string v0, "getUTCMilliseconds"

    const/16 v2, 0x1c

    goto/16 :goto_0

    .line 1605
    :cond_18
    if-ne v1, v6, :cond_19

    const-string v0, "setUTCMilliseconds"

    const/16 v2, 0x20

    goto/16 :goto_0

    .line 1606
    :cond_19
    if-ne v1, v7, :cond_0

    .line 1607
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1608
    const/16 v3, 0x44

    if-ne v1, v3, :cond_1a

    const-string v0, "toLocaleDateString"

    const/4 v2, 0x7

    goto/16 :goto_0

    .line 1609
    :cond_1a
    const/16 v3, 0x54

    if-ne v1, v3, :cond_0

    const-string v0, "toLocaleTimeString"

    const/4 v2, 0x6

    goto/16 :goto_0

    .line 1505
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 1510
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x54 -> :sswitch_1
        0x59 -> :sswitch_2
        0x75 -> :sswitch_3
    .end sparse-switch

    .line 1525
    :sswitch_data_1
    .sparse-switch
        0x48 -> :sswitch_4
        0x4d -> :sswitch_5
        0x6f -> :sswitch_6
        0x74 -> :sswitch_7
    .end sparse-switch

    .line 1555
    :sswitch_data_2
    .sparse-switch
        0x46 -> :sswitch_8
        0x4d -> :sswitch_9
        0x53 -> :sswitch_a
        0x54 -> :sswitch_b
        0x55 -> :sswitch_c
        0x73 -> :sswitch_d
    .end sparse-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "Date"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, typeHint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 100
    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    .line 101
    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getJSTimeValue()D
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-wide v0
.end method

.method protected initPrototypeId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 126
    packed-switch p1, :pswitch_data_0

    .line 174
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :pswitch_0
    const/4 v0, 0x1

    .local v0, arity:I
    const-string v1, "constructor"

    .line 176
    .local v1, s:Ljava/lang/String;
    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeDate;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 177
    return-void

    .line 128
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 129
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toTimeString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 130
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toDateString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_4
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toLocaleString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 132
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_5
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toLocaleTimeString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 133
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_6
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toLocaleDateString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 134
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_7
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toUTCString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 135
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_8
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toSource"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 136
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_9
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "valueOf"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 137
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_a
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getTime"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 138
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_b
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getYear"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 139
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_c
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getFullYear"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 140
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_d
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getUTCFullYear"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 141
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_e
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getMonth"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 142
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_f
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getUTCMonth"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 143
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_10
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getDate"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 144
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_11
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getUTCDate"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 145
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_12
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getDay"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 146
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_13
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getUTCDay"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 147
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_14
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getHours"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 148
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_15
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getUTCHours"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 149
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_16
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getMinutes"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 150
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_17
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getUTCMinutes"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 151
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_18
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getSeconds"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 152
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_19
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getUTCSeconds"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 153
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1a
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getMilliseconds"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 154
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1b
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getUTCMilliseconds"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 155
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1c
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "getTimezoneOffset"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 156
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1d
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "setTime"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 157
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1e
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "setMilliseconds"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 158
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1f
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "setUTCMilliseconds"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 159
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_20
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "setSeconds"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 160
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_21
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "setUTCSeconds"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 161
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_22
    const/4 v0, 0x3

    .restart local v0       #arity:I
    const-string v1, "setMinutes"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 162
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_23
    const/4 v0, 0x3

    .restart local v0       #arity:I
    const-string v1, "setUTCMinutes"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 163
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_24
    const/4 v0, 0x4

    .restart local v0       #arity:I
    const-string v1, "setHours"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 164
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_25
    const/4 v0, 0x4

    .restart local v0       #arity:I
    const-string v1, "setUTCHours"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 165
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_26
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "setDate"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 166
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_27
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "setUTCDate"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 167
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_28
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "setMonth"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 168
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_29
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "setUTCMonth"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 169
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_2a
    const/4 v0, 0x3

    .restart local v0       #arity:I
    const-string v1, "setFullYear"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 170
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_2b
    const/4 v0, 0x3

    .restart local v0       #arity:I
    const-string v1, "setUTCFullYear"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 171
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_2c
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "setYear"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 172
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_2d
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toISOString"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 173
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_2e
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "toJSON"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
    .end packed-switch
.end method
