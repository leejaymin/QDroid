.class public Lcom/wolfram/alpha/impl/WAQueryResultImpl;
.super Ljava/lang/Object;
.source "WAQueryResultImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WAQueryResult;
.implements Lcom/wolfram/alpha/visitor/Visitable;
.implements Ljava/io/Serializable;


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0x53e5e8ca486db02cL


# instance fields
.field private assumptions:[Lcom/wolfram/alpha/impl/WAAssumptionImpl;

.field private banners:[Lcom/wolfram/alpha/impl/WABannerImpl;

.field private bytes:[B

.field private dataTypes:[Ljava/lang/String;

.field private didYouMeans:[Ljava/lang/String;

.field private error:Z

.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private examplePage:Lcom/wolfram/alpha/WAExamplePage;

.field private futureTopic:Lcom/wolfram/alpha/WAFutureTopic;

.field private generalization:Lcom/wolfram/alpha/WAGeneralization;

.field private generalizationViewPosition:I

.field private hasComputationView:Z

.field private transient http:Lcom/wolfram/alpha/net/HttpProvider;

.field private imagesAcquired:Z

.field private languageMessage:[Ljava/lang/String;

.field private parseTiming:D

.field private pods:[Lcom/wolfram/alpha/impl/WAPodImpl;

.field private transient query:Lcom/wolfram/alpha/WAQuery;

.field private recalcURL:Ljava/lang/String;

.field private relatedExamples:[Lcom/wolfram/alpha/impl/WARelatedExampleImpl;

.field private relatedLinks:[Lcom/wolfram/alpha/impl/WARelatedLinkImpl;

.field private relatedQueries:[Ljava/lang/String;

.field private relatedQueriesURL:Ljava/lang/String;

.field private sources:[Lcom/wolfram/alpha/impl/WASourceInfoImpl;

.field private splatTips:[Ljava/lang/String;

.field private success:Z

.field private transient tempDir:Ljava/io/File;

.field private timedoutScanners:[Ljava/lang/String;

.field private timing:D

.field private transient userData:Ljava/lang/Object;

.field private version:Ljava/lang/String;

.field private warnings:[Lcom/wolfram/alpha/impl/WAWarningImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 386
    const-string v0, "com.wolfram.alpha.impl.WAQueryResultImpl"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/wolfram/alpha/WAQuery;[BLcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V
    .locals 6
    .parameter "query"
    .parameter "bytes"
    .parameter "http"
    .parameter "tempDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v5, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->imagesAcquired:Z

    .line 60
    iput v5, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->errorCode:I

    .line 62
    sget-object v4, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->dataTypes:[Ljava/lang/String;

    .line 63
    sget-object v4, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->timedoutScanners:[Ljava/lang/String;

    .line 67
    const-string v4, ""

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->recalcURL:Ljava/lang/String;

    .line 68
    const-string v4, ""

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->relatedQueriesURL:Ljava/lang/String;

    .line 71
    sget-object v4, Lcom/wolfram/alpha/impl/WAPodImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAPodImpl;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->pods:[Lcom/wolfram/alpha/impl/WAPodImpl;

    .line 72
    sget-object v4, Lcom/wolfram/alpha/impl/WABannerImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WABannerImpl;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->banners:[Lcom/wolfram/alpha/impl/WABannerImpl;

    .line 73
    sget-object v4, Lcom/wolfram/alpha/impl/WAAssumptionImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAAssumptionImpl;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->assumptions:[Lcom/wolfram/alpha/impl/WAAssumptionImpl;

    .line 74
    sget-object v4, Lcom/wolfram/alpha/impl/WAWarningImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAWarningImpl;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->warnings:[Lcom/wolfram/alpha/impl/WAWarningImpl;

    .line 75
    sget-object v4, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WARelatedLinkImpl;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->relatedLinks:[Lcom/wolfram/alpha/impl/WARelatedLinkImpl;

    .line 76
    sget-object v4, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WASourceInfoImpl;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->sources:[Lcom/wolfram/alpha/impl/WASourceInfoImpl;

    .line 77
    sget-object v4, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->didYouMeans:[Ljava/lang/String;

    .line 78
    sget-object v4, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WARelatedExampleImpl;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->relatedExamples:[Lcom/wolfram/alpha/impl/WARelatedExampleImpl;

    .line 79
    sget-object v4, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->languageMessage:[Ljava/lang/String;

    .line 80
    sget-object v4, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->splatTips:[Ljava/lang/String;

    .line 84
    sget-object v4, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->relatedQueries:[Ljava/lang/String;

    .line 86
    iput v5, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->generalizationViewPosition:I

    .line 87
    iput-boolean v5, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->hasComputationView:Z

    .line 103
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->query:Lcom/wolfram/alpha/WAQuery;

    .line 104
    iput-object p3, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    .line 105
    iput-object p2, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->bytes:[B

    .line 106
    iput-object p4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->tempDir:Ljava/io/File;

    .line 114
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 115
    .local v3, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 116
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 120
    .local v1, doc:Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->createFromDOM(Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3

    .line 134
    return-void

    .line 122
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #doc:Lorg/w3c/dom/Document;
    .end local v3           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 124
    .local v2, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v4, Lcom/wolfram/alpha/WAException;

    invoke-direct {v4, v2}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 125
    .end local v2           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 127
    .local v2, e:Ljavax/xml/parsers/FactoryConfigurationError;
    new-instance v4, Lcom/wolfram/alpha/WAException;

    invoke-direct {v4, v2}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 128
    .end local v2           #e:Ljavax/xml/parsers/FactoryConfigurationError;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 130
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Lcom/wolfram/alpha/WAException;

    invoke-direct {v4, v2}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 131
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    move-object v2, v4

    .line 132
    .local v2, e:Lorg/xml/sax/SAXException;
    new-instance v4, Lcom/wolfram/alpha/WAException;

    invoke-direct {v4, v2}, Lcom/wolfram/alpha/WAException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private createFromDOM(Lorg/w3c/dom/Element;)V
    .locals 51
    .parameter "thisElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 442
    if-eqz p1, :cond_18

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v47

    const-string v48, "queryresult"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_18

    .line 445
    const-string v47, "success"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    const-string v48, "true"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->success:Z

    .line 446
    const-string v47, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    const-string v48, "true"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->error:Z

    .line 448
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->error:Z

    move/from16 v47, v0

    if-eqz v47, :cond_2

    .line 451
    const-string v47, "error"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 453
    .local v7, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_1

    .line 454
    const/16 v47, 0x0

    move-object v0, v7

    move/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 455
    .local v10, errorElement:Lorg/w3c/dom/Element;
    const-string v47, "code"

    move-object v0, v10

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 456
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_0

    .line 458
    const/16 v47, 0x0

    :try_start_0
    move-object v0, v7

    move/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->errorCode:I

    .line 459
    const/16 v47, 0x0

    move-object v0, v7

    move/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 464
    :cond_0
    :goto_0
    const-string v47, "msg"

    move-object v0, v10

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 465
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_1

    .line 466
    const/16 v47, 0x0

    move-object v0, v7

    move/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->errorMessage:Ljava/lang/String;

    .line 634
    .end local v7           #children:Lorg/w3c/dom/NodeList;
    .end local v10           #errorElement:Lorg/w3c/dom/Element;
    .end local p1
    :cond_1
    :goto_1
    return-void

    .line 471
    .restart local p1
    :cond_2
    :try_start_1
    const-string v47, "timing"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v47

    move-wide/from16 v0, v47

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->timing:D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 474
    :goto_2
    :try_start_2
    const-string v47, "timing"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v47

    move-wide/from16 v0, v47

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->parseTiming:D
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 476
    :goto_3
    const-string v47, "version"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->version:Ljava/lang/String;

    .line 477
    const-string v47, "datatypes"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    const-string v48, ","

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->dataTypes:[Ljava/lang/String;

    .line 478
    const-string v47, "timedout"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    const-string v48, ","

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->timedoutScanners:[Ljava/lang/String;

    .line 479
    const-string v47, "recalculate"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->recalcURL:Ljava/lang/String;

    .line 480
    const-string v47, "related"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->relatedQueriesURL:Ljava/lang/String;

    .line 482
    const-string v47, "pod"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 483
    .local v30, podElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    .line 484
    .local v23, numPods:I
    move/from16 v0, v23

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WAPodImpl;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->pods:[Lcom/wolfram/alpha/impl/WAPodImpl;

    .line 485
    const/4 v15, 0x0

    .local v15, i:I
    :goto_4
    move v0, v15

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->pods:[Lcom/wolfram/alpha/impl/WAPodImpl;

    move-object/from16 v47, v0

    new-instance v48, Lcom/wolfram/alpha/impl/WAPodImpl;

    move-object/from16 v0, v30

    move v1, v15

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->tempDir:Ljava/io/File;

    move-object/from16 v50, v0

    move-object/from16 v0, v48

    move-object v1, v4

    move-object/from16 v2, v49

    move-object/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/alpha/impl/WAPodImpl;-><init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    aput-object v48, v47, v15

    .line 485
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 488
    :cond_3
    const/16 v46, 0x0

    .line 489
    .local v46, weather_banner:Z
    const-string v47, "banner"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 490
    .local v5, bannerElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    .line 491
    .local v19, numBanners:I
    move/from16 v0, v19

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WABannerImpl;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->banners:[Lcom/wolfram/alpha/impl/WABannerImpl;

    .line 492
    const/4 v15, 0x0

    :goto_5
    move v0, v15

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 493
    invoke-interface {v5, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    const-string v47, "type"

    move-object v0, v4

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    const-string v48, "weather"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_4

    .line 494
    const/16 v46, 0x1

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->banners:[Lcom/wolfram/alpha/impl/WABannerImpl;

    move-object/from16 v47, v0

    new-instance v48, Lcom/wolfram/alpha/impl/WABannerImpl;

    invoke-interface {v5, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->tempDir:Ljava/io/File;

    move-object/from16 v50, v0

    move-object/from16 v0, v48

    move-object v1, v4

    move-object/from16 v2, v49

    move-object/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/alpha/impl/WABannerImpl;-><init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    aput-object v48, v47, v15

    .line 492
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 497
    :cond_5
    if-nez v46, :cond_6

    .line 498
    const/16 v19, 0x0

    .line 499
    move/from16 v0, v19

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WABannerImpl;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->banners:[Lcom/wolfram/alpha/impl/WABannerImpl;

    .line 502
    :cond_6
    const-string v47, "assumption"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 503
    .local v4, assumptionElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    .line 504
    .local v18, numAssums:I
    move/from16 v0, v18

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WAAssumptionImpl;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->assumptions:[Lcom/wolfram/alpha/impl/WAAssumptionImpl;

    .line 505
    const/4 v15, 0x0

    .end local v5           #bannerElements:Lorg/w3c/dom/NodeList;
    :goto_6
    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->assumptions:[Lcom/wolfram/alpha/impl/WAAssumptionImpl;

    move-object/from16 v47, v0

    new-instance v48, Lcom/wolfram/alpha/impl/WAAssumptionImpl;

    invoke-interface {v4, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    move-object/from16 v0, v48

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/wolfram/alpha/impl/WAAssumptionImpl;-><init>(Lorg/w3c/dom/Element;)V

    aput-object v48, v47, v15

    .line 505
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 508
    :cond_7
    const-string v47, "warnings"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v45

    .line 511
    .local v45, warningsElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v45 .. v45}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_b

    .line 512
    const/16 v47, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v44

    check-cast v44, Lorg/w3c/dom/Element;

    .line 513
    .local v44, warningsElement:Lorg/w3c/dom/Element;
    invoke-interface/range {v44 .. v44}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 514
    .restart local v7       #children:Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    .line 515
    .local v22, numNodes:I
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v43, warningElements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    const/4 v15, 0x0

    :goto_7
    move v0, v15

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 517
    invoke-interface {v7, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 518
    .local v6, child:Lorg/w3c/dom/Node;
    move-object v0, v6

    instance-of v0, v0, Lorg/w3c/dom/Element;

    move/from16 v47, v0

    if-eqz v47, :cond_8

    .line 519
    check-cast v6, Lorg/w3c/dom/Element;

    .end local v6           #child:Lorg/w3c/dom/Node;
    move-object/from16 v0, v43

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 521
    :cond_9
    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 522
    .local v28, numWarnings:I
    move/from16 v0, v28

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WAWarningImpl;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->warnings:[Lcom/wolfram/alpha/impl/WAWarningImpl;

    .line 523
    const/4 v15, 0x0

    :goto_8
    move v0, v15

    move/from16 v1, v28

    if-ge v0, v1, :cond_b

    .line 524
    move-object/from16 v0, v43

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lorg/w3c/dom/Element;

    .line 525
    .local v42, warningElement:Lorg/w3c/dom/Element;
    const-string v47, "reinterpret"

    invoke-interface/range {v42 .. v42}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_a

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->warnings:[Lcom/wolfram/alpha/impl/WAWarningImpl;

    move-object/from16 v47, v0

    new-instance v48, Lcom/wolfram/alpha/impl/WAReinterpretWarningImpl;

    move-object/from16 v0, v48

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/wolfram/alpha/impl/WAReinterpretWarningImpl;-><init>(Lorg/w3c/dom/Element;)V

    aput-object v48, v47, v15

    .line 523
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 528
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->warnings:[Lcom/wolfram/alpha/impl/WAWarningImpl;

    move-object/from16 v47, v0

    new-instance v48, Lcom/wolfram/alpha/impl/WAWarningImpl;

    move-object/from16 v0, v48

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/wolfram/alpha/impl/WAWarningImpl;-><init>(Lorg/w3c/dom/Element;)V

    aput-object v48, v47, v15

    goto :goto_9

    .line 532
    .end local v7           #children:Lorg/w3c/dom/NodeList;
    .end local v22           #numNodes:I
    .end local v28           #numWarnings:I
    .end local v42           #warningElement:Lorg/w3c/dom/Element;
    .end local v43           #warningElements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .end local v44           #warningsElement:Lorg/w3c/dom/Element;
    :cond_b
    const-string v47, "tips"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v41

    .line 535
    .local v41, tipsElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_e

    .line 536
    const/16 v47, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v40

    check-cast v40, Lorg/w3c/dom/Element;

    .line 537
    .local v40, tipsElement:Lorg/w3c/dom/Element;
    invoke-interface/range {v40 .. v40}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 538
    .restart local v7       #children:Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    .line 539
    .restart local v22       #numNodes:I
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v39, tipElements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    const/4 v15, 0x0

    :goto_a
    move v0, v15

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 541
    invoke-interface {v7, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 542
    .restart local v6       #child:Lorg/w3c/dom/Node;
    move-object v0, v6

    instance-of v0, v0, Lorg/w3c/dom/Element;

    move/from16 v47, v0

    if-eqz v47, :cond_c

    .line 543
    check-cast v6, Lorg/w3c/dom/Element;

    .end local v6           #child:Lorg/w3c/dom/Node;
    move-object/from16 v0, v39

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 545
    :cond_d
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 546
    .local v27, numTips:I
    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->splatTips:[Ljava/lang/String;

    .line 547
    const/4 v15, 0x0

    .end local v4           #assumptionElements:Lorg/w3c/dom/NodeList;
    :goto_b
    move v0, v15

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->splatTips:[Ljava/lang/String;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/String;

    move-object/from16 v0, v39

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    const-string v49, "text"

    move-object v0, v4

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v48, v47, v15

    .line 547
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 551
    .end local v7           #children:Lorg/w3c/dom/NodeList;
    .end local v22           #numNodes:I
    .end local v27           #numTips:I
    .end local v39           #tipElements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .end local v40           #tipsElement:Lorg/w3c/dom/Element;
    :cond_e
    const-string v47, "sidebarlink"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v32

    .line 552
    .local v32, relatedLinkElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    .line 553
    .local v25, numRelateds:I
    move/from16 v0, v25

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WARelatedLinkImpl;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->relatedLinks:[Lcom/wolfram/alpha/impl/WARelatedLinkImpl;

    .line 554
    const/4 v15, 0x0

    :goto_c
    move v0, v15

    move/from16 v1, v25

    if-ge v0, v1, :cond_f

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->relatedLinks:[Lcom/wolfram/alpha/impl/WARelatedLinkImpl;

    move-object/from16 v47, v0

    new-instance v48, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;

    move-object/from16 v0, v32

    move v1, v15

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->tempDir:Ljava/io/File;

    move-object/from16 v50, v0

    move-object/from16 v0, v48

    move-object v1, v4

    move-object/from16 v2, v49

    move-object/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/alpha/impl/WARelatedLinkImpl;-><init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    aput-object v48, v47, v15

    .line 554
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 557
    :cond_f
    const-string v47, "didyoumean"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 558
    .local v8, didYouMeanElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    .line 559
    .local v20, numDidYouMeans:I
    if-lez v20, :cond_10

    .line 560
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->didYouMeans:[Ljava/lang/String;

    .line 561
    const/4 v15, 0x0

    :goto_d
    move v0, v15

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 562
    invoke-interface {v8, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v38

    .line 563
    .local v38, textNode:Lorg/w3c/dom/Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->didYouMeans:[Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v48

    aput-object v48, v47, v15

    .line 561
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 567
    .end local v38           #textNode:Lorg/w3c/dom/Node;
    :cond_10
    const-string v47, "relatedexample"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v31

    .line 568
    .local v31, relatedExampleElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    .line 569
    .local v24, numRelatedExamples:I
    if-lez v24, :cond_11

    .line 570
    move/from16 v0, v24

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WARelatedExampleImpl;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->relatedExamples:[Lcom/wolfram/alpha/impl/WARelatedExampleImpl;

    .line 571
    const/4 v15, 0x0

    :goto_e
    move v0, v15

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->relatedExamples:[Lcom/wolfram/alpha/impl/WARelatedExampleImpl;

    move-object/from16 v47, v0

    new-instance v48, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;

    move-object/from16 v0, v31

    move v1, v15

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->tempDir:Ljava/io/File;

    move-object/from16 v50, v0

    move-object/from16 v0, v48

    move-object v1, v4

    move-object/from16 v2, v49

    move-object/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;-><init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    aput-object v48, v47, v15

    .line 571
    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    .line 575
    :cond_11
    const-string v47, "languagemsg"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 576
    .local v17, languageMsgElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    .line 578
    .local v21, numLanugageMsgs:I
    if-lez v21, :cond_12

    .line 579
    const/16 v47, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    .line 580
    .local v16, languageMsgElement:Lorg/w3c/dom/Element;
    const-string v47, "english"

    move-object/from16 v0, v16

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 581
    .local v9, english:Ljava/lang/String;
    const-string v47, "other"

    move-object/from16 v0, v16

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 582
    .local v12, foreign:Ljava/lang/String;
    const/16 v47, 0x2

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aput-object v9, v47, v48

    const/16 v48, 0x1

    aput-object v12, v47, v48

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->languageMessage:[Ljava/lang/String;

    .line 585
    .end local v9           #english:Ljava/lang/String;
    .end local v12           #foreign:Ljava/lang/String;
    .end local v16           #languageMsgElement:Lorg/w3c/dom/Element;
    :cond_12
    const-string v47, "sources"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v37

    .line 588
    .local v37, sourcesElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_15

    .line 589
    const/16 v47, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    check-cast v36, Lorg/w3c/dom/Element;

    .line 590
    .local v36, sourcesElement:Lorg/w3c/dom/Element;
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 591
    .restart local v7       #children:Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    .line 592
    .restart local v22       #numNodes:I
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v35, sourceElements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    const/4 v15, 0x0

    :goto_f
    move v0, v15

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    .line 594
    invoke-interface {v7, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 595
    .restart local v6       #child:Lorg/w3c/dom/Node;
    move-object v0, v6

    instance-of v0, v0, Lorg/w3c/dom/Element;

    move/from16 v47, v0

    if-eqz v47, :cond_13

    .line 596
    check-cast v6, Lorg/w3c/dom/Element;

    .end local v6           #child:Lorg/w3c/dom/Node;
    move-object/from16 v0, v35

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_13
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 598
    :cond_14
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 599
    .local v26, numSources:I
    move/from16 v0, v26

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WASourceInfoImpl;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->sources:[Lcom/wolfram/alpha/impl/WASourceInfoImpl;

    .line 600
    const/4 v15, 0x0

    :goto_10
    move v0, v15

    move/from16 v1, v26

    if-ge v0, v1, :cond_15

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->sources:[Lcom/wolfram/alpha/impl/WASourceInfoImpl;

    move-object/from16 v47, v0

    new-instance v48, Lcom/wolfram/alpha/impl/WASourceInfoImpl;

    move-object/from16 v0, v35

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object/from16 v0, v48

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/wolfram/alpha/impl/WASourceInfoImpl;-><init>(Lorg/w3c/dom/Element;)V

    aput-object v48, v47, v15

    .line 600
    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    .line 604
    .end local v7           #children:Lorg/w3c/dom/NodeList;
    .end local v22           #numNodes:I
    .end local v26           #numSources:I
    .end local v35           #sourceElements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .end local v36           #sourcesElement:Lorg/w3c/dom/Element;
    :cond_15
    const-string v47, "futuretopic"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 606
    .local v13, futureTopicElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_16

    .line 607
    new-instance v47, Lcom/wolfram/alpha/impl/WAFutureTopicImpl;

    const/16 v48, 0x0

    move-object v0, v13

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object/from16 v0, v47

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/wolfram/alpha/impl/WAFutureTopicImpl;-><init>(Lorg/w3c/dom/Element;)V

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->futureTopic:Lcom/wolfram/alpha/WAFutureTopic;

    .line 609
    :cond_16
    const-string v47, "examplepage"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 611
    .local v11, examplePageElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_17

    .line 612
    new-instance v47, Lcom/wolfram/alpha/impl/WAExamplePageImpl;

    const/16 v48, 0x0

    move-object v0, v11

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object/from16 v0, v47

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/wolfram/alpha/impl/WAExamplePageImpl;-><init>(Lorg/w3c/dom/Element;)V

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->examplePage:Lcom/wolfram/alpha/WAExamplePage;

    .line 615
    :cond_17
    const-string v47, "generalization"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 617
    .local v14, generalizationElements:Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_1

    .line 618
    new-instance v47, Lcom/wolfram/alpha/impl/WAGeneralizationImpl;

    const/16 v48, 0x0

    move-object v0, v14

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/w3c/dom/Element;

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/wolfram/alpha/impl/WAGeneralizationImpl;-><init>(Lorg/w3c/dom/Element;)V

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->generalization:Lcom/wolfram/alpha/WAGeneralization;

    goto/16 :goto_1

    .line 621
    .end local v8           #didYouMeanElements:Lorg/w3c/dom/NodeList;
    .end local v11           #examplePageElements:Lorg/w3c/dom/NodeList;
    .end local v13           #futureTopicElements:Lorg/w3c/dom/NodeList;
    .end local v14           #generalizationElements:Lorg/w3c/dom/NodeList;
    .end local v15           #i:I
    .end local v17           #languageMsgElements:Lorg/w3c/dom/NodeList;
    .end local v18           #numAssums:I
    .end local v19           #numBanners:I
    .end local v20           #numDidYouMeans:I
    .end local v21           #numLanugageMsgs:I
    .end local v23           #numPods:I
    .end local v24           #numRelatedExamples:I
    .end local v25           #numRelateds:I
    .end local v30           #podElements:Lorg/w3c/dom/NodeList;
    .end local v31           #relatedExampleElements:Lorg/w3c/dom/NodeList;
    .end local v32           #relatedLinkElements:Lorg/w3c/dom/NodeList;
    .end local v37           #sourcesElements:Lorg/w3c/dom/NodeList;
    .end local v41           #tipsElements:Lorg/w3c/dom/NodeList;
    .end local v45           #warningsElements:Lorg/w3c/dom/NodeList;
    .end local v46           #weather_banner:Z
    .restart local p1
    :cond_18
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v47

    const-string v48, "relatedqueries"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v47

    if-eqz v47, :cond_1

    .line 623
    const-string v47, "count"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 624
    .local v33, relatedqueriesCount:I
    const-string v47, "timing"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v47

    move-wide/from16 v0, v47

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->timing:D

    .line 625
    const-string v47, "relatedquery"

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    .line 626
    .local v34, relatedqueryElements:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v29

    .line 627
    .local v29, numrelQueries:I
    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->relatedQueries:[Ljava/lang/String;

    .line 628
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_11
    move v0, v15

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    .line 629
    move-object/from16 v0, v34

    move v1, v15

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 630
    .restart local v7       #children:Lorg/w3c/dom/NodeList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->relatedQueries:[Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v48

    if-lez v48, :cond_19

    const/16 v48, 0x0

    move-object v0, v7

    move/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v48

    invoke-interface/range {v48 .. v48}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v48

    :goto_12
    aput-object v48, v47, v15

    .line 628
    add-int/lit8 v15, v15, 0x1

    goto :goto_11

    .line 630
    :cond_19
    const-string v48, ""

    goto :goto_12

    .line 475
    .end local v7           #children:Lorg/w3c/dom/NodeList;
    .end local v15           #i:I
    .end local v29           #numrelQueries:I
    .end local v33           #relatedqueriesCount:I
    .end local v34           #relatedqueryElements:Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v47

    goto/16 :goto_3

    .line 472
    :catch_1
    move-exception v47

    goto/16 :goto_2

    .line 460
    .restart local v7       #children:Lorg/w3c/dom/NodeList;
    .restart local v10       #errorElement:Lorg/w3c/dom/Element;
    :catch_2
    move-exception v47

    goto/16 :goto_0
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 641
    invoke-interface {p1, p0}, Lcom/wolfram/alpha/visitor/Visitor;->visit(Lcom/wolfram/alpha/WAQueryResult;)V

    .line 642
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->pods:[Lcom/wolfram/alpha/impl/WAPodImpl;

    .local v0, arr$:[Lcom/wolfram/alpha/impl/WAPodImpl;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 643
    .local v3, pod:Lcom/wolfram/alpha/WAPod;
    invoke-interface {v3, p1}, Lcom/wolfram/alpha/WAPod;->accept(Lcom/wolfram/alpha/visitor/Visitor;)V

    .line 642
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    .end local v3           #pod:Lcom/wolfram/alpha/WAPod;
    :cond_0
    return-void
.end method

.method public declared-synchronized acquireImages()V
    .locals 5

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->imagesAcquired:Z

    if-nez v4, :cond_1

    .line 254
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->pods:[Lcom/wolfram/alpha/impl/WAPodImpl;

    .local v0, arr$:[Lcom/wolfram/alpha/impl/WAPodImpl;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .local v3, pod:Lcom/wolfram/alpha/impl/WAPodImpl;
    :try_start_1
    invoke-virtual {v3}, Lcom/wolfram/alpha/impl/WAPodImpl;->acquireImages()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/wolfram/alpha/WAException; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v3           #pod:Lcom/wolfram/alpha/impl/WAPodImpl;
    :cond_0
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->imagesAcquired:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    .end local v0           #arr$:[Lcom/wolfram/alpha/impl/WAPodImpl;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_1
    monitor-exit p0

    return-void

    .line 257
    .restart local v0       #arr$:[Lcom/wolfram/alpha/impl/WAPodImpl;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #pod:Lcom/wolfram/alpha/impl/WAPodImpl;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 253
    .end local v0           #arr$:[Lcom/wolfram/alpha/impl/WAPodImpl;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pod:Lcom/wolfram/alpha/impl/WAPodImpl;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public finishAsync()V
    .locals 7

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->acquireImages()V

    .line 269
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->pods:[Lcom/wolfram/alpha/impl/WAPodImpl;

    array-length v6, v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    .local v4, runningThreads:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Thread;>;"
    invoke-virtual {p0}, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->getPods()[Lcom/wolfram/alpha/WAPod;

    move-result-object v3

    .line 271
    .local v3, pods:[Lcom/wolfram/alpha/WAPod;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 272
    aget-object v2, v3, v0

    .line 273
    .local v2, pod:Lcom/wolfram/alpha/WAPod;
    invoke-interface {v2}, Lcom/wolfram/alpha/WAPod;->getAsyncURL()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 274
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/wolfram/alpha/impl/WAQueryResultImpl$1;

    invoke-direct {v6, p0, v2}, Lcom/wolfram/alpha/impl/WAQueryResultImpl$1;-><init>(Lcom/wolfram/alpha/impl/WAQueryResultImpl;Lcom/wolfram/alpha/WAPod;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 283
    .local v5, t:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 284
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v5           #t:Ljava/lang/Thread;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    .end local v2           #pod:Lcom/wolfram/alpha/WAPod;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    .line 289
    .restart local v5       #t:Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 290
    :catch_0
    move-exception v6

    goto :goto_1

    .line 294
    .end local v5           #t:Ljava/lang/Thread;
    :cond_2
    return-void
.end method

.method public getAPIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getAssumptions()[Lcom/wolfram/alpha/WAAssumption;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->assumptions:[Lcom/wolfram/alpha/impl/WAAssumptionImpl;

    return-object v0
.end method

.method public declared-synchronized getBanners()[Lcom/wolfram/alpha/WABanner;
    .locals 1

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->banners:[Lcom/wolfram/alpha/impl/WABannerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getComputationView()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->hasComputationView:Z

    return v0
.end method

.method public getDataTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->dataTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getDidYouMeans()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->didYouMeans:[Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExamplePage()Lcom/wolfram/alpha/WAExamplePage;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->examplePage:Lcom/wolfram/alpha/WAExamplePage;

    return-object v0
.end method

.method public getFutureTopic()Lcom/wolfram/alpha/WAFutureTopic;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->futureTopic:Lcom/wolfram/alpha/WAFutureTopic;

    return-object v0
.end method

.method public getGeneralization()Lcom/wolfram/alpha/WAGeneralization;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->generalization:Lcom/wolfram/alpha/WAGeneralization;

    return-object v0
.end method

.method public getGeneralizationViewPosition()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->generalizationViewPosition:I

    return v0
.end method

.method public getLanguageMessage()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->languageMessage:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumPods()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->pods:[Lcom/wolfram/alpha/impl/WAPodImpl;

    array-length v0, v0

    return v0
.end method

.method public getParseTiming()D
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->parseTiming:D

    return-wide v0
.end method

.method public declared-synchronized getPods()[Lcom/wolfram/alpha/WAPod;
    .locals 1

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->pods:[Lcom/wolfram/alpha/impl/WAPodImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getQuery()Lcom/wolfram/alpha/WAQuery;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->query:Lcom/wolfram/alpha/WAQuery;

    return-object v0
.end method

.method public getRecalculateURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->recalcURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedExamples()[Lcom/wolfram/alpha/WARelatedExample;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->relatedExamples:[Lcom/wolfram/alpha/impl/WARelatedExampleImpl;

    return-object v0
.end method

.method public getRelatedLinks()[Lcom/wolfram/alpha/WARelatedLink;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->relatedLinks:[Lcom/wolfram/alpha/impl/WARelatedLinkImpl;

    return-object v0
.end method

.method public getRelatedQueries()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->relatedQueries:[Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedQueriesURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->relatedQueriesURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSources()[Lcom/wolfram/alpha/WASourceInfo;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->sources:[Lcom/wolfram/alpha/impl/WASourceInfoImpl;

    return-object v0
.end method

.method public getTimedoutScanners()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->timedoutScanners:[Ljava/lang/String;

    return-object v0
.end method

.method public getTiming()D
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->timing:D

    return-wide v0
.end method

.method public getTips()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->splatTips:[Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getWarnings()[Lcom/wolfram/alpha/WAWarning;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->warnings:[Lcom/wolfram/alpha/impl/WAWarningImpl;

    return-object v0
.end method

.method public getXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 414
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->bytes:[B

    const-string v3, "ISO-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    return-object v1

    .line 415
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 417
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->error:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->success:Z

    return v0
.end method

.method public declared-synchronized mergeBannerStateResult(Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 4
    .parameter "bannerstateQueryResult"

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getBanners()[Lcom/wolfram/alpha/WABanner;

    move-result-object v1

    .line 367
    .local v1, newBanners:[Lcom/wolfram/alpha/WABanner;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 368
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 369
    .local v0, newBanner:Lcom/wolfram/alpha/WABanner;
    iget-object v2, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->banners:[Lcom/wolfram/alpha/impl/WABannerImpl;

    const/4 v3, 0x0

    check-cast v0, Lcom/wolfram/alpha/impl/WABannerImpl;

    .end local v0           #newBanner:Lcom/wolfram/alpha/WABanner;
    aput-object v0, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :cond_0
    monitor-exit p0

    return-void

    .line 364
    .end local v1           #newBanners:[Lcom/wolfram/alpha/WABanner;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public mergeGeneralizationResult(Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 6
    .parameter "generalizationQueryResult"

    .prologue
    const/4 v5, 0x0

    .line 375
    invoke-virtual {p0}, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->getPods()[Lcom/wolfram/alpha/WAPod;

    move-result-object v2

    .line 376
    .local v2, oldPods:[Lcom/wolfram/alpha/WAPod;
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getPods()[Lcom/wolfram/alpha/WAPod;

    move-result-object v1

    .line 377
    .local v1, genPods:[Lcom/wolfram/alpha/WAPod;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 378
    array-length v3, v2

    array-length v4, v1

    add-int/2addr v3, v4

    new-array v0, v3, [Lcom/wolfram/alpha/impl/WAPodImpl;

    .line 379
    .local v0, allPods:[Lcom/wolfram/alpha/impl/WAPodImpl;
    array-length v3, v2

    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    array-length v3, v2

    array-length v4, v1

    invoke-static {v1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->pods:[Lcom/wolfram/alpha/impl/WAPodImpl;

    .line 383
    .end local v0           #allPods:[Lcom/wolfram/alpha/impl/WAPodImpl;
    :cond_0
    return-void
.end method

.method public declared-synchronized mergePodstateResult(Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 7
    .parameter "podstateQueryResult"

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getPods()[Lcom/wolfram/alpha/WAPod;

    move-result-object v2

    .line 343
    .local v2, newPods:[Lcom/wolfram/alpha/WAPod;
    array-length v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 344
    const/4 v5, 0x0

    aget-object v1, v2, v5

    .line 345
    .local v1, newPod:Lcom/wolfram/alpha/WAPod;
    invoke-interface {v1}, Lcom/wolfram/alpha/WAPod;->getID()Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, podID:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->getPods()[Lcom/wolfram/alpha/WAPod;

    move-result-object v3

    .line 347
    .local v3, oldPods:[Lcom/wolfram/alpha/WAPod;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 348
    aget-object v5, v3, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAPod;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 349
    aget-object v5, v3, v0

    invoke-interface {v5}, Lcom/wolfram/alpha/WAPod;->getToggleArrows_Clicked()Z

    move-result v5

    invoke-interface {v1, v5}, Lcom/wolfram/alpha/WAPod;->setToggleArrows_Clicked(Z)V

    .line 350
    aput-object v1, v3, v0

    .line 354
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 355
    iget-object v6, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->pods:[Lcom/wolfram/alpha/impl/WAPodImpl;

    aget-object v5, v3, v0

    check-cast v5, Lcom/wolfram/alpha/impl/WAPodImpl;

    aput-object v5, v6, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 347
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    .end local v0           #i:I
    .end local v1           #newPod:Lcom/wolfram/alpha/WAPod;
    .end local v3           #oldPods:[Lcom/wolfram/alpha/WAPod;
    .end local v4           #podID:Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return-void

    .line 340
    .end local v2           #newPods:[Lcom/wolfram/alpha/WAPod;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized mergeRecalculateResult(Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 13
    .parameter "recalcQueryResult"

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getPods()[Lcom/wolfram/alpha/WAPod;

    move-result-object v10

    .line 308
    .local v10, recalcPods:[Lcom/wolfram/alpha/WAPod;
    invoke-virtual {p0}, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->getPods()[Lcom/wolfram/alpha/WAPod;

    move-result-object v7

    .line 309
    .local v7, oldPods:[Lcom/wolfram/alpha/WAPod;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v1, allPodsList:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/alpha/impl/WAPodImpl;>;"
    move-object v2, v7

    .local v2, arr$:[Lcom/wolfram/alpha/WAPod;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v2, v4

    .local v6, oldPod:Lcom/wolfram/alpha/WAPod;
    check-cast v6, Lcom/wolfram/alpha/impl/WAPodImpl;

    .end local v6           #oldPod:Lcom/wolfram/alpha/WAPod;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 311
    :cond_0
    array-length v11, v10

    if-lez v11, :cond_5

    .line 312
    move-object v2, v10

    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v8, v2, v4

    .line 313
    .local v8, recalcPod:Lcom/wolfram/alpha/WAPod;
    const/4 v9, 0x0

    .line 314
    .local v9, recalcPodinserted:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ge v3, v11, :cond_1

    .line 315
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wolfram/alpha/impl/WAPodImpl;

    invoke-virtual {v11}, Lcom/wolfram/alpha/impl/WAPodImpl;->getPosition()I

    move-result v11

    invoke-interface {v8}, Lcom/wolfram/alpha/WAPod;->getPosition()I

    move-result v12

    if-gt v11, v12, :cond_4

    add-int/lit8 v11, v3, 0x1

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wolfram/alpha/impl/WAPodImpl;

    invoke-virtual {v11}, Lcom/wolfram/alpha/impl/WAPodImpl;->getPosition()I

    move-result v11

    invoke-interface {v8}, Lcom/wolfram/alpha/WAPod;->getPosition()I

    move-result v12

    if-le v11, v12, :cond_4

    .line 317
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wolfram/alpha/impl/WAPodImpl;

    invoke-virtual {v11}, Lcom/wolfram/alpha/impl/WAPodImpl;->getPosition()I

    move-result v11

    invoke-interface {v8}, Lcom/wolfram/alpha/WAPod;->getPosition()I

    move-result v12

    if-ne v11, v12, :cond_3

    .line 318
    move-object v0, v8

    check-cast v0, Lcom/wolfram/alpha/impl/WAPodImpl;

    move-object v11, v0

    invoke-interface {v1, v3, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 323
    :goto_3
    const/4 v9, 0x1

    .line 327
    :cond_1
    if-nez v9, :cond_2

    .line 328
    check-cast v8, Lcom/wolfram/alpha/impl/WAPodImpl;

    .end local v8           #recalcPod:Lcom/wolfram/alpha/WAPod;
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 321
    .restart local v8       #recalcPod:Lcom/wolfram/alpha/WAPod;
    :cond_3
    add-int/lit8 v12, v3, 0x1

    move-object v0, v8

    check-cast v0, Lcom/wolfram/alpha/impl/WAPodImpl;

    move-object v11, v0

    invoke-interface {v1, v12, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 307
    .end local v1           #allPodsList:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/alpha/impl/WAPodImpl;>;"
    .end local v2           #arr$:[Lcom/wolfram/alpha/WAPod;
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #oldPods:[Lcom/wolfram/alpha/WAPod;
    .end local v8           #recalcPod:Lcom/wolfram/alpha/WAPod;
    .end local v9           #recalcPodinserted:Z
    .end local v10           #recalcPods:[Lcom/wolfram/alpha/WAPod;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 314
    .restart local v1       #allPodsList:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/alpha/impl/WAPodImpl;>;"
    .restart local v2       #arr$:[Lcom/wolfram/alpha/WAPod;
    .restart local v3       #i:I
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #oldPods:[Lcom/wolfram/alpha/WAPod;
    .restart local v8       #recalcPod:Lcom/wolfram/alpha/WAPod;
    .restart local v9       #recalcPodinserted:Z
    .restart local v10       #recalcPods:[Lcom/wolfram/alpha/WAPod;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 332
    .end local v3           #i:I
    .end local v8           #recalcPod:Lcom/wolfram/alpha/WAPod;
    .end local v9           #recalcPodinserted:Z
    :cond_5
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lcom/wolfram/alpha/impl/WAPodImpl;

    iput-object v11, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->pods:[Lcom/wolfram/alpha/impl/WAPodImpl;

    .line 333
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_6

    .line 334
    iget-object v12, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->pods:[Lcom/wolfram/alpha/impl/WAPodImpl;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/wolfram/alpha/impl/WAPodImpl;

    aput-object v11, v12, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 336
    :cond_6
    monitor-exit p0

    return-void
.end method

.method public mergeRelatedQueriesResult(Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 1
    .parameter "relatedQueriesResult"

    .prologue
    .line 390
    invoke-interface {p1}, Lcom/wolfram/alpha/WAQueryResult;->getRelatedQueries()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->relatedQueries:[Ljava/lang/String;

    .line 391
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public setComputationView(Z)V
    .locals 0
    .parameter "hasComputationView"

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->hasComputationView:Z

    .line 406
    return-void
.end method

.method public setGeneralizationViewPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 395
    iput p1, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->generalizationViewPosition:I

    .line 397
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 430
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAQueryResultImpl;->userData:Ljava/lang/Object;

    .line 431
    return-void
.end method
