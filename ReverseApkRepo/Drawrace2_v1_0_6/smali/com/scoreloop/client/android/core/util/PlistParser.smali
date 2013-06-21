.class public Lcom/scoreloop/client/android/core/util/PlistParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 22
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 25
    :cond_0
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private a(Lorg/w3c/dom/Node;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 71
    :goto_0
    if-eqz v0, :cond_1

    .line 72
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 73
    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/util/PlistParser;->c(Lorg/w3c/dom/Node;)Ljava/lang/Object;

    move-result-object v2

    .line 74
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    return-object v1
.end method

.method private static b(Lorg/w3c/dom/Node;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 112
    invoke-static {p0}, Lcom/scoreloop/client/android/core/util/PlistParser;->d(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 41
    :cond_0
    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private c(Lorg/w3c/dom/Node;)Ljava/lang/Object;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 116
    :goto_0
    if-eqz p1, :cond_3

    .line 117
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v5, :cond_9

    .line 118
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string v2, "dict"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 120
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_b

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-direct {p0, v3}, Lcom/scoreloop/client/android/core/util/PlistParser;->c(Lorg/w3c/dom/Node;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/util/PlistParser;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_3
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v3, v0

    :goto_4
    if-eqz v3, :cond_a

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v5, :cond_1

    invoke-direct {p0, v3}, Lcom/scoreloop/client/android/core/util/PlistParser;->c(Lorg/w3c/dom/Node;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v3, v0

    goto :goto_4

    :cond_2
    move-object v1, v2

    .line 135
    :cond_3
    :goto_6
    return-object v1

    .line 121
    :cond_4
    const-string v1, "array"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 122
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/util/PlistParser;->a(Lorg/w3c/dom/Node;)Ljava/util/List;

    move-result-object v1

    goto :goto_6

    .line 123
    :cond_5
    const-string v1, "key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 124
    invoke-static {p1}, Lcom/scoreloop/client/android/core/util/PlistParser;->d(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 125
    :cond_6
    const-string v1, "string"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 126
    invoke-static {p1}, Lcom/scoreloop/client/android/core/util/PlistParser;->d(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 127
    :cond_7
    const-string v1, "integer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 128
    invoke-static {p1}, Lcom/scoreloop/client/android/core/util/PlistParser;->b(Lorg/w3c/dom/Node;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6

    .line 130
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown node name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_9
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto :goto_5

    :cond_b
    move-object v4, v1

    goto :goto_3
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 48
    :cond_0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static d(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 139
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 140
    :goto_0
    if-eqz v0, :cond_1

    .line 141
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 142
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_1
    return-object v0

    .line 144
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 56
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 60
    const-string v1, "plist"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 61
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/util/PlistParser;->c(Lorg/w3c/dom/Node;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
