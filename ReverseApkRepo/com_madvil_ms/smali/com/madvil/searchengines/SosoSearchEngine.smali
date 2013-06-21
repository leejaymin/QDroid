.class public Lcom/madvil/searchengines/SosoSearchEngine;
.super Ljava/lang/Object;
.source "SosoSearchEngine.java"

# interfaces
.implements Lcom/madvil/searchengines/ISearchEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private executeHttpGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "link"

    .prologue
    .line 24
    const/4 v4, 0x0

    .line 25
    .local v4, in:Ljava/io/BufferedReader;
    const-string v9, ""

    .line 29
    .local v9, ret:Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 30
    .local v1, client:Lorg/apache/http/client/HttpClient;
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 32
    .local v7, request:Lorg/apache/http/client/methods/HttpGet;
    new-instance v11, Ljava/net/URI;

    invoke-direct {v11, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 34
    invoke-interface {v1, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 35
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

    .line 36
    .end local v4           #in:Ljava/io/BufferedReader;
    .local v5, in:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v11, ""

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 37
    .local v10, sb:Ljava/lang/StringBuffer;
    const-string v6, ""

    .line 38
    .local v6, line:Ljava/lang/String;
    const-string v11, "line.separator"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, NL:Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 44
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 45
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 50
    if-eqz v5, :cond_3

    .line 52
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v4, v5

    .line 59
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

    .line 41
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

    .line 47
    .end local v0           #NL:Ljava/lang/String;
    .end local v6           #line:Ljava/lang/String;
    .end local v10           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v11

    move-object v3, v11

    move-object v4, v5

    .line 48
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

    .line 50
    if-eqz v4, :cond_0

    .line 52
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 53
    :catch_1
    move-exception v2

    .line 54
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 49
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 50
    :goto_3
    if-eqz v4, :cond_2

    .line 52
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 57
    :cond_2
    :goto_4
    throw v11

    .line 53
    :catch_2
    move-exception v2

    .line 54
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 53
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

    .line 54
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_1

    .line 49
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

    .line 47
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
    .line 20
    new-instance v0, Lcom/madvil/searchengines/SosoSearchEngine;

    invoke-direct {v0}, Lcom/madvil/searchengines/SosoSearchEngine;-><init>()V

    return-object v0
.end method

.method public parseSEResponse(Ljava/lang/String;IZ)Lcom/madvil/searchengines/ParsedResponse;
    .locals 22
    .parameter "searchString"
    .parameter "page"
    .parameter "withCyrillic"

    .prologue
    .line 64
    new-instance v14, Lcom/madvil/searchengines/ParsedResponse;

    invoke-direct {v14}, Lcom/madvil/searchengines/ParsedResponse;-><init>()V

    .line 65
    .local v14, ret:Lcom/madvil/searchengines/ParsedResponse;
    const/16 v18, 0x0

    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/madvil/searchengines/ParsedResponse;->setPaging(Z)V

    .line 67
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "http://cgi.music.soso.com/fcgi-bin/m.q?w="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x20

    const/16 v21, 0x2b

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 68
    const-string v19, "&p=1&source=1&t=1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 67
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 72
    .local v10, link:Ljava/lang/String;
    :try_start_0
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Search: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/madvil/core/DebugLog;->println(Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/madvil/searchengines/SosoSearchEngine;->executeHttpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "tbody"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v13, v18, v19

    .line 74
    .local v13, response:Ljava/lang/String;
    const-string v18, "tr  onmouseover"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 75
    .local v12, parts:[Ljava/lang/String;
    const/4 v5, 0x1

    .local v5, i:I
    :goto_0
    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v5

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 111
    .end local v5           #i:I
    .end local v12           #parts:[Ljava/lang/String;
    .end local v13           #response:Ljava/lang/String;
    :goto_1
    return-object v14

    .line 78
    .restart local v5       #i:I
    .restart local v12       #parts:[Ljava/lang/String;
    .restart local v13       #response:Ljava/lang/String;
    :cond_0
    :try_start_1
    aget-object v18, v12, v5

    const-string v19, "<td class=\"data\">"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 79
    .local v8, j:I
    aget-object v18, v12, v5

    aget-object v19, v12, v5

    const/16 v20, 0x3e

    add-int/lit8 v21, v8, 0x32

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->indexOf(II)I

    move-result v19

    move-object/from16 v0, v18

    move v1, v8

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 80
    .local v17, str:Ljava/lang/String;
    const-string v18, "@@"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 81
    add-int/lit8 v18, v8, 0x2

    const-string v19, "@@"

    add-int/lit8 v20, v8, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 82
    .local v15, song:Ljava/lang/String;
    const-string v18, "@@FI"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .end local v8           #j:I
    .local v9, j:I
    move-object/from16 v0, v17

    move v1, v8

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, info:Ljava/lang/String;
    add-int/lit8 v18, v9, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 84
    .local v11, links:Ljava/lang/String;
    const-string v18, "@@"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, infoArr:[Ljava/lang/String;
    const-string v18, ".mp3"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .end local v9           #j:I
    .restart local v8       #j:I
    const/16 v18, -0x1

    move v0, v8

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 75
    .end local v6           #info:Ljava/lang/String;
    .end local v7           #infoArr:[Ljava/lang/String;
    .end local v8           #j:I
    .end local v11           #links:Ljava/lang/String;
    .end local v15           #song:Ljava/lang/String;
    .end local v17           #str:Ljava/lang/String;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 89
    .restart local v6       #info:Ljava/lang/String;
    .restart local v7       #infoArr:[Ljava/lang/String;
    .restart local v8       #j:I
    .restart local v11       #links:Ljava/lang/String;
    .restart local v15       #song:Ljava/lang/String;
    .restart local v17       #str:Ljava/lang/String;
    :cond_1
    const/16 v18, 0x0

    add-int/lit8 v19, v8, 0x4

    move-object v0, v11

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 90
    :goto_3
    const/16 v18, 0x7c

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/16 v18, -0x1

    move v0, v8

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 93
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "http:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "//"

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 95
    new-instance v16, Lcom/madvil/core/SimpleSong;

    invoke-direct/range {v16 .. v16}, Lcom/madvil/core/SimpleSong;-><init>()V

    .line 96
    .local v16, ss:Lcom/madvil/core/SimpleSong;
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/madvil/core/SimpleSong;->setName(Ljava/lang/String;)V

    .line 97
    move-object v0, v7

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x5

    sub-int v18, v18, v19

    aget-object v18, v7, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/madvil/core/SimpleSong;->setArtist(Ljava/lang/String;)V

    .line 98
    move-object v0, v7

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    aget-object v18, v7, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/madvil/core/SimpleSong;->setDuration(I)V

    .line 99
    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/madvil/core/SimpleSong;->setLink(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v14}, Lcom/madvil/searchengines/ParsedResponse;->getSongs()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 102
    .end local v6           #info:Ljava/lang/String;
    .end local v7           #infoArr:[Ljava/lang/String;
    .end local v8           #j:I
    .end local v11           #links:Ljava/lang/String;
    .end local v15           #song:Ljava/lang/String;
    .end local v16           #ss:Lcom/madvil/core/SimpleSong;
    .end local v17           #str:Ljava/lang/String;
    :catch_0
    move-exception v18

    move-object/from16 v3, v18

    .line 103
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 107
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #i:I
    .end local v12           #parts:[Ljava/lang/String;
    .end local v13           #response:Ljava/lang/String;
    :catch_1
    move-exception v18

    move-object/from16 v4, v18

    .line 108
    .local v4, ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 91
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v5       #i:I
    .restart local v6       #info:Ljava/lang/String;
    .restart local v7       #infoArr:[Ljava/lang/String;
    .restart local v8       #j:I
    .restart local v11       #links:Ljava/lang/String;
    .restart local v12       #parts:[Ljava/lang/String;
    .restart local v13       #response:Ljava/lang/String;
    .restart local v15       #song:Ljava/lang/String;
    .restart local v17       #str:Ljava/lang/String;
    :cond_2
    add-int/lit8 v18, v8, 0x1

    :try_start_3
    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v11

    goto/16 :goto_3
.end method
