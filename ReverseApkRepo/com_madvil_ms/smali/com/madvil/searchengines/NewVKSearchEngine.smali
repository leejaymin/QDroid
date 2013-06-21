.class public Lcom/madvil/searchengines/NewVKSearchEngine;
.super Ljava/lang/Object;
.source "NewVKSearchEngine.java"

# interfaces
.implements Lcom/madvil/searchengines/ISearchEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;
    }
.end annotation


# instance fields
.field private apps:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;",
            ">;"
        }
    .end annotation
.end field

.field private lastAppKey:Ljava/lang/String;

.field private rnd:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/madvil/searchengines/NewVKSearchEngine;->rnd:Ljava/util/Random;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/madvil/searchengines/NewVKSearchEngine;->lastAppKey:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/madvil/searchengines/NewVKSearchEngine;->apps:Ljava/util/Vector;

    .line 41
    const-string v0, "11741544"

    const-string v1, "2055750"

    const-string v2, "XTl80Qvudw"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "16748531"

    const-string v1, "2055756"

    const-string v2, "3fYVJO8qSw"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "3378894"

    const-string v1, "2058398"

    const-string v2, "lOUc7ZWg6Q"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "6868263"

    const-string v1, "2058415"

    const-string v2, "SvwfBTC3D7"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "10424555"

    const-string v1, "2113895"

    const-string v2, "Wf8jZ8bXMV"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "12219697"

    const-string v1, "2113901"

    const-string v2, "t86pUKzc2T"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "16892548"

    const-string v1, "2113904"

    const-string v2, "E99hC80RWk"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "3204125"

    const-string v1, "2046774"

    const-string v2, "ovFsmm2mGS"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "121919708"

    const-string v1, "2129681"

    const-string v2, "XNxCoJ5yFR"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "121921731"

    const-string v1, "2129766"

    const-string v2, "mcIR5up136"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "121922754"

    const-string v1, "2130936"

    const-string v2, "xjuYhmDELJ"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "121923214"

    const-string v1, "2130972"

    const-string v2, "v2Ee6FApwC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "122349467"

    const-string v1, "2132057"

    const-string v2, "9daYYtcvEE"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "122362866"

    const-string v1, "2132062"

    const-string v2, "9jIG8129o1"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "122885173"

    const-string v1, "2134302"

    const-string v2, "JchJWUHpZ4"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "122886170"

    const-string v1, "2134844"

    const-string v2, "kYAPKoxrhS"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "123239579"

    const-string v1, "2135631"

    const-string v2, "UO0nmnBED0"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "123239948"

    const-string v1, "2135962"

    const-string v2, "1PInxD2hBI"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "123488580"

    const-string v1, "2136890"

    const-string v2, "Yrp2JsAvht"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "123453669"

    const-string v1, "2137822"

    const-string v2, "G7Jidd6cIr"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "123659133"

    const-string v1, "2138395"

    const-string v2, "IXf7OCBtnc"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "124317574"

    const-string v1, "2141486"

    const-string v2, "hFTvvqsgbH"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "124318920"

    const-string v1, "2141522"

    const-string v2, "20VxzrOywn"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "124603710"

    const-string v1, "2142928"

    const-string v2, "ZdzSgpdxsn"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "124604055"

    const-string v1, "2143315"

    const-string v2, "2clC3tUIyJ"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "125030963"

    const-string v1, "2145048"

    const-string v2, "fIoxTHCDh0"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "125029952"

    const-string v1, "2145131"

    const-string v2, "uFFu4jZlsr"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "125289646"

    const-string v1, "2146268"

    const-string v2, "1GxFMTAQjS"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "125290176"

    const-string v1, "2146597"

    const-string v2, "G0E5smGbi8"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "125590444"

    const-string v1, "2149718"

    const-string v2, "2UUZsMOu3E"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "125936279"

    const-string v1, "2155324"

    const-string v2, "AlmsaIX2jN"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "127555795"

    const-string v1, "2156561"

    const-string v2, "6ngGsbZbum"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "127984338"

    const-string v1, "2157895"

    const-string v2, "KeSXhQKBdc"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "127985242"

    const-string v1, "2157910"

    const-string v2, "xkkeTLOx1N"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "128555769"

    const-string v1, "2159570"

    const-string v2, "iZAxsVtehz"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "128557685"

    const-string v1, "2159751"

    const-string v2, "BWAZX48DXV"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "129062795"

    const-string v1, "2160974"

    const-string v2, "iqPwf8LacN"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "129100216"

    const-string v1, "2165078"

    const-string v2, "JQxl06dzno"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "130969813"

    const-string v1, "2165082"

    const-string v2, "pAczuowAdA"

    invoke-virtual {p0, v0, v1, v2}, Lcom/madvil/searchengines/NewVKSearchEngine;->addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private static ByteToHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "hash"

    .prologue
    const/16 v4, 0x10

    .line 100
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 102
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 103
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v4, :cond_1

    .line 104
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    :cond_1
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private executeHttpGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "link"

    .prologue
    .line 137
    const/4 v4, 0x0

    .line 138
    .local v4, in:Ljava/io/BufferedReader;
    const-string v9, ""

    .line 142
    .local v9, ret:Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 143
    .local v1, client:Lorg/apache/http/client/HttpClient;
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 145
    .local v7, request:Lorg/apache/http/client/methods/HttpGet;
    new-instance v11, Ljava/net/URI;

    invoke-direct {v11, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 146
    const-string v11, "Cookie"

    const-string v12, "remixchk=5"

    invoke-virtual {v7, v11, v12}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {v1, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 149
    .local v8, response:Lorg/apache/http/HttpResponse;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 150
    .end local v4           #in:Ljava/io/BufferedReader;
    .local v5, in:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v11, ""

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 151
    .local v10, sb:Ljava/lang/StringBuffer;
    const-string v6, ""

    .line 152
    .local v6, line:Ljava/lang/String;
    const-string v11, "line.separator"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, NL:Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 158
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 159
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 164
    if-eqz v5, :cond_3

    .line 166
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v5

    .line 173
    .end local v0           #NL:Ljava/lang/String;
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v10           #sb:Ljava/lang/StringBuffer;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-object v9

    .line 155
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v0       #NL:Ljava/lang/String;
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    .restart local v5       #in:Ljava/io/BufferedReader;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    .restart local v10       #sb:Ljava/lang/StringBuffer;
    :cond_1
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 161
    .end local v0           #NL:Ljava/lang/String;
    .end local v6           #line:Ljava/lang/String;
    .end local v10           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v11

    move-object v3, v11

    move-object v4, v5

    .line 162
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v7           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .local v3, ex:Ljava/lang/Exception;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    if-eqz v4, :cond_0

    .line 166
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 167
    :catch_1
    move-exception v2

    .line 168
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 163
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 164
    :goto_3
    if-eqz v4, :cond_2

    .line 166
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 171
    :cond_2
    :goto_4
    throw v11

    .line 167
    :catch_2
    move-exception v2

    .line 168
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 167
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v0       #NL:Ljava/lang/String;
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    .restart local v5       #in:Ljava/io/BufferedReader;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    .restart local v10       #sb:Ljava/lang/StringBuffer;
    :catch_3
    move-exception v2

    .line 168
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_1

    .line 163
    .end local v0           #NL:Ljava/lang/String;
    .end local v4           #in:Ljava/io/BufferedReader;
    .end local v6           #line:Ljava/lang/String;
    .end local v10           #sb:Ljava/lang/StringBuffer;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_3

    .line 161
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v7           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :catch_4
    move-exception v11

    move-object v3, v11

    goto :goto_2
.end method

.method private getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 114
    const-string v2, ""

    .line 117
    .local v2, ret:Ljava/lang/String;
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 118
    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/madvil/searchengines/NewVKSearchEngine;->ByteToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 123
    .end local v1           #md:Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 120
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 121
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method private getRndApp()Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/madvil/searchengines/NewVKSearchEngine;->rnd:Ljava/util/Random;

    iget-object v2, p0, Lcom/madvil/searchengines/NewVKSearchEngine;->apps:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 128
    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/madvil/searchengines/NewVKSearchEngine;->apps:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;

    iget-object v1, v1, Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/madvil/searchengines/NewVKSearchEngine;->lastAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/madvil/searchengines/NewVKSearchEngine;->apps:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;

    iget-object v1, v1, Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;->key:Ljava/lang/String;

    iput-object v1, p0, Lcom/madvil/searchengines/NewVKSearchEngine;->lastAppKey:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/madvil/searchengines/NewVKSearchEngine;->apps:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;

    return-object p0

    .line 129
    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/madvil/searchengines/NewVKSearchEngine;->rnd:Ljava/util/Random;

    iget-object v2, p0, Lcom/madvil/searchengines/NewVKSearchEngine;->apps:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "mid"
    .parameter "app_id"
    .parameter "key"

    .prologue
    .line 92
    new-instance v0, Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;

    invoke-direct {v0, p0}, Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;-><init>(Lcom/madvil/searchengines/NewVKSearchEngine;)V

    .line 93
    .local v0, sa:Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;
    iput-object p1, v0, Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;->mid:Ljava/lang/String;

    .line 94
    iput-object p2, v0, Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;->app_id:Ljava/lang/String;

    .line 95
    iput-object p3, v0, Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;->key:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/madvil/searchengines/NewVKSearchEngine;->apps:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public getNewInstance()Lcom/madvil/searchengines/ISearchEngine;
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/madvil/searchengines/NewVKSearchEngine;

    invoke-direct {v0}, Lcom/madvil/searchengines/NewVKSearchEngine;-><init>()V

    return-object v0
.end method

.method public parseSEResponse(Ljava/lang/String;IZ)Lcom/madvil/searchengines/ParsedResponse;
    .locals 20
    .parameter "searchString"
    .parameter "page"
    .parameter "withCyrillic"

    .prologue
    .line 178
    new-instance v11, Lcom/madvil/searchengines/ParsedResponse;

    invoke-direct {v11}, Lcom/madvil/searchengines/ParsedResponse;-><init>()V

    .line 179
    .local v11, ret:Lcom/madvil/searchengines/ParsedResponse;
    const/16 v16, 0x0

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/madvil/searchengines/ParsedResponse;->setPaging(Z)V

    .line 182
    :try_start_0
    const-string v10, ""

    .line 184
    .local v10, response:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/16 v16, 0x3

    move v0, v6

    move/from16 v1, v16

    if-lt v0, v1, :cond_1

    .line 200
    :cond_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 201
    .local v7, json:Lorg/json/JSONObject;
    const-string v16, "response"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 202
    .local v8, jsonArray:Lorg/json/JSONArray;
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v16

    move v0, v6

    move/from16 v1, v16

    if-lt v0, v1, :cond_2

    .line 231
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 237
    .end local v6           #i:I
    .end local v7           #json:Lorg/json/JSONObject;
    .end local v8           #jsonArray:Lorg/json/JSONArray;
    .end local v10           #response:Ljava/lang/String;
    :goto_2
    return-object v11

    .line 185
    .restart local v6       #i:I
    .restart local v10       #response:Ljava/lang/String;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/madvil/searchengines/NewVKSearchEngine;->getRndApp()Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;

    move-result-object v12

    .line 186
    .local v12, sa:Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;
    new-instance v16, Ljava/lang/StringBuilder;

    move-object v0, v12

    iget-object v0, v0, Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;->mid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "api_id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v12

    iget-object v0, v0, Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;->app_id:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "count=200format=JSONmethod=audio.searchq="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 187
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "test_mode=1"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v12

    iget-object v0, v0, Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;->key:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/madvil/searchengines/NewVKSearchEngine;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 188
    .local v13, sig:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "http://api.vkontakte.ru/api.php?api_id="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v12

    iget-object v0, v0, Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;->app_id:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&test_mode=1&count=200&format=JSON&"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 189
    const-string v17, "method=audio.search&q="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, " "

    const-string v19, "%20"

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&sig="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 188
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 191
    .local v9, link:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/madvil/searchengines/NewVKSearchEngine;->executeHttpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 193
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1f4

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_0

    .line 197
    const-wide/16 v16, 0x12c

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 205
    .end local v9           #link:Ljava/lang/String;
    .end local v12           #sa:Lcom/madvil/searchengines/NewVKSearchEngine$SimpleApp;
    .end local v13           #sig:Ljava/lang/String;
    .restart local v7       #json:Lorg/json/JSONObject;
    .restart local v8       #jsonArray:Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    const-string v17, "audio"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 206
    const-string v16, "artist"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/madvil/core/Helper;->formatSpecialEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, artist:Ljava/lang/String;
    const-string v16, "title"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/madvil/core/Helper;->formatSpecialEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 208
    .local v14, song:Ljava/lang/String;
    const-string v16, "duration"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 209
    .local v3, dur:I
    const-string v16, "url"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "UTF-8"

    invoke-static/range {v16 .. v17}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, fileLink:Ljava/lang/String;
    const/4 v15, 0x0

    .line 214
    .local v15, ss:Lcom/madvil/core/SimpleSong;
    new-instance v15, Lcom/madvil/core/SimpleSong;

    .end local v15           #ss:Lcom/madvil/core/SimpleSong;
    invoke-direct {v15}, Lcom/madvil/core/SimpleSong;-><init>()V

    .line 219
    .restart local v15       #ss:Lcom/madvil/core/SimpleSong;
    if-eqz v15, :cond_3

    .line 220
    invoke-virtual {v15, v2}, Lcom/madvil/core/SimpleSong;->setArtist(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v15, v14}, Lcom/madvil/core/SimpleSong;->setName(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v15, v3}, Lcom/madvil/core/SimpleSong;->setDuration(I)V

    .line 223
    invoke-virtual {v15, v5}, Lcom/madvil/core/SimpleSong;->setLink(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v11}, Lcom/madvil/searchengines/ParsedResponse;->getSongs()Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    .end local v2           #artist:Ljava/lang/String;
    .end local v3           #dur:I
    .end local v5           #fileLink:Ljava/lang/String;
    .end local v14           #song:Ljava/lang/String;
    .end local v15           #ss:Lcom/madvil/core/SimpleSong;
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 233
    .end local v6           #i:I
    .end local v7           #json:Lorg/json/JSONObject;
    .end local v8           #jsonArray:Lorg/json/JSONArray;
    .end local v10           #response:Ljava/lang/String;
    :catch_0
    move-exception v16

    move-object/from16 v4, v16

    .line 234
    .local v4, ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 228
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v6       #i:I
    .restart local v7       #json:Lorg/json/JSONObject;
    .restart local v8       #jsonArray:Lorg/json/JSONArray;
    .restart local v10       #response:Ljava/lang/String;
    :catch_1
    move-exception v16

    goto :goto_3
.end method
