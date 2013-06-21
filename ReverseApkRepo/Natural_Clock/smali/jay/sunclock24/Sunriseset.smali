.class public Ljay/sunclock24/Sunriseset;
.super Ljava/lang/Object;
.source "Sunriseset.java"


# instance fields
.field private bDaytime:Z

.field private bGregorian:Z

.field private bSunDownAllDay:Z

.field private bSunUpAllDay:Z

.field private bSunrise:Z

.field private bSunriseToday:Z

.field private bSunset:Z

.field private bSunsetToday:Z

.field private dateInput:Ljava/util/Date;

.field private dateSunrise:Ljava/util/Date;

.field private dateSunset:Ljava/util/Date;

.field private dfA:D

.field private dfA0:D

.field private dfA2:D

.field private dfA5:D

.field private dfAA1:D

.field private dfAA2:D

.field private dfC0:D

.field private dfCosLat:D

.field private dfD0:D

.field private dfD1:D

.field private dfD2:D

.field private dfD5:D

.field private dfDA:D

.field private dfDD:D

.field private dfDD1:D

.field private dfDD2:D

.field private dfH0:D

.field private dfH1:D

.field private dfH2:D

.field private dfHourRise:D

.field private dfHourSet:D

.field private dfJ:D

.field private dfJ3:D

.field private dfK1:D

.field private dfL0:D

.field private dfL2:D

.field private dfLat:D

.field private dfLon:D

.field private dfMinRise:D

.field private dfMinSet:D

.field private dfP:D

.field private dfSinLat:D

.field private dfT:D

.field private dfT0:D

.field private dfTT:D

.field private dfTimeZone:D

.field private dfV0:D

.field private dfV1:D

.field private dfV2:D

.field private dfZenith:D

.field private dfmtDate:Ljava/text/SimpleDateFormat;

.field private dfmtDateTime:Ljava/text/SimpleDateFormat;

.field private dfmtDay:Ljava/text/SimpleDateFormat;

.field private dfmtMonth:Ljava/text/SimpleDateFormat;

.field private dfmtYear:Ljava/text/SimpleDateFormat;

.field private iCount:I

.field private iDay:I

.field private iJulian:I

.field private iMonth:I

.field private iSign:I

.field private iYear:I

.field private tz:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(DDLjava/util/Date;D)V
    .locals 3
    .parameter "dfLatIn"
    .parameter "dfLonIn"
    .parameter "dateInputIn"
    .parameter "dfTimeZoneIn"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunriseToday:Z

    .line 18
    iput-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunsetToday:Z

    .line 19
    iput-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunUpAllDay:Z

    .line 20
    iput-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunDownAllDay:Z

    .line 21
    iput-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bDaytime:Z

    .line 23
    iput-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunrise:Z

    .line 24
    iput-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunset:Z

    .line 25
    iput-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bGregorian:Z

    .line 43
    iput-wide v1, p0, Ljay/sunclock24/Sunriseset;->dfAA1:D

    iput-wide v1, p0, Ljay/sunclock24/Sunriseset;->dfAA2:D

    .line 44
    iput-wide v1, p0, Ljay/sunclock24/Sunriseset;->dfDD1:D

    iput-wide v1, p0, Ljay/sunclock24/Sunriseset;->dfDD2:D

    .line 59
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Ljay/sunclock24/Sunriseset;->tz:Ljava/util/TimeZone;

    .line 77
    iput-wide p1, p0, Ljay/sunclock24/Sunriseset;->dfLat:D

    .line 78
    iput-wide p3, p0, Ljay/sunclock24/Sunriseset;->dfLon:D

    .line 79
    iput-object p5, p0, Ljay/sunclock24/Sunriseset;->dateInput:Ljava/util/Date;

    .line 80
    iput-wide p6, p0, Ljay/sunclock24/Sunriseset;->dfTimeZone:D

    .line 83
    invoke-direct {p0}, Ljay/sunclock24/Sunriseset;->doCalculations()V

    .line 85
    return-void
