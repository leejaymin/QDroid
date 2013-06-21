.class public Lcom/falmarri/futures/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field public static final DEFAULT_DATA:Ljava/lang/String; = "nsol1c"

.field public static final URL:Ljava/lang/String; = "http://www.bloomberg.com/markets/stocks/futures/"

.field public static final YRL:Ljava/lang/String; = "http://finance.yahoo.com/d/quotes.csv?s={0}&f={1}"

.field private static final americas:[Ljava/lang/String;

.field private static final europe:[Ljava/lang/String;

.field private static final p:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    const-string v0, "<tr(?: class=\'(?:even|odd)\')?>\\s*<td class=\'name\'>([A-Z0-9&/ ]+)</td>\\s*<td class=\'date\'>[a-zA-Z0-9 ]+</td>\\s*<td class=\'value\'>\\s*([0-9\\.,]+)\\s*</td>\\s*<td\\s+class=\'value_change (up|down)\'>\\s*([-+0-9\\.,]+)\\s*</td>\\s*<td class=\'value\'>\\s*([0-9\\.,]+)\\s*</td>\\s*<td class=\'value\'>\\s*([0-9\\.,]+)</td>\\s*<td class=\'value\'>\\s*([0-9\\.,]+)\\s*</td>\\s*<td class=\'time last\'>\\s*([0-9\\./,:]+)\\s*</td>\\s*</tr>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/falmarri/futures/Helper;->p:Ljava/util/regex/Pattern;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DJIA INDEX"

    aput-object v1, v0, v3

    const-string v1, "S&P 500"

    aput-object v1, v0, v4

    .line 24
    const-string v1, "NASDAQ 100"

    aput-object v1, v0, v5

    const-string v1, "S&P/TSX 60 IX"

    aput-object v1, v0, v6

    const-string v1, "MEX BOLSA IDX"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "BOVESPA INDEX"

    aput-object v2, v0, v1

    .line 23
    sput-object v0, Lcom/falmarri/futures/Helper;->americas:[Ljava/lang/String;

    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EURO STOXX 50"

    aput-object v1, v0, v3

    const-string v1, "FTSE 100 IDX"

    aput-object v1, v0, v4

    const-string v1, "CAC40 10 EURO"

    aput-object v1, v0, v5

    const-string v1, "DAX INDEX"

    aput-object v1, v0, v6

    const-string v1, "IBEX 35 INDX"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 27
    const-string v2, "FTSE/MIB IDX"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AMSTERDAM IDX"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "OMXS30 IND"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SWISS MKT IX"

    aput-object v2, v0, v1

    .line 26
    sput-object v0, Lcom/falmarri/futures/Helper;->europe:[Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQuoteInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "tick"
    .parameter "tags"

    .prologue
    .line 66
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "http://finance.yahoo.com/d/quotes.csv?s={0}&f={1}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/falmarri/futures/ServerHttpRequest;->doGet(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 74
    :goto_0
    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 74
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    .line 72
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getQuoteInfo([Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "tick"
    .parameter "tags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    array-length v4, p0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 94
    :goto_1
    return-object v1

    .line 82
    :cond_0
    aget-object v2, p0, v3

    .line 83
    .local v2, t:Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "http://finance.yahoo.com/d/quotes.csv?s={0}&f={1}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/falmarri/futures/ServerHttpRequest;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    .end local v2           #t:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 88
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 90
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getQuotes()Lcom/falmarri/futures/QuoteList;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 38
    new-instance v11, Lcom/falmarri/futures/QuoteList;

    invoke-direct {v11}, Lcom/falmarri/futures/QuoteList;-><init>()V

    .line 40
    .local v11, quotes:Lcom/falmarri/futures/QuoteList;
    const-string v0, "http://www.bloomberg.com/markets/stocks/futures/"

    invoke-static {v0}, Lcom/falmarri/futures/ServerHttpRequest;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 41
    .local v13, response:Ljava/lang/String;
    sget-object v0, Lcom/falmarri/futures/Helper;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 43
    .local v10, m:Ljava/util/regex/Matcher;
    const-string v12, ""

    .line 44
    .local v12, r:Ljava/lang/String;
    :goto_0
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    return-object v11

    .line 46
    :cond_0
    sget-object v0, Lcom/falmarri/futures/Helper;->americas:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "Americas"

    .line 47
    .local v1, region:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Lcom/falmarri/futures/Quote;

    invoke-direct {v0, v1}, Lcom/falmarri/futures/Quote;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Lcom/falmarri/futures/QuoteList;->add(Ljava/lang/Object;)Z

    .line 49
    move-object v12, v1

    .line 51
    :cond_1
    new-instance v0, Lcom/falmarri/futures/Quote;

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v10, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v10, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v10, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v10, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    invoke-virtual {v10, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v10, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/falmarri/futures/Quote;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Lcom/falmarri/futures/QuoteList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    .end local v1           #region:Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/falmarri/futures/Helper;->europe:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "Europe"

    goto :goto_1

    :cond_3
    const-string v1, "Asia"

    goto :goto_1
.end method

.method public static stripNonValidXMLCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "in"

    .prologue
    .line 99
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v2, out:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, ""

    .line 119
    :goto_0
    return-object v3

    .line 103
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 105
    .local v0, current:C
    const/16 v3, 0x9

    if-eq v0, v3, :cond_5

    .line 106
    const/16 v3, 0xa

    if-eq v0, v3, :cond_5

    .line 107
    const/16 v3, 0xd

    if-eq v0, v3, :cond_5

    .line 108
    const/16 v3, 0x20

    if-lt v0, v3, :cond_3

    const v3, 0xd7ff

    if-le v0, v3, :cond_5

    .line 109
    :cond_3
    const v3, 0xe000

    if-lt v0, v3, :cond_4

    const v3, 0xfffd

    if-le v0, v3, :cond_5

    .line 110
    :cond_4
    const/high16 v3, 0x1

    if-lt v0, v3, :cond_6

    const v3, 0x10ffff

    if-gt v0, v3, :cond_6

    .line 113
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    :cond_6
    const-string v3, "Falmarri"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Not a valid character "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
