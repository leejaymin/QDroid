.class public Lorg/appcelerator/titanium/util/TiUrl;
.super Ljava/lang/Object;
.source "TiUrl.java"


# static fields
.field public static final CURRENT_PATH:Ljava/lang/String; = "."

.field public static final CURRENT_PATH_WITH_SEPARATOR:Ljava/lang/String; = "./"

#the value of this static final field might be set in the static constructor
.field protected static final DBG:Z = false

.field public static final PARENT_PATH:Ljava/lang/String; = ".."

.field public static final PARENT_PATH_WITH_SEPARATOR:Ljava/lang/String; = "../"

.field public static final PATH_SEPARATOR:Ljava/lang/String; = "/"

.field public static final SCHEME_SUFFIX:Ljava/lang/String; = "://"

.field protected static final TAG:Ljava/lang/String; = "TiUrl"


# instance fields
.field public baseUrl:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lorg/appcelerator/titanium/util/TiUrl;->DBG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 39
    const-string v0, "app://"

    invoke-direct {p0, v0, p1}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "baseUrl"
    .parameter "url"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/appcelerator/titanium/util/TiUrl;->url:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static normalizeWindowUrl(Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;
    .locals 4
    .parameter "url"

    .prologue
    .line 100
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 101
    .local v1, lastSlash:I
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, baseUrl:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 103
    const-string v0, "app://"

    .line 105
    :cond_0
    invoke-static {v0, p0}, Lorg/appcelerator/titanium/util/TiUrl;->normalizeWindowUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v2

    return-object v2
.end method

.method public static normalizeWindowUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;
    .locals 11
    .parameter "baseUrl"
    .parameter "url"

    .prologue
    const/4 v8, 0x2

    const-string v10, "app://"

    const-string v9, "TiUrl"

    .line 110
    sget-boolean v6, Lorg/appcelerator/titanium/util/TiUrl;->DBG:Z

    if-eqz v6, :cond_0

    .line 111
    const-string v6, "TiUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Window Base URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eqz p1, :cond_0

    .line 113
    const-string v6, "TiUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Window Relative URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 118
    .local v5, uri:Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, scheme:Ljava/lang/String;
    if-nez v4, :cond_8

    .line 120
    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, path:Ljava/lang/String;
    const/4 v1, 0x0

    .line 122
    .local v1, fname:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v6, "./"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 123
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 124
    const-string v3, ""

    .line 129
    :cond_1
    :goto_0
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 130
    .local v2, lastIndex:I
    if-lez v2, :cond_3

    .line 131
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 138
    :goto_1
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 139
    if-nez v3, :cond_4

    const-string v6, "app://"

    move-object p0, v10

    .line 140
    :goto_2
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 159
    .end local v1           #fname:Ljava/lang/String;
    .end local v2           #lastIndex:I
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #scheme:Ljava/lang/String;
    .end local v5           #uri:Ljava/net/URI;
    :goto_3
    new-instance v6, Lorg/appcelerator/titanium/util/TiUrl;

    invoke-direct {v6, p0, p1}, Lorg/appcelerator/titanium/util/TiUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 126
    .restart local v1       #fname:Ljava/lang/String;
    .restart local v3       #path:Ljava/lang/String;
    .restart local v4       #scheme:Ljava/lang/String;
    .restart local v5       #uri:Ljava/net/URI;
    :cond_2
    const/4 v6, 0x2

    :try_start_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 134
    .restart local v2       #lastIndex:I
    :cond_3
    move-object v1, v3

    .line 135
    const/4 v3, 0x0

    goto :goto_1

    .line 139
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app:/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object p0, v6

    goto :goto_2

    .line 141
    :cond_5
    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    .line 142
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 143
    :cond_6
    const-string v6, "../"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 144
    const/4 v6, 0x1

    invoke-static {v3, p0, v6}, Lorg/appcelerator/titanium/util/TiUrl;->parseRelativeBaseUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 146
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 148
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "app://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 149
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_3

    .line 151
    .end local v1           #fname:Ljava/lang/String;
    .end local v2           #lastIndex:I
    .end local v3           #path:Ljava/lang/String;
    :cond_8
    const-string v6, "app"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 152
    move-object p0, p1

    goto/16 :goto_3

    .line 154
    :cond_9
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scheme not implemented for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    .end local v4           #scheme:Ljava/lang/String;
    .end local v5           #uri:Ljava/net/URI;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 157
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v6, "TiUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6, v0}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method protected static parseRelativeBaseUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "path"
    .parameter "baseUrl"
    .parameter "checkAppPrefix"

    .prologue
    .line 50
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, right:[Ljava/lang/String;
    const/4 p0, 0x0

    .line 52
    .local p0, left:[Ljava/lang/String;
    const-string p0, "://"

    .end local p0           #left:[Ljava/lang/String;
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 53
    if-eqz p2, :cond_2

    .line 54
    const-string p0, "app://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 55
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .restart local p0       #left:[Ljava/lang/String;
    move-object p2, p0

    .line 72
    .end local p0           #left:[Ljava/lang/String;
    .end local p1
    .local p2, left:[Ljava/lang/String;
    :goto_0
    const/4 p1, 0x0

    .line 73
    .local p1, rIndex:I
    array-length p0, p2

    .line 74
    .local p0, lIndex:I
    :cond_0
    aget-object v0, v1, p1

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 75
    add-int/lit8 p0, p0, -0x1

    .line 76
    add-int/lit8 p1, p1, 0x1

    .line 77
    array-length v0, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_0

    move v0, p1

    .end local p1           #rIndex:I
    .local v0, rIndex:I
    move p1, p0

    .line 81
    .end local p0           #lIndex:I
    .local p1, lIndex:I
    :goto_1
    const-string v3, ""

    .line 82
    .local v3, sep:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 p0, 0x0

    .local p0, i:I
    :goto_2
    if-ge p0, p1, :cond_5

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #sep:Ljava/lang/String;
    aget-object v4, p2, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v3, "/"

    .line 83
    .restart local v3       #sep:Ljava/lang/String;
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 57
    .end local v0           #rIndex:I
    .end local v2           #sb:Ljava/lang/StringBuilder;
    .end local v3           #sep:Ljava/lang/String;
    .end local p0           #i:I
    .local p1, baseUrl:Ljava/lang/String;
    .local p2, checkAppPrefix:Z
    :cond_1
    const-string p0, "://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    .line 58
    .local p0, idx:I
    add-int/lit8 p0, p0, 0x3

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local p0           #idx:I
    move-result-object p0

    const-string p1, "/"

    .end local p1           #baseUrl:Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .local p0, left:[Ljava/lang/String;
    move-object p2, p0

    .line 59
    .end local p0           #left:[Ljava/lang/String;
    .local p2, left:[Ljava/lang/String;
    goto :goto_0

    .line 61
    .restart local p1       #baseUrl:Ljava/lang/String;
    .local p2, checkAppPrefix:Z
    :cond_2
    const-string p0, "://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 62
    .local p0, tmp:[Ljava/lang/String;
    array-length p1, p0

    .end local p1           #baseUrl:Ljava/lang/String;
    const/4 p2, 0x1

    if-le p1, p2, :cond_3

    .line 63
    .end local p2           #checkAppPrefix:Z
    const/4 p1, 0x1

    aget-object p0, p0, p1

    .end local p0           #tmp:[Ljava/lang/String;
    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .local p0, left:[Ljava/lang/String;
    :goto_3
    move-object p2, p0

    .line 67
    .end local p0           #left:[Ljava/lang/String;
    .local p2, left:[Ljava/lang/String;
    goto :goto_0

    .line 65
    .end local p2           #left:[Ljava/lang/String;
    .local p0, tmp:[Ljava/lang/String;
    :cond_3
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .local p0, left:[Ljava/lang/String;
    goto :goto_3

    .line 69
    .end local p0           #left:[Ljava/lang/String;
    .restart local p1       #baseUrl:Ljava/lang/String;
    .local p2, checkAppPrefix:Z
    :cond_4
    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .restart local p0       #left:[Ljava/lang/String;
    move-object p2, p0

    .end local p0           #left:[Ljava/lang/String;
    .local p2, left:[Ljava/lang/String;
    goto :goto_0

    .line 87
    .restart local v0       #rIndex:I
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    .restart local v3       #sep:Ljava/lang/String;
    .local p0, i:I
    .local p1, lIndex:I
    :cond_5
    move p0, v0

    move-object p1, v3

    .end local v3           #sep:Ljava/lang/String;
    .end local p2           #left:[Ljava/lang/String;
    .local p1, sep:Ljava/lang/String;
    :goto_4
    array-length p2, v1

    if-ge p0, p2, :cond_6

    .line 88
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #sep:Ljava/lang/String;
    aget-object p2, v1, p0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string p1, "/"

    .line 87
    .restart local p1       #sep:Ljava/lang/String;
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 91
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 92
    .local p0, bUrl:Ljava/lang/String;
    const-string p1, "/"

    .end local p1           #sep:Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #bUrl:Ljava/lang/String;
    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 95
    .restart local p0       #bUrl:Ljava/lang/String;
    :cond_7
    return-object p0

    .end local v0           #rIndex:I
    .end local v2           #sb:Ljava/lang/StringBuilder;
    .local p0, lIndex:I
    .local p1, rIndex:I
    .restart local p2       #left:[Ljava/lang/String;
    :cond_8
    move v0, p1

    .end local p1           #rIndex:I
    .restart local v0       #rIndex:I
    move p1, p0

    .end local p0           #lIndex:I
    .local p1, lIndex:I
    goto/16 :goto_1
.end method


# virtual methods
.method public absoluteUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "defaultScheme"
    .parameter "url"
    .parameter "baseUrl"

    .prologue
    .line 220
    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 221
    .local v6, uri:Ljava/net/URI;
    invoke-virtual {v6}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, scheme:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 223
    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 225
    .local v2, fname:Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 226
    .local v3, lastIndex:I
    if-lez v3, :cond_0

    .line 227
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 228
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 230
    :cond_0
    const-string v7, "../"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ".."

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 231
    :cond_1
    const/4 v7, 0x0

    invoke-static {v4, p3, v7}, Lorg/appcelerator/titanium/util/TiUrl;->parseRelativeBaseUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, bUrl:Ljava/lang/String;
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "//"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v8, 0x2

    aput-object v2, v7, v8

    invoke-static {v7}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 238
    .end local v0           #bUrl:Ljava/lang/String;
    .end local v2           #fname:Ljava/lang/String;
    .end local v3           #lastIndex:I
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #scheme:Ljava/lang/String;
    .end local v6           #uri:Ljava/net/URI;
    :cond_2
    :goto_0
    return-object p2

    .line 235
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 236
    .local v1, e:Ljava/net/URISyntaxException;
    const-string v7, "TiUrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error parsing url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resolve(Lorg/appcelerator/titanium/TiContext;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 164
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiUrl;->url:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/appcelerator/titanium/util/TiUrl;->resolve(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "path"

    .prologue
    .line 169
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/appcelerator/titanium/util/TiUrl;->resolve(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "baseUrl"
    .parameter "path"

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/appcelerator/titanium/util/TiUrl;->resolve(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "baseUrl"
    .parameter "path"
    .parameter "scheme"

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "/"

    .line 179
    invoke-static {p3}, Lorg/appcelerator/titanium/io/TiFileFactory;->isLocalScheme(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, p3

    .line 214
    :goto_0
    return-object v4

    .line 183
    :cond_0
    const/4 v1, 0x0

    .line 184
    .local v1, result:Ljava/lang/String;
    if-nez p4, :cond_1

    .line 185
    const-string p4, "app:"

    .line 187
    :cond_1
    const-string v4, "./"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 189
    const-string p3, ""

    .line 194
    :cond_2
    :goto_1
    const-string v4, "../"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    invoke-virtual {p0, p4, p3, p2}, Lorg/appcelerator/titanium/util/TiUrl;->absoluteUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 198
    :cond_3
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 199
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    .line 200
    const-string v4, "/"

    invoke-virtual {p3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    :goto_2
    const-string v4, "file:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 210
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    aput-object v1, v0, v6

    .line 211
    .local v0, p:[Ljava/lang/String;
    invoke-static {p1, v0, v6}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v2

    .line 212
    .local v2, tbf:Lorg/appcelerator/titanium/io/TiBaseFile;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v1

    .end local v0           #p:[Ljava/lang/String;
    .end local v2           #tbf:Lorg/appcelerator/titanium/io/TiBaseFile;
    :cond_4
    move-object v4, v1

    .line 214
    goto :goto_0

    .line 191
    .end local v3           #uri:Landroid/net/Uri;
    :cond_5
    invoke-virtual {p3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 203
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 206
    :cond_7
    move-object v1, p3

    goto :goto_2
.end method