.end method

.method private doCalculations()V
    .locals 32

    .prologue
    .line 102
    :try_start_0
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v25, "yyyy"

    invoke-direct/range {v24 .. v25}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljay/sunclock24/Sunriseset;->dfmtYear:Ljava/text/SimpleDateFormat;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->dfmtYear:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->dfmtYear:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->tz:Ljava/util/TimeZone;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 106
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v25, "M"

    invoke-direct/range {v24 .. v25}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljay/sunclock24/Sunriseset;->dfmtMonth:Ljava/text/SimpleDateFormat;

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->dfmtMonth:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->dfmtMonth:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->tz:Ljava/util/TimeZone;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 110
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v25, "d"

    invoke-direct/range {v24 .. v25}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljay/sunclock24/Sunriseset;->dfmtDay:Ljava/text/SimpleDateFormat;

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->dfmtDay:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->dfmtDay:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->tz:Ljava/util/TimeZone;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->dfmtYear:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->dateInput:Ljava/util/Date;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljay/sunclock24/Sunriseset;->iYear:I

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->dfmtMonth:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->dateInput:Ljava/util/Date;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljay/sunclock24/Sunriseset;->iMonth:I

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->dfmtDay:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->dateInput:Ljava/util/Date;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljay/sunclock24/Sunriseset;->iDay:I

    .line 119
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfTimeZone:D

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4038

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfTimeZone:D

    .line 127
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfTimeZone:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfTimeZone:D

    .line 130
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfLon:D

    move-wide/from16 v24, v0

    const-wide v26, 0x4076800000000000L

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfLon:D

    .line 136
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iYear:I

    move/from16 v24, v0

    const/16 v25, 0x62f

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_0

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljay/sunclock24/Sunriseset;->bGregorian:Z

    .line 138
    :cond_0
    const-wide/high16 v24, 0x401c

    .line 140
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iMonth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4022

    add-double v26, v26, v28

    .line 141
    const-wide/high16 v28, 0x4028

    .line 140
    div-double v26, v26, v28

    .line 139
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    .line 142
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iYear:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    .line 139
    add-double v26, v26, v28

    mul-double v24, v24, v26

    .line 143
    const-wide/high16 v26, 0x4010

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    .line 146
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iMonth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x4071300000000000L

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4022

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    add-double v24, v24, v26

    .line 147
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iDay:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    .line 148
    const-wide v26, 0x413a42c300000000L

    add-double v24, v24, v26

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iYear:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x4076f00000000000L

    mul-double v26, v26, v28

    add-double v24, v24, v26

    .line 138
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfJ:D

    .line 151
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljay/sunclock24/Sunriseset;->bGregorian:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 154
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iMonth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4022

    sub-double v24, v24, v26

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_6

    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljay/sunclock24/Sunriseset;->iSign:I

    .line 156
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iMonth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4022

    sub-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfA:D

    .line 161
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iYear:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    .line 162
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iSign:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    .line 163
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfA:D

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x401c

    div-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    .line 162
    mul-double v26, v26, v28

    .line 161
    add-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    .line 165
    const-wide/high16 v26, 0x4059

    .line 161
    div-double v24, v24, v26

    .line 160
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    .line 166
    const-wide/high16 v26, 0x3ff0

    .line 159
    add-double v24, v24, v26

    .line 167
    const-wide/high16 v26, 0x3fe8

    .line 159
    mul-double v24, v24, v26

    .line 158
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfJ3:D

    .line 170
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfJ:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfJ3:D

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    const-wide/high16 v26, 0x4000

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfJ:D

    .line 173
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfJ:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljay/sunclock24/Sunriseset;->iJulian:I

    .line 176
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iJulian:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x4142b42c80000000L

    sub-double v24, v24, v26

    const-wide/high16 v26, 0x3fe0

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfT:D

    .line 177
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfT:D

    move-wide/from16 v24, v0

    const-wide v26, 0x40e1d5a000000000L

    div-double v24, v24, v26

    const-wide/high16 v26, 0x3ff0

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfTT:D

    .line 181
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfT:D

    move-wide/from16 v24, v0

    const-wide v26, 0x41607ad71a041893L

    mul-double v24, v24, v26

    const-wide v26, 0x40e1d5a000000000L

    div-double v24, v24, v26

    .line 182
    const-wide v26, 0x40d78ba000000000L

    add-double v24, v24, v26

    .line 183
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfTimeZone:D

    move-wide/from16 v26, v0

    const-wide v28, 0x40f526c99999999aL

    mul-double v26, v26, v28

    add-double v24, v24, v26

    .line 184
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfLon:D

    move-wide/from16 v26, v0

    const-wide v28, 0x40f5180000000000L

    mul-double v26, v26, v28

    add-double v24, v24, v26

    .line 186
    const-wide v26, 0x40f5180000000000L

    div-double v24, v24, v26

    .line 181
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfT0:D

    .line 187
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfT0:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfT0:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfT0:D

    .line 188
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfT0:D

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000

    mul-double v24, v24, v26

    const-wide v26, 0x400921fb54442d18L

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfT0:D

    .line 190
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfT:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfTimeZone:D

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfT:D

    .line 193
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljay/sunclock24/Sunriseset;->iCount:I

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iCount:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_7

    .line 255
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfAA2:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfAA1:D

    move-wide/from16 v26, v0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfAA2:D

    move-wide/from16 v24, v0

    const-wide v26, 0x401921fb54442d18L

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfAA2:D

    .line 258
    :cond_2
    const-wide v24, 0x3ff95d882604e01bL

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfZenith:D

    .line 259
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfLat:D

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L

    mul-double v24, v24, v26

    const-wide v26, 0x4066800000000000L

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfSinLat:D

    .line 260
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfLat:D

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L

    mul-double v24, v24, v26

    const-wide v26, 0x4066800000000000L

    div-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfCosLat:D

    .line 262
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfAA1:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfA0:D

    .line 263
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfDD1:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfD0:D

    .line 264
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfAA2:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfAA1:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfDA:D

    .line 265
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfDD2:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfDD1:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfDD:D

    .line 267
    const-wide v24, 0x3fd0cd109d6d157aL

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfK1:D

    .line 271
    const-wide v24, 0x4058c00000000000L

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfHourRise:D

    .line 272
    const-wide v24, 0x4058c00000000000L

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfMinRise:D

    .line 273
    const-wide v24, 0x4058c00000000000L

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfHourSet:D

    .line 274
    const-wide v24, 0x4058c00000000000L

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfMinSet:D

    .line 275
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfV0:D

    .line 276
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfV2:D

    .line 280
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljay/sunclock24/Sunriseset;->iCount:I

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iCount:I

    move/from16 v24, v0

    const/16 v25, 0x18

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_9

    .line 406
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljay/sunclock24/Sunriseset;->bSunriseToday:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljay/sunclock24/Sunriseset;->bSunsetToday:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    .line 408
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV2:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_15

    .line 409
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljay/sunclock24/Sunriseset;->bSunDownAllDay:Z

    .line 415
    :cond_3
    :goto_3
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v25, "d M yyyy HH:mm z"

    invoke-direct/range {v24 .. v25}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljay/sunclock24/Sunriseset;->dfmtDateTime:Ljava/text/SimpleDateFormat;

    .line 416
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljay/sunclock24/Sunriseset;->bSunriseToday:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->dfmtDateTime:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iDay:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iMonth:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 420
    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iYear:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 421
    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfHourRise:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 422
    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfMinRise:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 423
    const-string v26, " GMT"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v24

    .line 418
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljay/sunclock24/Sunriseset;->dateSunrise:Ljava/util/Date;

    .line 427
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljay/sunclock24/Sunriseset;->bSunsetToday:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Ljay/sunclock24/Sunriseset;->dfmtDateTime:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iDay:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iMonth:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 431
    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iYear:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 432
    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfHourSet:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 433
    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfMinSet:D

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 434
    const-string v26, " GMT"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v24

    .line 429
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljay/sunclock24/Sunriseset;->dateSunset:Ljava/util/Date;

    .line 446
    :cond_5
    :goto_4
    return-void

    .line 155
    :cond_6
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljay/sunclock24/Sunriseset;->iSign:I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 439
    :catch_0
    move-exception v24

    move-object/from16 v15, v24

    .line 441
    .local v15, e:Ljava/text/ParseException;
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v25, "\nCannot parse date"

    invoke-virtual/range {v24 .. v25}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 442
    sget-object v24, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v24

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 443
    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/System;->exit(I)V

    goto :goto_4

    .line 208
    .end local v15           #e:Ljava/text/ParseException;
    :cond_7
    const-wide v24, 0x3fe8ee2867275686L

    const-wide v26, 0x3f666dcfde44846cL

    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfT:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v5, v24, v26

    .line 209
    .local v5, dfLL:D
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    sub-double v5, v5, v24

    .line 210
    const-wide/high16 v24, 0x4000

    mul-double v24, v24, v5

    const-wide v26, 0x400921fb54442d18L

    mul-double v5, v24, v26

    .line 212
    const-wide v24, 0x3fefc7b02d59d55eL

    const-wide v26, 0x3f666d89a3e0cde9L

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfT:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v3, v24, v26

    .line 213
    .local v3, dfGG:D
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    sub-double v3, v3, v24

    .line 214
    const-wide/high16 v24, 0x4000

    mul-double v24, v24, v3

    const-wide v26, 0x400921fb54442d18L

    mul-double v3, v24, v26

    .line 216
    const-wide v24, 0x3fd9765fd8adab9fL

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    .line 217
    const-wide v26, 0x3f847ae147ae147bL

    sub-double v28, v5, v3

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 216
    sub-double v24, v24, v26

    .line 218
    const-wide v26, 0x3f6b4784230fcf81L

    add-double v28, v5, v3

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 216
    add-double v24, v24, v26

    .line 219
    const-wide v26, 0x3f2b866e43aa79bcL

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfTT:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    .line 216
    sub-double v11, v24, v26

    .line 221
    .local v11, dfVV:D
    const-wide/high16 v24, 0x3ff0

    .line 222
    const-wide v26, 0x3fa12599ed7c6fbdL

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 221
    sub-double v24, v24, v26

    .line 223
    const-wide v26, 0x3f22599ed7c6fbd2L

    const-wide/high16 v28, 0x4000

    mul-double v28, v28, v5

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 221
    sub-double v24, v24, v26

    .line 224
    const-wide v26, 0x3f14f8b588e368f1L

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 221
    add-double v9, v24, v26

    .line 226
    .local v9, dfUU:D
    const-wide v24, -0x40e5c91d14e3bcd3L

    .line 227
    const-wide v26, 0x3fa523f67f4dbdf9L

    const-wide/high16 v28, 0x4000

    mul-double v28, v28, v5

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 226
    sub-double v24, v24, v26

    .line 228
    const-wide v26, 0x3fa070b8cfbfc654L

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 226
    add-double v24, v24, v26

    .line 229
    const-wide v26, 0x3f510a137f38c543L

    const-wide/high16 v28, 0x4000

    mul-double v28, v28, v5

    sub-double v28, v28, v3

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 226
    sub-double v24, v24, v26

    .line 230
    const-wide v26, 0x3f36f0068db8bac7L

    const-wide/high16 v28, 0x4000

    mul-double v28, v28, v5

    add-double v28, v28, v3

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    .line 226
    sub-double v24, v24, v26

    .line 231
    const-wide v26, 0x3f14f8b588e368f1L

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfTT:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    .line 226
    sub-double v13, v24, v26

    .line 234
    .local v13, dfWW:D
    mul-double v24, v11, v11

    sub-double v24, v9, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    div-double v7, v13, v24

    .line 236
    .local v7, dfSS:D
    const-wide/high16 v24, 0x3ff0

    mul-double v26, v7, v7

    sub-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    div-double v24, v7, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->atan(D)D

    move-result-wide v24

    add-double v24, v24, v5

    .line 235
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfA5:D

    .line 238
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    div-double v7, v11, v24

    .line 239
    const-wide/high16 v24, 0x3ff0

    mul-double v26, v7, v7

    sub-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    div-double v24, v7, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->atan(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfD5:D

    .line 242
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iCount:I

    move/from16 v24, v0

    if-nez v24, :cond_8

    .line 244
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfA5:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfAA1:D

    .line 245
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfD5:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfDD1:D

    .line 252
    :goto_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfT:D

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff0

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfT:D

    .line 193
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljay/sunclock24/Sunriseset;->iCount:I

    goto/16 :goto_1

    .line 249
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfA5:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfAA2:D

    .line 250
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfD5:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfDD2:D

    goto :goto_5

    .line 287
    .end local v3           #dfGG:D
    .end local v5           #dfLL:D
    .end local v7           #dfSS:D
    .end local v9           #dfUU:D
    .end local v11           #dfVV:D
    .end local v13           #dfWW:D
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfC0:D

    .line 288
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfC0:D

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff0

    add-double v24, v24, v26

    const-wide/high16 v26, 0x4038

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfP:D

    .line 289
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfAA1:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfP:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfDA:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfA2:D

    .line 290
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfDD1:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfP:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfDD:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfD2:D

    .line 291
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfT0:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfC0:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfK1:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfL0:D

    .line 292
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfL0:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfK1:D

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfL2:D

    .line 293
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfL0:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfA0:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfH0:D

    .line 294
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfL2:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfA2:D

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfH2:D

    .line 296
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfH2:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfH0:D

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    const-wide/high16 v26, 0x4000

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfH1:D

    .line 298
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfD2:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfD0:D

    move-wide/from16 v26, v0

    add-double v24, v24, v26

    const-wide/high16 v26, 0x4000

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfD1:D

    .line 302
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iCount:I

    move/from16 v24, v0

    if-nez v24, :cond_c

    .line 304
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfSinLat:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfD0:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    .line 305
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfCosLat:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfD0:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfH0:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    .line 306
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfZenith:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    sub-double v24, v24, v26

    .line 304
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfV0:D

    .line 311
    :goto_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfSinLat:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfD2:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    .line 312
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfCosLat:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfD2:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfH2:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    .line 313
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfZenith:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    sub-double v24, v24, v26

    .line 311
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfV2:D

    .line 317
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV0:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-ltz v24, :cond_a

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV2:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-gez v24, :cond_b

    .line 319
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV0:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV2:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_d

    .line 323
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfA2:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfA0:D

    .line 324
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfD2:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfD0:D

    .line 280
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Ljay/sunclock24/Sunriseset;->iCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Ljay/sunclock24/Sunriseset;->iCount:I

    goto/16 :goto_2

    .line 309
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV2:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfV0:D

    goto/16 :goto_6

    .line 328
    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfSinLat:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfD1:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    .line 329
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfCosLat:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfD1:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfH1:D

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    .line 330
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfZenith:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    sub-double v24, v24, v26

    .line 328
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfV1:D

    .line 332
    const-wide/high16 v24, 0x4000

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV2:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4010

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV1:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    const-wide/high16 v26, 0x4000

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV0:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v16, v24, v26

    .line 334
    .local v16, tempA:D
    const-wide/high16 v24, 0x4010

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV1:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4008

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV0:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV2:D

    move-wide/from16 v26, v0

    sub-double v18, v24, v26

    .line 335
    .local v18, tempB:D
    mul-double v24, v18, v18

    const-wide/high16 v26, 0x4010

    mul-double v26, v26, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV0:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    sub-double v20, v24, v26

    .line 337
    .local v20, tempD:D
    const-wide/16 v24, 0x0

    cmpg-double v24, v20, v24

    if-gez v24, :cond_e

    .line 340
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfA2:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfA0:D

    .line 341
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfD2:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfD0:D

    goto/16 :goto_7

    .line 345
    :cond_e
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    .line 355
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljay/sunclock24/Sunriseset;->bSunrise:Z

    .line 356
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljay/sunclock24/Sunriseset;->bSunset:Z

    .line 358
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV0:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_f

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV2:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_f

    .line 360
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljay/sunclock24/Sunriseset;->bSunrise:Z

    .line 361
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljay/sunclock24/Sunriseset;->bSunriseToday:Z

    .line 364
    :cond_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV0:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_10

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfV2:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_10

    .line 366
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljay/sunclock24/Sunriseset;->bSunset:Z

    .line 367
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljay/sunclock24/Sunriseset;->bSunsetToday:Z

    .line 370
    :cond_10
    sub-double v24, v20, v18

    const-wide/high16 v26, 0x4000

    mul-double v26, v26, v16

    div-double v22, v24, v26

    .line 371
    .local v22, tempE:D
    const-wide/high16 v24, 0x3ff0

    cmpl-double v24, v22, v24

    if-gtz v24, :cond_11

    const-wide/16 v24, 0x0

    cmpg-double v24, v22, v24

    if-gez v24, :cond_12

    .line 372
    :cond_11
    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v24, v0

    sub-double v24, v24, v18

    const-wide/high16 v26, 0x4000

    mul-double v26, v26, v16

    div-double v22, v24, v26

    .line 376
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljay/sunclock24/Sunriseset;->bSunrise:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    .line 378
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfC0:D

    move-wide/from16 v24, v0

    add-double v24, v24, v22

    const-wide v26, 0x3f81111111111111L

    add-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfHourRise:D

    .line 380
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfC0:D

    move-wide/from16 v24, v0

    add-double v24, v24, v22

    const-wide v26, 0x3f81111111111111L

    add-double v24, v24, v26

    .line 381
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfHourRise:D

    move-wide/from16 v26, v0

    .line 380
    sub-double v24, v24, v26

    .line 383
    const-wide/high16 v26, 0x404e

    .line 380
    mul-double v24, v24, v26

    .line 379
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfMinRise:D

    .line 387
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljay/sunclock24/Sunriseset;->bSunset:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 389
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfC0:D

    move-wide/from16 v24, v0

    add-double v24, v24, v22

    const-wide v26, 0x3f81111111111111L

    add-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfHourSet:D

    .line 391
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfC0:D

    move-wide/from16 v24, v0

    add-double v24, v24, v22

    const-wide v26, 0x3f81111111111111L

    add-double v24, v24, v26

    .line 392
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfHourSet:D

    move-wide/from16 v26, v0

    .line 391
    sub-double v24, v24, v26

    .line 394
    const-wide/high16 v26, 0x404e

    .line 391
    mul-double v24, v24, v26

    .line 390
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfMinSet:D

    .line 399
    :cond_14
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfA2:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfA0:D

    .line 400
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljay/sunclock24/Sunriseset;->dfD2:D

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljay/sunclock24/Sunriseset;->dfD0:D

    goto/16 :goto_7

    .line 411
    .end local v16           #tempA:D
    .end local v18           #tempB:D
    .end local v20           #tempD:D
    .end local v22           #tempE:D
    :cond_15
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljay/sunclock24/Sunriseset;->bSunUpAllDay:Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method


# virtual methods
.method public getSunrise()Ljava/util/Date;
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunriseToday:Z

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Ljay/sunclock24/Sunriseset;->dateSunrise:Ljava/util/Date;

    .line 463
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSunset()Ljava/util/Date;
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunsetToday:Z

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Ljay/sunclock24/Sunriseset;->dateSunset:Ljava/util/Date;

    .line 481
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDaytime()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 560
    iget-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunriseToday:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunsetToday:Z

    if-eqz v0, :cond_5

    .line 562
    iget-object v0, p0, Ljay/sunclock24/Sunriseset;->dateSunrise:Ljava/util/Date;

    iget-object v1, p0, Ljay/sunclock24/Sunriseset;->dateSunset:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Ljay/sunclock24/Sunriseset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Ljay/sunclock24/Sunriseset;->dateSunrise:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Ljay/sunclock24/Sunriseset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Ljay/sunclock24/Sunriseset;->dateSunrise:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    :cond_0
    iget-object v0, p0, Ljay/sunclock24/Sunriseset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Ljay/sunclock24/Sunriseset;->dateSunset:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    iput-boolean v3, p0, Ljay/sunclock24/Sunriseset;->bDaytime:Z

    .line 613
    :goto_0
    iget-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bDaytime:Z

    return v0

    .line 575
    :cond_1
    iput-boolean v2, p0, Ljay/sunclock24/Sunriseset;->bDaytime:Z

    goto :goto_0

    .line 581
    :cond_2
    iget-object v0, p0, Ljay/sunclock24/Sunriseset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Ljay/sunclock24/Sunriseset;->dateSunrise:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 583
    iget-object v0, p0, Ljay/sunclock24/Sunriseset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Ljay/sunclock24/Sunriseset;->dateSunrise:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 586
    iget-object v0, p0, Ljay/sunclock24/Sunriseset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Ljay/sunclock24/Sunriseset;->dateSunset:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 588
    :cond_3
    iput-boolean v3, p0, Ljay/sunclock24/Sunriseset;->bDaytime:Z

    goto :goto_0

    .line 590
    :cond_4
    iput-boolean v2, p0, Ljay/sunclock24/Sunriseset;->bDaytime:Z

    goto :goto_0

    .line 593
    :cond_5
    iget-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunUpAllDay:Z

    if-eqz v0, :cond_6

    .line 594
    iput-boolean v3, p0, Ljay/sunclock24/Sunriseset;->bDaytime:Z

    goto :goto_0

    .line 595
    :cond_6
    iget-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunDownAllDay:Z

    if-eqz v0, :cond_7

    .line 596
    iput-boolean v2, p0, Ljay/sunclock24/Sunriseset;->bDaytime:Z

    goto :goto_0

    .line 597
    :cond_7
    iget-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunriseToday:Z

    if-eqz v0, :cond_9

    .line 599
    iget-object v0, p0, Ljay/sunclock24/Sunriseset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Ljay/sunclock24/Sunriseset;->dateSunrise:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 600
    iput-boolean v2, p0, Ljay/sunclock24/Sunriseset;->bDaytime:Z

    goto :goto_0

    .line 602
    :cond_8
    iput-boolean v3, p0, Ljay/sunclock24/Sunriseset;->bDaytime:Z

    goto :goto_0

    .line 604
    :cond_9
    iget-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunsetToday:Z

    if-eqz v0, :cond_b

    .line 606
    iget-object v0, p0, Ljay/sunclock24/Sunriseset;->dateInput:Ljava/util/Date;

    iget-object v1, p0, Ljay/sunclock24/Sunriseset;->dateSunset:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 607
    iput-boolean v3, p0, Ljay/sunclock24/Sunriseset;->bDaytime:Z

    goto :goto_0

    .line 609
    :cond_a
    iput-boolean v2, p0, Ljay/sunclock24/Sunriseset;->bDaytime:Z

    goto :goto_0

    .line 611
    :cond_b
    iput-boolean v2, p0, Ljay/sunclock24/Sunriseset;->bDaytime:Z

    goto :goto_0
.end method

.method public isSunDown()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunDownAllDay:Z

    return v0
.end method

.method public isSunUp()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunUpAllDay:Z

    return v0
.end method

.method public isSunrise()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunriseToday:Z

    return v0
.end method

.method public isSunset()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Ljay/sunclock24/Sunriseset;->bSunsetToday:Z

    return v0
.end method
