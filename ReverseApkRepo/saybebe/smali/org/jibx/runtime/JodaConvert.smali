.class public abstract Lorg/jibx/runtime/JodaConvert;
.super Ljava/lang/Object;
.source "JodaConvert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static deserializeDateMidnight(Ljava/lang/String;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateMidnight;
    .locals 9
    .parameter "text"
    .parameter "zone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 85
    invoke-static {p0}, Lorg/jibx/runtime/Utility;->ifDate(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 86
    new-instance v6, Lorg/jibx/runtime/JiBXException;

    const-string v7, "Invalid date format"

    invoke-direct {v6, v7}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 90
    :cond_0
    const/16 v7, 0x2d

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 91
    .local v3, split:I
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jibx/runtime/Utility;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 92
    .local v5, year:I
    if-nez v5, :cond_1

    .line 93
    new-instance v6, Lorg/jibx/runtime/JiBXException;

    const-string v7, "Year value 0 is not allowed"

    invoke-direct {v6, v7}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 95
    :cond_1
    add-int/lit8 v7, v3, 0x1

    invoke-static {p0, v7, v8}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v2

    .line 96
    .local v2, month:I
    if-lt v2, v6, :cond_2

    const/16 v7, 0xc

    if-le v2, v7, :cond_3

    .line 97
    :cond_2
    new-instance v6, Lorg/jibx/runtime/JiBXException;

    const-string v7, "Month value out of range"

    invoke-direct {v6, v7}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 99
    :cond_3
    add-int/lit8 v7, v3, 0x4

    invoke-static {p0, v7, v8}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v0

    .line 100
    .local v0, day:I
    rem-int/lit8 v7, v5, 0x4

    if-nez v7, :cond_5

    rem-int/lit8 v7, v5, 0x64

    if-nez v7, :cond_4

    rem-int/lit16 v7, v5, 0x190

    if-nez v7, :cond_5

    :cond_4
    move v1, v6

    .line 101
    .local v1, leap:Z
    :cond_5
    if-eqz v1, :cond_7

    sget-object v4, Lorg/jibx/runtime/Utility;->MONTHS_LEAP:[I

    .line 102
    .local v4, starts:[I
    :goto_0
    if-lt v0, v6, :cond_6

    aget v6, v4, v2

    add-int/lit8 v7, v2, -0x1

    aget v7, v4, v7

    sub-int/2addr v6, v7

    if-le v0, v6, :cond_8

    .line 103
    :cond_6
    new-instance v6, Lorg/jibx/runtime/JiBXException;

    const-string v7, "Day value out of range"

    invoke-direct {v6, v7}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 101
    .end local v4           #starts:[I
    :cond_7
    sget-object v4, Lorg/jibx/runtime/Utility;->MONTHS_NONLEAP:[I

    goto :goto_0

    .line 107
    .restart local v4       #starts:[I
    :cond_8
    new-instance v6, Lorg/joda/time/DateMidnight;

    invoke-direct {v6, v5, v2, v0, p1}, Lorg/joda/time/DateMidnight;-><init>(IIILorg/joda/time/DateTimeZone;)V

    return-object v6
.end method

.method public static deserializeLocalDate(Ljava/lang/String;)Lorg/joda/time/LocalDate;
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-static {p0}, Lorg/jibx/runtime/Utility;->parseDate(Ljava/lang/String;)J

    move-result-wide v1

    sget-object v3, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/DateTimeZone;)V

    goto :goto_0
.end method

.method public static deserializeLocalDateMidnight(Ljava/lang/String;)Lorg/joda/time/DateMidnight;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 179
    if-nez p0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 182
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jibx/runtime/JodaConvert;->deserializeDateMidnight(Ljava/lang/String;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateMidnight;

    move-result-object v0

    goto :goto_0
.end method

.method public static deserializeLocalDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 414
    if-nez p0, :cond_0

    .line 415
    const/4 v0, 0x0

    .line 417
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/jibx/runtime/JodaConvert;->parseDateTime(Ljava/lang/String;ZLorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public static deserializeLocalTime(Ljava/lang/String;)Lorg/joda/time/LocalTime;
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 272
    if-nez p0, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 275
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/joda/time/LocalTime;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v1, v2}, Lorg/jibx/runtime/Utility;->parseTimeNoOffset(Ljava/lang/String;II)J

    move-result-wide v1

    sget-object v3, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    goto :goto_0
.end method

.method public static deserializeStrictLocalDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 450
    if-nez p0, :cond_0

    .line 451
    const/4 v0, 0x0

    .line 453
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/jibx/runtime/JodaConvert;->parseDateTime(Ljava/lang/String;ZLorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public static deserializeStrictUTCDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 432
    if-nez p0, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 435
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    sget-object v1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {p0, v0, v1}, Lorg/jibx/runtime/JodaConvert;->parseDateTime(Ljava/lang/String;ZLorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    goto :goto_0
.end method

.method public static deserializeUTCDateMidnight(Ljava/lang/String;)Lorg/joda/time/DateMidnight;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 197
    if-nez p0, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {p0, v0}, Lorg/jibx/runtime/JodaConvert;->deserializeDateMidnight(Ljava/lang/String;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateMidnight;

    move-result-object v0

    goto :goto_0
.end method

.method public static deserializeUTCDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 395
    if-nez p0, :cond_0

    .line 396
    const/4 v0, 0x0

    .line 398
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-static {p0}, Lorg/jibx/runtime/Utility;->parseDateTime(Ljava/lang/String;)J

    move-result-wide v1

    sget-object v3, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    goto :goto_0
.end method

.method public static deserializeZonedDateMidnight(Ljava/lang/String;)Lorg/joda/time/DateMidnight;
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 160
    if-nez p0, :cond_0

    .line 161
    const/4 v1, 0x0

    .line 164
    :goto_0
    return-object v1

    .line 163
    :cond_0
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/jibx/runtime/JodaConvert;->findZone(Ljava/lang/String;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 164
    .local v0, zone:Lorg/joda/time/DateTimeZone;
    invoke-static {p0, v0}, Lorg/jibx/runtime/JodaConvert;->deserializeDateMidnight(Ljava/lang/String;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateMidnight;

    move-result-object v1

    goto :goto_0
.end method

.method public static deserializeZonedDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 376
    if-nez p0, :cond_0

    .line 377
    const/4 v1, 0x0

    .line 380
    :goto_0
    return-object v1

    .line 379
    :cond_0
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/jibx/runtime/JodaConvert;->findZone(Ljava/lang/String;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 380
    .local v0, zone:Lorg/joda/time/DateTimeZone;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/jibx/runtime/JodaConvert;->parseDateTime(Ljava/lang/String;ZLorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v1

    goto :goto_0
.end method

.method protected static findZone(Ljava/lang/String;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;
    .locals 10
    .parameter "text"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x2

    const/16 v7, 0x2d

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 122
    .local v2, length:I
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5a

    if-ne v5, v6, :cond_1

    .line 123
    sget-object p1, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    .line 144
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 127
    .restart local p1
    :cond_1
    add-int/lit8 v4, v2, -0x6

    .line 128
    .local v4, offset:I
    const/4 v5, 0x1

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 131
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 132
    .local v0, chr:C
    if-eq v0, v7, :cond_2

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_0

    .line 133
    :cond_2
    add-int/lit8 v5, v4, 0x1

    invoke-static {p0, v5, v8}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v1

    .line 134
    .local v1, hour:I
    add-int/lit8 v5, v4, 0x4

    invoke-static {p0, v5, v8}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v3

    .line 135
    .local v3, minute:I
    if-gt v1, v9, :cond_3

    const/16 v5, 0x3b

    if-gt v3, v5, :cond_3

    if-ne v1, v9, :cond_4

    if-eqz v3, :cond_4

    .line 136
    :cond_3
    new-instance v5, Lorg/jibx/runtime/JiBXException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Invalid time zone offset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 137
    :cond_4
    if-ne v0, v7, :cond_5

    .line 138
    neg-int v5, v1

    invoke-static {v5, v3}, Lorg/joda/time/DateTimeZone;->forOffsetHoursMinutes(II)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    goto :goto_0

    .line 140
    :cond_5
    invoke-static {v1, v3}, Lorg/joda/time/DateTimeZone;->forOffsetHoursMinutes(II)Lorg/joda/time/DateTimeZone;

    move-result-object p1

    goto :goto_0
.end method

.method protected static parseDateTime(Ljava/lang/String;ZLorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 15
    .parameter "text"
    .parameter "full"
    .parameter "zone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 320
    const/16 v11, 0x54

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 321
    .local v8, split:I
    if-gez v8, :cond_0

    .line 322
    new-instance v11, Lorg/jibx/runtime/JiBXException;

    const-string v12, "Missing \'T\' separator in dateTime"

    invoke-direct {v11, v12}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 324
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 325
    .local v3, length:I
    const/4 v11, 0x0

    invoke-virtual {p0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/jibx/runtime/Utility;->parseDate(Ljava/lang/String;)J

    move-result-wide v11

    add-int/lit8 v13, v8, 0x1

    invoke-static {p0, v13, v3}, Lorg/jibx/runtime/Utility;->parseTimeNoOffset(Ljava/lang/String;II)J

    move-result-wide v13

    add-long v4, v11, v13

    .line 329
    .local v4, milli:J
    add-int/lit8 v9, v8, 0x9

    .line 330
    .local v9, start:I
    const/4 v10, 0x0

    .line 331
    .local v10, utc:Z
    if-le v3, v9, :cond_7

    .line 334
    const/4 v10, 0x1

    .line 335
    add-int/lit8 v11, v3, -0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5a

    if-eq v11, v12, :cond_4

    .line 336
    add-int/lit8 v11, v3, -0x6

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 337
    .local v1, chr:C
    const/16 v11, 0x2d

    if-eq v1, v11, :cond_1

    const/16 v11, 0x2b

    if-ne v1, v11, :cond_4

    .line 338
    :cond_1
    add-int/lit8 v11, v3, -0x5

    const/4 v12, 0x2

    invoke-static {p0, v11, v12}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v2

    .line 339
    .local v2, hour:I
    add-int/lit8 v11, v3, -0x2

    const/4 v12, 0x2

    invoke-static {p0, v11, v12}, Lorg/jibx/runtime/Utility;->parseDigits(Ljava/lang/String;II)I

    move-result v6

    .line 340
    .local v6, minute:I
    const/16 v11, 0xe

    if-gt v2, v11, :cond_2

    const/16 v11, 0x3b

    if-gt v6, v11, :cond_2

    const/16 v11, 0xe

    if-ne v2, v11, :cond_3

    if-eqz v6, :cond_3

    .line 341
    :cond_2
    new-instance v11, Lorg/jibx/runtime/JiBXException;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Invalid time zone offset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 343
    :cond_3
    mul-int/lit8 v11, v2, 0x3c

    add-int/2addr v11, v6

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit16 v7, v11, 0x3e8

    .line 344
    .local v7, offset:I
    const/16 v11, 0x2d

    if-ne v1, v11, :cond_6

    .line 345
    int-to-long v11, v7

    add-long/2addr v4, v11

    .line 358
    .end local v1           #chr:C
    .end local v2           #hour:I
    .end local v6           #minute:I
    .end local v7           #offset:I
    :cond_4
    :goto_0
    if-nez v10, :cond_5

    .line 359
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v11

    int-to-long v11, v11

    sub-long/2addr v4, v11

    .line 361
    :cond_5
    new-instance v11, Lorg/joda/time/DateTime;

    move-object/from16 v0, p2

    invoke-direct {v11, v4, v5, v0}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    return-object v11

    .line 347
    .restart local v1       #chr:C
    .restart local v2       #hour:I
    .restart local v6       #minute:I
    .restart local v7       #offset:I
    :cond_6
    int-to-long v11, v7

    sub-long/2addr v4, v11

    goto :goto_0

    .line 353
    .end local v1           #chr:C
    .end local v2           #hour:I
    .end local v6           #minute:I
    .end local v7           #offset:I
    :cond_7
    if-eqz p1, :cond_4

    .line 354
    new-instance v11, Lorg/jibx/runtime/JiBXException;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Missing required time zone offset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public static serializeLocalDate(Lorg/joda/time/LocalDate;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 71
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDate;->toDateTimeAtStartOfDay(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jibx/runtime/Utility;->serializeDate(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serializeUTCDateMidnight(Lorg/joda/time/DateMidnight;)Ljava/lang/String;
    .locals 8
    .parameter "date"

    .prologue
    .line 250
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    .line 251
    .local v1, millis:J
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v3

    .line 254
    .local v3, offset:I
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v4, 0x19

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 255
    .local v0, buff:Ljava/lang/StringBuffer;
    int-to-long v4, v3

    add-long/2addr v4, v1

    const-wide v6, 0x3883122cd800L

    add-long/2addr v4, v6

    invoke-static {v4, v5, v0}, Lorg/jibx/runtime/Utility;->formatYearMonthDay(JLjava/lang/StringBuffer;)I

    .line 258
    const/16 v4, 0x5a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static serializeUTCDateTime(Lorg/joda/time/DateTime;)Ljava/lang/String;
    .locals 3
    .parameter "time"

    .prologue
    .line 493
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/jibx/runtime/Utility;->serializeDateTime(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static serializeUTCLocalTime(Lorg/joda/time/LocalTime;)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 301
    .local v0, buff:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getMillisOfDay()I

    move-result v1

    invoke-static {v1, v0}, Lorg/jibx/runtime/Utility;->serializeTime(ILjava/lang/StringBuffer;)V

    .line 302
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static serializeUnzonedDateMidnight(Lorg/joda/time/DateMidnight;)Ljava/lang/String;
    .locals 5
    .parameter "date"

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v0

    .line 213
    .local v0, millis:J
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v2

    .line 214
    .local v2, offset:I
    int-to-long v3, v2

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lorg/jibx/runtime/Utility;->serializeDate(J)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static serializeUnzonedLocalTime(Lorg/joda/time/LocalTime;)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 288
    .local v0, buff:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/joda/time/LocalTime;->getMillisOfDay()I

    move-result v1

    invoke-static {v1, v0}, Lorg/jibx/runtime/Utility;->serializeTime(ILjava/lang/StringBuffer;)V

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static serializeZonedDateMidnight(Lorg/joda/time/DateMidnight;)Ljava/lang/String;
    .locals 8
    .parameter "date"

    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    .line 229
    .local v1, millis:J
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v3

    .line 232
    .local v3, offset:I
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v4, 0x19

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 233
    .local v0, buff:Ljava/lang/StringBuffer;
    int-to-long v4, v3

    add-long/2addr v4, v1

    const-wide v6, 0x3883122cd800L

    add-long/2addr v4, v6

    invoke-static {v4, v5, v0}, Lorg/jibx/runtime/Utility;->formatYearMonthDay(JLjava/lang/StringBuffer;)I

    .line 236
    invoke-static {v3, v0}, Lorg/jibx/runtime/Utility;->serializeOffset(ILjava/lang/StringBuffer;)V

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static serializeZonedDateTime(Lorg/joda/time/DateTime;)Ljava/lang/String;
    .locals 9
    .parameter "time"

    .prologue
    .line 468
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v5

    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v4

    .line 469
    .local v4, offset:I
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v5

    int-to-long v7, v4

    add-long v2, v5, v7

    .line 472
    .local v2, msec:J
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v5, 0x19

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 473
    .local v0, buff:Ljava/lang/StringBuffer;
    const-wide v5, 0x3883122cd800L

    add-long/2addr v5, v2

    invoke-static {v5, v6, v0}, Lorg/jibx/runtime/Utility;->formatYearMonthDay(JLjava/lang/StringBuffer;)I

    move-result v1

    .line 476
    .local v1, extra:I
    const/16 v5, 0x54

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 477
    invoke-static {v1, v0}, Lorg/jibx/runtime/Utility;->serializeTime(ILjava/lang/StringBuffer;)V

    .line 480
    invoke-static {v4, v0}, Lorg/jibx/runtime/Utility;->serializeOffset(ILjava/lang/StringBuffer;)V

    .line 481
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
