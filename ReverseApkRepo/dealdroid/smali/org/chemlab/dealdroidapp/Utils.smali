.class public Lorg/chemlab/dealdroidapp/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DealDroidUtils"

.field private static final PRICE_REGEX:Ljava/lang/String; = "Price.*\\$(\\d+\\.\\d+)"

.field private static final REPLACE_HTML_REGEX:Ljava/lang/String; = "\\<.*?\\>"

.field private static final RFC822_DATE_FORMAT:Ljava/lang/String; = "EEE, d MMM yyyy HH:mm:ss Z"

.field private static final formatter:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, d MMM yyyy HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/chemlab/dealdroidapp/Utils;->formatter:Ljava/text/DateFormat;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatRFC822Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 49
    sget-object v0, Lorg/chemlab/dealdroidapp/Utils;->formatter:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasSiteAsset(Landroid/content/Context;Lorg/chemlab/dealdroidapp/Site;)Z
    .locals 8
    .parameter "context"
    .parameter "site"

    .prologue
    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, ret:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/chemlab/dealdroidapp/Site;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".html"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, siteAsset:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_0

    .line 96
    :goto_1
    return v2

    .line 87
    :cond_0
    aget-object v0, v5, v4

    .line 88
    .local v0, asset:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 89
    const/4 v2, 0x1

    .line 90
    goto :goto_1

    .line 87
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    .end local v0           #asset:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Ljava/io/IOException;
    const-string v4, "DealDroidUtils"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static parseRFC822Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lorg/chemlab/dealdroidapp/Utils;->formatter:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static searchForPrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    .line 61
    const/4 v3, 0x0

    .line 62
    .local v3, price:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 64
    const-string v4, "\\<.*?\\>"

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, cleanDesc:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 66
    const-string v4, "Price.*\\$(\\d+\\.\\d+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 67
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 68
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 69
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    .end local v0           #cleanDesc:Ljava/lang/String;
    .end local v1           #m:Ljava/util/regex/Matcher;
    .end local v2           #p:Ljava/util/regex/Pattern;
    :cond_0
    return-object v3
.end method
