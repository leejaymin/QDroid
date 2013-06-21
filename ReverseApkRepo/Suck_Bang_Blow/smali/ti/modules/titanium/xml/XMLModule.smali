.class public Lti/modules/titanium/xml/XMLModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "XMLModule.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "XMLModule"

.field private static builder:Ljavax/xml/parsers/DocumentBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    sput-object v1, Lti/modules/titanium/xml/XMLModule;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 40
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v1, "XMLModule"

    const-string v2, "Error finding DOM implementation"

    invoke-static {v1, v2, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 46
    return-void
.end method

.method private nameFor(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .parameter "node"

    .prologue
    .line 152
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private namespaceFor(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .parameter "node"

    .prologue
    .line 142
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, ns:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 144
    const-string v1, ""

    .line 146
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static parse(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;
    .locals 2
    .parameter "context"
    .parameter "xml"

    .prologue
    .line 56
    const-string v0, "file.encoding"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lti/modules/titanium/xml/XMLModule;->parse(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;
    .locals 6
    .parameter "context"
    .parameter "xml"
    .parameter "encoding"

    .prologue
    const-string v5, "XMLModule"

    .line 61
    sget-object v1, Lti/modules/titanium/xml/XMLModule;->builder:Ljavax/xml/parsers/DocumentBuilder;

    if-eqz v1, :cond_0

    .line 63
    :try_start_0
    new-instance v1, Lti/modules/titanium/xml/DocumentProxy;

    sget-object v2, Lti/modules/titanium/xml/XMLModule;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lti/modules/titanium/xml/DocumentProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :goto_0
    return-object v1

    .line 64
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 65
    .local v0, e:Lorg/xml/sax/SAXException;
    const-string v1, "XMLModule"

    const-string v1, "Error parsing XML"

    invoke-static {v5, v1, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 66
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 67
    .local v0, e:Ljava/io/IOException;
    const-string v1, "XMLModule"

    const-string v1, "Error reading XML"

    invoke-static {v5, v1, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private serializeNode(Lorg/xmlpull/v1/XmlSerializer;Lorg/w3c/dom/Node;)V
    .locals 9
    .parameter "out"
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 135
    :pswitch_0
    const-string v6, "XMLModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping unrecognized node of type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local p2
    :goto_0
    return-void

    .line 93
    .restart local p2
    :pswitch_1
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/XMLModule;->namespaceFor(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2}, Lti/modules/titanium/xml/XMLModule;->nameFor(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 96
    :pswitch_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :pswitch_4
    check-cast p2, Lorg/w3c/dom/Document;

    .end local p2
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lti/modules/titanium/xml/XMLModule;->serializeNode(Lorg/xmlpull/v1/XmlSerializer;Lorg/w3c/dom/Node;)V

    goto :goto_0

    .line 105
    .restart local p2
    :pswitch_5
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/XMLModule;->namespaceFor(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, ns:Ljava/lang/String;
    invoke-direct {p0, p2}, Lti/modules/titanium/xml/XMLModule;->nameFor(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, name:Ljava/lang/String;
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 110
    .local v0, attribs:Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    .line 112
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 113
    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lti/modules/titanium/xml/XMLModule;->serializeNode(Lorg/xmlpull/v1/XmlSerializer;Lorg/w3c/dom/Node;)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    .end local v2           #i:I
    .end local v3           #length:I
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 118
    .local v1, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 119
    .restart local v3       #length:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v3, :cond_1

    .line 120
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lti/modules/titanium/xml/XMLModule;->serializeNode(Lorg/xmlpull/v1/XmlSerializer;Lorg/w3c/dom/Node;)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 123
    :cond_1
    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 126
    .end local v0           #attribs:Lorg/w3c/dom/NamedNodeMap;
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #ns:Ljava/lang/String;
    :pswitch_6
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_7
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :pswitch_8
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_8
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public parseString(Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;
    .locals 1
    .parameter "xml"

    .prologue
    .line 51
    invoke-virtual {p0}, Lti/modules/titanium/xml/XMLModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-static {v0, p1}, Lti/modules/titanium/xml/XMLModule;->parse(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;)Lti/modules/titanium/xml/DocumentProxy;

    move-result-object v0

    return-object v0
.end method

.method public serializeToString(Lti/modules/titanium/xml/NodeProxy;)Ljava/lang/String;
    .locals 5
    .parameter "node"

    .prologue
    .line 76
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 77
    .local v2, writer:Ljava/io/StringWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 79
    .local v1, out:Lorg/xmlpull/v1/XmlSerializer;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 80
    invoke-virtual {p1}, Lti/modules/titanium/xml/NodeProxy;->getNode()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lti/modules/titanium/xml/XMLModule;->serializeNode(Lorg/xmlpull/v1/XmlSerializer;Lorg/w3c/dom/Node;)V

    .line 81
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 82
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 85
    :goto_0
    return-object v3

    .line 83
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 84
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "XMLModule"

    const-string v4, "Error serializing XML"

    invoke-static {v3, v4, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    const/4 v3, 0x0

    goto :goto_0
.end method
