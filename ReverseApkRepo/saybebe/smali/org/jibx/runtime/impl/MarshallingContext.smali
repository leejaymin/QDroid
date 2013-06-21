.class public Lorg/jibx/runtime/impl/MarshallingContext;
.super Ljava/lang/Object;
.source "MarshallingContext.java"

# interfaces
.implements Lorg/jibx/runtime/IMarshallingContext;


# static fields
.field private static final INITIAL_STACK_SIZE:I = 0x14

.field public static final XML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private m_byteBuffer:Lorg/jibx/runtime/impl/OutByteBuffer;

.field private m_classIndexMap:Lorg/jibx/runtime/impl/StringIntHashMap;

.field private m_classes:[Ljava/lang/String;

.field private m_factory:Lorg/jibx/runtime/IBindingFactory;

.field private m_idMap:Ljava/util/HashMap;

.field private m_indentChar:C

.field private m_indentCount:I

.field private m_marshallers:[Lorg/jibx/runtime/IMarshaller;

.field private m_newLine:Ljava/lang/String;

.field private m_objectStack:[Ljava/lang/Object;

.field private m_stackDepth:I

.field private m_transientBase:I

.field private m_transientMarshallerClasses:[Ljava/lang/String;

.field private m_uris:[Ljava/lang/String;

.field protected m_userContext:Ljava/lang/Object;

.field private m_writer:Lorg/jibx/runtime/IXMLWriter;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lorg/jibx/runtime/IBindingFactory;)V
    .locals 2
    .parameter "classes"
    .parameter "mcs"
    .parameter "uris"
    .parameter "ifact"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_classes:[Ljava/lang/String;

    .line 136
    array-length v0, p1

    new-array v0, v0, [Lorg/jibx/runtime/IMarshaller;

    iput-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_marshallers:[Lorg/jibx/runtime/IMarshaller;

    .line 137
    array-length v0, p1

    array-length v1, p2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_transientBase:I

    .line 138
    array-length v0, p1

    iget v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_transientBase:I

    sub-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_transientMarshallerClasses:[Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_uris:[Ljava/lang/String;

    .line 140
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_objectStack:[Ljava/lang/Object;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentCount:I

    .line 142
    const/16 v0, 0x20

    iput-char v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentChar:C

    .line 143
    const-string v0, "\n"

    iput-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_newLine:Ljava/lang/String;

    .line 144
    iput-object p4, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_factory:Lorg/jibx/runtime/IBindingFactory;

    .line 145
    if-eqz p4, :cond_0

    .line 146
    invoke-interface {p4}, Lorg/jibx/runtime/IBindingFactory;->getClassIndexMap()Lorg/jibx/runtime/impl/StringIntHashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_classIndexMap:Lorg/jibx/runtime/impl/StringIntHashMap;

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v0, Lorg/jibx/runtime/impl/StringIntHashMap;

    invoke-direct {v0}, Lorg/jibx/runtime/impl/StringIntHashMap;-><init>()V

    iput-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_classIndexMap:Lorg/jibx/runtime/impl/StringIntHashMap;

    goto :goto_0
.end method

.method private createEscaper(Ljava/lang/String;)Lorg/jibx/runtime/ICharacterEscaper;
    .locals 3
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 160
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UTF-16"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UTF-16BE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UTF-16LE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    invoke-static {}, Lorg/jibx/runtime/impl/UTF8Escaper;->getInstance()Lorg/jibx/runtime/ICharacterEscaper;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    .line 164
    :cond_1
    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    invoke-static {}, Lorg/jibx/runtime/impl/ISO88591Escaper;->getInstance()Lorg/jibx/runtime/ICharacterEscaper;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_2
    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    invoke-static {}, Lorg/jibx/runtime/impl/USASCIIEscaper;->getInstance()Lorg/jibx/runtime/ICharacterEscaper;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_3
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No character escaper defined for encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addMarshalling(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "mapname"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 907
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_classIndexMap:Lorg/jibx/runtime/impl/StringIntHashMap;

    invoke-virtual {v1, p1}, Lorg/jibx/runtime/impl/StringIntHashMap;->get(Ljava/lang/String;)I

    move-result v0

    .line 908
    .local v0, index:I
    if-gez v0, :cond_0

    .line 909
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No marshal mapping defined for class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 911
    :cond_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_transientMarshallerClasses:[Ljava/lang/String;

    iget v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_transientBase:I

    sub-int v2, v0, v2

    aput-object p2, v1, v2

    .line 912
    return-void
.end method

.method public attribute(ILjava/lang/String;I)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 1
    .parameter "index"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jibx/runtime/impl/MarshallingContext;->attribute(ILjava/lang/String;Ljava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;

    move-result-object v0

    return-object v0
.end method

.method public attribute(ILjava/lang/String;I[Ljava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 4
    .parameter "index"
    .parameter "name"
    .parameter "value"
    .parameter "table"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 609
    :try_start_0
    aget-object v1, p4, p3

    invoke-virtual {p0, p1, p2, v1}, Lorg/jibx/runtime/impl/MarshallingContext;->attribute(ILjava/lang/String;Ljava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Enumeration value of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is outside to allowed range of 0 to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    array-length v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public attribute(ILjava/lang/String;Ljava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 5
    .parameter "index"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 561
    :try_start_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v2, p1, p2, p3}, Lorg/jibx/runtime/IXMLWriter;->addAttribute(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 562
    return-object p0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, ex:Ljava/io/IOException;
    new-instance v2, Lorg/jibx/runtime/JiBXException;

    const-string v3, "Error writing marshalled document"

    invoke-direct {v2, v3, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 565
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 566
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/MarshallingContext;->buildNameString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, text:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 568
    new-instance v2, Lorg/jibx/runtime/JiBXException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "null value for attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " from object of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/MarshallingContext;->getStackTop()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 573
    :cond_0
    new-instance v2, Lorg/jibx/runtime/JiBXException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Exception while marshalling attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public buildNameString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "index"
    .parameter "name"

    .prologue
    .line 503
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v1, p1}, Lorg/jibx/runtime/IXMLWriter;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, ns:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 507
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\"{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public closeStartContent()Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 624
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLWriter;->closeStartTag()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    return-object p0

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Error writing marshalled document"

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public closeStartEmpty()Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 639
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLWriter;->closeEmptyTag()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    return-object p0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Error writing marshalled document"

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public content(I)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/MarshallingContext;->content(Ljava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;

    .line 671
    return-object p0
.end method

.method public content(I[Ljava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 4
    .parameter "value"
    .parameter "table"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 686
    :try_start_0
    aget-object v1, p2, p1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/MarshallingContext;->content(Ljava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    return-object p0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Enumeration value of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is outside to allowed range of 0 to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public content(Ljava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 655
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v1, p1}, Lorg/jibx/runtime/IXMLWriter;->writeTextContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    return-object p0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Error writing marshalled document"

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public element(ILjava/lang/String;I)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 1
    .parameter "index"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 759
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jibx/runtime/impl/MarshallingContext;->element(ILjava/lang/String;Ljava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;

    move-result-object v0

    return-object v0
.end method

.method public element(ILjava/lang/String;I[Ljava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 4
    .parameter "index"
    .parameter "name"
    .parameter "value"
    .parameter "table"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 776
    :try_start_0
    aget-object v1, p4, p3

    invoke-virtual {p0, p1, p2, v1}, Lorg/jibx/runtime/impl/MarshallingContext;->element(ILjava/lang/String;Ljava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Enumeration value of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " is outside to allowed range of 0 to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    array-length v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public element(ILjava/lang/String;Ljava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 5
    .parameter "index"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 724
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 725
    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v2, p1, p2}, Lorg/jibx/runtime/IXMLWriter;->startTagOpen(ILjava/lang/String;)V

    .line 726
    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v2}, Lorg/jibx/runtime/IXMLWriter;->closeEmptyTag()V

    .line 732
    :goto_0
    return-object p0

    .line 728
    :cond_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v2, p1, p2}, Lorg/jibx/runtime/IXMLWriter;->startTagClosed(ILjava/lang/String;)V

    .line 729
    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v2, p3}, Lorg/jibx/runtime/IXMLWriter;->writeTextContent(Ljava/lang/String;)V

    .line 730
    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v2, p1, p2}, Lorg/jibx/runtime/IXMLWriter;->endTag(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, ex:Ljava/io/IOException;
    new-instance v2, Lorg/jibx/runtime/JiBXException;

    const-string v3, "Error writing marshalled document"

    invoke-direct {v2, v3, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 735
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 736
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/MarshallingContext;->buildNameString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, text:Ljava/lang/String;
    if-nez p3, :cond_1

    .line 738
    new-instance v2, Lorg/jibx/runtime/JiBXException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "null value for element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " from object of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/MarshallingContext;->getStackTop()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 742
    :cond_1
    new-instance v2, Lorg/jibx/runtime/JiBXException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Exception while marshalling element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 488
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Error writing marshalled document"

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endTag(ILjava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 3
    .parameter "index"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 705
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v1, p1, p2}, Lorg/jibx/runtime/IXMLWriter;->endTag(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    return-object p0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Error writing marshalled document"

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFactory()Lorg/jibx/runtime/IBindingFactory;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_factory:Lorg/jibx/runtime/IBindingFactory;

    return-object v0
.end method

.method public getIdMap()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_idMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_idMap:Ljava/util/HashMap;

    .line 1140
    :cond_0
    iget-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_idMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIndent()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentCount:I

    return v0
.end method

.method public getMarshaller(Ljava/lang/String;)Lorg/jibx/runtime/IMarshaller;
    .locals 8
    .parameter "mapname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 966
    iget-object v5, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_classIndexMap:Lorg/jibx/runtime/impl/StringIntHashMap;

    invoke-virtual {v5, p1}, Lorg/jibx/runtime/impl/StringIntHashMap;->get(Ljava/lang/String;)I

    move-result v2

    .line 967
    .local v2, index:I
    if-gez v2, :cond_0

    .line 968
    new-instance v5, Lorg/jibx/runtime/JiBXException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "No marshal mapping defined for class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 970
    :cond_0
    iget-object v5, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_marshallers:[Lorg/jibx/runtime/IMarshaller;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    .line 974
    iget-object v5, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_factory:Lorg/jibx/runtime/IBindingFactory;

    invoke-interface {v5}, Lorg/jibx/runtime/IBindingFactory;->getMarshallerClasses()[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v2

    .line 975
    .local v4, mname:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 978
    iget-object v5, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_factory:Lorg/jibx/runtime/IBindingFactory;

    invoke-interface {v5, v2}, Lorg/jibx/runtime/IBindingFactory;->getMarshallerClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 993
    .local v0, clas:Ljava/lang/Class;
    :goto_0
    if-nez v0, :cond_3

    .line 994
    :try_start_0
    new-instance v5, Lorg/jibx/runtime/JiBXException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unable to load marshaller class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1001
    :catch_0
    move-exception v1

    .line 1002
    .local v1, e:Lorg/jibx/runtime/JiBXException;
    throw v1

    .line 983
    .end local v0           #clas:Ljava/lang/Class;
    .end local v1           #e:Lorg/jibx/runtime/JiBXException;
    :cond_1
    iget-object v5, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_transientMarshallerClasses:[Ljava/lang/String;

    iget v6, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_transientBase:I

    sub-int v6, v2, v6

    aget-object v4, v5, v6

    .line 984
    if-nez v4, :cond_2

    .line 985
    new-instance v5, Lorg/jibx/runtime/JiBXException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "No marshaller defined for class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 987
    :cond_2
    iget-object v5, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_factory:Lorg/jibx/runtime/IBindingFactory;

    invoke-interface {v5, v4}, Lorg/jibx/runtime/IBindingFactory;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .restart local v0       #clas:Ljava/lang/Class;
    goto :goto_0

    .line 998
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jibx/runtime/IMarshaller;

    .line 999
    .local v3, m:Lorg/jibx/runtime/IMarshaller;
    iget-object v5, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_marshallers:[Lorg/jibx/runtime/IMarshaller;

    aput-object v3, v5, v2
    :try_end_1
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1007
    .end local v0           #clas:Ljava/lang/Class;
    .end local v3           #m:Lorg/jibx/runtime/IMarshaller;
    .end local v4           #mname:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_marshallers:[Lorg/jibx/runtime/IMarshaller;

    aget-object v5, v5, v2

    return-object v5

    .line 1003
    .restart local v0       #clas:Ljava/lang/Class;
    .restart local v4       #mname:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1004
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Lorg/jibx/runtime/JiBXException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unable to create marshaller of class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getNamespaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_uris:[Ljava/lang/String;

    return-object v0
.end method

.method public getStackDepth()I
    .locals 1

    .prologue
    .line 1215
    iget v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_stackDepth:I

    return v0
.end method

.method public getStackObject(I)Ljava/lang/Object;
    .locals 2
    .parameter "depth"

    .prologue
    .line 1229
    iget-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_objectStack:[Ljava/lang/Object;

    iget v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_stackDepth:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStackTop()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1239
    iget v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_stackDepth:I

    if-lez v0, :cond_0

    .line 1240
    iget-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_objectStack:[Ljava/lang/Object;

    iget v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_stackDepth:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 1242
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_userContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getXmlWriter()Lorg/jibx/runtime/IXMLWriter;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    return-object v0
.end method

.method public marshalCollection(Ljava/util/ArrayList;)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 5
    .parameter "col"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 861
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 862
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 863
    .local v1, obj:Ljava/lang/Object;
    instance-of v2, v1, Lorg/jibx/runtime/IMarshallable;

    if-eqz v2, :cond_0

    .line 864
    check-cast v1, Lorg/jibx/runtime/IMarshallable;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-interface {v1, p0}, Lorg/jibx/runtime/IMarshallable;->marshal(Lorg/jibx/runtime/IMarshallingContext;)V

    .line 861
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 866
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_0
    new-instance v2, Lorg/jibx/runtime/JiBXException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unmarshallable object of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " found in marshalling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 871
    .end local v1           #obj:Ljava/lang/Object;
    :cond_1
    return-object p0
.end method

.method public marshalCollection(Ljava/util/Collection;)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 5
    .parameter "col"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 837
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 838
    .local v0, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 839
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 840
    .local v1, obj:Ljava/lang/Object;
    instance-of v2, v1, Lorg/jibx/runtime/IMarshallable;

    if-eqz v2, :cond_0

    .line 841
    check-cast v1, Lorg/jibx/runtime/IMarshallable;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-interface {v1, p0}, Lorg/jibx/runtime/IMarshallable;->marshal(Lorg/jibx/runtime/IMarshallingContext;)V

    goto :goto_0

    .line 843
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_0
    new-instance v2, Lorg/jibx/runtime/JiBXException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unmarshallable object of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " found in marshalling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 848
    .end local v1           #obj:Ljava/lang/Object;
    :cond_1
    return-object p0
.end method

.method public marshalCollection(Ljava/util/Vector;)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 5
    .parameter "col"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 884
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 885
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 886
    .local v1, obj:Ljava/lang/Object;
    instance-of v2, v1, Lorg/jibx/runtime/IMarshallable;

    if-eqz v2, :cond_0

    .line 887
    check-cast v1, Lorg/jibx/runtime/IMarshallable;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-interface {v1, p0}, Lorg/jibx/runtime/IMarshallable;->marshal(Lorg/jibx/runtime/IMarshallingContext;)V

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 889
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_0
    new-instance v2, Lorg/jibx/runtime/JiBXException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unmarshallable object of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " found in marshalling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 894
    .end local v1           #obj:Ljava/lang/Object;
    :cond_1
    return-object p0
.end method

.method public marshalDocument(Ljava/lang/Object;)V
    .locals 0
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1041
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/MarshallingContext;->marshalRoot(Ljava/lang/Object;)V

    .line 1042
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/MarshallingContext;->endDocument()V

    .line 1043
    return-void
.end method

.method public marshalDocument(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "root"
    .parameter "enc"
    .parameter "alone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1061
    invoke-virtual {p0, p2, p3}, Lorg/jibx/runtime/impl/MarshallingContext;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1062
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/MarshallingContext;->marshalRoot(Ljava/lang/Object;)V

    .line 1063
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/MarshallingContext;->endDocument()V

    .line 1064
    return-void
.end method

.method public marshalDocument(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "root"
    .parameter "enc"
    .parameter "alone"
    .parameter "outs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1082
    invoke-virtual {p0, p2, p3, p4}, Lorg/jibx/runtime/impl/MarshallingContext;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;Ljava/io/OutputStream;)V

    .line 1083
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/MarshallingContext;->marshalRoot(Ljava/lang/Object;)V

    .line 1084
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/MarshallingContext;->endDocument()V

    .line 1085
    return-void
.end method

.method public marshalDocument(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Boolean;Ljava/io/Writer;)V
    .locals 0
    .parameter "root"
    .parameter "enc"
    .parameter "alone"
    .parameter "outw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1103
    invoke-virtual {p0, p2, p3, p4}, Lorg/jibx/runtime/impl/MarshallingContext;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;Ljava/io/Writer;)V

    .line 1104
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/MarshallingContext;->marshalRoot(Ljava/lang/Object;)V

    .line 1105
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/MarshallingContext;->endDocument()V

    .line 1106
    return-void
.end method

.method protected marshalRoot(Ljava/lang/Object;)V
    .locals 3
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1020
    instance-of v0, p1, Lorg/jibx/runtime/IMarshallable;

    if-eqz v0, :cond_0

    .line 1021
    check-cast p1, Lorg/jibx/runtime/IMarshallable;

    .end local p1
    invoke-interface {p1, p0}, Lorg/jibx/runtime/IMarshallable;->marshal(Lorg/jibx/runtime/IMarshallingContext;)V

    .line 1027
    return-void

    .line 1023
    .restart local p1
    :cond_0
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Supplied root object of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " cannot be marshalled without top-level mapping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public popNamespaces()V
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLWriter;->popTranslationTable()V

    .line 1128
    return-void
.end method

.method public popObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1199
    iget v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_stackDepth:I

    if-lez v0, :cond_0

    .line 1200
    iget v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_stackDepth:I

    .line 1204
    return-void

    .line 1202
    :cond_0
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    const-string v1, "No object on stack"

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pushNamespaces(Ljava/lang/String;)V
    .locals 3
    .parameter "factname"

    .prologue
    .line 1117
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_factory:Lorg/jibx/runtime/IBindingFactory;

    invoke-interface {v1}, Lorg/jibx/runtime/IBindingFactory;->getNamespaceTranslationTableMap()Ljava/util/Map;

    move-result-object v0

    .line 1118
    .local v0, tablemap:Ljava/util/Map;
    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    invoke-interface {v2, v1}, Lorg/jibx/runtime/IXMLWriter;->pushTranslationTable([I)V

    .line 1119
    return-void
.end method

.method public pushObject(Ljava/lang/Object;)V
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 1180
    if-nez p1, :cond_0

    .line 1181
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing required object"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1183
    :cond_0
    iget v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_stackDepth:I

    .line 1184
    .local v0, depth:I
    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_objectStack:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 1185
    mul-int/lit8 v2, v0, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    .line 1186
    .local v1, stack:[Ljava/lang/Object;
    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_objectStack:[Ljava/lang/Object;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1187
    iput-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_objectStack:[Ljava/lang/Object;

    .line 1189
    .end local v1           #stack:[Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_objectStack:[Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 1190
    iget v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_stackDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_stackDepth:I

    .line 1191
    return-void
.end method

.method public removeMarshalling(Ljava/lang/String;)V
    .locals 4
    .parameter "mapname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 922
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_classIndexMap:Lorg/jibx/runtime/impl/StringIntHashMap;

    invoke-virtual {v1, p1}, Lorg/jibx/runtime/impl/StringIntHashMap;->get(Ljava/lang/String;)I

    move-result v0

    .line 923
    .local v0, index:I
    if-gez v0, :cond_0

    .line 924
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No marshal mapping defined for class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 926
    :cond_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_transientMarshallerClasses:[Ljava/lang/String;

    iget v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_transientBase:I

    sub-int v2, v0, v2

    aput-object v3, v1, v2

    .line 927
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_marshallers:[Lorg/jibx/runtime/IMarshaller;

    aput-object v3, v1, v0

    .line 928
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLWriter;->reset()V

    .line 390
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_marshallers:[Lorg/jibx/runtime/IMarshaller;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 391
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_marshallers:[Lorg/jibx/runtime/IMarshaller;

    aput-object v2, v1, v0

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_transientMarshallerClasses:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 394
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_transientMarshallerClasses:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 396
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_objectStack:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 397
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_objectStack:[Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 399
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_stackDepth:I

    .line 400
    return-void
.end method

.method public setFromContext(Lorg/jibx/runtime/impl/MarshallingContext;)V
    .locals 3
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/MarshallingContext;->reset()V

    .line 367
    iget v1, p1, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentCount:I

    iput v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentCount:I

    .line 368
    iget-object v1, p1, Lorg/jibx/runtime/impl/MarshallingContext;->m_newLine:Ljava/lang/String;

    iput-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_newLine:Ljava/lang/String;

    .line 369
    iget-char v1, p1, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentChar:C

    iput-char v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentChar:C

    .line 370
    iget-object v1, p1, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    instance-of v1, v1, Lorg/jibx/runtime/IExtensibleWriter;

    if-eqz v1, :cond_0

    .line 371
    iget-object v0, p1, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    check-cast v0, Lorg/jibx/runtime/IExtensibleWriter;

    .line 372
    .local v0, base:Lorg/jibx/runtime/IExtensibleWriter;
    invoke-interface {v0}, Lorg/jibx/runtime/IExtensibleWriter;->flush()V

    .line 373
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_uris:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/jibx/runtime/IExtensibleWriter;->createChildWriter([Ljava/lang/String;)Lorg/jibx/runtime/IXMLWriter;

    move-result-object v1

    iput-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    .line 379
    .end local v0           #base:Lorg/jibx/runtime/IExtensibleWriter;
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v1, p1, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    instance-of v1, v1, Lorg/jibx/runtime/impl/StAXWriter;

    if-eqz v1, :cond_1

    .line 375
    iget-object v1, p1, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    check-cast v1, Lorg/jibx/runtime/impl/StAXWriter;

    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_uris:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jibx/runtime/impl/StAXWriter;->createChildWriter([Ljava/lang/String;)Lorg/jibx/runtime/IXMLWriter;

    move-result-object v1

    iput-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    goto :goto_0

    .line 377
    :cond_1
    iget-object v1, p1, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    iput-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    goto :goto_0
.end method

.method public setIndent(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 326
    iget-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_newLine:Ljava/lang/String;

    iget-char v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentChar:C

    invoke-interface {v0, p1, v1, v2}, Lorg/jibx/runtime/IXMLWriter;->setIndentSpaces(ILjava/lang/String;C)V

    .line 329
    :cond_0
    iput p1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentCount:I

    .line 330
    return-void
.end method

.method public setIndent(ILjava/lang/String;C)V
    .locals 1
    .parameter "count"
    .parameter "newline"
    .parameter "indent"

    .prologue
    .line 344
    iget-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v0, p1, p2, p3}, Lorg/jibx/runtime/IXMLWriter;->setIndentSpaces(ILjava/lang/String;C)V

    .line 347
    :cond_0
    iput p1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentCount:I

    .line 348
    iput-object p2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_newLine:Ljava/lang/String;

    .line 349
    iput-char p3, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentChar:C

    .line 350
    return-void
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .parameter "outs"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 223
    if-nez p2, :cond_0

    .line 224
    const-string p2, "UTF-8"

    .line 226
    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    instance-of v1, v1, Lorg/jibx/runtime/impl/UTF8StreamWriter;

    if-nez v1, :cond_2

    .line 230
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_byteBuffer:Lorg/jibx/runtime/impl/OutByteBuffer;

    if-nez v1, :cond_1

    .line 231
    new-instance v1, Lorg/jibx/runtime/impl/OutByteBuffer;

    invoke-direct {v1}, Lorg/jibx/runtime/impl/OutByteBuffer;-><init>()V

    iput-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_byteBuffer:Lorg/jibx/runtime/impl/OutByteBuffer;

    .line 233
    :cond_1
    new-instance v0, Lorg/jibx/runtime/impl/UTF8StreamWriter;

    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_uris:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/jibx/runtime/impl/UTF8StreamWriter;-><init>([Ljava/lang/String;)V

    .line 234
    .local v0, wrtr:Lorg/jibx/runtime/impl/UTF8StreamWriter;
    iput-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    .line 235
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_byteBuffer:Lorg/jibx/runtime/impl/OutByteBuffer;

    invoke-virtual {v0, v1}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->setBuffer(Lorg/jibx/runtime/impl/IOutByteBuffer;)V

    .line 236
    iget v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentCount:I

    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_newLine:Ljava/lang/String;

    iget-char v3, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentChar:C

    invoke-virtual {v0, v1, v2, v3}, Lorg/jibx/runtime/impl/UTF8StreamWriter;->setIndentSpaces(ILjava/lang/String;C)V

    .line 239
    .end local v0           #wrtr:Lorg/jibx/runtime/impl/UTF8StreamWriter;
    :cond_2
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/MarshallingContext;->reset()V

    .line 240
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_byteBuffer:Lorg/jibx/runtime/impl/OutByteBuffer;

    invoke-virtual {v1, p1}, Lorg/jibx/runtime/impl/OutByteBuffer;->setOutput(Ljava/io/OutputStream;)V

    .line 261
    :goto_0
    return-void

    .line 242
    :cond_3
    const-string v1, "ISO-8859-1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 245
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    instance-of v1, v1, Lorg/jibx/runtime/impl/ISO88591StreamWriter;

    if-nez v1, :cond_5

    .line 246
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_byteBuffer:Lorg/jibx/runtime/impl/OutByteBuffer;

    if-nez v1, :cond_4

    .line 247
    new-instance v1, Lorg/jibx/runtime/impl/OutByteBuffer;

    invoke-direct {v1}, Lorg/jibx/runtime/impl/OutByteBuffer;-><init>()V

    iput-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_byteBuffer:Lorg/jibx/runtime/impl/OutByteBuffer;

    .line 249
    :cond_4
    new-instance v0, Lorg/jibx/runtime/impl/ISO88591StreamWriter;

    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_uris:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;-><init>([Ljava/lang/String;)V

    .line 250
    .local v0, wrtr:Lorg/jibx/runtime/impl/ISO88591StreamWriter;
    iput-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    .line 251
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_byteBuffer:Lorg/jibx/runtime/impl/OutByteBuffer;

    invoke-virtual {v0, v1}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->setBuffer(Lorg/jibx/runtime/impl/IOutByteBuffer;)V

    .line 252
    iget v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentCount:I

    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_newLine:Ljava/lang/String;

    iget-char v3, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentChar:C

    invoke-virtual {v0, v1, v2, v3}, Lorg/jibx/runtime/impl/ISO88591StreamWriter;->setIndentSpaces(ILjava/lang/String;C)V

    .line 255
    .end local v0           #wrtr:Lorg/jibx/runtime/impl/ISO88591StreamWriter;
    :cond_5
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/MarshallingContext;->reset()V

    .line 256
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_byteBuffer:Lorg/jibx/runtime/impl/OutByteBuffer;

    invoke-virtual {v1, p1}, Lorg/jibx/runtime/impl/OutByteBuffer;->setOutput(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 259
    :cond_6
    invoke-direct {p0, p2}, Lorg/jibx/runtime/impl/MarshallingContext;->createEscaper(Ljava/lang/String;)Lorg/jibx/runtime/ICharacterEscaper;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/jibx/runtime/impl/MarshallingContext;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;Lorg/jibx/runtime/ICharacterEscaper;)V

    goto :goto_0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;Lorg/jibx/runtime/ICharacterEscaper;)V
    .locals 6
    .parameter "outs"
    .parameter "enc"
    .parameter "esc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 190
    if-nez p2, :cond_0

    .line 191
    :try_start_0
    const-string p2, "UTF-8"

    .line 195
    :cond_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    instance-of v2, v2, Lorg/jibx/runtime/impl/GenericXMLWriter;

    if-nez v2, :cond_1

    .line 196
    new-instance v2, Lorg/jibx/runtime/impl/GenericXMLWriter;

    iget-object v3, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_uris:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/jibx/runtime/impl/GenericXMLWriter;-><init>([Ljava/lang/String;)V

    iput-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    .line 197
    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    iget v3, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentCount:I

    iget-object v4, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_newLine:Ljava/lang/String;

    iget-char v5, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentChar:C

    invoke-interface {v2, v3, v4, v5}, Lorg/jibx/runtime/IXMLWriter;->setIndentSpaces(ILjava/lang/String;C)V

    .line 202
    :cond_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 204
    .local v1, writer:Ljava/io/Writer;
    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    check-cast v2, Lorg/jibx/runtime/impl/GenericXMLWriter;

    invoke-virtual {v2, v1, p3}, Lorg/jibx/runtime/impl/GenericXMLWriter;->setOutput(Ljava/io/Writer;Lorg/jibx/runtime/ICharacterEscaper;)V

    .line 205
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/MarshallingContext;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    return-void

    .line 207
    .end local v1           #writer:Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 208
    .local v0, ex:Ljava/io/IOException;
    new-instance v2, Lorg/jibx/runtime/JiBXException;

    const-string v3, "Error setting output"

    invoke-direct {v2, v3, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 1
    .parameter "outw"

    .prologue
    .line 285
    invoke-static {}, Lorg/jibx/runtime/impl/UTF8Escaper;->getInstance()Lorg/jibx/runtime/ICharacterEscaper;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jibx/runtime/impl/MarshallingContext;->setOutput(Ljava/io/Writer;Lorg/jibx/runtime/ICharacterEscaper;)V

    .line 286
    return-void
.end method

.method public setOutput(Ljava/io/Writer;Lorg/jibx/runtime/ICharacterEscaper;)V
    .locals 4
    .parameter "outw"
    .parameter "esc"

    .prologue
    .line 270
    iget-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    instance-of v0, v0, Lorg/jibx/runtime/impl/GenericXMLWriter;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lorg/jibx/runtime/impl/GenericXMLWriter;

    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_uris:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/jibx/runtime/impl/GenericXMLWriter;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    .line 272
    iget-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    iget v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentCount:I

    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_newLine:Ljava/lang/String;

    iget-char v3, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_indentChar:C

    invoke-interface {v0, v1, v2, v3}, Lorg/jibx/runtime/IXMLWriter;->setIndentSpaces(ILjava/lang/String;C)V

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    check-cast v0, Lorg/jibx/runtime/impl/GenericXMLWriter;

    invoke-virtual {v0, p1, p2}, Lorg/jibx/runtime/impl/GenericXMLWriter;->setOutput(Ljava/io/Writer;Lorg/jibx/runtime/ICharacterEscaper;)V

    .line 276
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/MarshallingContext;->reset()V

    .line 277
    return-void
.end method

.method public setUserContext(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 1158
    iput-object p1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_userContext:Ljava/lang/Object;

    .line 1159
    return-void
.end method

.method public setXmlWriter(Lorg/jibx/runtime/IXMLWriter;)V
    .locals 0
    .parameter "xwrite"

    .prologue
    .line 303
    iput-object p1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    .line 304
    return-void
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "enc"
    .parameter "alone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, atext:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 438
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "yes"

    .line 440
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    const-string v3, "1.0"

    invoke-interface {v2, v3, p1, v0}, Lorg/jibx/runtime/IXMLWriter;->writeXMLDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void

    .line 438
    :cond_1
    const-string v0, "no"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, ex:Ljava/io/IOException;
    new-instance v2, Lorg/jibx/runtime/JiBXException;

    const-string v3, "Error writing marshalled document"

    invoke-direct {v2, v3, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "enc"
    .parameter "alone"
    .parameter "outs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0, p3, p1}, Lorg/jibx/runtime/impl/MarshallingContext;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/MarshallingContext;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 461
    return-void
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;Ljava/io/Writer;)V
    .locals 0
    .parameter "enc"
    .parameter "alone"
    .parameter "outw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p0, p3}, Lorg/jibx/runtime/impl/MarshallingContext;->setOutput(Ljava/io/Writer;)V

    .line 476
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/MarshallingContext;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 477
    return-void
.end method

.method public startTag(ILjava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 3
    .parameter "index"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 522
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v1, p1, p2}, Lorg/jibx/runtime/IXMLWriter;->startTagClosed(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    return-object p0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Error writing marshalled document"

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startTagAttributes(ILjava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 3
    .parameter "index"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 541
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v1, p1, p2}, Lorg/jibx/runtime/IXMLWriter;->startTagOpen(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    return-object p0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Error writing marshalled document"

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startTagNamespaces(ILjava/lang/String;[I[Ljava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 3
    .parameter "index"
    .parameter "name"
    .parameter "nums"
    .parameter "prefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 950
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/jibx/runtime/IXMLWriter;->startTagNamespaces(ILjava/lang/String;[I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    return-object p0

    .line 952
    :catch_0
    move-exception v0

    .line 953
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    const-string v2, "Error writing marshalled document"

    invoke-direct {v1, v2, v0}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeCData(Ljava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v1, p1}, Lorg/jibx/runtime/IXMLWriter;->writeCData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    return-object p0

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, e:Ljava/lang/NullPointerException;
    if-nez p1, :cond_0

    .line 796
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Null value writing CDATA from object of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/MarshallingContext;->getStackTop()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 800
    :cond_0
    throw v0
.end method

.method public writeContent(Ljava/lang/String;)Lorg/jibx/runtime/impl/MarshallingContext;
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/MarshallingContext;->m_writer:Lorg/jibx/runtime/IXMLWriter;

    invoke-interface {v1, p1}, Lorg/jibx/runtime/IXMLWriter;->writeTextContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    return-object p0

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, e:Ljava/lang/NullPointerException;
    if-nez p1, :cond_0

    .line 818
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Null value writing text content from object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/MarshallingContext;->getStackTop()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 822
    :cond_0
    throw v0
.end method
