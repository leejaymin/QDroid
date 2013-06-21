.class public Lorg/jibx/runtime/impl/UnmarshallingContext;
.super Ljava/lang/Object;
.source "UnmarshallingContext.java"

# interfaces
.implements Lorg/jibx/runtime/IUnmarshallingContext;


# static fields
.field private static final INITIAL_STACK_SIZE:I = 0x14

.field private static final s_readerFactory:Lorg/jibx/runtime/impl/IXMLReaderFactory;


# instance fields
.field private m_classIndexMap:Lorg/jibx/runtime/impl/StringIntHashMap;

.field private m_factory:Lorg/jibx/runtime/IBindingFactory;

.field protected m_idClasses:[Ljava/lang/String;

.field protected m_idMaps:[Ljava/util/Map;

.field protected m_idref:Ljava/lang/String;

.field protected m_names:[Ljava/lang/String;

.field protected m_namespaces:[Ljava/lang/String;

.field protected m_objectStack:[Ljava/lang/Object;

.field private m_reader:Lorg/jibx/runtime/IXMLReader;

.field protected m_stackDepth:I

.field private m_transientBase:I

.field protected m_transientUnmarshalMap:Ljava/util/Map;

.field private m_transientUnmarshallerClasses:[Ljava/lang/String;

.field protected m_unmarshalMap:Ljava/util/Map;

.field protected m_unmarshallers:[Lorg/jibx/runtime/IUnmarshaller;

.field protected m_userContext:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lorg/jibx/runtime/impl/RuntimeSupport;->loadFactory()Lorg/jibx/runtime/impl/IXMLReaderFactory;

    move-result-object v0

    sput-object v0, Lorg/jibx/runtime/impl/UnmarshallingContext;->s_readerFactory:Lorg/jibx/runtime/impl/IXMLReaderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 173
    const/4 v1, 0x0

    sget-object v2, Lorg/jibx/runtime/Utility;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    sget-object v3, Lorg/jibx/runtime/Utility;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    sget-object v4, Lorg/jibx/runtime/Utility;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    sget-object v5, Lorg/jibx/runtime/Utility;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/jibx/runtime/impl/UnmarshallingContext;-><init>(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lorg/jibx/runtime/IBindingFactory;)V

    .line 175
    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lorg/jibx/runtime/IBindingFactory;)V
    .locals 4
    .parameter "nmap"
    .parameter "umcs"
    .parameter "nss"
    .parameter "names"
    .parameter "idcs"
    .parameter "ifact"

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    array-length v1, p2

    sub-int v1, p1, v1

    iput v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientBase:I

    .line 150
    iget v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientBase:I

    sub-int v1, p1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshallerClasses:[Ljava/lang/String;

    .line 151
    new-array v1, p1, [Lorg/jibx/runtime/IUnmarshaller;

    iput-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_unmarshallers:[Lorg/jibx/runtime/IUnmarshaller;

    .line 152
    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_namespaces:[Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_namespaces:[Ljava/lang/String;

    array-length v2, p3

    invoke-static {p3, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_names:[Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_names:[Ljava/lang/String;

    array-length v2, p4

    invoke-static {p4, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iput-object p5, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idClasses:[Ljava/lang/String;

    .line 157
    if-nez p5, :cond_0

    const/4 v0, 0x1

    .line 158
    .local v0, size:I
    :goto_0
    new-array v1, v0, [Ljava/util/HashMap;

    iput-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idMaps:[Ljava/util/Map;

    .line 159
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_objectStack:[Ljava/lang/Object;

    .line 160
    iput-object p6, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_factory:Lorg/jibx/runtime/IBindingFactory;

    .line 161
    if-eqz p6, :cond_1

    .line 162
    invoke-interface {p6}, Lorg/jibx/runtime/IBindingFactory;->getClassIndexMap()Lorg/jibx/runtime/impl/StringIntHashMap;

    move-result-object v1

    iput-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_classIndexMap:Lorg/jibx/runtime/impl/StringIntHashMap;

    .line 166
    :goto_1
    return-void

    .line 157
    .end local v0           #size:I
    :cond_0
    array-length v0, p5

    goto :goto_0

    .line 164
    .restart local v0       #size:I
    :cond_1
    new-instance v1, Lorg/jibx/runtime/impl/StringIntHashMap;

    invoke-direct {v1}, Lorg/jibx/runtime/impl/StringIntHashMap;-><init>()V

    iput-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_classIndexMap:Lorg/jibx/runtime/impl/StringIntHashMap;

    goto :goto_1
.end method

.method private advance()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->nextToken()I

    .line 261
    return-void
.end method

.method public static buildNameString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ns"
    .parameter "name"

    .prologue
    .line 186
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\"{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ns"
    .parameter "name"

    .prologue
    .line 290
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0, p1, p2}, Lorg/jibx/runtime/IXMLReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUnmarshaller(I)Lorg/jibx/runtime/IUnmarshaller;
    .locals 7
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2547
    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_unmarshallers:[Lorg/jibx/runtime/IUnmarshaller;

    aget-object v4, v4, p1

    if-nez v4, :cond_3

    .line 2551
    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_factory:Lorg/jibx/runtime/IBindingFactory;

    invoke-interface {v4}, Lorg/jibx/runtime/IBindingFactory;->getUnmarshallerClasses()[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, p1

    .line 2552
    .local v3, mname:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2555
    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_factory:Lorg/jibx/runtime/IBindingFactory;

    invoke-interface {v4, p1}, Lorg/jibx/runtime/IBindingFactory;->getUnmarshallerClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 2570
    .local v0, clas:Ljava/lang/Class;
    :goto_0
    if-nez v0, :cond_2

    .line 2571
    :try_start_0
    new-instance v4, Lorg/jibx/runtime/JiBXException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unable to load unmarshaller class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2578
    :catch_0
    move-exception v1

    .line 2579
    .local v1, e:Lorg/jibx/runtime/JiBXException;
    throw v1

    .line 2560
    .end local v0           #clas:Ljava/lang/Class;
    .end local v1           #e:Lorg/jibx/runtime/JiBXException;
    :cond_0
    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshallerClasses:[Ljava/lang/String;

    iget v5, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientBase:I

    sub-int v5, p1, v5

    aget-object v3, v4, v5

    .line 2561
    if-nez v3, :cond_1

    .line 2562
    new-instance v4, Lorg/jibx/runtime/JiBXException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "No unmarshaller defined for class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_factory:Lorg/jibx/runtime/IBindingFactory;

    invoke-interface {v6}, Lorg/jibx/runtime/IBindingFactory;->getMappedClasses()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2564
    :cond_1
    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_factory:Lorg/jibx/runtime/IBindingFactory;

    invoke-interface {v4, v3}, Lorg/jibx/runtime/IBindingFactory;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .restart local v0       #clas:Ljava/lang/Class;
    goto :goto_0

    .line 2575
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jibx/runtime/IUnmarshaller;

    .line 2576
    .local v2, m:Lorg/jibx/runtime/IUnmarshaller;
    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_unmarshallers:[Lorg/jibx/runtime/IUnmarshaller;

    aput-object v2, v4, p1
    :try_end_1
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2585
    .end local v0           #clas:Ljava/lang/Class;
    .end local v2           #m:Lorg/jibx/runtime/IUnmarshaller;
    .end local v3           #mname:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_unmarshallers:[Lorg/jibx/runtime/IUnmarshaller;

    aget-object v4, v4, p1

    return-object v4

    .line 2580
    .restart local v0       #clas:Ljava/lang/Class;
    .restart local v3       #mname:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 2581
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Lorg/jibx/runtime/JiBXException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unable to create unmarshaller of class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private matchStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 642
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->toTag()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 643
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->verifyNamespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 644
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->throwStartTagNameError(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_1
    return-void

    .line 647
    :cond_2
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildNameString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " start tag, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->currentNameString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " end tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyNamespace(Ljava/lang/String;)Z
    .locals 1
    .parameter "ns"

    .prologue
    .line 274
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 277
    :goto_0
    return v0

    .line 275
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public accumulateText()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 806
    const/4 v1, 0x0

    .line 807
    .local v1, text:Ljava/lang/String;
    const/4 v0, 0x0

    .line 809
    .local v0, buff:Ljava/lang/StringBuffer;
    :goto_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v2}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 840
    :goto_1
    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v2}, Lorg/jibx/runtime/IXMLReader;->nextToken()I

    goto :goto_0

    .line 812
    :pswitch_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v2}, Lorg/jibx/runtime/IXMLReader;->getText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 813
    new-instance v2, Lorg/jibx/runtime/JiBXException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unexpanded entity reference in text at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 821
    :cond_0
    :pswitch_1
    if-nez v1, :cond_1

    .line 822
    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v2}, Lorg/jibx/runtime/IXMLReader;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 824
    :cond_1
    if-nez v0, :cond_2

    .line 825
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buff:Ljava/lang/StringBuffer;
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 827
    .restart local v0       #buff:Ljava/lang/StringBuffer;
    :cond_2
    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v2}, Lorg/jibx/runtime/IXMLReader;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 842
    :pswitch_2
    if-nez v0, :cond_4

    .line 843
    if-nez v1, :cond_3

    const-string v1, ""

    .line 845
    .end local v1           #text:Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v1

    .restart local v1       #text:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 809
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addUnmarshalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "mapname"
    .parameter "ns"
    .parameter "name"
    .parameter "cname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2494
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_classIndexMap:Lorg/jibx/runtime/impl/StringIntHashMap;

    invoke-virtual {v1, p1}, Lorg/jibx/runtime/impl/StringIntHashMap;->get(Ljava/lang/String;)I

    move-result v0

    .line 2495
    .local v0, index:I
    if-gez v0, :cond_0

    .line 2496
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No unmarshal mapping defined for class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2498
    :cond_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_namespaces:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 2499
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_names:[Ljava/lang/String;

    aput-object p3, v1, v0

    .line 2500
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshallerClasses:[Ljava/lang/String;

    iget v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientBase:I

    sub-int v2, v0, v2

    aput-object p4, v1, v2

    .line 2501
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshalMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 2502
    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->mapUnmarshalling(I)V

    .line 2504
    :cond_1
    return-void
.end method

.method public attributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1937
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->attributeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1938
    :catch_0
    move-exception v0

    .line 1939
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1940
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1941
    throw v0
.end method

.method public attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "ns"
    .parameter "name"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1958
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1959
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1963
    .end local p3
    :goto_0
    return p3

    .restart local p3
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 1964
    :catch_0
    move-exception v0

    .line 1965
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1966
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1967
    throw v0
.end method

.method public attributeByte(Ljava/lang/String;Ljava/lang/String;)B
    .locals 2
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1406
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->attributeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertByte(Ljava/lang/String;)B
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1410
    throw v0
.end method

.method public attributeByte(Ljava/lang/String;Ljava/lang/String;B)B
    .locals 2
    .parameter "ns"
    .parameter "name"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1427
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1428
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1432
    .end local p3
    :goto_0
    return p3

    .restart local p3
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertByte(Ljava/lang/String;)B
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 1433
    :catch_0
    move-exception v0

    .line 1434
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1436
    throw v0
.end method

.method public attributeChar(Ljava/lang/String;Ljava/lang/String;)C
    .locals 2
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1678
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->attributeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertChar(Ljava/lang/String;)C
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1679
    :catch_0
    move-exception v0

    .line 1680
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1681
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1682
    throw v0
.end method

.method public attributeChar(Ljava/lang/String;Ljava/lang/String;C)C
    .locals 2
    .parameter "ns"
    .parameter "name"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1699
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1700
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1704
    .end local p3
    :goto_0
    return p3

    .restart local p3
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertChar(Ljava/lang/String;)C
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 1705
    :catch_0
    move-exception v0

    .line 1706
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1707
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1708
    throw v0
.end method

.method public attributeDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2292
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->attributeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2293
    :catch_0
    move-exception v0

    .line 2294
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 2295
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 2296
    throw v0
.end method

.method public attributeDate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .parameter "ns"
    .parameter "name"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2314
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2315
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2319
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    goto :goto_0

    .line 2320
    :catch_0
    move-exception v0

    .line 2321
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 2322
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 2323
    throw v0
.end method

.method public attributeDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 3
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2173
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->attributeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 2174
    :catch_0
    move-exception v0

    .line 2175
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 2176
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 2177
    throw v0
.end method

.method public attributeDouble(Ljava/lang/String;Ljava/lang/String;D)D
    .locals 2
    .parameter "ns"
    .parameter "name"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2194
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2195
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2199
    .end local p3
    :goto_0
    return-wide p3

    .restart local p3
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    goto :goto_0

    .line 2200
    :catch_0
    move-exception v0

    .line 2201
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 2202
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 2203
    throw v0
.end method

.method public attributeEnumeration(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)I
    .locals 2
    .parameter "ns"
    .parameter "name"
    .parameter "enums"
    .parameter "vals"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1282
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p4}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertEnum(Ljava/lang/String;[Ljava/lang/String;[I)I
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1283
    :catch_0
    move-exception v0

    .line 1284
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1286
    throw v0
.end method

.method public attributeEnumeration(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[II)I
    .locals 2
    .parameter "ns"
    .parameter "name"
    .parameter "enums"
    .parameter "vals"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1309
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p4, p5}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertEnum(Ljava/lang/String;[Ljava/lang/String;[II)I
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1313
    throw v0
.end method

.method public attributeExistingIDREF(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .parameter "ns"
    .parameter "name"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1121
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->attributeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idref:Ljava/lang/String;

    .line 1122
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idref:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Lorg/jibx/runtime/impl/UnmarshallingContext;->findDefinedID(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public attributeFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 2
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2055
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->attributeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2056
    :catch_0
    move-exception v0

    .line 2057
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 2058
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 2059
    throw v0
.end method

.method public attributeFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2
    .parameter "ns"
    .parameter "name"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2076
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2077
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2081
    .end local p3
    :goto_0
    return p3

    .restart local p3
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 2082
    :catch_0
    move-exception v0

    .line 2083
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 2084
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 2085
    throw v0
.end method

.method public attributeForwardIDREF(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .parameter "ns"
    .parameter "name"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1082
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->attributeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idref:Ljava/lang/String;

    .line 1083
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idref:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Lorg/jibx/runtime/impl/UnmarshallingContext;->findID(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public attributeInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1138
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->attributeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1140
    .local v2, text:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lorg/jibx/runtime/Utility;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1141
    :catch_0
    move-exception v6

    .line 1142
    .local v6, ex:Lorg/jibx/runtime/JiBXException;
    new-instance v0, Lorg/jibx/runtime/JiBXParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6}, Lorg/jibx/runtime/JiBXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lorg/jibx/runtime/JiBXException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/jibx/runtime/JiBXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public attributeInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .parameter "ns"
    .parameter "name"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1161
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1162
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1166
    .end local p3
    :goto_0
    return p3

    .restart local p3
    :cond_0
    :try_start_0
    invoke-static {v2}, Lorg/jibx/runtime/Utility;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 1167
    :catch_0
    move-exception v6

    .line 1168
    .local v6, ex:Lorg/jibx/runtime/JiBXException;
    new-instance v0, Lorg/jibx/runtime/JiBXParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6}, Lorg/jibx/runtime/JiBXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lorg/jibx/runtime/JiBXException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/jibx/runtime/JiBXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public attributeLong(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1817
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->attributeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 1818
    :catch_0
    move-exception v0

    .line 1819
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1820
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1821
    throw v0
.end method

.method public attributeLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2
    .parameter "ns"
    .parameter "name"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1838
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1839
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1843
    .end local p3
    :goto_0
    return-wide p3

    .restart local p3
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    goto :goto_0

    .line 1844
    :catch_0
    move-exception v0

    .line 1845
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1847
    throw v0
.end method

.method public attributeShort(Ljava/lang/String;Ljava/lang/String;)S
    .locals 2
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1539
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->attributeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertShort(Ljava/lang/String;)S
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1540
    :catch_0
    move-exception v0

    .line 1541
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1543
    throw v0
.end method

.method public attributeShort(Ljava/lang/String;Ljava/lang/String;S)S
    .locals 2
    .parameter "ns"
    .parameter "name"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1560
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1561
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1565
    .end local p3
    :goto_0
    return p3

    .restart local p3
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertShort(Ljava/lang/String;)S
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 1566
    :catch_0
    move-exception v0

    .line 1567
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1569
    throw v0
.end method

.method public attributeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 973
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 975
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Missing required attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildNameString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 978
    :cond_0
    return-object v0
.end method

.method public attributeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ns"
    .parameter "name"
    .parameter "dflt"

    .prologue
    .line 994
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 998
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    move-object p3, v0

    goto :goto_0
.end method

.method public buildPositionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->buildPositionString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checkAllowedAttributes([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12
    .parameter "nss"
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 594
    iget-object v9, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v9}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 595
    iget-object v9, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v9}, Lorg/jibx/runtime/IXMLReader;->getAttributeCount()I

    move-result v2

    .line 596
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_6

    .line 597
    iget-object v9, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v9, v5}, Lorg/jibx/runtime/IXMLReader;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 598
    .local v7, name:Ljava/lang/String;
    iget-object v9, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v9, v5}, Lorg/jibx/runtime/IXMLReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v8

    .line 599
    .local v8, ns:Ljava/lang/String;
    const/4 v0, 0x0

    .line 600
    .local v0, base:I
    array-length v9, p2

    add-int/lit8 v6, v9, -0x1

    .line 601
    .local v6, limit:I
    :cond_0
    :goto_1
    if-gt v0, v6, :cond_4

    .line 602
    add-int v9, v0, v6

    shr-int/lit8 v3, v9, 0x1

    .line 603
    .local v3, cur:I
    aget-object v9, p2, v3

    invoke-virtual {v7, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 604
    .local v4, diff:I
    if-nez v4, :cond_2

    .line 605
    aget-object v1, p1, v3

    .line 606
    .local v1, comp:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 607
    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 611
    :goto_2
    if-nez v4, :cond_2

    .line 596
    .end local v1           #comp:Ljava/lang/String;
    .end local v3           #cur:I
    .end local v4           #diff:I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 609
    .restart local v1       #comp:Ljava/lang/String;
    .restart local v3       #cur:I
    .restart local v4       #diff:I
    :cond_1
    invoke-virtual {v8, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 615
    .end local v1           #comp:Ljava/lang/String;
    :cond_2
    if-gez v4, :cond_3

    .line 616
    add-int/lit8 v6, v3, -0x1

    goto :goto_1

    .line 617
    :cond_3
    if-lez v4, :cond_0

    .line 618
    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    .line 621
    .end local v3           #cur:I
    .end local v4           #diff:I
    :cond_4
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Illegal attribute "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {v8, v7}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildNameString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/jibx/runtime/impl/UnmarshallingContext;->throwStartTagException(Ljava/lang/String;)V

    goto :goto_3

    .line 625
    .end local v0           #base:I
    .end local v2           #count:I
    .end local v5           #i:I
    .end local v6           #limit:I
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #ns:Ljava/lang/String;
    :cond_5
    new-instance v9, Lorg/jibx/runtime/JiBXException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Error parsing document "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 628
    .restart local v2       #count:I
    .restart local v5       #i:I
    :cond_6
    return-void
.end method

.method public convertBoolean(Ljava/lang/String;)Z
    .locals 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1913
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1914
    :cond_0
    const/4 v0, 0x1

    .line 1916
    :goto_0
    return v0

    .line 1915
    :cond_1
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1916
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1918
    :cond_3
    new-instance v0, Lorg/jibx/runtime/JiBXParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid boolean value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jibx/runtime/JiBXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public convertByte(Ljava/lang/String;)B
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1386
    :try_start_0
    invoke-static {p1}, Lorg/jibx/runtime/Utility;->parseByte(Ljava/lang/String;)B
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1387
    :catch_0
    move-exception v0

    .line 1388
    .local v0, ex:Lorg/jibx/runtime/JiBXException;
    new-instance v1, Lorg/jibx/runtime/JiBXParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/jibx/runtime/JiBXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jibx/runtime/JiBXException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lorg/jibx/runtime/JiBXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public convertChar(Ljava/lang/String;)C
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1658
    :try_start_0
    invoke-static {p1}, Lorg/jibx/runtime/Utility;->parseChar(Ljava/lang/String;)C
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1659
    :catch_0
    move-exception v0

    .line 1660
    .local v0, ex:Lorg/jibx/runtime/JiBXException;
    new-instance v1, Lorg/jibx/runtime/JiBXParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/jibx/runtime/JiBXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jibx/runtime/JiBXException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lorg/jibx/runtime/JiBXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public convertDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2271
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-static {p1}, Lorg/jibx/runtime/Utility;->parseDateTime(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2272
    :catch_0
    move-exception v0

    .line 2273
    .local v0, ex:Lorg/jibx/runtime/JiBXException;
    new-instance v1, Lorg/jibx/runtime/JiBXParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/jibx/runtime/JiBXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jibx/runtime/JiBXException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lorg/jibx/runtime/JiBXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public convertDouble(Ljava/lang/String;)D
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2152
    :try_start_0
    invoke-static {p1}, Lorg/jibx/runtime/Utility;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 2153
    :catch_0
    move-exception v0

    .line 2154
    .local v0, ex:Lorg/jibx/runtime/JiBXException;
    new-instance v1, Lorg/jibx/runtime/JiBXParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/jibx/runtime/JiBXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jibx/runtime/JiBXException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lorg/jibx/runtime/JiBXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public convertEnum(Ljava/lang/String;[Ljava/lang/String;[I)I
    .locals 4
    .parameter "target"
    .parameter "enums"
    .parameter "vals"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1227
    if-nez p1, :cond_0

    .line 1228
    const-string v1, "Missing required enumeration value"

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->throwStartTagException(Ljava/lang/String;)V

    .line 1231
    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/jibx/runtime/Utility;->enumValue(Ljava/lang/String;[Ljava/lang/String;[I)I
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, ex:Lorg/jibx/runtime/JiBXException;
    new-instance v1, Lorg/jibx/runtime/JiBXConstrainedParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/jibx/runtime/JiBXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/jibx/runtime/JiBXConstrainedParseException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    throw v1
.end method

.method public convertEnum(Ljava/lang/String;[Ljava/lang/String;[II)I
    .locals 4
    .parameter "target"
    .parameter "enums"
    .parameter "vals"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1253
    if-nez p1, :cond_0

    .line 1257
    .end local p4
    :goto_0
    return p4

    .restart local p4
    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/jibx/runtime/Utility;->enumValue(Ljava/lang/String;[Ljava/lang/String;[I)I
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p4

    goto :goto_0

    .line 1258
    :catch_0
    move-exception v0

    .line 1259
    .local v0, ex:Lorg/jibx/runtime/JiBXException;
    new-instance v1, Lorg/jibx/runtime/JiBXConstrainedParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/jibx/runtime/JiBXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lorg/jibx/runtime/JiBXConstrainedParseException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    throw v1
.end method

.method public convertFloat(Ljava/lang/String;)F
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2035
    :try_start_0
    invoke-static {p1}, Lorg/jibx/runtime/Utility;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2036
    :catch_0
    move-exception v0

    .line 2037
    .local v0, ex:Lorg/jibx/runtime/JiBXException;
    new-instance v1, Lorg/jibx/runtime/JiBXParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/jibx/runtime/JiBXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jibx/runtime/JiBXException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lorg/jibx/runtime/JiBXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public convertLong(Ljava/lang/String;)J
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1797
    :try_start_0
    invoke-static {p1}, Lorg/jibx/runtime/Utility;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 1798
    :catch_0
    move-exception v0

    .line 1799
    .local v0, ex:Lorg/jibx/runtime/JiBXException;
    new-instance v1, Lorg/jibx/runtime/JiBXParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/jibx/runtime/JiBXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jibx/runtime/JiBXException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lorg/jibx/runtime/JiBXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public convertShort(Ljava/lang/String;)S
    .locals 4
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1519
    :try_start_0
    invoke-static {p1}, Lorg/jibx/runtime/Utility;->parseShort(Ljava/lang/String;)S
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1520
    :catch_0
    move-exception v0

    .line 1521
    .local v0, ex:Lorg/jibx/runtime/JiBXException;
    new-instance v1, Lorg/jibx/runtime/JiBXParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/jibx/runtime/JiBXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jibx/runtime/JiBXException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lorg/jibx/runtime/JiBXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public currentEvent()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 3203
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v0

    return v0
.end method

.method public currentNameString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildNameString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public defineID(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7
    .parameter "id"
    .parameter "index"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2439
    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idMaps:[Ljava/util/Map;

    aget-object v1, v4, p2

    .line 2440
    .local v1, map:Ljava/util/Map;
    if-nez v1, :cond_0

    .line 2441
    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idMaps:[Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/Map;
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .restart local v1       #map:Ljava/util/Map;
    aput-object v1, v4, p2

    .line 2443
    :cond_0
    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2444
    .local v2, prior:Ljava/lang/Object;
    instance-of v4, v2, Lorg/jibx/runtime/impl/BackFillHolder;

    if-eqz v4, :cond_4

    move-object v0, v2

    .line 2445
    check-cast v0, Lorg/jibx/runtime/impl/BackFillHolder;

    .line 2446
    .local v0, holder:Lorg/jibx/runtime/impl/BackFillHolder;
    invoke-virtual {v0}, Lorg/jibx/runtime/impl/BackFillHolder;->getExpectedClass()Ljava/lang/String;

    move-result-object v3

    .line 2447
    .local v3, xclass:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2448
    :cond_1
    invoke-virtual {v0, p3}, Lorg/jibx/runtime/impl/BackFillHolder;->defineValue(Ljava/lang/Object;)V

    .line 2457
    .end local v0           #holder:Lorg/jibx/runtime/impl/BackFillHolder;
    .end local v3           #xclass:Ljava/lang/String;
    :cond_2
    return-void

    .line 2450
    .restart local v0       #holder:Lorg/jibx/runtime/impl/BackFillHolder;
    .restart local v3       #xclass:Ljava/lang/String;
    :cond_3
    new-instance v4, Lorg/jibx/runtime/JiBXException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "ID object has wrong type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2453
    .end local v0           #holder:Lorg/jibx/runtime/impl/BackFillHolder;
    .end local v3           #xclass:Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_2

    .line 2454
    new-instance v4, Lorg/jibx/runtime/JiBXException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Duplicate ID definition "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public findDefinedID(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3
    .parameter "id"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1039
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->findID(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 1040
    .local v0, obj:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1041
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->throwStartTagException(Ljava/lang/String;)V

    .line 1043
    :cond_0
    return-object v0
.end method

.method public findID(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 5
    .parameter "id"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1013
    iget-object v3, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idMaps:[Ljava/util/Map;

    aget-object v0, v3, p2

    .line 1014
    .local v0, map:Ljava/util/Map;
    if-eqz v0, :cond_3

    .line 1015
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1016
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lorg/jibx/runtime/impl/BackFillHolder;

    if-eqz v3, :cond_2

    :cond_0
    move-object v1, v2

    .line 1026
    .end local v1           #obj:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v1

    .line 1018
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idClasses:[Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idClasses:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1022
    const-string v3, "IDREF element content mapped to wrong type"

    invoke-virtual {p0, v3}, Lorg/jibx/runtime/impl/UnmarshallingContext;->throwStartTagException(Ljava/lang/String;)V

    .end local v1           #obj:Ljava/lang/Object;
    :cond_3
    move-object v1, v2

    .line 1026
    goto :goto_0
.end method

.method public getActiveNamespaceCount()I
    .locals 4

    .prologue
    .line 3113
    :try_start_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v2}, Lorg/jibx/runtime/IXMLReader;->getNestingDepth()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/jibx/runtime/IXMLReader;->getNamespaceCount(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 3114
    :catch_0
    move-exception v0

    .line 3115
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Internal error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getActiveNamespacePrefix(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 3139
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0, p1}, Lorg/jibx/runtime/IXMLReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNamespaceUri(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 3128
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0, p1}, Lorg/jibx/runtime/IXMLReader;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 3247
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 3259
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0, p1}, Lorg/jibx/runtime/IXMLReader;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 3271
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0, p1}, Lorg/jibx/runtime/IXMLReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 3284
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0, p1}, Lorg/jibx/runtime/IXMLReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 3296
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0, p1}, Lorg/jibx/runtime/IXMLReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2966
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getDocumentName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2814
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v0

    .line 2815
    .local v0, type:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2817
    :cond_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2819
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getElementNamespace()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2831
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v0

    .line 2832
    .local v0, type:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2834
    :cond_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 2836
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFactory()Lorg/jibx/runtime/IBindingFactory;
    .locals 1

    .prologue
    .line 2957
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_factory:Lorg/jibx/runtime/IBindingFactory;

    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2976
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getInputEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3214
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3225
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 5

    .prologue
    .line 3308
    :try_start_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v2}, Lorg/jibx/runtime/IXMLReader;->getNestingDepth()I

    move-result v1

    .line 3309
    .local v1, level:I
    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v2, v1}, Lorg/jibx/runtime/IXMLReader;->getNamespaceCount(I)I

    move-result v2

    iget-object v3, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Lorg/jibx/runtime/IXMLReader;->getNamespaceCount(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    sub-int/2addr v2, v3

    return v2

    .line 3311
    .end local v1           #level:I
    :catch_0
    move-exception v0

    .line 3312
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Internal error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 3341
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v2}, Lorg/jibx/runtime/IXMLReader;->getNestingDepth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Lorg/jibx/runtime/IXMLReader;->getNamespaceCount(I)I

    move-result v0

    .line 3342
    .local v0, base:I
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    add-int v2, v0, p1

    invoke-interface {v1, v2}, Lorg/jibx/runtime/IXMLReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 3327
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v2}, Lorg/jibx/runtime/IXMLReader;->getNestingDepth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Lorg/jibx/runtime/IXMLReader;->getNamespaceCount(I)I

    move-result v0

    .line 3328
    .local v0, base:I
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    add-int v2, v0, p1

    invoke-interface {v1, v2}, Lorg/jibx/runtime/IXMLReader;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNamespaceUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "prefix"

    .prologue
    .line 3353
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0, p1}, Lorg/jibx/runtime/IXMLReader;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3236
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStackDepth()I
    .locals 1

    .prologue
    .line 3070
    iget v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_stackDepth:I

    return v0
.end method

.method public getStackObject(I)Ljava/lang/Object;
    .locals 3
    .parameter "depth"

    .prologue
    .line 3084
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_stackDepth:I

    if-ge p1, v0, :cond_0

    .line 3085
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_objectStack:[Ljava/lang/Object;

    iget v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_stackDepth:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 3087
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Depth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStackTop()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3099
    iget v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_stackDepth:I

    if-lez v0, :cond_0

    .line 3100
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_objectStack:[Ljava/lang/Object;

    iget v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_stackDepth:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 3102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3362
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnmarshaller(Ljava/lang/String;)Lorg/jibx/runtime/IUnmarshaller;
    .locals 4
    .parameter "mapname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2597
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_classIndexMap:Lorg/jibx/runtime/impl/StringIntHashMap;

    invoke-virtual {v1, p1}, Lorg/jibx/runtime/impl/StringIntHashMap;->get(Ljava/lang/String;)I

    move-result v0

    .line 2598
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 2599
    invoke-direct {p0, v0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getUnmarshaller(I)Lorg/jibx/runtime/IUnmarshaller;

    move-result-object v1

    return-object v1

    .line 2601
    :cond_0
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No unmarshal mapping defined for class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUnmarshaller(Ljava/lang/String;Ljava/lang/String;)Lorg/jibx/runtime/IUnmarshaller;
    .locals 9
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2620
    iget-object v7, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_unmarshalMap:Ljava/util/Map;

    if-nez v7, :cond_1

    .line 2623
    iget-object v7, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_factory:Lorg/jibx/runtime/IBindingFactory;

    invoke-interface {v7}, Lorg/jibx/runtime/IBindingFactory;->getUnmarshalMap()Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_unmarshalMap:Ljava/util/Map;

    .line 2624
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshalMap:Ljava/util/Map;

    .line 2625
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v7, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_names:[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_1

    .line 2626
    iget-object v7, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshallerClasses:[Ljava/lang/String;

    iget v8, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientBase:I

    sub-int v8, v0, v8

    aget-object v7, v7, v8

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_names:[Ljava/lang/String;

    aget-object v7, v7, v0

    if-eqz v7, :cond_0

    .line 2628
    invoke-virtual {p0, v0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->mapUnmarshalling(I)V

    .line 2625
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2634
    .end local v0           #i:I
    :cond_1
    iget-object v7, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshalMap:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2635
    .local v6, value:Ljava/lang/Object;
    if-eqz v6, :cond_b

    .line 2636
    const/4 v1, -0x1

    .line 2637
    .local v1, index:I
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_6

    move-object v7, v6

    .line 2638
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2639
    .restart local v0       #i:I
    iget-object v7, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_namespaces:[Ljava/lang/String;

    aget-object v5, v7, v0

    .line 2640
    .local v5, mns:Ljava/lang/String;
    if-eq p1, v5, :cond_4

    if-nez p1, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    if-nez v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2643
    :cond_4
    move v1, v0

    .line 2658
    .end local v0           #i:I
    .end local v5           #mns:Ljava/lang/String;
    :cond_5
    :goto_1
    if-ltz v1, :cond_b

    .line 2659
    invoke-direct {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getUnmarshaller(I)Lorg/jibx/runtime/IUnmarshaller;

    move-result-object v7

    .line 2691
    .end local v1           #index:I
    :goto_2
    return-object v7

    .line 2645
    .restart local v1       #index:I
    :cond_6
    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_5

    move-object v4, v6

    .line 2646
    check-cast v4, Ljava/util/List;

    .line 2647
    .local v4, list:Ljava/util/List;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 2648
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2649
    .local v3, j:I
    iget-object v7, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_namespaces:[Ljava/lang/String;

    aget-object v5, v7, v3

    .line 2650
    .restart local v5       #mns:Ljava/lang/String;
    if-eq p1, v5, :cond_9

    if-nez p1, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_9

    :cond_7
    if-nez v5, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    if-eqz p1, :cond_a

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2653
    :cond_9
    move v1, v3

    .line 2654
    goto :goto_1

    .line 2647
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2664
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v3           #j:I
    .end local v4           #list:Ljava/util/List;
    .end local v5           #mns:Ljava/lang/String;
    :cond_b
    iget-object v7, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_unmarshalMap:Ljava/util/Map;

    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2665
    if-eqz v6, :cond_15

    .line 2666
    const/4 v1, -0x1

    .line 2667
    .restart local v1       #index:I
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_10

    move-object v7, v6

    .line 2668
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2669
    .restart local v0       #i:I
    iget-object v7, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_namespaces:[Ljava/lang/String;

    aget-object v5, v7, v0

    .line 2670
    .restart local v5       #mns:Ljava/lang/String;
    if-eq p1, v5, :cond_e

    if-nez p1, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_e

    :cond_c
    if-nez v5, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    if-eqz p1, :cond_f

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2673
    :cond_e
    move v1, v0

    .line 2687
    .end local v0           #i:I
    .end local v5           #mns:Ljava/lang/String;
    :cond_f
    :goto_4
    if-ltz v1, :cond_15

    .line 2688
    invoke-direct {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getUnmarshaller(I)Lorg/jibx/runtime/IUnmarshaller;

    move-result-object v7

    goto :goto_2

    .line 2675
    :cond_10
    instance-of v7, v6, [I

    if-eqz v7, :cond_f

    move-object v7, v6

    .line 2676
    check-cast v7, [I

    move-object v2, v7

    check-cast v2, [I

    .line 2677
    .local v2, ints:[I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    array-length v7, v2

    if-ge v0, v7, :cond_f

    .line 2678
    iget-object v7, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_namespaces:[Ljava/lang/String;

    aget v8, v2, v0

    aget-object v5, v7, v8

    .line 2679
    .restart local v5       #mns:Ljava/lang/String;
    if-eq p1, v5, :cond_13

    if-nez p1, :cond_11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_13

    :cond_11
    if-nez v5, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_13

    :cond_12
    if-eqz p1, :cond_14

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 2682
    :cond_13
    aget v1, v2, v0

    .line 2683
    goto :goto_4

    .line 2677
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2691
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v2           #ints:[I
    .end local v5           #mns:Ljava/lang/String;
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_2
.end method

.method public getUserContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3003
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_userContext:Ljava/lang/Object;

    return-object v0
.end method

.method public hasAnyAttribute([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .parameter "nss"
    .parameter "names"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 568
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 569
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 570
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-direct {p0, v1, v2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 571
    const/4 v1, 0x1

    .line 574
    :goto_1
    return v1

    .line 569
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 576
    .end local v0           #i:I
    :cond_2
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error parsing document "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 548
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 550
    :cond_1
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error parsing document "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 526
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v0

    .line 528
    .local v0, type:I
    :goto_0
    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 529
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->next()I

    move-result v0

    goto :goto_0

    .line 531
    :cond_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->verifyNamespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isEnd()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 789
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v0

    .line 791
    .local v0, type:I
    :goto_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 792
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->next()I

    move-result v0

    goto :goto_0

    .line 794
    :cond_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isStart()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 771
    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v2}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v0

    .line 773
    .local v0, type:I
    :goto_0
    if-eq v0, v3, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 774
    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v2}, Lorg/jibx/runtime/IXMLReader;->next()I

    move-result v0

    goto :goto_0

    .line 776
    :cond_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v2}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v2

    if-ne v2, v3, :cond_1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected mapUnmarshalling(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 2466
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 2467
    .local v0, add:Ljava/lang/Integer;
    iget-object v3, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshalMap:Ljava/util/Map;

    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_names:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2468
    .local v2, value:Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 2469
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2470
    .local v1, list:Ljava/util/ArrayList;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2471
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2472
    iget-object v3, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshalMap:Ljava/util/Map;

    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_names:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2479
    .end local v1           #list:Ljava/util/ArrayList;
    :goto_0
    return-void

    .line 2473
    :cond_0
    instance-of v3, v2, Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 2474
    check-cast v1, Ljava/util/ArrayList;

    .line 2475
    .restart local v1       #list:Ljava/util/ArrayList;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2477
    .end local v1           #list:Ljava/util/ArrayList;
    :cond_1
    iget-object v3, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshalMap:Ljava/util/Map;

    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_names:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 3179
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->next()I

    move-result v0

    return v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 3191
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->nextToken()I

    move-result v0

    return v0
.end method

.method public parseContentByte(Ljava/lang/String;Ljava/lang/String;)B
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1455
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertByte(Ljava/lang/String;)B
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1456
    :catch_0
    move-exception v0

    .line 1457
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1458
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1459
    throw v0
.end method

.method public parseContentChar(Ljava/lang/String;Ljava/lang/String;)C
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1727
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertChar(Ljava/lang/String;)C
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1728
    :catch_0
    move-exception v0

    .line 1729
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1730
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1731
    throw v0
.end method

.method public parseContentEnumeration(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[I)I
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .parameter "enums"
    .parameter "vals"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1335
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p4}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertEnum(Ljava/lang/String;[Ljava/lang/String;[I)I
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1336
    :catch_0
    move-exception v0

    .line 1337
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1338
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1339
    throw v0
.end method

.method public parseContentInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "ns"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 913
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 915
    .local v2, text:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lorg/jibx/runtime/Utility;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 916
    :catch_0
    move-exception v6

    .line 917
    .local v6, ex:Lorg/jibx/runtime/JiBXException;
    new-instance v0, Lorg/jibx/runtime/JiBXParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6}, Lorg/jibx/runtime/JiBXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lorg/jibx/runtime/JiBXException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/jibx/runtime/JiBXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parseContentShort(Ljava/lang/String;Ljava/lang/String;)S
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1588
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertShort(Ljava/lang/String;)S
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1589
    :catch_0
    move-exception v0

    .line 1590
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1591
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1592
    throw v0
.end method

.method public parseContentText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 857
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->accumulateText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "ns"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 874
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->accumulateText()Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 898
    const/4 v0, 0x0

    .end local v0           #text:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 878
    .restart local v0       #text:Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->verifyNamespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->nextToken()I

    goto :goto_0

    .line 883
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->throwEndTagNameError(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :pswitch_1
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildNameString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " end tag, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->currentNameString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " start tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 893
    :pswitch_2
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildNameString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " end tag, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "found end of document "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 875
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseElementBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1986
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parsePastStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1989
    :catch_0
    move-exception v0

    .line 1990
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1991
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1992
    throw v0
.end method

.method public parseElementBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2011
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseIfStartTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2013
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 2020
    .end local p3
    :cond_0
    return p3

    .line 2014
    .restart local p3
    :catch_0
    move-exception v0

    .line 2015
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 2017
    throw v0
.end method

.method public parseElementByte(Ljava/lang/String;Ljava/lang/String;)B
    .locals 1
    .parameter "ns"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1476
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parsePastStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentByte(Ljava/lang/String;Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public parseElementByte(Ljava/lang/String;Ljava/lang/String;B)B
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1495
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseIfStartTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1497
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertByte(Ljava/lang/String;)B
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 1504
    .end local p3
    :cond_0
    return p3

    .line 1498
    .restart local p3
    :catch_0
    move-exception v0

    .line 1499
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1501
    throw v0
.end method

.method public parseElementChar(Ljava/lang/String;Ljava/lang/String;)C
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1748
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parsePastStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentChar(Ljava/lang/String;Ljava/lang/String;)C
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1751
    :catch_0
    move-exception v0

    .line 1752
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1753
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1754
    throw v0
.end method

.method public parseElementChar(Ljava/lang/String;Ljava/lang/String;C)C
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1773
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseIfStartTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1775
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertChar(Ljava/lang/String;)C
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 1782
    .end local p3
    :cond_0
    return p3

    .line 1776
    .restart local p3
    :catch_0
    move-exception v0

    .line 1777
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1778
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1779
    throw v0
.end method

.method public parseElementDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2341
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parsePastStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2344
    :catch_0
    move-exception v0

    .line 2345
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 2347
    throw v0
.end method

.method public parseElementDate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2367
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseIfStartTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2369
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 2376
    .end local p3
    :cond_0
    return-object p3

    .line 2370
    .restart local p3
    :catch_0
    move-exception v0

    .line 2371
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 2372
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 2373
    throw v0
.end method

.method public parseElementDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 3
    .parameter "ns"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2222
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parsePastStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 2225
    :catch_0
    move-exception v0

    .line 2226
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 2227
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 2228
    throw v0
.end method

.method public parseElementDouble(Ljava/lang/String;Ljava/lang/String;D)D
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2247
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseIfStartTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2249
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    .line 2256
    .end local p3
    :cond_0
    return-wide p3

    .line 2250
    .restart local p3
    :catch_0
    move-exception v0

    .line 2251
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 2252
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 2253
    throw v0
.end method

.method public parseElementEnumeration(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[II)I
    .locals 3
    .parameter "ns"
    .parameter "tag"
    .parameter "enums"
    .parameter "vals"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1361
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseIfStartTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1362
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1364
    .local v1, text:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v1, p3, p4, p5}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertEnum(Ljava/lang/String;[Ljava/lang/String;[II)I
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p5

    .line 1371
    .end local v1           #text:Ljava/lang/String;
    .end local p5
    :cond_0
    return p5

    .line 1365
    .restart local v1       #text:Ljava/lang/String;
    .restart local p5
    :catch_0
    move-exception v0

    .line 1366
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1368
    throw v0
.end method

.method public parseElementExistingIDREF(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .parameter "ns"
    .parameter "tag"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1102
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parsePastStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idref:Ljava/lang/String;

    .line 1104
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idref:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Lorg/jibx/runtime/impl/UnmarshallingContext;->findDefinedID(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseElementFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2103
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parsePastStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2106
    :catch_0
    move-exception v0

    .line 2107
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 2109
    throw v0
.end method

.method public parseElementFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2128
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseIfStartTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2130
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 2137
    .end local p3
    :cond_0
    return p3

    .line 2131
    .restart local p3
    :catch_0
    move-exception v0

    .line 2132
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 2133
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 2134
    throw v0
.end method

.method public parseElementForwardIDREF(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .parameter "ns"
    .parameter "tag"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1062
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parsePastStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idref:Ljava/lang/String;

    .line 1064
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idref:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Lorg/jibx/runtime/impl/UnmarshallingContext;->findID(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseElementInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "ns"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1187
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parsePastStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public parseElementInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "ns"
    .parameter "tag"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1207
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseIfStartTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 1210
    .end local p3
    :cond_0
    return p3
.end method

.method public parseElementLong(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .parameter "ns"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1865
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parsePastStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 1868
    :catch_0
    move-exception v0

    .line 1869
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1870
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1871
    throw v0
.end method

.method public parseElementLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1890
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseIfStartTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1892
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    .line 1899
    .end local p3
    :cond_0
    return-wide p3

    .line 1893
    .restart local p3
    :catch_0
    move-exception v0

    .line 1894
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1895
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1896
    throw v0
.end method

.method public parseElementShort(Ljava/lang/String;Ljava/lang/String;)S
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1609
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parsePastStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentShort(Ljava/lang/String;Ljava/lang/String;)S
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1612
    :catch_0
    move-exception v0

    .line 1613
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1614
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1615
    throw v0
.end method

.method public parseElementShort(Ljava/lang/String;Ljava/lang/String;S)S
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 1634
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseIfStartTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1636
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->convertShort(Ljava/lang/String;)S
    :try_end_0
    .catch Lorg/jibx/runtime/JiBXParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 1643
    .end local p3
    :cond_0
    return p3

    .line 1637
    .restart local p3
    :catch_0
    move-exception v0

    .line 1638
    .local v0, e:Lorg/jibx/runtime/JiBXParseException;
    invoke-virtual {v0, p1}, Lorg/jibx/runtime/JiBXParseException;->setNamespace(Ljava/lang/String;)V

    .line 1639
    invoke-virtual {v0, p2}, Lorg/jibx/runtime/JiBXParseException;->setTagName(Ljava/lang/String;)V

    .line 1640
    throw v0
.end method

.method public parseElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ns"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 935
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parsePastStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseElementText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ns"
    .parameter "tag"
    .parameter "dflt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 954
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseIfStartTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parseContentText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 957
    .end local p3
    :cond_0
    return-object p3
.end method

.method public parseIfStartTag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->isAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    invoke-direct {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->advance()V

    .line 700
    const/4 v0, 0x1

    .line 702
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parsePastCurrentEndTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 721
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->toTag()I

    move-result v0

    .line 724
    .local v0, event:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 725
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->verifyNamespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    invoke-direct {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->advance()V

    .line 735
    :goto_0
    return-void

    .line 728
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->throwEndTagNameError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 731
    :cond_1
    new-instance v1, Lorg/jibx/runtime/JiBXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildNameString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " end tag, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->currentNameString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " start tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parsePastElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ns"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2775
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parsePastStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    const/4 v0, 0x0

    .line 2778
    .local v0, depth:I
    :goto_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2802
    :goto_1
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->nextToken()I

    goto :goto_0

    .line 2781
    :pswitch_0
    if-nez v0, :cond_1

    .line 2782
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->verifyNamespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2784
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->nextToken()I

    .line 2785
    return-void

    .line 2787
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->throwEndTagNameError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2790
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 2792
    goto :goto_1

    .line 2795
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 2796
    goto :goto_1

    .line 2778
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parsePastEndTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 752
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v0

    .line 753
    .local v0, event:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 754
    invoke-direct {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->advance()V

    .line 758
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->parsePastCurrentEndTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method public parsePastStartTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 680
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->matchStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-direct {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->advance()V

    .line 682
    return-void
.end method

.method public parseToStartTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 665
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->matchStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
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
    .line 3054
    iget v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_stackDepth:I

    if-lez v0, :cond_0

    .line 3055
    iget v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_stackDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_stackDepth:I

    .line 3059
    return-void

    .line 3057
    :cond_0
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    const-string v1, "No object on stack"

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pushObject(Ljava/lang/Object;)V
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 3014
    iget v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_stackDepth:I

    .line 3015
    .local v0, depth:I
    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_objectStack:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 3016
    mul-int/lit8 v2, v0, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    .line 3017
    .local v1, stack:[Ljava/lang/Object;
    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_objectStack:[Ljava/lang/Object;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3018
    iput-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_objectStack:[Ljava/lang/Object;

    .line 3020
    .end local v1           #stack:[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_objectStack:[Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 3021
    iget v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_stackDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_stackDepth:I

    .line 3022
    return-void
.end method

.method public pushTrackedObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 3044
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->pushObject(Ljava/lang/Object;)V

    .line 3045
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->trackObject(Ljava/lang/Object;)V

    .line 3046
    return-void
.end method

.method public registerBackFill(ILorg/jibx/runtime/impl/BackFillReference;)V
    .locals 1
    .parameter "index"
    .parameter "fill"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2423
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idref:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->registerBackFill(Ljava/lang/String;ILorg/jibx/runtime/impl/BackFillReference;)V

    .line 2424
    return-void
.end method

.method public registerBackFill(Ljava/lang/String;ILorg/jibx/runtime/impl/BackFillReference;)V
    .locals 7
    .parameter "id"
    .parameter "index"
    .parameter "fill"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2392
    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idMaps:[Ljava/util/Map;

    aget-object v1, v4, p2

    .line 2393
    .local v1, map:Ljava/util/Map;
    if-nez v1, :cond_0

    .line 2394
    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idMaps:[Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/Map;
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .restart local v1       #map:Ljava/util/Map;
    aput-object v1, v4, p2

    .line 2396
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2397
    .local v2, obj:Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 2398
    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idClasses:[Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 2399
    .local v3, xclass:Ljava/lang/String;
    :goto_0
    new-instance v0, Lorg/jibx/runtime/impl/BackFillHolder;

    invoke-direct {v0, v3}, Lorg/jibx/runtime/impl/BackFillHolder;-><init>(Ljava/lang/String;)V

    .line 2400
    .local v0, holder:Lorg/jibx/runtime/impl/BackFillHolder;
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2401
    invoke-virtual {v0, p3}, Lorg/jibx/runtime/impl/BackFillHolder;->addBackFill(Lorg/jibx/runtime/impl/BackFillReference;)V

    .line 2409
    .end local v0           #holder:Lorg/jibx/runtime/impl/BackFillHolder;
    .end local v2           #obj:Ljava/lang/Object;
    .end local v3           #xclass:Ljava/lang/String;
    :goto_1
    return-void

    .line 2398
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idClasses:[Ljava/lang/String;

    aget-object v3, v4, p2

    goto :goto_0

    .line 2402
    :cond_2
    instance-of v4, v2, Lorg/jibx/runtime/impl/BackFillHolder;

    if-eqz v4, :cond_3

    .line 2403
    check-cast v2, Lorg/jibx/runtime/impl/BackFillHolder;

    .end local v2           #obj:Ljava/lang/Object;
    invoke-virtual {v2, p3}, Lorg/jibx/runtime/impl/BackFillHolder;->addBackFill(Lorg/jibx/runtime/impl/BackFillReference;)V

    goto :goto_1

    .line 2405
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_3
    new-instance v4, Lorg/jibx/runtime/JiBXException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Internal operation error (back fill error) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public removeUnmarshalling(Ljava/lang/String;)V
    .locals 8
    .parameter "mapname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2514
    iget-object v5, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_classIndexMap:Lorg/jibx/runtime/impl/StringIntHashMap;

    invoke-virtual {v5, p1}, Lorg/jibx/runtime/impl/StringIntHashMap;->get(Ljava/lang/String;)I

    move-result v1

    .line 2515
    .local v1, index:I
    if-gez v1, :cond_0

    .line 2516
    new-instance v5, Lorg/jibx/runtime/JiBXException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "No unmarshal mapping defined for class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2518
    :cond_0
    iget-object v5, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshalMap:Ljava/util/Map;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_names:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-eqz v5, :cond_1

    .line 2519
    iget-object v5, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshalMap:Ljava/util/Map;

    iget-object v6, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_names:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2520
    .local v4, value:Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 2521
    iget-object v5, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshalMap:Ljava/util/Map;

    iget-object v6, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_names:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2532
    .end local v4           #value:Ljava/lang/Object;
    :cond_1
    iget-object v5, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_namespaces:[Ljava/lang/String;

    aput-object v7, v5, v1

    .line 2533
    iget-object v5, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_names:[Ljava/lang/String;

    aput-object v7, v5, v1

    .line 2534
    iget-object v5, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_unmarshallers:[Lorg/jibx/runtime/IUnmarshaller;

    aput-object v7, v5, v1

    .line 2535
    iget-object v5, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshallerClasses:[Ljava/lang/String;

    iget v6, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientBase:I

    sub-int v6, v1, v6

    aput-object v7, v5, v6

    .line 2536
    return-void

    .line 2522
    .restart local v4       #value:Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    move-object v3, v4

    .line 2523
    check-cast v3, Ljava/util/ArrayList;

    .line 2524
    .local v3, list:Ljava/util/ArrayList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 2525
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2526
    .local v2, item:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_3

    .line 2527
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2524
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 411
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idMaps:[Ljava/util/Map;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 412
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idMaps:[Ljava/util/Map;

    aput-object v3, v1, v0

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshallerClasses:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 415
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshallerClasses:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshallerClasses:[Ljava/lang/String;

    aput-object v3, v1, v0

    .line 417
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_namespaces:[Ljava/lang/String;

    iget v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientBase:I

    add-int/2addr v2, v0

    aput-object v3, v1, v2

    .line 418
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_names:[Ljava/lang/String;

    iget v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientBase:I

    add-int/2addr v2, v0

    aput-object v3, v1, v2

    .line 420
    :cond_1
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_unmarshallers:[Lorg/jibx/runtime/IUnmarshaller;

    aput-object v3, v1, v0

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 422
    :cond_2
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshalMap:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 423
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_transientUnmarshalMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 425
    :cond_3
    iput-object v3, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_idref:Ljava/lang/String;

    .line 426
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_objectStack:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 427
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_objectStack:[Ljava/lang/Object;

    aput-object v3, v1, v0

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 429
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_stackDepth:I

    .line 430
    iput-object v3, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_userContext:Ljava/lang/Object;

    .line 431
    return-void
.end method

.method public setDocument(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "ins"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 325
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->setDocument(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 326
    return-void
.end method

.method public setDocument(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "ins"
    .parameter "name"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 370
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->setDocument(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 371
    return-void
.end method

.method public setDocument(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "ins"
    .parameter "name"
    .parameter "enc"
    .parameter "nsa"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    if-nez v0, :cond_0

    .line 309
    sget-object v0, Lorg/jibx/runtime/impl/UnmarshallingContext;->s_readerFactory:Lorg/jibx/runtime/impl/IXMLReaderFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jibx/runtime/impl/IXMLReaderFactory;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jibx/runtime/IXMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    .line 313
    :goto_0
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->reset()V

    .line 314
    return-void

    .line 311
    :cond_0
    sget-object v0, Lorg/jibx/runtime/impl/UnmarshallingContext;->s_readerFactory:Lorg/jibx/runtime/impl/IXMLReaderFactory;

    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/jibx/runtime/impl/IXMLReaderFactory;->recycleReader(Lorg/jibx/runtime/IXMLReader;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jibx/runtime/IXMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    goto :goto_0
.end method

.method public setDocument(Ljava/io/Reader;)V
    .locals 2
    .parameter "rdr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 356
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->setDocument(Ljava/io/Reader;Ljava/lang/String;Z)V

    .line 357
    return-void
.end method

.method public setDocument(Ljava/io/Reader;Ljava/lang/String;)V
    .locals 1
    .parameter "rdr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->setDocument(Ljava/io/Reader;Ljava/lang/String;Z)V

    .line 382
    return-void
.end method

.method public setDocument(Ljava/io/Reader;Ljava/lang/String;Z)V
    .locals 2
    .parameter "rdr"
    .parameter "name"
    .parameter "nsa"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    if-nez v0, :cond_0

    .line 342
    sget-object v0, Lorg/jibx/runtime/impl/UnmarshallingContext;->s_readerFactory:Lorg/jibx/runtime/impl/IXMLReaderFactory;

    invoke-interface {v0, p1, p2, p3}, Lorg/jibx/runtime/impl/IXMLReaderFactory;->createReader(Ljava/io/Reader;Ljava/lang/String;Z)Lorg/jibx/runtime/IXMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    .line 346
    :goto_0
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->reset()V

    .line 347
    return-void

    .line 344
    :cond_0
    sget-object v0, Lorg/jibx/runtime/impl/UnmarshallingContext;->s_readerFactory:Lorg/jibx/runtime/impl/IXMLReaderFactory;

    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0, v1, p1, p2}, Lorg/jibx/runtime/impl/IXMLReaderFactory;->recycleReader(Lorg/jibx/runtime/IXMLReader;Ljava/io/Reader;Ljava/lang/String;)Lorg/jibx/runtime/IXMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    goto :goto_0
.end method

.method public setDocument(Lorg/jibx/runtime/IXMLReader;)V
    .locals 0
    .parameter "rdr"

    .prologue
    .line 390
    iput-object p1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    .line 391
    return-void
.end method

.method public setFromContext(Lorg/jibx/runtime/impl/UnmarshallingContext;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 402
    iget-object v0, p1, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    iput-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    .line 403
    return-void
.end method

.method public setUserContext(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 2992
    iput-object p1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_userContext:Ljava/lang/Object;

    .line 2993
    return-void
.end method

.method public skipElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 3150
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->isEnd()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3153
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->next()I

    .line 3156
    const/4 v0, 0x1

    .line 3157
    .local v0, depth:I
    :goto_0
    if-lez v0, :cond_1

    .line 3158
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->isEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3159
    add-int/lit8 v0, v0, -0x1

    .line 3163
    :goto_1
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->next()I

    goto :goto_0

    .line 3161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3167
    .end local v0           #depth:I
    :cond_1
    return-void
.end method

.method public throwEndTagNameError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildNameString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " end tag, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->currentNameString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " end tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public throwException(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2872
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public throwException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "msg"
    .parameter "ex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2883
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public throwNameException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "msg"
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2, p3}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildNameString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public throwStartTagException(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2847
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " at tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->currentNameString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public throwStartTagException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "msg"
    .parameter "ex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2861
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " at tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->currentNameString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public throwStartTagNameError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "ns"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildNameString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " start tag, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->currentNameString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " start tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toEnd()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 475
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getName()Ljava/lang/String;

    move-result-object v0

    .line 487
    :goto_0
    return-object v0

    .line 478
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->next()I

    .line 479
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 490
    :pswitch_0
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Expected end tag, found end of document "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :pswitch_1
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Expected end tag, found start tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->currentNameString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :pswitch_2
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 479
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toStart()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getName()Ljava/lang/String;

    move-result-object v0

    .line 450
    :goto_0
    return-object v0

    .line 446
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->next()I

    .line 447
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 458
    :pswitch_0
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Expected start tag, found end of document "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :pswitch_1
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 453
    :pswitch_2
    new-instance v0, Lorg/jibx/runtime/JiBXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Expected start tag, found end tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->currentNameString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 505
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v0

    .line 507
    .local v0, type:I
    :goto_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 508
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->next()I

    move-result v0

    goto :goto_0

    .line 510
    :cond_0
    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getEventType()I

    move-result v1

    return v1
.end method

.method public trackObject(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 3030
    instance-of v0, p1, Lorg/jibx/runtime/impl/ITrackSourceImpl;

    if-eqz v0, :cond_0

    .line 3031
    check-cast p1, Lorg/jibx/runtime/impl/ITrackSourceImpl;

    .end local p1
    iget-object v0, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v0}, Lorg/jibx/runtime/IXMLReader;->getDocumentName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v1}, Lorg/jibx/runtime/IXMLReader;->getLineNumber()I

    move-result v1

    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v2}, Lorg/jibx/runtime/IXMLReader;->getColumnNumber()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lorg/jibx/runtime/impl/ITrackSourceImpl;->jibx_setSource(Ljava/lang/String;II)V

    .line 3034
    :cond_0
    return-void
.end method

.method public unmarshalDocument(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "ins"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2899
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->setDocument(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2900
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->unmarshalElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unmarshalDocument(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "ins"
    .parameter "name"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2931
    invoke-virtual {p0, p1, p2, p3}, Lorg/jibx/runtime/impl/UnmarshallingContext;->setDocument(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->unmarshalElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unmarshalDocument(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .parameter "rdr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2913
    invoke-virtual {p0, p1}, Lorg/jibx/runtime/impl/UnmarshallingContext;->setDocument(Ljava/io/Reader;)V

    .line 2914
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->unmarshalElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unmarshalDocument(Ljava/io/Reader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "rdr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2947
    invoke-virtual {p0, p1, p2}, Lorg/jibx/runtime/impl/UnmarshallingContext;->setDocument(Ljava/io/Reader;Ljava/lang/String;)V

    .line 2948
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->unmarshalElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unmarshalElement()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2750
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->toStart()Ljava/lang/String;

    move-result-object v0

    .line 2751
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v2}, Lorg/jibx/runtime/IXMLReader;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getUnmarshaller(Ljava/lang/String;Ljava/lang/String;)Lorg/jibx/runtime/IUnmarshaller;

    move-result-object v1

    .line 2753
    .local v1, unmarshal:Lorg/jibx/runtime/IUnmarshaller;
    if-nez v1, :cond_0

    .line 2754
    new-instance v2, Lorg/jibx/runtime/JiBXException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "No unmarshaller for element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->currentNameString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2757
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2, p0}, Lorg/jibx/runtime/IUnmarshaller;->unmarshal(Ljava/lang/Object;Lorg/jibx/runtime/IUnmarshallingContext;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public unmarshalElement(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .parameter "clas"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    .line 2725
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->toStart()Ljava/lang/String;

    move-result-object v0

    .line 2726
    .local v0, name:Ljava/lang/String;
    iget-object v3, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v3}, Lorg/jibx/runtime/IXMLReader;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getUnmarshaller(Ljava/lang/String;Ljava/lang/String;)Lorg/jibx/runtime/IUnmarshaller;

    move-result-object v2

    .line 2728
    .local v2, unmarshal:Lorg/jibx/runtime/IUnmarshaller;
    if-nez v2, :cond_0

    .line 2729
    new-instance v3, Lorg/jibx/runtime/JiBXException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "No unmarshaller for element "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->currentNameString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2732
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v2, v3, p0}, Lorg/jibx/runtime/IUnmarshaller;->unmarshal(Ljava/lang/Object;Lorg/jibx/runtime/IUnmarshallingContext;)Ljava/lang/Object;

    move-result-object v1

    .line 2733
    .local v1, obj:Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2734
    new-instance v3, Lorg/jibx/runtime/JiBXException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Element "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " not compatible with expected type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->buildPositionString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2738
    :cond_1
    return-object v1
.end method

.method public unmarshalOptionalElement()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jibx/runtime/JiBXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2703
    invoke-virtual {p0}, Lorg/jibx/runtime/impl/UnmarshallingContext;->toTag()I

    move-result v0

    .line 2704
    .local v0, type:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 2705
    iget-object v3, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v3}, Lorg/jibx/runtime/IXMLReader;->getNamespace()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jibx/runtime/impl/UnmarshallingContext;->m_reader:Lorg/jibx/runtime/IXMLReader;

    invoke-interface {v4}, Lorg/jibx/runtime/IXMLReader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/jibx/runtime/impl/UnmarshallingContext;->getUnmarshaller(Ljava/lang/String;Ljava/lang/String;)Lorg/jibx/runtime/IUnmarshaller;

    move-result-object v1

    .line 2707
    .local v1, unmarshal:Lorg/jibx/runtime/IUnmarshaller;
    if-eqz v1, :cond_0

    .line 2708
    invoke-interface {v1, v2, p0}, Lorg/jibx/runtime/IUnmarshaller;->unmarshal(Ljava/lang/Object;Lorg/jibx/runtime/IUnmarshallingContext;)Ljava/lang/Object;

    move-result-object v2

    .line 2711
    .end local v1           #unmarshal:Lorg/jibx/runtime/IUnmarshaller;
    :cond_0
    return-object v2
.end method
