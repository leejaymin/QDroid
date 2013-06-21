.class public Lcom/virtuallyabstract/eve/XMLHandler;
.super Ljava/lang/Object;
.source "XMLHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field augmenttag:Ljava/lang/String;

.field current:Ljava/lang/String;

.field currentAtts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field nodeQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field parser:Lorg/xml/sax/XMLReader;

.field value:Ljava/lang/String;

.field xmlContents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-string v3, ""

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v2, ""

    iput-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    const-string v2, ""

    iput-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->value:Ljava/lang/String;

    const-string v2, ""

    iput-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->augmenttag:Ljava/lang/String;

    .line 30
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/virtuallyabstract/eve/XMLHandler;->xmlContents:Ljava/util/HashMap;

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/virtuallyabstract/eve/XMLHandler;->nodeQueue:Ljava/util/ArrayList;

    .line 34
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 35
    .local v0, fact:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 36
    .local v1, pars:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    iput-object v2, p0, Lcom/virtuallyabstract/eve/XMLHandler;->parser:Lorg/xml/sax/XMLReader;

    .line 37
    iget-object v2, p0, Lcom/virtuallyabstract/eve/XMLHandler;->parser:Lorg/xml/sax/XMLReader;

    invoke-interface {v2, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v0           #fact:Ljavax/xml/parsers/SAXParserFactory;
    .end local v1           #pars:Ljavax/xml/parsers/SAXParser;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/virtuallyabstract/eve/XMLHandler;->value:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/virtuallyabstract/eve/XMLHandler;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"

    .prologue
    const/4 v5, 0x1

    const-string v8, "value"

    const-string v7, "atts"

    const-string v6, ""

    .line 87
    iget-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 89
    iget-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->nodeQueue:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->nodeQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 90
    .local v1, lastNode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    .line 91
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->currentAtts:Ljava/util/HashMap;

    .line 94
    .end local v1           #lastNode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    iget-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->augmenttag:Ljava/lang/String;

    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    const-string v3, ""

    iput-object v6, p0, Lcom/virtuallyabstract/eve/XMLHandler;->augmenttag:Ljava/lang/String;

    .line 97
    :cond_1
    iget-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->value:Ljava/lang/String;

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->augmenttag:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    .line 111
    iget-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->xmlContents:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->xmlContents:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->currentAtts:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->xmlContents:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "value"

    invoke-virtual {v3, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->xmlContents:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "atts"

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_0
    const-string v3, ""

    iput-object v6, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    .line 132
    const-string v3, ""

    iput-object v6, p0, Lcom/virtuallyabstract/eve/XMLHandler;->value:Ljava/lang/String;

    .line 133
    return-void

    .line 125
    .end local v0           #atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->xmlContents:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "value"

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 126
    .restart local v2       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->xmlContents:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "atts"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 128
    .restart local v0       #atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/virtuallyabstract/eve/XMLHandler;->currentAtts:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 174
    return-void
.end method

.method public getAttributes(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "name"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/virtuallyabstract/eve/XMLHandler;->xmlContents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/virtuallyabstract/eve/XMLHandler;->xmlContents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/HashMap;

    const-string v1, "atts"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 153
    .local v0, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 154
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 159
    .end local v0           #atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    return-object v1

    .restart local v0       #atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    move-object v1, v0

    .line 156
    goto :goto_0

    .line 159
    .end local v0           #atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local p0
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAttributesArray(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/virtuallyabstract/eve/XMLHandler;->xmlContents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/virtuallyabstract/eve/XMLHandler;->xmlContents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/HashMap;

    const-string v1, "atts"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object v1, v0

    .line 170
    .end local v0           #atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "name"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/virtuallyabstract/eve/XMLHandler;->xmlContents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/virtuallyabstract/eve/XMLHandler;->xmlContents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/HashMap;

    const-string v1, "value"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 140
    .local v0, vals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 141
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 145
    .end local v0           #vals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .restart local v0       #vals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    move-object v1, v0

    .line 143
    goto :goto_0

    .line 145
    .end local v0           #vals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 175
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 46
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, conn:Ljava/net/URL;
    iget-object v1, p0, Lcom/virtuallyabstract/eve/XMLHandler;->parser:Lorg/xml/sax/XMLReader;

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0           #conn:Ljava/net/URL;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "target"
    .parameter "data"

    .prologue
    .line 176
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .parameter "locator"

    .prologue
    .line 177
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 178
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"

    .prologue
    .line 55
    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v2, oldVals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->currentAtts:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->nodeQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v2           #oldVals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    iput-object p2, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    .line 64
    const-string v4, ".*Bonus"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 65
    .local v3, p:Ljava/util/regex/Pattern;
    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 66
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->current:Ljava/lang/String;

    iput-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->augmenttag:Ljava/lang/String;

    .line 68
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->currentAtts:Ljava/util/HashMap;

    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 74
    return-void

    .line 71
    :cond_2
    iget-object v4, p0, Lcom/virtuallyabstract/eve/XMLHandler;->currentAtts:Ljava/util/HashMap;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 180
    return-void
.end method
