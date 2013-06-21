.class public Lcom/cocmoc/kulinglite/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/cocmoc/kulinglite/Message;",
        ">;"
    }
.end annotation


# static fields
.field static FORMATTER:Ljava/text/SimpleDateFormat; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Kuling"


# instance fields
.field private date:Ljava/util/Date;

.field private lastUpdate:Ljava/lang/String;

.field private sight:Ljava/lang/String;

.field private stationHeight:Ljava/lang/String;

.field private weatherStation:Ljava/lang/String;

.field private windDirection:Ljava/lang/String;

.field private windDirectionUri:Ljava/lang/String;

.field private windSpeed:Ljava/lang/String;

.field private windSpeedCast:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 18
    sput-object v0, Lcom/cocmoc/kulinglite/Message;->FORMATTER:Ljava/text/SimpleDateFormat;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Message;->lastUpdate:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/cocmoc/kulinglite/Message;->windSpeed:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/cocmoc/kulinglite/Message;->windSpeedCast:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/cocmoc/kulinglite/Message;->sight:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/cocmoc/kulinglite/Message;->stationHeight:Ljava/lang/String;

    .line 26
    const-string v0, "0"

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/cocmoc/kulinglite/Message;->date:Ljava/util/Date;

    .line 28
    iput-object v1, p0, Lcom/cocmoc/kulinglite/Message;->windDirectionUri:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/cocmoc/kulinglite/Message;->weatherStation:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public checkIfNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "in"

    .prologue
    .line 108
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, ex:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cleanEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "input"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 238
    const/4 v5, 0x7

    new-array v3, v5, [Ljava/lang/String;

    const-string v5, "qouml;"

    aput-object v5, v3, v7

    const-string v5, "qOuml;"

    aput-object v5, v3, v8

    const-string v5, "qauml;"

    aput-object v5, v3, v9

    const-string v5, "qAuml;"

    aput-object v5, v3, v10

    const-string v5, "qaring;"

    aput-object v5, v3, v11

    const/4 v5, 0x5

    const-string v6, "qAring;"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "<br />"

    aput-object v6, v3, v5

    .line 239
    .local v3, patternStrArray:[Ljava/lang/String;
    const/4 v5, 0x7

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "\u00f6"

    aput-object v5, v4, v7

    const-string v5, "\u00d6"

    aput-object v5, v4, v8

    const-string v5, "\u00e4"

    aput-object v5, v4, v9

    const-string v5, "\u00c4"

    aput-object v5, v4, v10

    const-string v5, "\u00e5"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "\u00e5"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, " "

    aput-object v6, v4, v5

    .line 241
    .local v4, replacementStrArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v3

    if-lt v0, v5, :cond_0

    .line 252
    return-object p1

    .line 245
    :cond_0
    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 248
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 249
    .local v1, matcher:Ljava/util/regex/Matcher;
    aget-object v5, v4, v0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public compareTo(Lcom/cocmoc/kulinglite/Message;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 231
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/cocmoc/kulinglite/Message;->date:Ljava/util/Date;

    iget-object v1, p0, Lcom/cocmoc/kulinglite/Message;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/cocmoc/kulinglite/Message;

    invoke-virtual {p0, p1}, Lcom/cocmoc/kulinglite/Message;->compareTo(Lcom/cocmoc/kulinglite/Message;)I

    move-result v0

    return v0
.end method

.method public copy()Lcom/cocmoc/kulinglite/Message;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/cocmoc/kulinglite/Message;

    invoke-direct {v0}, Lcom/cocmoc/kulinglite/Message;-><init>()V

    .line 165
    .local v0, copy:Lcom/cocmoc/kulinglite/Message;
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Message;->lastUpdate:Ljava/lang/String;

    iput-object v1, v0, Lcom/cocmoc/kulinglite/Message;->lastUpdate:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Message;->windSpeed:Ljava/lang/String;

    iput-object v1, v0, Lcom/cocmoc/kulinglite/Message;->windSpeed:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    iput-object v1, v0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Message;->date:Ljava/util/Date;

    iput-object v1, v0, Lcom/cocmoc/kulinglite/Message;->date:Ljava/util/Date;

    .line 169
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 200
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 227
    :goto_0
    return v2

    .line 202
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    .line 203
    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    .line 205
    goto :goto_0

    .line 206
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/cocmoc/kulinglite/Message;

    move-object v1, v0

    .line 207
    .local v1, other:Lcom/cocmoc/kulinglite/Message;
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->date:Ljava/util/Date;

    if-nez v2, :cond_3

    .line 208
    iget-object v2, v1, Lcom/cocmoc/kulinglite/Message;->date:Ljava/util/Date;

    if-eqz v2, :cond_4

    move v2, v4

    .line 209
    goto :goto_0

    .line 210
    :cond_3
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->date:Ljava/util/Date;

    iget-object v3, v1, Lcom/cocmoc/kulinglite/Message;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 211
    goto :goto_0

    .line 212
    :cond_4
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 213
    iget-object v2, v1, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v2, v4

    .line 214
    goto :goto_0

    .line 215
    :cond_5
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    iget-object v3, v1, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v4

    .line 216
    goto :goto_0

    .line 217
    :cond_6
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->windSpeed:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 218
    iget-object v2, v1, Lcom/cocmoc/kulinglite/Message;->windSpeed:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v2, v4

    .line 219
    goto :goto_0

    .line 220
    :cond_7
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->windSpeed:Ljava/lang/String;

    iget-object v3, v1, Lcom/cocmoc/kulinglite/Message;->windSpeed:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v4

    .line 221
    goto :goto_0

    .line 222
    :cond_8
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->lastUpdate:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 223
    iget-object v2, v1, Lcom/cocmoc/kulinglite/Message;->lastUpdate:Ljava/lang/String;

    if-eqz v2, :cond_a

    move v2, v4

    .line 224
    goto :goto_0

    .line 225
    :cond_9
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->lastUpdate:Ljava/lang/String;

    iget-object v3, v1, Lcom/cocmoc/kulinglite/Message;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v4

    .line 226
    goto :goto_0

    :cond_a
    move v2, v5

    .line 227
    goto :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/cocmoc/kulinglite/Message;->FORMATTER:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/cocmoc/kulinglite/Message;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastUpdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Message;->lastUpdate:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherStation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Message;->weatherStation:Ljava/lang/String;

    return-object v0
.end method

.method public getWindDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public getWindDirectionImgage(Ljava/lang/String;)I
    .locals 1
    .parameter "direction"

    .prologue
    .line 94
    const-string v0, "north"

    if-ne p1, v0, :cond_0

    const v0, 0x7f020007

    .line 103
    :goto_0
    return v0

    .line 95
    :cond_0
    const-string v0, "northeast"

    if-ne p1, v0, :cond_1

    const v0, 0x7f020008

    goto :goto_0

    .line 96
    :cond_1
    const-string v0, "east"

    if-ne p1, v0, :cond_2

    const v0, 0x7f020004

    goto :goto_0

    .line 97
    :cond_2
    const-string v0, "southeast"

    if-ne p1, v0, :cond_3

    const v0, 0x7f02000b

    goto :goto_0

    .line 98
    :cond_3
    const-string v0, "south"

    if-ne p1, v0, :cond_4

    const v0, 0x7f02000a

    goto :goto_0

    .line 99
    :cond_4
    const-string v0, "southwest"

    if-ne p1, v0, :cond_5

    const v0, 0x7f02000c

    goto :goto_0

    .line 100
    :cond_5
    const-string v0, "west"

    if-ne p1, v0, :cond_6

    const v0, 0x7f02000d

    goto :goto_0

    .line 101
    :cond_6
    const-string v0, "northwest"

    if-ne p1, v0, :cond_7

    const v0, 0x7f020009

    goto :goto_0

    .line 103
    :cond_7
    const v0, 0x7f020003

    goto :goto_0
.end method

.method public getWindDirectionUri()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0xca

    const/16 v6, 0x9d

    const/16 v5, 0x70

    const/16 v4, 0x43

    const/16 v3, 0x16

    .line 118
    const-string v1, "direction"

    .line 120
    .local v1, directionString:Ljava/lang/String;
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cocmoc/kulinglite/Message;->checkIfNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 121
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 123
    .local v0, directionInt:I
    const/16 v2, 0x151

    if-gt v0, v2, :cond_0

    if-ge v0, v3, :cond_2

    :cond_0
    const-string v1, "north"

    .line 143
    .end local v0           #directionInt:I
    :cond_1
    :goto_0
    return-object v1

    .line 124
    .restart local v0       #directionInt:I
    :cond_2
    if-le v0, v3, :cond_3

    if-ge v0, v4, :cond_3

    const-string v1, "northeast"

    goto :goto_0

    .line 125
    :cond_3
    if-le v0, v4, :cond_4

    if-ge v0, v5, :cond_4

    const-string v1, "east"

    goto :goto_0

    .line 126
    :cond_4
    if-le v0, v5, :cond_5

    if-ge v0, v6, :cond_5

    const-string v1, "southeast"

    goto :goto_0

    .line 127
    :cond_5
    if-le v0, v6, :cond_6

    if-ge v0, v7, :cond_6

    const-string v1, "south"

    goto :goto_0

    .line 128
    :cond_6
    if-le v0, v7, :cond_7

    const/16 v2, 0xf7

    if-ge v0, v2, :cond_7

    const-string v1, "southwest"

    goto :goto_0

    .line 129
    :cond_7
    const/16 v2, 0xf7

    if-le v0, v2, :cond_8

    const/16 v2, 0x124

    if-ge v0, v2, :cond_8

    const-string v1, "west"

    goto :goto_0

    .line 130
    :cond_8
    const/16 v2, 0x124

    if-le v0, v2, :cond_1

    const/16 v2, 0x151

    if-ge v0, v2, :cond_1

    const-string v1, "northwest"

    goto :goto_0

    .line 134
    .end local v0           #directionInt:I
    :cond_9
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    const-string v3, "nord"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v1, "north"

    goto :goto_0

    .line 135
    :cond_a
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    const-string v3, "nordost"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v1, "northeast"

    goto :goto_0

    .line 136
    :cond_b
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    const-string v3, "ost"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v1, "east"

    goto :goto_0

    .line 137
    :cond_c
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    const-string v3, "sydost"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v1, "southeast"

    goto :goto_0

    .line 138
    :cond_d
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    const-string v3, "syd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v1, "south"

    goto :goto_0

    .line 139
    :cond_e
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    const-string v3, "sydv\u00e4st"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v1, "southwest"

    goto/16 :goto_0

    .line 140
    :cond_f
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    const-string v3, "v\u00e4st"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v1, "west"

    goto/16 :goto_0

    .line 141
    :cond_10
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    const-string v3, "nordv\u00e4st"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "northwest"

    goto/16 :goto_0
.end method

.method public getWindSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Message;->windSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public getsight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Message;->sight:Ljava/lang/String;

    return-object v0
.end method

.method public getstationHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Message;->stationHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getwindSpeedCast()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Message;->windSpeedCast:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    const/16 v0, 0x1f

    .line 189
    .local v0, prime:I
    const/4 v1, 0x1

    .line 190
    .local v1, result:I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->date:Ljava/util/Date;

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 191
    mul-int/lit8 v2, v1, 0x1f

    .line 192
    iget-object v3, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v4

    .line 191
    :goto_1
    add-int v1, v2, v3

    .line 193
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/cocmoc/kulinglite/Message;->windSpeed:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v4

    :goto_2
    add-int v1, v2, v3

    .line 194
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/cocmoc/kulinglite/Message;->lastUpdate:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v4

    :goto_3
    add-int v1, v2, v3

    .line 195
    return v1

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Message;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_0

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    .line 193
    :cond_2
    iget-object v3, p0, Lcom/cocmoc/kulinglite/Message;->windSpeed:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    .line 194
    :cond_3
    iget-object v3, p0, Lcom/cocmoc/kulinglite/Message;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 3
    .parameter "date"

    .prologue
    .line 152
    :goto_0
    const-string v1, "00"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    :try_start_0
    sget-object v1, Lcom/cocmoc/kulinglite/Message;->FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/cocmoc/kulinglite/Message;->date:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 153
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 158
    .local v0, e:Ljava/text/ParseException;
    const-string v1, "Kuling"

    const-string v2, "Message: setDate() ParseException e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setLastUpdate(Ljava/lang/String;)V
    .locals 1
    .parameter "lastUpdate"

    .prologue
    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Message;->lastUpdate:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setWeatherStation(Ljava/lang/String;)V
    .locals 1
    .parameter "weatherStationIn"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/cocmoc/kulinglite/Message;->cleanEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Message;->weatherStation:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setWindDirection(Ljava/lang/String;)V
    .locals 1
    .parameter "windDirectionIn"

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/cocmoc/kulinglite/Message;->cleanEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    .line 91
    :cond_0
    return-void
.end method

.method public setWindSpeed(Ljava/lang/String;)V
    .locals 1
    .parameter "windSpeed"

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Message;->windSpeed:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setsight(Ljava/lang/String;)V
    .locals 1
    .parameter "sight"

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Message;->sight:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setstationHeight(Ljava/lang/String;)V
    .locals 1
    .parameter "stationHeight"

    .prologue
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Message;->stationHeight:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setwindSpeedCast(Ljava/lang/String;)V
    .locals 1
    .parameter "windSpeedCast"

    .prologue
    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Message;->windSpeedCast:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Last Update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Message;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "WindSpeed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Message;->windSpeed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "Direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Message;->windDirection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
