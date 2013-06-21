.class public Lgnu/xml/XMLFilter;
.super Ljava/lang/Object;
.source "XMLFilter.java"

# interfaces
.implements Lorg/xml/sax/DocumentHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lgnu/text/SourceLocator;
.implements Lgnu/lists/XConsumer;
.implements Lgnu/lists/PositionConsumer;


# static fields
.field public static final COPY_NAMESPACES_INHERIT:I = 0x2

.field public static final COPY_NAMESPACES_PRESERVE:I = 0x1

.field private static final SAW_KEYWORD:I = 0x1

.field private static final SAW_WORD:I = 0x2


# instance fields
.field attrCount:I

.field attrLocalName:Ljava/lang/String;

.field attrPrefix:Ljava/lang/String;

.field base:Lgnu/lists/Consumer;

.field public transient copyNamespacesMode:I

.field currentNamespacePrefix:Ljava/lang/String;

.field protected ignoringLevel:I

.field in:Lgnu/text/LineBufferedReader;

.field inStartTag:Z

.field locator:Lgnu/text/SourceLocator;

.field mappingTable:[Lgnu/xml/MappingInfo;

.field mappingTableMask:I

.field private messages:Lgnu/text/SourceMessages;

.field mismatchReported:Z

.field namespaceBindings:Lgnu/xml/NamespaceBinding;

.field public namespacePrefixes:Z

.field protected nesting:I

.field public out:Lgnu/lists/Consumer;

.field previous:I

.field startIndexes:[I

.field protected stringizingElementNesting:I

.field protected stringizingLevel:I

.field tlist:Lgnu/lists/TreeList;

.field workStack:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;)V
    .locals 4
    .parameter "out"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v3, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    .line 72
    iput v2, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 86
    iput v1, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    .line 99
    iput v1, p0, Lgnu/xml/XMLFilter;->attrCount:I

    .line 114
    iput-boolean v2, p0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    .line 125
    const/16 v0, 0x80

    new-array v0, v0, [Lgnu/xml/MappingInfo;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    .line 126
    iget-object v0, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    array-length v0, v0

    sub-int/2addr v0, v3

    iput v0, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    .line 708
    iput-object p1, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .line 709
    iput-object p1, p0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    .line 710
    instance-of v0, p1, Lgnu/xml/NodeTree;

    if-eqz v0, :cond_0

    .line 711
    check-cast p1, Lgnu/xml/NodeTree;

    .end local p1
    iput-object p1, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    .line 715
    :goto_0
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 716
    return-void

    .line 713
    .restart local p1
    :cond_0
    new-instance v0, Lgnu/lists/TreeList;

    invoke-direct {v0}, Lgnu/lists/TreeList;-><init>()V

    iput-object v0, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    goto :goto_0
.end method

.method public static duplicateAttributeMessage(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "attrSymbol"
    .parameter "elementName"

    .prologue
    .line 1436
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "duplicate attribute: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1437
    .local v0, sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 1438
    .local v1, uri:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1440
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1441
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1444
    :cond_0
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1445
    if-eqz p1, :cond_1

    .line 1447
    const-string v2, " in <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1448
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1449
    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1451
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private ensureSpaceInStartIndexes(I)V
    .locals 3
    .parameter "oldSize"

    .prologue
    const/4 v2, 0x0

    .line 1421
    iget-object v1, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    if-nez v1, :cond_1

    .line 1423
    const/16 v1, 0x14

    new-array v1, v1, [I

    iput-object v1, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1425
    :cond_1
    iget-object v1, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 1427
    iget-object v1, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 1428
    .local v0, tmpn:[I
    iget-object v1, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1429
    iput-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    goto :goto_0
.end method

.method private ensureSpaceInWorkStack(I)V
    .locals 3
    .parameter "oldSize"

    .prologue
    const/4 v2, 0x0

    .line 1407
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 1409
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    .line 1417
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 1413
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 1414
    .local v0, tmpn:[Ljava/lang/Object;
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1415
    iput-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private mergeHelper(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 4
    .parameter "list"
    .parameter "node"

    .prologue
    .line 896
    sget-object v3, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    if-ne p2, v3, :cond_0

    move-object v3, p1

    .line 910
    :goto_0
    return-object v3

    .line 898
    :cond_0
    iget-object v3, p2, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    invoke-direct {p0, p1, v3}, Lgnu/xml/XMLFilter;->mergeHelper(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object p1

    .line 899
    iget-object v2, p2, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    .line 900
    .local v2, uri:Ljava/lang/String;
    if-nez p1, :cond_2

    .line 902
    if-nez v2, :cond_1

    move-object v3, p1

    .line 903
    goto :goto_0

    .line 904
    :cond_1
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    .line 906
    :cond_2
    iget-object v1, p2, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 907
    .local v1, prefix:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 908
    .local v0, found:Ljava/lang/String;
    if-nez v0, :cond_4

    if-nez v2, :cond_5

    :cond_3
    move-object v3, p1

    .line 909
    goto :goto_0

    .line 908
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 910
    :cond_5
    invoke-virtual {p0, v1, v2, p1}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v3

    goto :goto_0
.end method

.method private resolve(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "prefix"
    .parameter "isAttribute"

    .prologue
    const-string v4, ""

    .line 326
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 327
    const-string v1, ""

    move-object v1, v4

    .line 333
    :goto_0
    return-object v1

    .line 328
    :cond_0
    iget-object v1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v1, p1}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, uri:Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 330
    goto :goto_0

    .line 331
    :cond_1
    if-eqz p1, :cond_2

    .line 332
    const/16 v1, 0x65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown namespace prefix \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 333
    :cond_2
    const-string v1, ""

    move-object v1, v4

    goto :goto_0
.end method

.method private startAttributeCommon()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 915
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-ltz v0, :cond_0

    .line 916
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    .line 917
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_1

    move v0, v2

    .line 926
    :goto_0
    return v0

    .line 920
    :cond_1
    iget v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    if-gez v0, :cond_2

    .line 921
    iput v2, p0, Lgnu/xml/XMLFilter;->attrCount:I

    .line 922
    :cond_2
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget v1, p0, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 923
    iget v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInStartIndexes(I)V

    .line 924
    iget-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    iget v1, p0, Lgnu/xml/XMLFilter;->attrCount:I

    iget-object v2, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget v2, v2, Lgnu/lists/TreeList;->gapStart:I

    aput v2, v0, v1

    .line 925
    iget v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    .line 926
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic append(C)Lgnu/lists/Consumer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(C)Lgnu/xml/XMLFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Lgnu/xml/XMLFilter;
    .locals 0
    .parameter "c"

    .prologue
    .line 1284
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->write(I)V

    .line 1285
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;
    .locals 2
    .parameter "csq"

    .prologue
    .line 1290
    if-nez p1, :cond_0

    .line 1291
    const-string p1, "null"

    .line 1292
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    .line 1293
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;
    .locals 1
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1298
    if-nez p1, :cond_0

    .line 1299
    const-string p1, "null"

    .line 1300
    :cond_0
    sub-int v0, p3, p2

    invoke-virtual {p0, p1, p2, v0}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    .line 1301
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(C)Lgnu/xml/XMLFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    move-result-object v0

    return-object v0
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 1
    .parameter "baseUri"

    .prologue
    .line 1271
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/XConsumer;

    if-eqz v0, :cond_0

    .line 1272
    iget-object p0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Lgnu/lists/XConsumer;

    invoke-interface {p0, p1}, Lgnu/lists/XConsumer;->beginEntity(Ljava/lang/Object;)V

    .line 1273
    :cond_0
    return-void
.end method

.method public characters([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1523
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    .line 1524
    return-void
.end method

.method protected checkValidComment([CII)V
    .locals 5
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 1120
    move v1, p3

    .line 1121
    .local v1, i:I
    const/4 v2, 0x1

    .line 1122
    .local v2, sawHyphen:Z
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 1124
    add-int v3, p2, v1

    aget-char v3, p1, v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 1125
    .local v0, curHyphen:Z
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 1127
    const/16 v3, 0x65

    const-string v4, "consecutive or final hyphen in XML comment"

    invoke-virtual {p0, v3, v4}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1132
    .end local v0           #curHyphen:Z
    :cond_0
    return-void

    .line 1124
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 1130
    .restart local v0       #curHyphen:Z
    :cond_2
    move v2, v0

    .line 1131
    goto :goto_0
.end method

.method protected checkWriteAtomic()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 601
    iput v1, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 602
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v0, :cond_0

    move v0, v1

    .line 605
    :goto_0
    return v0

    .line 604
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 605
    const/4 v0, 0x1

    goto :goto_0
.end method

.method closeStartTag()V
    .locals 35

    .prologue
    .line 338
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move/from16 v31, v0

    if-ltz v31, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    move/from16 v31, v0

    if-lez v31, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgnu/xml/XMLFilter;->inStartTag:Z

    .line 341
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xml/XMLFilter;->previous:I

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    .line 344
    invoke-virtual/range {p0 .. p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 345
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v31, v0

    if-nez v31, :cond_6

    sget-object v31, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    move-object/from16 v20, v31

    .line 348
    .local v20, outer:Lgnu/xml/NamespaceBinding;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object v4, v0

    .line 352
    .local v4, bindings:Lgnu/xml/NamespaceBinding;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move/from16 v31, v0

    move v0, v8

    move/from16 v1, v31

    if-gt v0, v1, :cond_12

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v32, v0

    add-int v32, v32, v8

    const/16 v33, 0x1

    sub-int v32, v32, v33

    aget-object v22, v31, v32

    .line 355
    .local v22, saved:Ljava/lang/Object;
    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v31, v0

    if-eqz v31, :cond_5

    .line 357
    move-object/from16 v0, v22

    check-cast v0, Lgnu/mapping/Symbol;

    move-object/from16 v24, v0

    .line 358
    .local v24, sym:Lgnu/mapping/Symbol;
    invoke-virtual/range {v24 .. v24}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v21

    .line 359
    .local v21, prefix:Ljava/lang/String;
    const-string v31, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 360
    const/16 v21, 0x0

    .line 361
    :cond_3
    invoke-virtual/range {v24 .. v24}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v29

    .line 362
    .local v29, uri:Ljava/lang/String;
    const-string v31, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_4

    .line 363
    const/16 v29, 0x0

    .line 364
    :cond_4
    if-lez v8, :cond_7

    if-nez v21, :cond_7

    if-nez v29, :cond_7

    .line 352
    .end local v21           #prefix:Ljava/lang/String;
    .end local v24           #sym:Lgnu/mapping/Symbol;
    .end local v29           #uri:Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 345
    .end local v4           #bindings:Lgnu/xml/NamespaceBinding;
    .end local v8           #i:I
    .end local v20           #outer:Lgnu/xml/NamespaceBinding;
    .end local v22           #saved:Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v32, v0

    const/16 v33, 0x2

    sub-int v32, v32, v33

    aget-object v4, v31, v32

    check-cast v4, Lgnu/xml/NamespaceBinding;

    move-object/from16 v20, v4

    goto :goto_1

    .line 366
    .restart local v4       #bindings:Lgnu/xml/NamespaceBinding;
    .restart local v8       #i:I
    .restart local v20       #outer:Lgnu/xml/NamespaceBinding;
    .restart local v21       #prefix:Ljava/lang/String;
    .restart local v22       #saved:Ljava/lang/Object;
    .restart local v24       #sym:Lgnu/mapping/Symbol;
    .restart local v29       #uri:Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    .line 367
    .local v12, isOuter:Z
    move-object/from16 v16, v4

    .line 369
    .local v16, ns:Lgnu/xml/NamespaceBinding;
    :goto_4
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 370
    const/4 v12, 0x1

    .line 371
    :cond_8
    if-nez v16, :cond_a

    .line 373
    if-nez v21, :cond_9

    if-eqz v29, :cond_5

    .line 374
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v29

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v4

    goto :goto_3

    .line 377
    :cond_a
    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 379
    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_5

    .line 381
    if-eqz v12, :cond_b

    .line 382
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v29

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v4

    goto :goto_3

    .line 387
    :cond_b
    move-object/from16 v17, v4

    .line 390
    .local v17, ns2:Lgnu/xml/NamespaceBinding;
    :goto_5
    if-nez v17, :cond_f

    .line 393
    const/4 v13, 0x1

    .line 395
    .local v13, j:I
    :goto_6
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "_ns_"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    .line 396
    .local v15, nprefix:Ljava/lang/String;
    invoke-virtual {v4, v15}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_e

    .line 408
    .end local v13           #j:I
    :cond_c
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v29

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v4

    .line 409
    invoke-virtual/range {v24 .. v24}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v14

    .line 410
    .local v14, local:Ljava/lang/String;
    if-nez v29, :cond_d

    .line 411
    const-string v29, ""

    .line 412
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v32, v0

    add-int v32, v32, v8

    const/16 v33, 0x1

    sub-int v32, v32, v33

    move-object/from16 v0, v29

    move-object v1, v14

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v33

    aput-object v33, v31, v32

    goto/16 :goto_3

    .line 393
    .end local v14           #local:Ljava/lang/String;
    .restart local v13       #j:I
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 401
    .end local v13           #j:I
    .end local v15           #nprefix:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 403
    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    move-object v15, v0

    .line 404
    .restart local v15       #nprefix:Ljava/lang/String;
    invoke-virtual {v4, v15}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_c

    .line 388
    .end local v15           #nprefix:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v17

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object/from16 v17, v0

    goto :goto_5

    .line 367
    .end local v17           #ns2:Lgnu/xml/NamespaceBinding;
    :cond_11
    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    move-object/from16 v16, v0

    goto/16 :goto_4

    .line 423
    .end local v12           #isOuter:Z
    .end local v16           #ns:Lgnu/xml/NamespaceBinding;
    .end local v21           #prefix:Ljava/lang/String;
    .end local v22           #saved:Ljava/lang/Object;
    .end local v24           #sym:Lgnu/mapping/Symbol;
    .end local v29           #uri:Ljava/lang/String;
    :cond_12
    const/4 v8, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move/from16 v31, v0

    move v0, v8

    move/from16 v1, v31

    if-gt v0, v1, :cond_32

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v32, v0

    add-int v32, v32, v8

    const/16 v33, 0x1

    sub-int v32, v32, v33

    aget-object v22, v31, v32

    .line 427
    .restart local v22       #saved:Ljava/lang/Object;
    const/4 v11, 0x0

    .line 429
    .local v11, isNsNode:Z
    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/xml/MappingInfo;

    move/from16 v31, v0

    if-nez v31, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_23

    .line 431
    :cond_13
    move-object/from16 v0, v22

    instance-of v0, v0, Lgnu/xml/MappingInfo;

    move/from16 v31, v0

    if-eqz v31, :cond_1b

    .line 433
    move-object/from16 v0, v22

    check-cast v0, Lgnu/xml/MappingInfo;

    move-object v10, v0

    .line 434
    .local v10, info:Lgnu/xml/MappingInfo;
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 435
    .restart local v21       #prefix:Ljava/lang/String;
    iget-object v14, v10, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 436
    .restart local v14       #local:Ljava/lang/String;
    if-lez v8, :cond_19

    if-nez v21, :cond_14

    const-string v31, "xmlns"

    move-object v0, v14

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_15

    :cond_14
    const-string v31, "xmlns"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_19

    .line 440
    :cond_15
    const/4 v11, 0x1

    .line 441
    const-string v29, "(namespace-node)"

    .line 454
    .restart local v29       #uri:Ljava/lang/String;
    :goto_8
    iget v7, v10, Lgnu/xml/MappingInfo;->tagHash:I

    .line 455
    .local v7, hash:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    move/from16 v31, v0

    and-int v5, v7, v31

    .line 457
    .local v5, bucket:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move-object/from16 v31, v0

    aget-object v10, v31, v5

    .line 458
    const/16 v27, 0x0

    .line 462
    .local v27, tagMatch:Lgnu/xml/MappingInfo;
    :goto_9
    if-nez v10, :cond_1c

    .line 464
    move-object/from16 v10, v27

    .line 465
    new-instance v10, Lgnu/xml/MappingInfo;

    .end local v10           #info:Lgnu/xml/MappingInfo;
    invoke-direct {v10}, Lgnu/xml/MappingInfo;-><init>()V

    .line 466
    .restart local v10       #info:Lgnu/xml/MappingInfo;
    iput v7, v10, Lgnu/xml/MappingInfo;->tagHash:I

    .line 467
    move-object/from16 v0, v21

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 468
    iput-object v14, v10, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move-object/from16 v31, v0

    aget-object v31, v31, v5

    move-object/from16 v0, v31

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    move-object/from16 v31, v0

    aput-object v10, v31, v5

    .line 471
    move-object/from16 v0, v29

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 472
    move-object/from16 v0, v29

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 473
    if-nez v8, :cond_16

    .line 475
    new-instance v30, Lgnu/xml/XName;

    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lgnu/xml/XName;-><init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V

    .line 476
    .local v30, xname:Lgnu/xml/XName;
    move-object/from16 v28, v30

    .line 477
    .local v28, type:Lgnu/xml/XName;
    move-object/from16 v0, v30

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    .line 478
    iput-object v4, v10, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 518
    .end local v28           #type:Lgnu/xml/XName;
    .end local v30           #xname:Lgnu/xml/XName;
    :cond_16
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v32, v0

    add-int v32, v32, v8

    const/16 v33, 0x1

    sub-int v32, v32, v33

    aput-object v10, v31, v32

    .line 529
    .end local v5           #bucket:I
    .end local v7           #hash:I
    .end local v21           #prefix:Ljava/lang/String;
    .end local v27           #tagMatch:Lgnu/xml/MappingInfo;
    :goto_b
    const/4 v13, 0x1

    .restart local v13       #j:I
    :goto_c
    if-ge v13, v8, :cond_25

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v32, v0

    add-int v32, v32, v13

    const/16 v33, 0x1

    sub-int v32, v32, v33

    aget-object v19, v31, v32

    .line 533
    .local v19, other:Ljava/lang/Object;
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v31, v0

    if-eqz v31, :cond_24

    .line 534
    move-object/from16 v0, v19

    check-cast v0, Lgnu/mapping/Symbol;

    move-object/from16 v18, v0

    .line 539
    .end local v19           #other:Ljava/lang/Object;
    .local v18, osym:Lgnu/mapping/Symbol;
    :goto_d
    invoke-virtual/range {v18 .. v18}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v31

    move-object v0, v14

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_18

    invoke-virtual/range {v18 .. v18}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_18

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v32, v0

    const/16 v33, 0x1

    sub-int v32, v32, v33

    aget-object v26, v31, v32

    .line 543
    .local v26, tag:Ljava/lang/Object;
    move-object/from16 v0, v26

    instance-of v0, v0, Lgnu/xml/MappingInfo;

    move/from16 v31, v0

    if-eqz v31, :cond_17

    .line 544
    check-cast v26, Lgnu/xml/MappingInfo;

    .end local v26           #tag:Ljava/lang/Object;
    move-object/from16 v0, v26

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v26, v0

    .line 545
    :cond_17
    const/16 v31, 0x65

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lgnu/xml/XMLFilter;->duplicateAttributeMessage(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 529
    .end local v18           #osym:Lgnu/mapping/Symbol;
    :cond_18
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 444
    .end local v13           #j:I
    .end local v29           #uri:Ljava/lang/String;
    .restart local v21       #prefix:Ljava/lang/String;
    :cond_19
    if-lez v8, :cond_1a

    const/16 v31, 0x1

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lgnu/xml/XMLFilter;->resolve(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v29

    .restart local v29       #uri:Ljava/lang/String;
    goto/16 :goto_8

    .end local v29           #uri:Ljava/lang/String;
    :cond_1a
    const/16 v31, 0x0

    goto :goto_e

    .line 448
    .end local v10           #info:Lgnu/xml/MappingInfo;
    .end local v14           #local:Ljava/lang/String;
    .end local v21           #prefix:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, v22

    check-cast v0, Lgnu/mapping/Symbol;

    move-object/from16 v25, v0

    .line 449
    .local v25, symbol:Lgnu/mapping/Symbol;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lgnu/xml/XMLFilter;->lookupTag(Lgnu/mapping/Symbol;)Lgnu/xml/MappingInfo;

    move-result-object v10

    .line 450
    .restart local v10       #info:Lgnu/xml/MappingInfo;
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 451
    .restart local v21       #prefix:Ljava/lang/String;
    iget-object v14, v10, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 452
    .restart local v14       #local:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v29

    .restart local v29       #uri:Ljava/lang/String;
    goto/16 :goto_8

    .line 482
    .end local v25           #symbol:Lgnu/mapping/Symbol;
    .restart local v5       #bucket:I
    .restart local v7       #hash:I
    .restart local v27       #tagMatch:Lgnu/xml/MappingInfo;
    :cond_1c
    move-object v0, v10

    iget v0, v0, Lgnu/xml/MappingInfo;->tagHash:I

    move/from16 v31, v0

    move/from16 v0, v31

    move v1, v7

    if-ne v0, v1, :cond_20

    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object v1, v14

    if-ne v0, v1, :cond_20

    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_20

    .line 486
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_1f

    .line 488
    move-object/from16 v0, v29

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 489
    move-object/from16 v0, v29

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 495
    :cond_1d
    :goto_f
    if-nez v8, :cond_22

    .line 497
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object v1, v4

    if-eq v0, v1, :cond_1e

    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    move-object/from16 v31, v0

    if-nez v31, :cond_20

    .line 500
    :cond_1e
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    move-object/from16 v28, v0

    .line 501
    .restart local v28       #type:Lgnu/xml/XName;
    iput-object v4, v10, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 502
    if-nez v28, :cond_16

    .line 504
    new-instance v30, Lgnu/xml/XName;

    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lgnu/xml/XName;-><init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V

    .line 505
    .restart local v30       #xname:Lgnu/xml/XName;
    move-object/from16 v28, v30

    .line 506
    move-object/from16 v0, v30

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    goto/16 :goto_a

    .line 491
    .end local v28           #type:Lgnu/xml/XName;
    .end local v30           #xname:Lgnu/xml/XName;
    :cond_1f
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_21

    .line 460
    :cond_20
    iget-object v10, v10, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto/16 :goto_9

    .line 493
    :cond_21
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v31, v0

    if-nez v31, :cond_1d

    .line 494
    move-object/from16 v0, v29

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v10

    iput-object v0, v1, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    goto :goto_f

    .line 513
    :cond_22
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v28, v0

    .line 514
    .local v28, type:Lgnu/mapping/Symbol;
    goto/16 :goto_a

    .line 522
    .end local v5           #bucket:I
    .end local v7           #hash:I
    .end local v10           #info:Lgnu/xml/MappingInfo;
    .end local v14           #local:Ljava/lang/String;
    .end local v21           #prefix:Ljava/lang/String;
    .end local v27           #tagMatch:Lgnu/xml/MappingInfo;
    .end local v28           #type:Lgnu/mapping/Symbol;
    .end local v29           #uri:Ljava/lang/String;
    :cond_23
    move-object/from16 v0, v22

    check-cast v0, Lgnu/mapping/Symbol;

    move-object/from16 v24, v0

    .line 523
    .restart local v24       #sym:Lgnu/mapping/Symbol;
    invoke-virtual/range {v24 .. v24}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v29

    .line 524
    .restart local v29       #uri:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v14

    .line 525
    .restart local v14       #local:Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10       #info:Lgnu/xml/MappingInfo;
    goto/16 :goto_b

    .line 535
    .end local v24           #sym:Lgnu/mapping/Symbol;
    .restart local v13       #j:I
    .restart local v19       #other:Ljava/lang/Object;
    :cond_24
    move-object/from16 v0, v19

    instance-of v0, v0, Lgnu/xml/MappingInfo;

    move/from16 v31, v0

    if-eqz v31, :cond_18

    .line 536
    check-cast v19, Lgnu/xml/MappingInfo;

    .end local v19           #other:Ljava/lang/Object;
    move-object/from16 v0, v19

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v18, v0

    .restart local v18       #osym:Lgnu/mapping/Symbol;
    goto/16 :goto_d

    .line 549
    .end local v18           #osym:Lgnu/mapping/Symbol;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_2c

    .line 551
    if-nez v8, :cond_29

    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    move-object/from16 v31, v0

    move-object/from16 v28, v31

    .line 552
    .local v28, type:Ljava/lang/Object;
    :goto_10
    iget v9, v10, Lgnu/xml/MappingInfo;->index:I

    .line 553
    .local v9, index:I
    if-lez v9, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    move-object/from16 v31, v0

    aget-object v31, v31, v9

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_27

    .line 556
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v9

    .line 557
    iput v9, v10, Lgnu/xml/MappingInfo;->index:I

    .line 559
    :cond_27
    if-nez v8, :cond_2a

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lgnu/lists/TreeList;->gapEnd:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lgnu/lists/TreeList;->setElementName(II)V

    .line 423
    .end local v9           #index:I
    :cond_28
    :goto_11
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    .line 551
    .end local v28           #type:Ljava/lang/Object;
    :cond_29
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v31, v0

    move-object/from16 v28, v31

    goto :goto_10

    .line 561
    .restart local v9       #index:I
    .restart local v28       #type:Ljava/lang/Object;
    :cond_2a
    if-eqz v11, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    move/from16 v31, v0

    if-eqz v31, :cond_28

    .line 562
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->startIndexes:[I

    move-object/from16 v32, v0

    const/16 v33, 0x1

    sub-int v33, v8, v33

    aget v32, v32, v33

    move-object/from16 v0, v31

    move/from16 v1, v32

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lgnu/lists/TreeList;->setAttributeName(II)V

    goto :goto_11

    .line 566
    .end local v9           #index:I
    .end local v28           #type:Ljava/lang/Object;
    :cond_2c
    if-nez v10, :cond_2d

    move-object/from16 v28, v22

    .line 568
    .restart local v28       #type:Ljava/lang/Object;
    :goto_12
    if-nez v8, :cond_2f

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    goto :goto_11

    .line 566
    .end local v28           #type:Ljava/lang/Object;
    :cond_2d
    if-nez v8, :cond_2e

    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    move-object/from16 v31, v0

    move-object/from16 v28, v31

    goto :goto_12

    :cond_2e
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object/from16 v31, v0

    move-object/from16 v28, v31

    goto :goto_12

    .line 570
    .restart local v28       #type:Ljava/lang/Object;
    :cond_2f
    if-eqz v11, :cond_30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    move/from16 v31, v0

    if-eqz v31, :cond_28

    .line 572
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->startIndexes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    sub-int v32, v8, v32

    aget v23, v31, v32

    .line 574
    .local v23, start:I
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move/from16 v31, v0

    move v0, v8

    move/from16 v1, v31

    if-ge v0, v1, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->startIndexes:[I

    move-object/from16 v31, v0

    aget v31, v31, v8

    move/from16 v6, v31

    .line 575
    .local v6, end:I
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v31, v0

    add-int/lit8 v32, v23, 0x5

    const/16 v33, 0x1

    sub-int v33, v6, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v34, v0

    invoke-virtual/range {v31 .. v34}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lgnu/lists/Consumer;->endAttribute()V

    goto/16 :goto_11

    .line 574
    .end local v6           #end:I
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move/from16 v31, v0

    move/from16 v6, v31

    goto :goto_13

    .line 584
    .end local v10           #info:Lgnu/xml/MappingInfo;
    .end local v11           #isNsNode:Z
    .end local v13           #j:I
    .end local v14           #local:Ljava/lang/String;
    .end local v22           #saved:Ljava/lang/Object;
    .end local v23           #start:I
    .end local v28           #type:Ljava/lang/Object;
    .end local v29           #uri:Ljava/lang/String;
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    instance-of v0, v0, Lgnu/kawa/sax/ContentConsumer;

    move/from16 v31, v0

    if-eqz v31, :cond_33

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object v4, v0

    .end local v4           #bindings:Lgnu/xml/NamespaceBinding;
    check-cast v4, Lgnu/kawa/sax/ContentConsumer;

    invoke-virtual {v4}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 588
    :cond_33
    const/4 v8, 0x1

    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move/from16 v31, v0

    move v0, v8

    move/from16 v1, v31

    if-gt v0, v1, :cond_34

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->nesting:I

    move/from16 v32, v0

    add-int v32, v32, v8

    const/16 v33, 0x1

    sub-int v32, v32, v33

    const/16 v33, 0x0

    aput-object v33, v31, v32

    .line 588
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 590
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_35

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lgnu/lists/TreeList;->clear()V

    .line 596
    :cond_35
    const/16 v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xml/XMLFilter;->attrCount:I

    goto/16 :goto_0
.end method

.method public commentFromParser([CII)V
    .locals 1
    .parameter "chars"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 1148
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_1

    .line 1150
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1151
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/XConsumer;

    if-eqz v0, :cond_0

    .line 1152
    iget-object p0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Lgnu/lists/XConsumer;

    invoke-interface {p0, p1, p2, p3}, Lgnu/lists/XConsumer;->writeComment([CII)V

    .line 1156
    :cond_0
    :goto_0
    return-void

    .line 1154
    .restart local p0
    :cond_1
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_0

    .line 1155
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_0
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 2
    .parameter "position"

    .prologue
    .line 652
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v0, v1}, Lgnu/xml/XMLFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 653
    return-void
.end method

.method public emitCharacterReference(I[CII)V
    .locals 1
    .parameter "value"
    .parameter "name"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 1112
    const/high16 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1113
    invoke-static {p1, p0}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    .line 1116
    :goto_0
    return-void

    .line 1115
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->write(I)V

    goto :goto_0
.end method

.method public emitDoctypeDecl([CIIII)V
    .locals 0
    .parameter "buffer"
    .parameter "target"
    .parameter "tlength"
    .parameter "data"
    .parameter "dlength"

    .prologue
    .line 1267
    return-void
.end method

.method public emitEndAttributes()V
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 998
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 999
    return-void
.end method

.method public emitEndElement([CII)V
    .locals 10
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x65

    .line 1006
    iget-object v6, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 1008
    const-string v6, "unclosed attribute"

    invoke-virtual {p0, v8, v6}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1009
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1011
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1013
    const-string v6, "unmatched end element"

    invoke-virtual {p0, v8, v6}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1045
    :cond_1
    :goto_0
    return-void

    .line 1016
    :cond_2
    if-eqz p1, :cond_5

    .line 1018
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->lookupTag([CII)Lgnu/xml/MappingInfo;

    move-result-object v1

    .line 1019
    .local v1, info:Lgnu/xml/MappingInfo;
    iget-object v6, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v7, p0, Lgnu/xml/XMLFilter;->nesting:I

    sub-int/2addr v7, v9

    aget-object v3, v6, v7

    .line 1020
    .local v3, old:Ljava/lang/Object;
    instance-of v6, v3, Lgnu/xml/MappingInfo;

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lgnu/xml/XMLFilter;->mismatchReported:Z

    if-nez v6, :cond_5

    .line 1022
    move-object v0, v3

    check-cast v0, Lgnu/xml/MappingInfo;

    move-object v2, v0

    .line 1023
    .local v2, mold:Lgnu/xml/MappingInfo;
    iget-object v6, v1, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    iget-object v7, v2, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    if-ne v6, v7, :cond_3

    iget-object v6, v1, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    iget-object v7, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-eq v6, v7, :cond_5

    .line 1025
    :cond_3
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "</"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v5, sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {v5, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1027
    const-string v6, "> matching <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1028
    iget-object v4, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1029
    .local v4, oldPrefix:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 1031
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1032
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1034
    :cond_4
    iget-object v6, v2, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1035
    const/16 v6, 0x3e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1036
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v8, v6}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1037
    iput-boolean v9, p0, Lgnu/xml/XMLFilter;->mismatchReported:Z

    .line 1041
    .end local v1           #info:Lgnu/xml/MappingInfo;
    .end local v2           #mold:Lgnu/xml/MappingInfo;
    .end local v3           #old:Ljava/lang/Object;
    .end local v4           #oldPrefix:Ljava/lang/String;
    .end local v5           #sbuf:Ljava/lang/StringBuffer;
    :cond_5
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1042
    iget v6, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-lez v6, :cond_1

    .line 1044
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endElement()V

    goto :goto_0
.end method

.method public emitEntityReference([CII)V
    .locals 10
    .parameter "name"
    .parameter "start"
    .parameter "length"

    .prologue
    const/16 v9, 0x74

    const/16 v8, 0x70

    const/16 v7, 0x6f

    const/16 v6, 0x61

    .line 1079
    aget-char v0, p1, p2

    .line 1080
    .local v0, c0:C
    const/16 v4, 0x3f

    .line 1081
    .local v4, ch:C
    const/4 v5, 0x2

    if-ne p3, v5, :cond_2

    add-int/lit8 v5, p2, 0x1

    aget-char v5, p1, v5

    if-ne v5, v9, :cond_2

    .line 1084
    const/16 v5, 0x6c

    if-ne v0, v5, :cond_1

    .line 1085
    const/16 v4, 0x3c

    .line 1104
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lgnu/xml/XMLFilter;->write(I)V

    .line 1105
    return-void

    .line 1086
    :cond_1
    const/16 v5, 0x67

    if-ne v0, v5, :cond_0

    .line 1087
    const/16 v4, 0x3e

    goto :goto_0

    .line 1089
    :cond_2
    const/4 v5, 0x3

    if-ne p3, v5, :cond_3

    .line 1091
    if-ne v0, v6, :cond_0

    add-int/lit8 v5, p2, 0x1

    aget-char v5, p1, v5

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_0

    add-int/lit8 v5, p2, 0x2

    aget-char v5, p1, v5

    if-ne v5, v8, :cond_0

    .line 1092
    const/16 v4, 0x26

    goto :goto_0

    .line 1094
    :cond_3
    const/4 v5, 0x4

    if-ne p3, v5, :cond_0

    .line 1096
    add-int/lit8 v5, p2, 0x1

    aget-char v1, p1, v5

    .line 1097
    .local v1, c1:C
    add-int/lit8 v5, p2, 0x2

    aget-char v2, p1, v5

    .line 1098
    .local v2, c2:C
    add-int/lit8 v5, p2, 0x3

    aget-char v3, p1, v5

    .line 1099
    .local v3, c3:C
    const/16 v5, 0x71

    if-ne v0, v5, :cond_4

    const/16 v5, 0x75

    if-ne v1, v5, :cond_4

    if-ne v2, v7, :cond_4

    if-ne v3, v9, :cond_4

    .line 1100
    const/16 v4, 0x22

    goto :goto_0

    .line 1101
    :cond_4
    if-ne v0, v6, :cond_0

    if-ne v1, v8, :cond_0

    if-ne v2, v7, :cond_0

    const/16 v5, 0x73

    if-ne v3, v5, :cond_0

    .line 1102
    const/16 v4, 0x27

    goto :goto_0
.end method

.method public emitStartAttribute([CII)V
    .locals 7
    .parameter "data"
    .parameter "start"
    .parameter "count"

    .prologue
    const-string v6, "xmlns"

    .line 963
    iget-object v3, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 964
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 965
    :cond_0
    invoke-direct {p0}, Lgnu/xml/XMLFilter;->startAttributeCommon()Z

    move-result v3

    if-nez v3, :cond_2

    .line 990
    :cond_1
    :goto_0
    return-void

    .line 968
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->lookupTag([CII)Lgnu/xml/MappingInfo;

    move-result-object v0

    .line 969
    .local v0, info:Lgnu/xml/MappingInfo;
    iget-object v3, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v4, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget v5, p0, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr v4, v5

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aput-object v0, v3, v4

    .line 970
    iget-object v2, v0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 971
    .local v2, prefix:Ljava/lang/String;
    iget-object v1, v0, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 972
    .local v1, local:Ljava/lang/String;
    iput-object v1, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    .line 973
    iput-object v2, p0, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    .line 974
    if-eqz v2, :cond_5

    .line 976
    const-string v3, "xmlns"

    if-ne v2, v6, :cond_3

    .line 978
    iput-object v1, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    .line 988
    :cond_3
    :goto_1
    iget-object v3, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    if-eqz v3, :cond_1

    .line 989
    :cond_4
    iget-object v3, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->startAttribute(I)V

    goto :goto_0

    .line 983
    :cond_5
    const-string v3, "xmlns"

    if-ne v1, v6, :cond_3

    if-nez v2, :cond_3

    .line 985
    const-string v3, ""

    iput-object v3, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    goto :goto_1
.end method

.method public emitStartElement([CII)V
    .locals 4
    .parameter "data"
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v3, 0x1

    .line 831
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 832
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->lookupTag([CII)Lgnu/xml/MappingInfo;

    move-result-object v0

    .line 833
    .local v0, info:Lgnu/xml/MappingInfo;
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->startElementCommon()V

    .line 834
    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    sub-int/2addr v1, v3

    invoke-direct {p0, v1}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 835
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v2, p0, Lgnu/xml/XMLFilter;->nesting:I

    sub-int/2addr v2, v3

    aput-object v0, v1, v2

    .line 836
    return-void
.end method

.method public endAttribute()V
    .locals 21

    .prologue
    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->previous:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 235
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_0

    .line 238
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    move v5, v0

    if-ltz v5, :cond_3

    .line 239
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xml/XMLFilter;->ignoringLevel:I

    .line 240
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v5, :cond_0

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "id"

    if-ne v5, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "xml"

    if-ne v5, v6, :cond_4

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->startIndexes:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget v5, v5, v6

    add-int/lit8 v20, v5, 0x5

    .line 247
    .local v20, valStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move/from16 v19, v0

    .line 248
    .local v19, valEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    iget-object v7, v5, Lgnu/lists/TreeList;->data:[C

    .line 249
    .local v7, data:[C
    move/from16 v14, v20

    .local v14, i:I
    move v15, v14

    .line 251
    .end local v14           #i:I
    .local v15, i:I
    :goto_1
    move v0, v15

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    .line 277
    .end local v7           #data:[C
    .end local v15           #i:I
    .end local v19           #valEnd:I
    .end local v20           #valStart:I
    :cond_4
    :goto_2
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    .line 278
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 280
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/lists/TreeList;->endAttribute()V

    .line 281
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->startIndexes:[I

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLFilter;->attrCount:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget v12, v5, v6

    .line 285
    .local v12, attrStart:I
    move v8, v12

    .line 286
    .local v8, uriStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lgnu/lists/TreeList;->gapStart:I

    move/from16 v18, v0

    .line 287
    .local v18, uriEnd:I
    sub-int v9, v18, v8

    .line 288
    .local v9, uriLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    iget-object v7, v5, Lgnu/lists/TreeList;->data:[C

    .line 293
    .restart local v7       #data:[C
    const/4 v10, 0x0

    .line 294
    .local v10, uriHash:I
    move v14, v8

    .restart local v14       #i:I
    :goto_3
    move v0, v14

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 296
    aget-char v13, v7, v14

    .line 297
    .local v13, datum:C
    const v5, 0xffff

    and-int/2addr v5, v13

    const v6, 0x9fff

    if-le v5, v6, :cond_b

    .line 299
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 300
    .local v17, sbuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v18

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    .line 301
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->hashCode()I

    move-result v10

    .line 302
    const/4 v8, 0x0

    .line 303
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    move/from16 v18, v9

    .line 304
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    new-array v7, v5, [C

    .line 305
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move v1, v5

    move/from16 v2, v18

    move-object v3, v7

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 310
    .end local v13           #datum:C
    .end local v17           #sbuf:Ljava/lang/StringBuffer;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    iput v12, v5, Lgnu/lists/TreeList;->gapStart:I

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    move-object v5, v0

    const-string v6, ""

    if-ne v5, v6, :cond_c

    const/4 v5, 0x0

    move-object v6, v5

    .line 314
    .local v6, prefix:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object v11, v0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lgnu/xml/XMLFilter;->lookupNamespaceBinding(Ljava/lang/String;[CIIILgnu/xml/NamespaceBinding;)Lgnu/xml/MappingInfo;

    move-result-object v16

    .line 317
    .local v16, info:Lgnu/xml/MappingInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 319
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    goto/16 :goto_0

    .line 256
    .end local v6           #prefix:Ljava/lang/String;
    .end local v8           #uriStart:I
    .end local v9           #uriLength:I
    .end local v10           #uriHash:I
    .end local v12           #attrStart:I
    .end local v14           #i:I
    .end local v16           #info:Lgnu/xml/MappingInfo;
    .end local v18           #uriEnd:I
    .restart local v15       #i:I
    .restart local v19       #valEnd:I
    .restart local v20       #valStart:I
    :cond_8
    add-int/lit8 v14, v15, 0x1

    .end local v15           #i:I
    .restart local v14       #i:I
    aget-char v13, v7, v15

    .line 257
    .restart local v13       #datum:C
    const v5, 0xffff

    and-int/2addr v5, v13

    const v6, 0x9fff

    if-gt v5, v6, :cond_9

    const/16 v5, 0x9

    if-eq v13, v5, :cond_9

    const/16 v5, 0xd

    if-eq v13, v5, :cond_9

    const/16 v5, 0xa

    if-eq v13, v5, :cond_9

    const/16 v5, 0x20

    if-ne v13, v5, :cond_a

    move v0, v14

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    aget-char v5, v7, v14

    const/16 v6, 0x20

    if-ne v5, v6, :cond_a

    .line 267
    :cond_9
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 268
    .restart local v17       #sbuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v20

    move/from16 v2, v19

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    move/from16 v0, v20

    move-object v1, v5

    iput v0, v1, Lgnu/lists/TreeList;->gapStart:I

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    move-object v5, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    .end local v7           #data:[C
    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/lists/TreeList;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v17           #sbuf:Ljava/lang/StringBuffer;
    .restart local v7       #data:[C
    :cond_a
    move v15, v14

    .line 274
    .end local v14           #i:I
    .restart local v15       #i:I
    goto/16 :goto_1

    .line 308
    .end local v15           #i:I
    .end local v19           #valEnd:I
    .end local v20           #valStart:I
    .restart local v8       #uriStart:I
    .restart local v9       #uriLength:I
    .restart local v10       #uriHash:I
    .restart local v12       #attrStart:I
    .restart local v14       #i:I
    .restart local v18       #uriEnd:I
    :cond_b
    mul-int/lit8 v5, v10, 0x1f

    add-int v10, v5, v13

    .line 294
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 312
    .end local v13           #datum:C
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v5

    goto/16 :goto_4
.end method

.method public endDocument()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1239
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_0

    .line 1241
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 1259
    :goto_0
    return-void

    .line 1244
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    .line 1245
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    aget-object v0, v0, v1

    check-cast v0, Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 1246
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    aput-object v2, v0, v1

    .line 1247
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v1, v1, 0x1

    aput-object v2, v0, v1

    .line 1248
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v0, :cond_1

    .line 1249
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endDocument()V

    goto :goto_0

    .line 1251
    :cond_1
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    goto :goto_0
.end method

.method public endElement()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1049
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1050
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    sub-int/2addr v0, v2

    iput v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    .line 1051
    const/4 v0, 0x0

    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 1052
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_1

    .line 1054
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    aget-object v0, v0, v1

    check-cast v0, Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 1055
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    aput-object v3, v0, v1

    .line 1056
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v1, v1, 0x1

    aput-object v3, v0, v1

    .line 1057
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endElement()V

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-ne v0, v1, :cond_0

    .line 1061
    const/4 v0, -0x1

    iput v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    .line 1062
    iput v2, p0, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1517
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endElement()V

    .line 1518
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"

    .prologue
    .line 1494
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endElement()V

    .line 1495
    return-void
.end method

.method public endEntity()V
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/XConsumer;

    if-eqz v0, :cond_0

    .line 1278
    iget-object p0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Lgnu/lists/XConsumer;

    invoke-interface {p0}, Lgnu/lists/XConsumer;->endEntity()V

    .line 1279
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"

    .prologue
    .line 1550
    iget-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v0}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v0

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 1551
    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 2
    .parameter "severity"
    .parameter "message"

    .prologue
    .line 1456
    iget-object v0, p0, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    if-nez v0, :cond_0

    .line 1457
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1458
    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    if-eqz v0, :cond_1

    .line 1459
    iget-object v0, p0, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    iget-object v1, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    invoke-virtual {v0, p1, v1, p2}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    .line 1462
    :goto_0
    return-void

    .line 1461
    :cond_1
    iget-object v0, p0, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p2}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    goto :goto_0
.end method

.method public findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 6
    .parameter "prefix"
    .parameter "uri"
    .parameter "oldBindings"

    .prologue
    .line 137
    if-nez p2, :cond_2

    const/4 v4, 0x0

    move v1, v4

    .line 138
    .local v1, hash:I
    :goto_0
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v1, v4

    .line 140
    :cond_0
    iget v4, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int v0, v1, v4

    .line 141
    .local v0, bucket:I
    iget-object v4, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v2, v4, v0

    .line 144
    .local v2, info:Lgnu/xml/MappingInfo;
    :goto_1
    if-nez v2, :cond_3

    .line 146
    new-instance v2, Lgnu/xml/MappingInfo;

    .end local v2           #info:Lgnu/xml/MappingInfo;
    invoke-direct {v2}, Lgnu/xml/MappingInfo;-><init>()V

    .line 147
    .restart local v2       #info:Lgnu/xml/MappingInfo;
    iget-object v4, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v4, v4, v0

    iput-object v4, v2, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 148
    iget-object v4, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v2, v4, v0

    .line 149
    iput v1, v2, Lgnu/xml/MappingInfo;->tagHash:I

    .line 150
    iput-object p1, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 151
    iput-object p2, v2, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 152
    iput-object p2, v2, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 153
    const-string v4, ""

    if-ne p2, v4, :cond_1

    .line 154
    const/4 p2, 0x0

    .line 155
    :cond_1
    new-instance v3, Lgnu/xml/NamespaceBinding;

    invoke-direct {v3, p1, p2, p3}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 157
    .local v3, namespaces:Lgnu/xml/NamespaceBinding;
    iput-object v3, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 158
    iget-object v4, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 168
    :goto_2
    return-object v4

    .line 137
    .end local v0           #bucket:I
    .end local v1           #hash:I
    .end local v2           #info:Lgnu/xml/MappingInfo;
    .end local v3           #namespaces:Lgnu/xml/NamespaceBinding;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    move v1, v4

    goto :goto_0

    .line 161
    .restart local v0       #bucket:I
    .restart local v1       #hash:I
    .restart local v2       #info:Lgnu/xml/MappingInfo;
    :cond_3
    iget v4, v2, Lgnu/xml/MappingInfo;->tagHash:I

    if-ne v4, v1, :cond_4

    iget-object v4, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-ne v4, p1, :cond_4

    iget-object v3, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .restart local v3       #namespaces:Lgnu/xml/NamespaceBinding;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v4

    iget-object v5, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    if-ne v4, v5, :cond_4

    invoke-virtual {v3}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-ne v4, p1, :cond_4

    iget-object v4, v2, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-ne v4, p2, :cond_4

    .line 168
    iget-object v4, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    goto :goto_2

    .line 142
    .end local v3           #namespaces:Lgnu/xml/NamespaceBinding;
    :cond_4
    iget-object v2, v2, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto :goto_1
.end method

.method public getColumnNumber()I
    .locals 2

    .prologue
    .line 1584
    iget-object v1, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v0

    .local v0, col:I
    if-lez v0, :cond_0

    move v1, v0

    .end local v0           #col:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1575
    iget-object v1, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-nez v1, :cond_0

    move v1, v2

    .line 1578
    :goto_0
    return v1

    .line 1577
    :cond_0
    iget-object v1, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    .line 1578
    .local v0, line:I
    if-gez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1560
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1529
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    .line 1530
    return-void
.end method

.method public ignoring()Z
    .locals 1

    .prologue
    .line 1466
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final inElement()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 746
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    .line 748
    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    sub-int v2, v0, v3

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 749
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 750
    :cond_0
    if-eqz v0, :cond_1

    move v1, v3

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isStableSourceLocation()Z
    .locals 1

    .prologue
    .line 1589
    const/4 v0, 0x0

    return v0
.end method

.method public linefeedFromParser()V
    .locals 2

    .prologue
    .line 755
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->write(I)V

    .line 757
    :cond_0
    return-void
.end method

.method public lookupNamespaceBinding(Ljava/lang/String;[CIIILgnu/xml/NamespaceBinding;)Lgnu/xml/MappingInfo;
    .locals 8
    .parameter "prefix"
    .parameter "uriChars"
    .parameter "uriStart"
    .parameter "uriLength"
    .parameter "uriHash"
    .parameter "oldBindings"

    .prologue
    .line 185
    if-nez p1, :cond_1

    move v1, p5

    .line 191
    .local v1, hash:I
    :goto_0
    iget v6, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int v0, v1, v6

    .line 192
    .local v0, bucket:I
    iget-object v6, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v2, v6, v0

    .line 195
    .local v2, info:Lgnu/xml/MappingInfo;
    :goto_1
    if-nez v2, :cond_2

    .line 197
    new-instance v2, Lgnu/xml/MappingInfo;

    .end local v2           #info:Lgnu/xml/MappingInfo;
    invoke-direct {v2}, Lgnu/xml/MappingInfo;-><init>()V

    .line 198
    .restart local v2       #info:Lgnu/xml/MappingInfo;
    iget-object v6, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v6, v6, v0

    iput-object v6, v2, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 199
    iget-object v6, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v2, v6, v0

    .line 200
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2, p3, p4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, uri:Ljava/lang/String;
    iput v1, v2, Lgnu/xml/MappingInfo;->tagHash:I

    .line 206
    iput-object p1, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 207
    iput-object v5, v2, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 208
    iput-object v5, v2, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 209
    const-string v6, ""

    if-ne v5, v6, :cond_0

    .line 210
    const/4 v5, 0x0

    .line 211
    :cond_0
    new-instance v4, Lgnu/xml/NamespaceBinding;

    invoke-direct {v4, p1, v5, p6}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 213
    .local v4, namespaces:Lgnu/xml/NamespaceBinding;
    iput-object v4, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    move-object v3, v2

    .line 224
    .end local v2           #info:Lgnu/xml/MappingInfo;
    .end local v5           #uri:Ljava/lang/String;
    .local v3, info:Ljava/lang/Object;
    :goto_2
    return-object v3

    .line 185
    .end local v0           #bucket:I
    .end local v1           #hash:I
    .end local v3           #info:Ljava/lang/Object;
    .end local v4           #namespaces:Lgnu/xml/NamespaceBinding;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    xor-int/2addr v6, p5

    move v1, v6

    goto :goto_0

    .line 217
    .restart local v0       #bucket:I
    .restart local v1       #hash:I
    .restart local v2       #info:Lgnu/xml/MappingInfo;
    :cond_2
    iget v6, v2, Lgnu/xml/MappingInfo;->tagHash:I

    if-ne v6, v1, :cond_3

    iget-object v6, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-ne v6, p1, :cond_3

    iget-object v4, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .restart local v4       #namespaces:Lgnu/xml/NamespaceBinding;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v6

    iget-object v7, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    if-ne v6, v7, :cond_3

    invoke-virtual {v4}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-ne v6, p1, :cond_3

    iget-object v6, v2, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    invoke-static {v6, p2, p3, p4}, Lgnu/xml/MappingInfo;->equals(Ljava/lang/String;[CII)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v3, v2

    .line 224
    .restart local v3       #info:Ljava/lang/Object;
    goto :goto_2

    .line 193
    .end local v3           #info:Ljava/lang/Object;
    .end local v4           #namespaces:Lgnu/xml/NamespaceBinding;
    :cond_3
    iget-object v2, v2, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto :goto_1
.end method

.method lookupTag(Lgnu/mapping/Symbol;)Lgnu/xml/MappingInfo;
    .locals 9
    .parameter "qname"

    .prologue
    .line 1307
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    .line 1308
    .local v5, local:Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 1309
    .local v6, prefix:Ljava/lang/String;
    const-string v8, ""

    if-ne v6, v8, :cond_0

    .line 1310
    const/4 v6, 0x0

    .line 1311
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    .line 1312
    .local v7, uri:Ljava/lang/String;
    invoke-static {v6, v5}, Lgnu/xml/MappingInfo;->hash(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1313
    .local v1, hash:I
    iget v8, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int v2, v1, v8

    .line 1314
    .local v2, index:I
    iget-object v8, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v0, v8, v2

    .line 1315
    .local v0, first:Lgnu/xml/MappingInfo;
    move-object v3, v0

    .line 1318
    .local v3, info:Lgnu/xml/MappingInfo;
    :goto_0
    if-nez v3, :cond_1

    .line 1321
    new-instance v3, Lgnu/xml/MappingInfo;

    .end local v3           #info:Lgnu/xml/MappingInfo;
    invoke-direct {v3}, Lgnu/xml/MappingInfo;-><init>()V

    .line 1322
    .restart local v3       #info:Lgnu/xml/MappingInfo;
    iput-object p1, v3, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 1323
    iput-object v6, v3, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1324
    iput-object v7, v3, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 1325
    iput-object v5, v3, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 1326
    iput v1, v3, Lgnu/xml/MappingInfo;->tagHash:I

    .line 1327
    iput-object v0, v3, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 1328
    iget-object v8, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v0, v8, v2

    move-object v4, v3

    .line 1339
    .end local v3           #info:Lgnu/xml/MappingInfo;
    .local v4, info:Ljava/lang/Object;
    :goto_1
    return-object v4

    .line 1331
    .end local v4           #info:Ljava/lang/Object;
    .restart local v3       #info:Lgnu/xml/MappingInfo;
    :cond_1
    iget-object v8, v3, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    if-ne p1, v8, :cond_2

    move-object v4, v3

    .line 1332
    .restart local v4       #info:Ljava/lang/Object;
    goto :goto_1

    .line 1333
    .end local v4           #info:Ljava/lang/Object;
    :cond_2
    iget-object v8, v3, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    if-ne v5, v8, :cond_4

    iget-object v8, v3, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    if-nez v8, :cond_4

    iget-object v8, v3, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-eq v7, v8, :cond_3

    iget-object v8, v3, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-nez v8, :cond_4

    :cond_3
    iget-object v8, v3, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-ne v6, v8, :cond_4

    .line 1337
    iput-object v7, v3, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 1338
    iput-object p1, v3, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    move-object v4, v3

    .line 1339
    .restart local v4       #info:Ljava/lang/Object;
    goto :goto_1

    .line 1341
    .end local v4           #info:Ljava/lang/Object;
    :cond_4
    iget-object v3, v3, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto :goto_0
.end method

.method lookupTag([CII)Lgnu/xml/MappingInfo;
    .locals 12
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 1356
    const/4 v3, 0x0

    .line 1357
    .local v3, hash:I
    const/4 v9, 0x0

    .line 1358
    .local v9, prefixHash:I
    const/4 v1, -0x1

    .line 1359
    .local v1, colon:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p3, :cond_1

    .line 1361
    add-int v10, p2, v4

    aget-char v0, p1, v10

    .line 1362
    .local v0, ch:C
    const/16 v10, 0x3a

    if-ne v0, v10, :cond_0

    if-gez v1, :cond_0

    .line 1364
    move v1, v4

    .line 1365
    move v9, v3

    .line 1366
    const/4 v3, 0x0

    .line 1359
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1369
    :cond_0
    mul-int/lit8 v10, v3, 0x1f

    add-int v3, v10, v0

    goto :goto_1

    .line 1371
    .end local v0           #ch:C
    :cond_1
    xor-int/2addr v3, v9

    .line 1372
    iget v10, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int v5, v3, v10

    .line 1373
    .local v5, index:I
    iget-object v10, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v2, v10, v5

    .line 1374
    .local v2, first:Lgnu/xml/MappingInfo;
    move-object v6, v2

    .line 1377
    .local v6, info:Lgnu/xml/MappingInfo;
    :goto_2
    if-nez v6, :cond_3

    .line 1380
    new-instance v6, Lgnu/xml/MappingInfo;

    .end local v6           #info:Lgnu/xml/MappingInfo;
    invoke-direct {v6}, Lgnu/xml/MappingInfo;-><init>()V

    .line 1381
    .restart local v6       #info:Lgnu/xml/MappingInfo;
    iput v3, v6, Lgnu/xml/MappingInfo;->tagHash:I

    .line 1382
    if-ltz v1, :cond_2

    .line 1384
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, p1, p2, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1385
    add-int/lit8 v1, v1, 0x1

    .line 1386
    add-int v8, p2, v1

    .line 1387
    .local v8, lstart:I
    new-instance v10, Ljava/lang/String;

    sub-int v11, p3, v1

    invoke-direct {v10, p1, v8, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 1394
    .end local v8           #lstart:I
    :goto_3
    iput-object v2, v6, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 1395
    iget-object v10, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v2, v10, v5

    move-object v7, v6

    .line 1400
    .end local v6           #info:Lgnu/xml/MappingInfo;
    .local v7, info:Ljava/lang/Object;
    :goto_4
    return-object v7

    .line 1391
    .end local v7           #info:Ljava/lang/Object;
    .restart local v6       #info:Lgnu/xml/MappingInfo;
    :cond_2
    const/4 v10, 0x0

    iput-object v10, v6, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1392
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    goto :goto_3

    .line 1398
    :cond_3
    iget v10, v6, Lgnu/xml/MappingInfo;->tagHash:I

    if-ne v3, v10, :cond_4

    invoke-virtual {v6, p1, p2, p3}, Lgnu/xml/MappingInfo;->match([CII)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v7, v6

    .line 1400
    .restart local v7       #info:Ljava/lang/Object;
    goto :goto_4

    .line 1401
    .end local v7           #info:Ljava/lang/Object;
    :cond_4
    iget-object v6, v6, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto :goto_2
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "target"
    .parameter "data"

    .prologue
    .line 1537
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1538
    .local v0, chars:[C
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lgnu/xml/XMLFilter;->processingInstructionCommon(Ljava/lang/String;[CII)V

    .line 1539
    return-void
.end method

.method processingInstructionCommon(Ljava/lang/String;[CII)V
    .locals 1
    .parameter "target"
    .parameter "content"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 1189
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_1

    .line 1191
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1192
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/XConsumer;

    if-eqz v0, :cond_0

    .line 1193
    iget-object p0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Lgnu/lists/XConsumer;

    invoke-interface {p0, p1, p2, p3, p4}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1196
    .restart local p0
    :cond_1
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_0

    .line 1197
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p2, p3, p4}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_0
.end method

.method public processingInstructionFromParser([CIIII)V
    .locals 3
    .parameter "buffer"
    .parameter "tstart"
    .parameter "tlength"
    .parameter "dstart"
    .parameter "dlength"

    .prologue
    .line 1206
    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v1

    if-nez v1, :cond_0

    aget-char v1, p1, p2

    const/16 v2, 0x78

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p2, 0x1

    aget-char v1, p1, v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p2, 0x2

    aget-char v1, p1, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_0

    .line 1213
    :goto_0
    return-void

    .line 1211
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 1212
    .local v0, target:Ljava/lang/String;
    invoke-virtual {p0, v0, p1, p4, p5}, Lgnu/xml/XMLFilter;->processingInstructionCommon(Ljava/lang/String;[CII)V

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .parameter "locator"

    .prologue
    .line 1472
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_0

    .line 1473
    check-cast p1, Lgnu/text/SourceLocator;

    .end local p1
    iput-object p1, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    .line 1476
    :cond_0
    return-void
.end method

.method public setMessages(Lgnu/text/SourceMessages;)V
    .locals 0
    .parameter "messages"

    .prologue
    .line 67
    iput-object p1, p0, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    return-void
.end method

.method public setSourceLocator(Lgnu/text/LineBufferedReader;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 63
    iput-object p1, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    iput-object p0, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    return-void
.end method

.method public setSourceLocator(Lgnu/text/SourceLocator;)V
    .locals 0
    .parameter "locator"

    .prologue
    .line 65
    iput-object p1, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1556
    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 9
    .parameter "attrType"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x65

    .line 931
    iput v7, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 932
    instance-of v4, p1, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_1

    .line 934
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v2, v0

    .line 935
    .local v2, sym:Lgnu/mapping/Symbol;
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    .line 936
    .local v1, local:Ljava/lang/String;
    iput-object v1, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    .line 937
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    .line 938
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 939
    .local v3, uri:Ljava/lang/String;
    const-string v4, "http://www.w3.org/2000/xmlns/"

    if-eq v3, v4, :cond_0

    const-string v4, ""

    if-ne v3, v4, :cond_1

    const-string v4, "xmlns"

    if-ne v1, v4, :cond_1

    .line 941
    :cond_0
    const-string v4, "arttribute name cannot be \'xmlns\' or in xmlns namespace"

    invoke-virtual {p0, v6, v4}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 943
    .end local v1           #local:Ljava/lang/String;
    .end local v2           #sym:Lgnu/mapping/Symbol;
    .end local v3           #uri:Ljava/lang/String;
    :cond_1
    iget v4, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    aget-object v4, v4, v8

    if-nez v4, :cond_2

    .line 944
    const-string v4, "attribute not allowed at document level"

    invoke-virtual {p0, v6, v4}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 945
    :cond_2
    iget v4, p0, Lgnu/xml/XMLFilter;->attrCount:I

    if-gez v4, :cond_3

    iget v4, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-lez v4, :cond_3

    .line 946
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attribute \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' follows non-attribute content"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 947
    :cond_3
    invoke-direct {p0}, Lgnu/xml/XMLFilter;->startAttributeCommon()Z

    move-result v4

    if-nez v4, :cond_4

    .line 954
    :goto_0
    return-void

    .line 949
    :cond_4
    iget-object v4, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v5, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget v6, p0, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v8

    aput-object p1, v4, v5

    .line 950
    iget v4, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v4, :cond_5

    .line 951
    iget-object v4, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v4, p1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    goto :goto_0

    .line 953
    :cond_5
    iget-object v4, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v4, v7}, Lgnu/lists/TreeList;->startAttribute(I)V

    goto :goto_0
.end method

.method public startDocument()V
    .locals 3

    .prologue
    .line 1217
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1218
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_0

    .line 1219
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 1235
    :goto_0
    return-void

    .line 1223
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v0, :cond_1

    .line 1224
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->startDocument()V

    .line 1227
    :goto_1
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 1228
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget-object v2, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    aput-object v2, v0, v1

    .line 1232
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1233
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    goto :goto_0

    .line 1226
    :cond_1
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    goto :goto_1
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 8
    .parameter "type"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 840
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->startElementCommon()V

    .line 841
    iget v4, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v4, :cond_0

    .line 843
    iget v4, p0, Lgnu/xml/XMLFilter;->nesting:I

    sub-int/2addr v4, v6

    invoke-direct {p0, v4}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 844
    iget-object v4, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v5, p0, Lgnu/xml/XMLFilter;->nesting:I

    sub-int/2addr v5, v6

    aput-object p1, v4, v5

    .line 845
    iget v4, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    if-nez v4, :cond_1

    .line 846
    sget-object v4, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v4, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 891
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 847
    .restart local p1
    :cond_1
    iget v4, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    if-eq v4, v6, :cond_2

    iget v4, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-ne v4, v7, :cond_4

    .line 849
    :cond_2
    instance-of v4, p1, Lgnu/xml/XName;

    if-eqz v4, :cond_3

    check-cast p1, Lgnu/xml/XName;

    .end local p1
    invoke-virtual {p1}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .restart local p1
    :cond_3
    sget-object v4, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    goto :goto_1

    .line 856
    :cond_4
    const/4 v0, 0x2

    .line 858
    .local v0, i:I
    :goto_2
    iget v4, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-ne v0, v4, :cond_5

    .line 860
    const/4 v1, 0x0

    .line 869
    .local v1, inherited:Lgnu/xml/NamespaceBinding;
    :goto_3
    if-nez v1, :cond_8

    .line 872
    instance-of v4, p1, Lgnu/xml/XName;

    if-eqz v4, :cond_7

    check-cast p1, Lgnu/xml/XName;

    .end local p1
    invoke-virtual {p1}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v4

    :goto_4
    iput-object v4, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 863
    .end local v1           #inherited:Lgnu/xml/NamespaceBinding;
    .restart local p1
    :cond_5
    iget-object v4, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_6

    .line 865
    iget-object v4, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    aget-object v1, v4, v0

    check-cast v1, Lgnu/xml/NamespaceBinding;

    .line 866
    .restart local v1       #inherited:Lgnu/xml/NamespaceBinding;
    goto :goto_3

    .line 856
    .end local v1           #inherited:Lgnu/xml/NamespaceBinding;
    :cond_6
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 872
    .restart local v1       #inherited:Lgnu/xml/NamespaceBinding;
    :cond_7
    sget-object v4, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    goto :goto_4

    .line 876
    :cond_8
    iget v4, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    if-ne v4, v7, :cond_9

    .line 877
    iput-object v1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 878
    :cond_9
    instance-of v4, p1, Lgnu/xml/XName;

    if-eqz v4, :cond_b

    .line 880
    check-cast p1, Lgnu/xml/XName;

    .end local p1
    invoke-virtual {p1}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v3

    .line 881
    .local v3, preserved:Lgnu/xml/NamespaceBinding;
    invoke-static {v1, v3}, Lgnu/xml/NamespaceBinding;->commonAncestor(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v2

    .line 882
    .local v2, join:Lgnu/xml/NamespaceBinding;
    if-ne v2, v1, :cond_a

    .line 883
    iput-object v3, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 885
    :cond_a
    invoke-direct {p0, v1, v3}, Lgnu/xml/XMLFilter;->mergeHelper(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v4

    iput-object v4, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 888
    .end local v2           #join:Lgnu/xml/NamespaceBinding;
    .end local v3           #preserved:Lgnu/xml/NamespaceBinding;
    .restart local p1
    :cond_b
    iput-object v1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"

    .prologue
    .line 1481
    invoke-static {p1, p2}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/xml/XMLFilter;->startElement(Ljava/lang/Object;)V

    .line 1482
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 1483
    .local v1, numAttributes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1485
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 1486
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/xml/XMLFilter;->write(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1483
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1489
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 4
    .parameter "name"
    .parameter "atts"

    .prologue
    .line 1499
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 1500
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->startElement(Ljava/lang/Object;)V

    .line 1501
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v0

    .line 1502
    .local v0, attrLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1504
    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object p1

    .line 1505
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 1506
    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getType(I)Ljava/lang/String;

    move-result-object v2

    .line 1507
    .local v2, type:Ljava/lang/String;
    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1508
    .local v3, value:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 1509
    invoke-virtual {p0, v3}, Lgnu/xml/XMLFilter;->write(Ljava/lang/String;)V

    .line 1510
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1512
    .end local v2           #type:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected startElementCommon()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 808
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 809
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_1

    .line 811
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 812
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget-object v2, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    aput-object v2, v0, v1

    .line 813
    iget-object v0, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v0, v3}, Lgnu/lists/TreeList;->startElement(I)V

    .line 814
    iget-object v0, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .line 815
    iput v3, p0, Lgnu/xml/XMLFilter;->attrCount:I

    .line 825
    :cond_0
    :goto_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    .line 826
    return-void

    .line 819
    :cond_1
    iget v0, p0, Lgnu/xml/XMLFilter;->previous:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_2

    .line 820
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->write(I)V

    .line 821
    :cond_2
    iput v3, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 822
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_0

    .line 823
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    iput v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    goto :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"
    .parameter "uri"

    .prologue
    .line 1543
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v0

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 1546
    return-void
.end method

.method public textFromParser([CII)V
    .locals 3
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 762
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v1

    if-nez v1, :cond_3

    .line 764
    const/4 v0, 0x0

    .line 766
    .local v0, i:I
    :goto_0
    if-ne v0, p3, :cond_1

    .line 782
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 768
    .restart local v0       #i:I
    :cond_1
    add-int v1, p2, v0

    aget-char v1, p1, v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 770
    const/16 v1, 0x65

    const-string v2, "text at document level"

    invoke-virtual {p0, v1, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    goto :goto_1

    .line 764
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 775
    .end local v0           #i:I
    :cond_3
    if-lez p3, :cond_0

    .line 777
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v1, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_1
.end method

.method public write(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 610
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->write(I)V

    .line 612
    :cond_0
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 1
    .parameter "str"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 738
    if-nez p3, :cond_1

    .line 739
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    goto :goto_0
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 729
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    .line 730
    return-void
.end method

.method public write([CII)V
    .locals 1
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 721
    if-nez p3, :cond_1

    .line 722
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    goto :goto_0
.end method

.method public writeBoolean(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 616
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 618
    :cond_0
    return-void
.end method

.method public writeCDATA([CII)V
    .locals 1
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 797
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/XConsumer;

    if-eqz v0, :cond_1

    .line 800
    iget-object p0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Lgnu/lists/XConsumer;

    invoke-interface {p0, p1, p2, p3}, Lgnu/lists/XConsumer;->writeCDATA([CII)V

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 802
    .restart local p0
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    goto :goto_0
.end method

.method public writeComment([CII)V
    .locals 0
    .parameter "chars"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 1139
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->checkValidComment([CII)V

    .line 1140
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->commentFromParser([CII)V

    .line 1141
    return-void
.end method

.method public writeDocumentUri(Ljava/lang/Object;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 646
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/TreeList;

    if-eqz v0, :cond_0

    .line 647
    iget-object p0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Lgnu/lists/TreeList;

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->writeDocumentUri(Ljava/lang/Object;)V

    .line 648
    :cond_0
    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .parameter "v"

    .prologue
    .line 628
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 630
    :cond_0
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 622
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeFloat(F)V

    .line 624
    :cond_0
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 634
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 636
    :cond_0
    return-void
.end method

.method protected writeJoiner()V
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 787
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-nez v0, :cond_0

    .line 788
    iget-object p0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .end local p0
    check-cast p0, Lgnu/lists/TreeList;

    invoke-virtual {p0}, Lgnu/lists/TreeList;->writeJoiner()V

    .line 789
    :cond_0
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .parameter "v"

    .prologue
    .line 640
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 642
    :cond_0
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x2

    .line 673
    iget v3, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v3, :cond_0

    .line 704
    .end local p1
    :goto_0
    return-void

    .line 675
    .restart local p1
    :cond_0
    instance-of v3, p1, Lgnu/lists/SeqPosition;

    if-eqz v3, :cond_1

    .line 677
    move-object v0, p1

    check-cast v0, Lgnu/lists/SeqPosition;

    move-object v2, v0

    .line 678
    .local v2, pos:Lgnu/lists/SeqPosition;
    iget-object v3, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lgnu/xml/XMLFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_0

    .line 680
    .end local v2           #pos:Lgnu/lists/SeqPosition;
    :cond_1
    instance-of v3, p1, Lgnu/lists/TreeList;

    if-eqz v3, :cond_2

    .line 681
    check-cast p1, Lgnu/lists/TreeList;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/lists/TreeList;->consume(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 682
    .restart local p1
    :cond_2
    instance-of v3, p1, Lgnu/expr/Keyword;

    if-eqz v3, :cond_3

    .line 684
    move-object v0, p1

    check-cast v0, Lgnu/expr/Keyword;

    move-object v1, v0

    .line 685
    .local v1, k:Lgnu/expr/Keyword;
    invoke-virtual {v1}, Lgnu/expr/Keyword;->asSymbol()Lgnu/mapping/Symbol;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 686
    const/4 v3, 0x1

    iput v3, p0, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_0

    .line 690
    .end local v1           #k:Lgnu/expr/Keyword;
    :cond_3
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 691
    instance-of v3, p1, Lgnu/lists/UnescapedData;

    if-eqz v3, :cond_4

    .line 693
    iget-object v3, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v3, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 694
    const/4 v3, 0x0

    iput v3, p0, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_0

    .line 698
    :cond_4
    iget v3, p0, Lgnu/xml/XMLFilter;->previous:I

    if-ne v3, v4, :cond_5

    .line 699
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lgnu/xml/XMLFilter;->write(I)V

    .line 700
    :cond_5
    invoke-static {p1, p0}, Lgnu/xml/TextUtils;->textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 701
    iput v4, p0, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_0
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 2
    .parameter "seq"
    .parameter "ipos"

    .prologue
    const/4 v1, 0x2

    .line 657
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v0, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_3

    iget v0, p0, Lgnu/xml/XMLFilter;->previous:I

    if-ne v0, v1, :cond_3

    .line 661
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_2

    .line 662
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->write(I)V

    .line 663
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 665
    :cond_3
    invoke-virtual {p1, p2, p0}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    .line 666
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_0

    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_0

    .line 667
    iput v1, p0, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_0
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 5
    .parameter "target"
    .parameter "content"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x65

    .line 1161
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 1162
    add-int v1, p3, p4

    .local v1, i:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p3, :cond_2

    .line 1164
    aget-char v0, p2, v1

    .line 1165
    .local v0, ch:C
    :cond_1
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    if-lt v1, p3, :cond_0

    .line 1167
    aget-char v0, p2, v1

    .line 1168
    const/16 v2, 0x3f

    if-ne v0, v2, :cond_1

    .line 1170
    const-string v2, "\'?>\' is not allowed in a processing-instruction"

    invoke-virtual {p0, v4, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    goto :goto_0

    .line 1176
    .end local v0           #ch:C
    :cond_2
    const-string v2, "xml"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1177
    const-string v2, "processing-instruction target may not be \'xml\' (ignoring case)"

    invoke-virtual {p0, v4, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1179
    :cond_3
    invoke-static {p1}, Lgnu/xml/XName;->isNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing-instruction target \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a valid Name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1183
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/xml/XMLFilter;->processingInstructionCommon(Ljava/lang/String;[CII)V

    .line 1184
    return-void
.end method
