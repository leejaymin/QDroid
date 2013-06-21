.class public Lcom/cocmoc/kulinglite/DomFeedParser;
.super Lcom/cocmoc/kulinglite/BaseFeedParser;
.source "DomFeedParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Kuling"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "feedUrl"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/cocmoc/kulinglite/BaseFeedParser;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public isInteger(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 85
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    const/4 v1, 0x1

    .line 91
    :goto_0
    return v1

    .line 88
    :catch_0
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Lcom/cocmoc/kulinglite/Message;
    .locals 21
    .parameter "station"

    .prologue
    .line 26
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 27
    .local v8, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const-string v18, "Kuling"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " - DomFeedParser Station:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v13, Lcom/cocmoc/kulinglite/Message;

    invoke-direct {v13}, Lcom/cocmoc/kulinglite/Message;-><init>()V

    .line 30
    .local v13, message:Lcom/cocmoc/kulinglite/Message;
    :try_start_0
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 31
    .local v5, builder:Ljavax/xml/parsers/DocumentBuilder;
    const-string v18, "Kuling"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " - DomFeedParser builder  STREAM: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/cocmoc/kulinglite/DomFeedParser;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->available()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/cocmoc/kulinglite/DomFeedParser;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 33
    .local v6, dom:Lorg/w3c/dom/Document;
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v17

    .line 34
    .local v17, root:Lorg/w3c/dom/Element;
    const-string v18, "Kuling"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " - DomFeedParser root: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v18, "lastupdate"

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cocmoc/kulinglite/Message;->setLastUpdate(Ljava/lang/String;)V

    .line 36
    const-string v18, "Kuling"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " - DomFeedParser root.attribute: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "lastupdate"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v18, "item"

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 38
    .local v11, items:Lorg/w3c/dom/NodeList;
    const-string v18, "Kuling"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " - DomFeedParser items: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    move v0, v9

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 72
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/cocmoc/kulinglite/DomFeedParser;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    :goto_1
    return-object v13

    .line 40
    :cond_1
    :try_start_2
    invoke-interface {v11, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 41
    .local v10, item:Lorg/w3c/dom/Node;
    move-object v0, v10

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v3, v0

    .line 42
    .local v3, ItemElement:Lorg/w3c/dom/Element;
    const-string v18, "station"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, Wstation:Ljava/lang/String;
    invoke-virtual {v13, v4}, Lcom/cocmoc/kulinglite/Message;->cleanEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    const-string v18, "Kuling"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " - Wstation: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/cocmoc/kulinglite/DomFeedParser;->isInteger(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 47
    :cond_2
    const-string v18, "Kuling"

    const-string v19, " - DomFeedParser Wstation.equals(station)= true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 49
    .local v15, properties:Lorg/w3c/dom/NodeList;
    const-string v18, "Kuling"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " - DomFeedParser itemsNodelistLength: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v12, 0x0

    .local v12, j:I
    :goto_2
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 51
    invoke-interface {v15, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 52
    .local v16, property:Lorg/w3c/dom/Node;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    .line 53
    .local v14, name:Ljava/lang/String;
    const-string v18, "WindSpeed"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 54
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cocmoc/kulinglite/Message;->setWindSpeed(Ljava/lang/String;)V

    .line 55
    const-string v18, "Kuling"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " - DomFeedParser setwindspeed: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/cocmoc/kulinglite/Message;->getWindSpeed()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 56
    :cond_4
    const-string v18, "WindDirection"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 57
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cocmoc/kulinglite/Message;->setWindDirection(Ljava/lang/String;)V

    .line 58
    const-string v18, "Kuling"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " - DomFeedParser setwinddirection: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/cocmoc/kulinglite/Message;->getWindDirection()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 67
    .end local v3           #ItemElement:Lorg/w3c/dom/Element;
    .end local v4           #Wstation:Ljava/lang/String;
    .end local v5           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #dom:Lorg/w3c/dom/Document;
    .end local v9           #i:I
    .end local v10           #item:Lorg/w3c/dom/Node;
    .end local v11           #items:Lorg/w3c/dom/NodeList;
    .end local v12           #j:I
    .end local v14           #name:Ljava/lang/String;
    .end local v15           #properties:Lorg/w3c/dom/NodeList;
    .end local v16           #property:Lorg/w3c/dom/Node;
    .end local v17           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v18

    move-object/from16 v7, v18

    .line 68
    .local v7, e:Ljava/lang/Exception;
    const-string v18, "Kuling"

    const-string v19, " - DomFeedParser RuntimeException(e)"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 64
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #ItemElement:Lorg/w3c/dom/Element;
    .restart local v4       #Wstation:Ljava/lang/String;
    .restart local v5       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #dom:Lorg/w3c/dom/Document;
    .restart local v9       #i:I
    .restart local v10       #item:Lorg/w3c/dom/Node;
    .restart local v11       #items:Lorg/w3c/dom/NodeList;
    .restart local v17       #root:Lorg/w3c/dom/Element;
    :cond_5
    :try_start_3
    const-string v18, "Kuling"

    const-string v19, " - RESET"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 39
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 73
    .end local v3           #ItemElement:Lorg/w3c/dom/Element;
    .end local v4           #Wstation:Ljava/lang/String;
    .end local v10           #item:Lorg/w3c/dom/Node;
    :catch_1
    move-exception v18

    move-object/from16 v7, v18

    .line 74
    .local v7, e:Ljava/io/IOException;
    const-string v18, "Kuling"

    const-string v19, " - DomFeedParser IOException(e)"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method
