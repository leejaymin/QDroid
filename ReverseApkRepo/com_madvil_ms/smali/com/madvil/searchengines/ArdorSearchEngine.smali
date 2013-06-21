.class public Lcom/madvil/searchengines/ArdorSearchEngine;
.super Ljava/lang/Object;
.source "ArdorSearchEngine.java"

# interfaces
.implements Lcom/madvil/searchengines/ISearchEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private executeHttpGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "link"

    .prologue
    .line 20
    const/4 v4, 0x0

    .line 21
    .local v4, in:Ljava/io/BufferedReader;
    const-string v9, ""

    .line 25
    .local v9, ret:Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 26
    .local v1, client:Lorg/apache/http/client/HttpClient;
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 28
    .local v7, request:Lorg/apache/http/client/methods/HttpGet;
    new-instance v11, Ljava/net/URI;

    invoke-direct {v11, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 29
    const-string v11, "Accept-Charset"

    const-string v12, "UTF-8"

    invoke-virtual {v7, v11, v12}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-interface {v1, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 32
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

    .line 33
    .end local v4           #in:Ljava/io/BufferedReader;
    .local v5, in:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v11, ""

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 34
    .local v10, sb:Ljava/lang/StringBuffer;
    const-string v6, ""

    .line 35
    .local v6, line:Ljava/lang/String;
    const-string v11, "line.separator"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, NL:Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 42
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 43
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 48
    if-eqz v5, :cond_3

    .line 50
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v5

    .line 57
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

    .line 39
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

    .line 45
    .end local v0           #NL:Ljava/lang/String;
    .end local v6           #line:Ljava/lang/String;
    .end local v10           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v11

    move-object v3, v11

    move-object v4, v5

    .line 46
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

    .line 48
    if-eqz v4, :cond_0

    .line 50
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 51
    :catch_1
    move-exception v2

    .line 52
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 47
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 48
    :goto_3
    if-eqz v4, :cond_2

    .line 50
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 55
    :cond_2
    :goto_4
    throw v11

    .line 51
    :catch_2
    move-exception v2

    .line 52
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 51
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

    .line 52
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_1

    .line 47
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

    .line 45
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v7           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :catch_4
    move-exception v11

    move-object v3, v11

    goto :goto_2
.end method


# virtual methods
.method public getNewInstance()Lcom/madvil/searchengines/ISearchEngine;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/madvil/searchengines/ArdorSearchEngine;

    invoke-direct {v0}, Lcom/madvil/searchengines/ArdorSearchEngine;-><init>()V

    return-object v0
.end method

.method public parseSEResponse(Ljava/lang/String;IZ)Lcom/madvil/searchengines/ParsedResponse;
    .locals 19
    .parameter "searchString"
    .parameter "page"
    .parameter "withCyrillic"

    .prologue
    .line 62
    new-instance v9, Lcom/madvil/searchengines/ParsedResponse;

    invoke-direct {v9}, Lcom/madvil/searchengines/ParsedResponse;-><init>()V

    .line 63
    .local v9, ret:Lcom/madvil/searchengines/ParsedResponse;
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lcom/madvil/searchengines/ParsedResponse;->setPaging(Z)V

    .line 65
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "http://music.ardor.ru/search.php?p=1&v=0&x=0&y=0&q="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x20

    const/16 v17, 0x2b

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 65
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, link:Ljava/lang/String;
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Search: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/madvil/core/DebugLog;->println(Ljava/lang/String;)V

    .line 71
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/madvil/searchengines/ArdorSearchEngine;->executeHttpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, response:Ljava/lang/String;
    const-string v14, "<BR>"

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 74
    .local v10, searchResults:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 76
    .local v3, c:I
    const/4 v6, 0x1

    .local v6, i:I
    :goto_0
    array-length v14, v10

    if-lt v6, v14, :cond_1

    .line 129
    .end local v3           #c:I
    .end local v6           #i:I
    .end local v8           #response:Ljava/lang/String;
    .end local v10           #searchResults:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v9

    .line 77
    .restart local v3       #c:I
    .restart local v6       #i:I
    .restart local v8       #response:Ljava/lang/String;
    .restart local v10       #searchResults:[Ljava/lang/String;
    :cond_1
    const/16 v14, 0x63

    if-gt v3, v14, :cond_0

    .line 81
    aget-object v14, v10, v6

    const-string v15, "download.php"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_3

    .line 76
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 85
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 87
    aget-object v14, v10, v6

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 89
    .local v12, str:[Ljava/lang/String;
    new-instance v11, Lcom/madvil/core/SimpleSong;

    invoke-direct {v11}, Lcom/madvil/core/SimpleSong;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .local v11, ss:Lcom/madvil/core/SimpleSong;
    const/4 v14, 0x1

    :try_start_1
    aget-object v14, v12, v14

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v13, str2:[Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/madvil/core/Helper;->formatSpecialEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 94
    const/4 v14, 0x1

    const/4 v15, 0x1

    aget-object v15, v13, v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x3

    sub-int v17, v17, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/madvil/core/Helper;->formatSpecialEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 101
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-static {v14}, Lcom/madvil/core/Helper;->haveCyrillic(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    const/4 v14, 0x1

    aget-object v14, v13, v14

    invoke-static {v14}, Lcom/madvil/core/Helper;->haveCyrillic(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 105
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-virtual {v11, v14}, Lcom/madvil/core/SimpleSong;->setArtist(Ljava/lang/String;)V

    .line 106
    const/4 v14, 0x1

    aget-object v14, v13, v14

    invoke-virtual {v11, v14}, Lcom/madvil/core/SimpleSong;->setName(Ljava/lang/String;)V

    .line 109
    const/4 v14, 0x2

    aget-object v14, v12, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, dur:Ljava/lang/String;
    const-string v14, "("

    const-string v15, ""

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ")"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v11, v4}, Lcom/madvil/core/SimpleSong;->setDuration(Ljava/lang/String;)V

    .line 115
    const/4 v14, 0x0

    aget-object v14, v12, v14

    const/4 v15, 0x0

    aget-object v15, v12, v15

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    const/16 v16, 0x0

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, _link:Ljava/lang/String;
    invoke-virtual {v11, v2}, Lcom/madvil/core/SimpleSong;->setLink(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v9}, Lcom/madvil/searchengines/ParsedResponse;->getSongs()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 121
    .end local v2           #_link:Ljava/lang/String;
    .end local v4           #dur:Ljava/lang/String;
    .end local v13           #str2:[Ljava/lang/String;
    :catch_0
    move-exception v14

    goto/16 :goto_2

    .line 125
    .end local v3           #c:I
    .end local v6           #i:I
    .end local v8           #response:Ljava/lang/String;
    .end local v10           #searchResults:[Ljava/lang/String;
    .end local v11           #ss:Lcom/madvil/core/SimpleSong;
    .end local v12           #str:[Ljava/lang/String;
    :catch_1
    move-exception v14

    move-object v5, v14

    .line 126
    .local v5, ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method
