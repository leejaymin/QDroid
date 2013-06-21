.class public Lgnu/xml/XMLPrinter;
.super Lgnu/mapping/OutPort;
.source "XMLPrinter.java"

# interfaces
.implements Lgnu/lists/PositionConsumer;
.implements Lgnu/lists/XConsumer;


# static fields
.field private static final COMMENT:I = -0x5

.field private static final ELEMENT_END:I = -0x4

.field private static final ELEMENT_START:I = -0x3

.field static final HtmlEmptyTags:Ljava/lang/String; = "/area/base/basefont/br/col/frame/hr/img/input/isindex/link/meta/para/"

.field private static final KEYWORD:I = -0x6

.field private static final WORD:I = -0x2

.field public static final doctypePublic:Lgnu/mapping/ThreadLocation;

.field public static final doctypeSystem:Lgnu/mapping/ThreadLocation;

.field public static final indentLoc:Lgnu/mapping/ThreadLocation;


# instance fields
.field canonicalize:Z

.field public canonicalizeCDATA:Z

.field elementNameStack:[Ljava/lang/Object;

.field elementNesting:I

.field public escapeNonAscii:Z

.field public escapeText:Z

.field inAttribute:Z

.field inComment:I

.field inDocument:Z

.field inStartTag:Z

.field public indentAttributes:Z

.field isHtml:Z

.field namespaceBindings:Lgnu/xml/NamespaceBinding;

.field namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

.field needXMLdecl:Z

.field prev:I

.field public printIndent:I

.field printXMLdecl:Z

.field savedHighSurrogate:C

.field public strict:Z

.field style:Ljava/lang/Object;

.field undeclareNamespaces:Z

.field public useEmptyElementTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "doctype-system"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xml/XMLPrinter;->doctypeSystem:Lgnu/mapping/ThreadLocation;

    .line 58
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "doctype-public"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xml/XMLPrinter;->doctypePublic:Lgnu/mapping/ThreadLocation;

    .line 60
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "xml-indent"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xml/XMLPrinter;->indentLoc:Lgnu/mapping/ThreadLocation;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/OutPort;Z)V
    .locals 4
    .parameter "out"
    .parameter "autoFlush"

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Lgnu/mapping/OutPort;-><init>(Lgnu/mapping/OutPort;Z)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 66
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 69
    new-array v0, v3, [Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 71
    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 82
    const/16 v0, 0x20

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "out"

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, v1, v1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 66
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 69
    new-array v0, v3, [Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 71
    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 82
    const/16 v0, 0x20

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lgnu/text/Path;)V
    .locals 4
    .parameter "out"
    .parameter "path"

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, v2, v1, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZLgnu/text/Path;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 66
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 69
    new-array v0, v3, [Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 71
    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 82
    const/16 v0, 0x20

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 4
    .parameter "out"
    .parameter "autoFlush"

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, v2, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 66
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 69
    new-array v0, v3, [Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 71
    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 82
    const/16 v0, 0x20

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 4
    .parameter "out"

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 66
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 69
    new-array v0, v3, [Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 71
    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 82
    const/16 v0, 0x20

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 4
    .parameter "out"
    .parameter "autoFlush"

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Z)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 66
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 69
    new-array v0, v3, [Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 71
    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 82
    const/16 v0, 0x20

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 94
    return-void
.end method

.method static formatDecimal(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    const/16 v5, 0x2e

    .line 654
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 655
    .local v1, dot:I
    if-ltz v1, :cond_3

    .line 657
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 658
    .local v2, len:I
    move v3, v2

    .line 660
    .local v3, pos:I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 661
    .local v0, ch:C
    const/16 v4, 0x30

    if-eq v0, v4, :cond_0

    .line 663
    if-eq v0, v5, :cond_1

    .line 664
    add-int/lit8 v3, v3, 0x1

    .line 665
    :cond_1
    if-ne v3, v2, :cond_2

    move-object v4, p0

    .line 669
    .end local v0           #ch:C
    .end local v2           #len:I
    .end local v3           #pos:I
    :goto_0
    return-object v4

    .line 665
    .restart local v0       #ch:C
    .restart local v2       #len:I
    .restart local v3       #pos:I
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v0           #ch:C
    .end local v2           #len:I
    .end local v3           #pos:I
    :cond_3
    move-object v4, p0

    .line 669
    goto :goto_0
.end method

.method public static formatDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 1
    .parameter "dec"

    .prologue
    .line 646
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDouble(D)Ljava/lang/String;
    .locals 8
    .parameter "d"

    .prologue
    const-wide/16 v6, 0x0

    .line 605
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 606
    const-string v4, "NaN"

    .line 617
    :goto_0
    return-object v4

    .line 607
    :cond_0
    cmpg-double v4, p0, v6

    if-gez v4, :cond_1

    const/4 v4, 0x1

    move v3, v4

    .line 608
    .local v3, neg:Z
    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 609
    if-eqz v3, :cond_2

    const-string v4, "-INF"

    goto :goto_0

    .line 607
    .end local v3           #neg:Z
    :cond_1
    const/4 v4, 0x0

    move v3, v4

    goto :goto_1

    .line 609
    .restart local v3       #neg:Z
    :cond_2
    const-string v4, "INF"

    goto :goto_0

    .line 610
    :cond_3
    if-eqz v3, :cond_5

    neg-double v4, p0

    move-wide v0, v4

    .line 611
    .local v0, dabs:D
    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, dstr:Ljava/lang/String;
    const-wide v4, 0x412e848000000000L

    cmpl-double v4, v0, v4

    if-gez v4, :cond_4

    const-wide v4, 0x3eb0c6f7a0b5ed8dL

    cmpg-double v4, v0, v4

    if-gez v4, :cond_6

    :cond_4
    cmpl-double v4, v0, v6

    if-eqz v4, :cond_6

    .line 615
    invoke-static {v2}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v0           #dabs:D
    .end local v2           #dstr:Ljava/lang/String;
    :cond_5
    move-wide v0, p0

    .line 610
    goto :goto_2

    .line 617
    .restart local v0       #dabs:D
    .restart local v2       #dstr:Ljava/lang/String;
    :cond_6
    invoke-static {v2}, Lgnu/math/RealNum;->toStringDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static formatFloat(F)Ljava/lang/String;
    .locals 7
    .parameter "f"

    .prologue
    .line 623
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 624
    const-string v3, "NaN"

    .line 635
    :goto_0
    return-object v3

    .line 625
    :cond_0
    const/4 v3, 0x0

    cmpg-float v3, p0, v3

    if-gez v3, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .line 626
    .local v2, neg:Z
    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 627
    if-eqz v2, :cond_2

    const-string v3, "-INF"

    goto :goto_0

    .line 625
    .end local v2           #neg:Z
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_1

    .line 627
    .restart local v2       #neg:Z
    :cond_2
    const-string v3, "INF"

    goto :goto_0

    .line 628
    :cond_3
    if-eqz v2, :cond_5

    neg-float v3, p0

    move v0, v3

    .line 629
    .local v0, fabs:F
    :goto_2
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, fstr:Ljava/lang/String;
    const v3, 0x49742400

    cmpl-float v3, v0, v3

    if-gez v3, :cond_4

    float-to-double v3, v0

    const-wide v5, 0x3eb0c6f7a0b5ed8dL

    cmpg-double v3, v3, v5

    if-gez v3, :cond_6

    :cond_4
    float-to-double v3, v0

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_6

    .line 633
    invoke-static {v1}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v0           #fabs:F
    .end local v1           #fstr:Ljava/lang/String;
    :cond_5
    move v0, p0

    .line 628
    goto :goto_2

    .line 635
    .restart local v0       #fabs:F
    .restart local v1       #fstr:Ljava/lang/String;
    :cond_6
    invoke-static {v1}, Lgnu/math/RealNum;->toStringDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static isHtmlEmptyElementTag(Ljava/lang/String;)Z
    .locals 5
    .parameter "name"

    .prologue
    const/16 v4, 0x2f

    const/4 v3, 0x1

    const-string v2, "/area/base/basefont/br/col/frame/hr/img/input/isindex/link/meta/para/"

    .line 509
    const-string v1, "/area/base/basefont/br/col/frame/hr/img/input/isindex/link/meta/para/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 510
    .local v0, index:I
    if-lez v0, :cond_0

    const-string v1, "/area/base/basefont/br/col/frame/hr/img/input/isindex/link/meta/para/"

    sub-int v1, v0, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_0

    const-string v1, "/area/base/basefont/br/col/frame/hr/img/input/isindex/link/meta/para/"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static make(Lgnu/mapping/OutPort;Ljava/lang/Object;)Lgnu/xml/XMLPrinter;
    .locals 2
    .parameter "out"
    .parameter "style"

    .prologue
    .line 118
    new-instance v0, Lgnu/xml/XMLPrinter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lgnu/xml/XMLPrinter;-><init>(Lgnu/mapping/OutPort;Z)V

    .line 119
    .local v0, xout:Lgnu/xml/XMLPrinter;
    invoke-virtual {v0, p1}, Lgnu/xml/XMLPrinter;->setStyle(Ljava/lang/Object;)V

    .line 120
    return-object v0
.end method

.method private startWord()V
    .locals 0

    .prologue
    .line 235
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 236
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->writeWordStart()V

    .line 237
    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 127
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 128
    .local v0, stringWriter:Ljava/io/StringWriter;
    new-instance v1, Lgnu/xml/XMLPrinter;

    invoke-direct {v1, v0}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, p0}, Lgnu/xml/XMLPrinter;->writeObject(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public beginComment()V
    .locals 2

    .prologue
    .line 804
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 805
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_1

    .line 807
    iget v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v1, -0x5

    if-ne v0, v1, :cond_1

    .line 808
    :cond_0
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-lez v0, :cond_2

    const/16 v0, 0x52

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->writeBreak(I)V

    .line 811
    :cond_1
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 812
    const/4 v0, 0x1

    iput v0, p0, Lgnu/xml/XMLPrinter;->inComment:I

    .line 813
    return-void

    .line 808
    :cond_2
    const/16 v0, 0x4e

    goto :goto_0
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 0
    .parameter "base"

    .prologue
    .line 316
    return-void
.end method

.method public closeTag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v2, ""

    .line 258
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-nez v0, :cond_2

    .line 260
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->indentAttributes:Z

    if-eqz v0, :cond_0

    .line 261
    const-string v0, ""

    invoke-virtual {p0, v2}, Lgnu/xml/XMLPrinter;->endLogicalBlock(Ljava/lang/String;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 263
    iput-boolean v3, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 264
    const/4 v0, -0x3

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 276
    :cond_1
    :goto_0
    return-void

    .line 266
    :cond_2
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "<?xml version=\"1.0\"?>\n"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 270
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_3

    .line 272
    const-string v0, ""

    const-string v0, ""

    const/4 v0, 0x2

    invoke-virtual {p0, v2, v2, v0}, Lgnu/xml/XMLPrinter;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    :cond_3
    iput-boolean v3, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    goto :goto_0
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 2
    .parameter "position"

    .prologue
    .line 881
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v0, v1, p0}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    .line 882
    return-void
.end method

.method public endAttribute()V
    .locals 2

    .prologue
    .line 579
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v0, :cond_1

    .line 581
    iget v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v1, -0x6

    if-eq v0, v1, :cond_0

    .line 583
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 586
    :cond_0
    const/16 v0, 0x20

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 588
    :cond_1
    return-void
.end method

.method public endComment()V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 818
    const/4 v0, -0x5

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 819
    const/4 v0, 0x0

    iput v0, p0, Lgnu/xml/XMLPrinter;->inComment:I

    .line 820
    return-void
.end method

.method public endDocument()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inDocument:Z

    .line 309
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_0

    .line 310
    const-string v0, ""

    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->endLogicalBlock(Ljava/lang/String;)V

    .line 311
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->freshLine()V

    .line 312
    return-void
.end method

.method public endElement()V
    .locals 11

    .prologue
    const/4 v10, -0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, ">"

    .line 516
    iget v3, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    if-nez v3, :cond_0

    .line 517
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 518
    :cond_0
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    iget v4, p0, Lgnu/xml/XMLPrinter;->elementNesting:I

    sub-int/2addr v4, v7

    aget-object v1, v3, v4

    .line 519
    .local v1, type:Ljava/lang/Object;
    iget-boolean v3, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    if-nez v3, :cond_5

    move-object v2, v8

    .line 522
    .local v2, typeName:Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    if-eqz v3, :cond_a

    .line 524
    iget v3, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v3, :cond_1

    iget-boolean v3, p0, Lgnu/xml/XMLPrinter;->indentAttributes:Z

    if-eqz v3, :cond_1

    .line 526
    const-string v3, ""

    invoke-virtual {p0, v3}, Lgnu/xml/XMLPrinter;->endLogicalBlock(Ljava/lang/String;)V

    .line 528
    :cond_1
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    iget-boolean v4, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    if-eqz v4, :cond_8

    invoke-static {v2}, Lgnu/xml/XMLPrinter;->isHtmlEmptyElementTag(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, ">"

    move-object v4, v9

    :goto_1
    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 531
    iput-boolean v6, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 546
    :goto_2
    iget v3, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v3, :cond_2

    .line 548
    const-string v3, ""

    invoke-virtual {p0, v3}, Lgnu/xml/XMLPrinter;->endLogicalBlock(Ljava/lang/String;)V

    .line 550
    :cond_2
    iput v10, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 551
    iget-boolean v3, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    if-nez v3, :cond_4

    const-string v3, "script"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "style"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 553
    :cond_3
    iput-boolean v7, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 555
    :cond_4
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    iget v4, p0, Lgnu/xml/XMLPrinter;->elementNesting:I

    sub-int/2addr v4, v7

    iput v4, p0, Lgnu/xml/XMLPrinter;->elementNesting:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 556
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    iget v4, p0, Lgnu/xml/XMLPrinter;->elementNesting:I

    aput-object v8, v3, v4

    .line 557
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    iget v4, p0, Lgnu/xml/XMLPrinter;->elementNesting:I

    aput-object v8, v3, v4

    .line 558
    return-void

    .line 519
    .end local v2           #typeName:Ljava/lang/String;
    :cond_5
    instance-of v3, v1, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_6

    move-object v0, v1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 528
    .restart local v2       #typeName:Ljava/lang/String;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "></"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_8
    iget v4, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    const-string v4, " />"

    goto :goto_1

    :cond_9
    const-string v4, "/>"

    goto :goto_1

    .line 535
    :cond_a
    iget v3, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v3, :cond_b

    .line 537
    invoke-virtual {p0, v6, v6}, Lgnu/xml/XMLPrinter;->setIndentation(IZ)V

    .line 538
    iget v3, p0, Lgnu/xml/XMLPrinter;->prev:I

    if-ne v3, v10, :cond_b

    .line 539
    iget v3, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-lez v3, :cond_c

    const/16 v3, 0x52

    :goto_3
    invoke-virtual {p0, v3}, Lgnu/xml/XMLPrinter;->writeBreak(I)V

    .line 542
    :cond_b
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v4, "</"

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0, v1}, Lgnu/xml/XMLPrinter;->writeQName(Ljava/lang/Object;)V

    .line 544
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v4, ">"

    invoke-virtual {v3, v9}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 539
    :cond_c
    const/16 v3, 0x4e

    goto :goto_3
.end method

.method public endEntity()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method protected endNumber()V
    .locals 0

    .prologue
    .line 253
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->writeWordEnd()V

    .line 254
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "msg"
    .parameter "code"

    .prologue
    .line 886
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serialization error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ignoring()Z
    .locals 1

    .prologue
    .line 732
    const/4 v0, 0x0

    return v0
.end method

.method mustHexEscape(I)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 154
    const/16 v0, 0x7f

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9f

    if-le p1, v0, :cond_1

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x2028

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ge p1, v0, :cond_2

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-nez v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print(Ljava/lang/Object;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 674
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_1

    .line 675
    check-cast p1, Ljava/math/BigDecimal;

    .end local p1
    invoke-static {p1}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    .line 680
    :cond_0
    :goto_0
    if-nez p1, :cond_4

    const-string v0, "(null)"

    :goto_1
    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->write(Ljava/lang/String;)V

    .line 681
    return-void

    .line 676
    .restart local p1
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_2

    instance-of v0, p1, Lgnu/math/DFloNum;

    if-eqz v0, :cond_3

    .line 677
    :cond_2
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/xml/XMLPrinter;->formatDouble(D)Ljava/lang/String;

    move-result-object p1

    .local p1, v:Ljava/lang/String;
    goto :goto_0

    .line 678
    .local p1, v:Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 679
    check-cast p1, Ljava/lang/Float;

    .end local p1           #v:Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lgnu/xml/XMLPrinter;->formatFloat(F)Ljava/lang/String;

    move-result-object p1

    .local p1, v:Ljava/lang/String;
    goto :goto_0

    .line 680
    .end local p1           #v:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method setIndentMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 280
    sget-object v2, Lgnu/xml/XMLPrinter;->indentLoc:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v2, v4}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 281
    .local v1, xmlIndent:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v0, v4

    .line 282
    .local v0, indent:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 283
    iput v3, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 290
    :goto_1
    return-void

    .line 281
    .end local v0           #indent:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 284
    .restart local v0       #indent:Ljava/lang/String;
    :cond_1
    const-string v2, "pretty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    const/4 v2, 0x0

    iput v2, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    goto :goto_1

    .line 286
    :cond_2
    const-string v2, "always"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 287
    :cond_3
    const/4 v2, 0x1

    iput v2, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    goto :goto_1

    .line 289
    :cond_4
    iput v3, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    goto :goto_1
.end method

.method public setPrintXMLdecl(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 30
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    return-void
.end method

.method public setStyle(Ljava/lang/Object;)V
    .locals 4
    .parameter "style"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    iput-object p1, p0, Lgnu/xml/XMLPrinter;->style:Ljava/lang/Object;

    .line 135
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_0
    iput v0, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 136
    const-string v0, "html"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 139
    iput v3, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 141
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    sget-object v1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    if-ne v0, v1, :cond_0

    .line 142
    sget-object v0, Lgnu/kawa/xml/XmlNamespace;->HTML_BINDINGS:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 146
    :cond_0
    :goto_1
    const-string v0, "xhtml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iput v3, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 148
    :cond_1
    const-string v0, "plain"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 150
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 135
    goto :goto_0

    .line 144
    :cond_4
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    sget-object v1, Lgnu/kawa/xml/XmlNamespace;->HTML_BINDINGS:Lgnu/xml/NamespaceBinding;

    if-ne v0, v1, :cond_0

    .line 145
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_1
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 3
    .parameter "attrType"

    .prologue
    const/16 v2, 0x20

    .line 564
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->strict:Z

    if-eqz v0, :cond_0

    .line 565
    const-string v0, "attribute not in element"

    const-string v1, "SENR0001"

    invoke-virtual {p0, v0, v1}, Lgnu/xml/XMLPrinter;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_0
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 568
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 569
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, v2}, Lgnu/text/PrettyWriter;->write(I)V

    .line 570
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_2

    .line 571
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->writeBreakFill()V

    .line 572
    :cond_2
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 574
    iput v2, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 575
    return-void
.end method

.method public startDocument()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const-string v2, ""

    .line 294
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    if-eqz v0, :cond_0

    .line 298
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 300
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->setIndentMode()V

    .line 301
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inDocument:Z

    .line 302
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    if-nez v0, :cond_1

    .line 303
    const-string v0, ""

    const-string v0, ""

    const/4 v0, 0x2

    invoke-virtual {p0, v2, v2, v0}, Lgnu/xml/XMLPrinter;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 304
    :cond_1
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 29
    .parameter "type"

    .prologue
    .line 341
    invoke-virtual/range {p0 .. p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 344
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/xml/XMLPrinter;->inDocument:Z

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 345
    invoke-virtual/range {p0 .. p0}, Lgnu/xml/XMLPrinter;->setIndentMode()V

    .line 346
    :cond_0
    sget-object v25, Lgnu/xml/XMLPrinter;->doctypeSystem:Lgnu/mapping/ThreadLocation;

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 347
    .local v22, systemIdentifier:Ljava/lang/Object;
    if-eqz v22, :cond_1

    .line 349
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 350
    .local v21, systemId:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_1

    .line 352
    sget-object v25, Lgnu/xml/XMLPrinter;->doctypePublic:Lgnu/mapping/ThreadLocation;

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 353
    .local v17, publicIdentifier:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    const-string v26, "<!DOCTYPE "

    invoke-virtual/range {v25 .. v26}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 355
    if-nez v17, :cond_7

    const/16 v25, 0x0

    move-object/from16 v16, v25

    .line 357
    .local v16, publicId:Ljava/lang/String;
    :goto_0
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_8

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    const-string v26, " PUBLIC \""

    invoke-virtual/range {v25 .. v26}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    const-string v26, "\" \""

    invoke-virtual/range {v25 .. v26}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 367
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    const-string v26, "\">"

    invoke-virtual/range {v25 .. v26}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lgnu/xml/XMLPrinter;->println()V

    .line 373
    .end local v16           #publicId:Ljava/lang/String;
    .end local v17           #publicIdentifier:Ljava/lang/Object;
    .end local v21           #systemId:Ljava/lang/String;
    .end local v22           #systemIdentifier:Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLPrinter;->printIndent:I

    move/from16 v25, v0

    if-ltz v25, :cond_4

    .line 375
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLPrinter;->prev:I

    move/from16 v25, v0

    const/16 v26, -0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLPrinter;->prev:I

    move/from16 v25, v0

    const/16 v26, -0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLPrinter;->prev:I

    move/from16 v25, v0

    const/16 v26, -0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 376
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLPrinter;->printIndent:I

    move/from16 v25, v0

    if-lez v25, :cond_9

    const/16 v25, 0x52

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lgnu/xml/XMLPrinter;->writeBreak(I)V

    .line 378
    :cond_3
    const-string v25, ""

    const-string v26, ""

    const/16 v27, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLPrinter;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 380
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    const/16 v26, 0x3c

    invoke-virtual/range {v25 .. v26}, Lgnu/text/PrettyWriter;->write(I)V

    .line 381
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/XMLPrinter;->writeQName(Ljava/lang/Object;)V

    .line 382
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLPrinter;->printIndent:I

    move/from16 v25, v0

    if-ltz v25, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/xml/XMLPrinter;->indentAttributes:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    .line 383
    const-string v25, ""

    const-string v26, ""

    const/16 v27, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lgnu/xml/XMLPrinter;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 384
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    move/from16 v26, v0

    aput-object p1, v25, v26

    .line 385
    const/4 v5, 0x0

    .line 386
    .local v5, elementBindings:Lgnu/xml/NamespaceBinding;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    move/from16 v26, v0

    add-int/lit8 v27, v26, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/xml/XMLPrinter;->elementNesting:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object/from16 v27, v0

    aput-object v27, v25, v26

    .line 387
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/xml/XName;

    move/from16 v25, v0

    if-eqz v25, :cond_19

    .line 389
    move-object/from16 v0, p1

    check-cast v0, Lgnu/xml/XName;

    move-object v5, v0

    .end local v5           #elementBindings:Lgnu/xml/NamespaceBinding;
    iget-object v5, v5, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    .line 390
    .restart local v5       #elementBindings:Lgnu/xml/NamespaceBinding;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object/from16 v25, v0

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lgnu/xml/NamespaceBinding;->commonAncestor(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v8

    .line 392
    .local v8, join:Lgnu/xml/NamespaceBinding;
    if-nez v5, :cond_a

    const/16 v25, 0x0

    move/from16 v13, v25

    .line 394
    .local v13, numBindings:I
    :goto_3
    move v0, v13

    new-array v0, v0, [Lgnu/xml/NamespaceBinding;

    move-object/from16 v20, v0

    .line 395
    .local v20, sortedBindings:[Lgnu/xml/NamespaceBinding;
    const/4 v6, 0x0

    .line 396
    .local v6, i:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    move/from16 v19, v0

    .line 398
    .local v19, sortNamespaces:Z
    move-object v10, v5

    .local v10, ns:Lgnu/xml/NamespaceBinding;
    :goto_4
    if-eq v10, v8, :cond_10

    .line 400
    move v7, v6

    .line 401
    .local v7, j:I
    const/16 v18, 0x0

    .line 402
    .local v18, skip:Z
    invoke-virtual {v10}, Lgnu/xml/NamespaceBinding;->getUri()Ljava/lang/String;

    move-result-object v24

    .line 403
    .local v24, uri:Ljava/lang/String;
    invoke-virtual {v10}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v14

    .line 404
    .local v14, prefix:Ljava/lang/String;
    :cond_6
    :goto_5
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_c

    .line 406
    aget-object v11, v20, v7

    .line 408
    .local v11, ns_j:Lgnu/xml/NamespaceBinding;
    invoke-virtual {v11}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v15

    .line 409
    .local v15, prefix_j:Ljava/lang/String;
    if-ne v14, v15, :cond_b

    .line 398
    .end local v11           #ns_j:Lgnu/xml/NamespaceBinding;
    .end local v15           #prefix_j:Ljava/lang/String;
    :goto_6
    iget-object v10, v10, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_4

    .line 355
    .end local v5           #elementBindings:Lgnu/xml/NamespaceBinding;
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v8           #join:Lgnu/xml/NamespaceBinding;
    .end local v10           #ns:Lgnu/xml/NamespaceBinding;
    .end local v13           #numBindings:I
    .end local v14           #prefix:Ljava/lang/String;
    .end local v18           #skip:Z
    .end local v19           #sortNamespaces:Z
    .end local v20           #sortedBindings:[Lgnu/xml/NamespaceBinding;
    .end local v24           #uri:Ljava/lang/String;
    .restart local v17       #publicIdentifier:Ljava/lang/Object;
    .restart local v21       #systemId:Ljava/lang/String;
    .restart local v22       #systemIdentifier:Ljava/lang/Object;
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v16, v25

    goto/16 :goto_0

    .line 365
    .restart local v16       #publicId:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    const-string v26, " SYSTEM \""

    invoke-virtual/range {v25 .. v26}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 376
    .end local v16           #publicId:Ljava/lang/String;
    .end local v17           #publicIdentifier:Ljava/lang/Object;
    .end local v21           #systemId:Ljava/lang/String;
    .end local v22           #systemIdentifier:Ljava/lang/Object;
    :cond_9
    const/16 v25, 0x4e

    goto/16 :goto_2

    .line 392
    .restart local v5       #elementBindings:Lgnu/xml/NamespaceBinding;
    .restart local v8       #join:Lgnu/xml/NamespaceBinding;
    :cond_a
    invoke-virtual {v5, v8}, Lgnu/xml/NamespaceBinding;->count(Lgnu/xml/NamespaceBinding;)I

    move-result v25

    move/from16 v13, v25

    goto :goto_3

    .line 415
    .restart local v6       #i:I
    .restart local v7       #j:I
    .restart local v10       #ns:Lgnu/xml/NamespaceBinding;
    .restart local v11       #ns_j:Lgnu/xml/NamespaceBinding;
    .restart local v13       #numBindings:I
    .restart local v14       #prefix:Ljava/lang/String;
    .restart local v15       #prefix_j:Ljava/lang/String;
    .restart local v18       #skip:Z
    .restart local v19       #sortNamespaces:Z
    .restart local v20       #sortedBindings:[Lgnu/xml/NamespaceBinding;
    .restart local v24       #uri:Ljava/lang/String;
    :cond_b
    if-eqz v19, :cond_6

    .line 417
    if-nez v14, :cond_d

    .line 423
    .end local v11           #ns_j:Lgnu/xml/NamespaceBinding;
    .end local v15           #prefix_j:Ljava/lang/String;
    :cond_c
    if-eqz v19, :cond_f

    .line 424
    add-int/lit8 v7, v7, 0x1

    .line 427
    :goto_7
    aput-object v10, v20, v7

    .line 428
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 419
    .restart local v11       #ns_j:Lgnu/xml/NamespaceBinding;
    .restart local v15       #prefix_j:Ljava/lang/String;
    :cond_d
    if-eqz v15, :cond_e

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v25

    if-lez v25, :cond_c

    .line 421
    :cond_e
    add-int/lit8 v25, v7, 0x1

    aput-object v11, v20, v25

    goto :goto_5

    .line 426
    .end local v11           #ns_j:Lgnu/xml/NamespaceBinding;
    .end local v15           #prefix_j:Ljava/lang/String;
    :cond_f
    move v7, v6

    goto :goto_7

    .line 430
    .end local v7           #j:I
    .end local v14           #prefix:Ljava/lang/String;
    .end local v18           #skip:Z
    .end local v24           #uri:Ljava/lang/String;
    :cond_10
    move v13, v6

    .line 433
    move v6, v13

    :cond_11
    :goto_8
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_15

    .line 435
    aget-object v10, v20, v6

    .line 436
    iget-object v14, v10, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 437
    .restart local v14       #prefix:Ljava/lang/String;
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 438
    .restart local v24       #uri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v14

    invoke-virtual {v0, v1}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_11

    .line 441
    if-nez v24, :cond_12

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    move/from16 v25, v0

    if-eqz v25, :cond_11

    .line 443
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    const/16 v26, 0x20

    invoke-virtual/range {v25 .. v26}, Lgnu/text/PrettyWriter;->write(I)V

    .line 444
    if-nez v14, :cond_14

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    const-string v26, "xmlns"

    invoke-virtual/range {v25 .. v26}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 451
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    const-string v26, "=\""

    invoke-virtual/range {v25 .. v26}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 452
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 453
    if-eqz v24, :cond_13

    .line 454
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/xml/XMLPrinter;->write(Ljava/lang/String;)V

    .line 455
    :cond_13
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    const/16 v26, 0x22

    invoke-virtual/range {v25 .. v26}, Lgnu/text/PrettyWriter;->write(I)V

    goto :goto_8

    .line 448
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    const-string v26, "xmlns:"

    invoke-virtual/range {v25 .. v26}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v14

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_9

    .line 458
    .end local v14           #prefix:Ljava/lang/String;
    .end local v24           #uri:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    move/from16 v25, v0

    if-eqz v25, :cond_18

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object v10, v0

    .line 464
    :goto_a
    if-eq v10, v8, :cond_18

    .line 466
    iget-object v14, v10, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 467
    .restart local v14       #prefix:Ljava/lang/String;
    move-object v0, v10

    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_16

    invoke-virtual {v5, v14}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_16

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    const/16 v26, 0x20

    invoke-virtual/range {v25 .. v26}, Lgnu/text/PrettyWriter;->write(I)V

    .line 470
    if-nez v14, :cond_17

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    const-string v26, "xmlns"

    invoke-virtual/range {v25 .. v26}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 477
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    const-string v26, "=\"\""

    invoke-virtual/range {v25 .. v26}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 464
    :cond_16
    iget-object v10, v10, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_a

    .line 474
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    const-string v26, "xmlns:"

    invoke-virtual/range {v25 .. v26}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v14

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_b

    .line 481
    .end local v14           #prefix:Ljava/lang/String;
    :cond_18
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 483
    .end local v6           #i:I
    .end local v8           #join:Lgnu/xml/NamespaceBinding;
    .end local v10           #ns:Lgnu/xml/NamespaceBinding;
    .end local v13           #numBindings:I
    .end local v19           #sortNamespaces:Z
    .end local v20           #sortedBindings:[Lgnu/xml/NamespaceBinding;
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_1a

    .line 485
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Lgnu/xml/NamespaceBinding;

    move-object v12, v0

    .line 486
    .local v12, nstmp:[Lgnu/xml/NamespaceBinding;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object v2, v12

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 488
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    move/from16 v25, v0

    mul-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object v9, v0

    .line 489
    .local v9, nmtmp:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object v2, v9

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 493
    .end local v9           #nmtmp:[Ljava/lang/Object;
    .end local v12           #nstmp:[Lgnu/xml/NamespaceBinding;
    :cond_1a
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 494
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/xml/XMLPrinter;->isHtml:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1c

    .line 496
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v25, v0

    if-eqz v25, :cond_1d

    check-cast p1, Lgnu/mapping/Symbol;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v23, v25

    .line 499
    .local v23, typeName:Ljava/lang/String;
    :goto_c
    const-string v25, "script"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1b

    const-string v25, "style"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1c

    .line 500
    :cond_1b
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 502
    .end local v23           #typeName:Ljava/lang/String;
    :cond_1c
    return-void

    .line 496
    .restart local p1
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v23, v25

    goto :goto_c
.end method

.method protected startNumber()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 249
    return-void
.end method

.method public write(I)V
    .locals 7
    .parameter "v"

    .prologue
    const v6, 0xdc00

    const v5, 0xd800

    const/16 v4, 0xd

    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 163
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 164
    iget v1, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v1, :cond_4

    .line 166
    if-eq p1, v4, :cond_0

    if-ne p1, v3, :cond_4

    .line 168
    :cond_0
    if-ne p1, v3, :cond_1

    iget v1, p0, Lgnu/xml/XMLPrinter;->prev:I

    if-eq v1, v4, :cond_2

    .line 169
    :cond_1
    const/16 v1, 0x52

    invoke-virtual {p0, v1}, Lgnu/xml/XMLPrinter;->writeBreak(I)V

    .line 170
    :cond_2
    iget v1, p0, Lgnu/xml/XMLPrinter;->inComment:I

    if-lez v1, :cond_3

    .line 171
    iput v2, p0, Lgnu/xml/XMLPrinter;->inComment:I

    .line 231
    :cond_3
    :goto_0
    return-void

    .line 175
    :cond_4
    iget-boolean v1, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    if-nez v1, :cond_5

    .line 177
    iget-object v1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v1, p1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 178
    iput p1, p0, Lgnu/xml/XMLPrinter;->prev:I

    goto :goto_0

    .line 180
    :cond_5
    iget v1, p0, Lgnu/xml/XMLPrinter;->inComment:I

    if-lez v1, :cond_8

    .line 182
    const/16 v1, 0x2d

    if-ne p1, v1, :cond_7

    .line 184
    iget v1, p0, Lgnu/xml/XMLPrinter;->inComment:I

    if-ne v1, v2, :cond_6

    .line 185
    const/4 v1, 0x2

    iput v1, p0, Lgnu/xml/XMLPrinter;->inComment:I

    .line 191
    :goto_1
    invoke-super {p0, p1}, Lgnu/mapping/OutPort;->write(I)V

    goto :goto_0

    .line 187
    :cond_6
    iget-object v1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->write(I)V

    goto :goto_1

    .line 190
    :cond_7
    iput v2, p0, Lgnu/xml/XMLPrinter;->inComment:I

    goto :goto_1

    .line 195
    :cond_8
    const/16 v1, 0x3b

    iput v1, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 196
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_a

    iget-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-nez v1, :cond_a

    .line 197
    :cond_9
    iget-object v1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v2, "&lt;"

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_a
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_b

    .line 199
    iget-object v1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v2, "&gt;"

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_b
    const/16 v1, 0x26

    if-ne p1, v1, :cond_c

    .line 201
    iget-object v1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v2, "&amp;"

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_c
    const/16 v1, 0x22

    if-ne p1, v1, :cond_d

    iget-boolean v1, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v1, :cond_d

    .line 203
    iget-object v1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v2, "&quot;"

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_d
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->mustHexEscape(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 206
    move v0, p1

    .line 207
    .local v0, i:I
    if-lt p1, v5, :cond_f

    .line 209
    if-ge p1, v6, :cond_e

    .line 211
    int-to-char v1, p1

    iput-char v1, p0, Lgnu/xml/XMLPrinter;->savedHighSurrogate:C

    goto :goto_0

    .line 214
    :cond_e
    const v1, 0xe000

    if-ge p1, v1, :cond_f

    .line 218
    iget-char v1, p0, Lgnu/xml/XMLPrinter;->savedHighSurrogate:C

    sub-int/2addr v1, v5

    mul-int/lit16 v1, v1, 0x400

    sub-int v2, v0, v6

    add-int/2addr v1, v2

    const/high16 v2, 0x1

    add-int v0, v1, v2

    .line 220
    const/4 v1, 0x0

    iput-char v1, p0, Lgnu/xml/XMLPrinter;->savedHighSurrogate:C

    .line 223
    :cond_f
    iget-object v1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&#x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    .end local v0           #i:I
    :cond_10
    iget-object v1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v1, p1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 228
    iput p1, p0, Lgnu/xml/XMLPrinter;->prev:I

    goto/16 :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 7
    .parameter "str"
    .parameter "start"
    .parameter "length"

    .prologue
    const/16 v6, 0x2d

    .line 737
    if-lez p3, :cond_6

    .line 739
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 740
    add-int v2, p2, p3

    .line 741
    .local v2, limit:I
    const/4 v1, 0x0

    .local v1, count:I
    move v3, p2

    .line 742
    .end local p2
    .local v3, start:I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 744
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 745
    .local v0, c:C
    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->mustHexEscape(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lgnu/xml/XMLPrinter;->inComment:I

    if-lez v4, :cond_2

    if-eq v0, v6, :cond_0

    iget v4, p0, Lgnu/xml/XMLPrinter;->inComment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 750
    :cond_0
    if-lez v1, :cond_1

    .line 751
    iget-object v4, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/4 v5, 0x1

    sub-int v5, p2, v5

    sub-int/2addr v5, v1

    invoke-virtual {v4, p1, v5, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;II)V

    .line 752
    :cond_1
    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->write(I)V

    .line 753
    const/4 v1, 0x0

    :goto_1
    move v3, p2

    .line 757
    .end local p2
    .restart local v3       #start:I
    goto :goto_0

    .line 745
    .end local v3           #start:I
    .restart local p2
    :cond_2
    const/16 v4, 0x3c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_0

    const/16 v4, 0x26

    if-eq v0, v4, :cond_0

    iget-boolean v4, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v4, :cond_3

    const/16 v4, 0x22

    if-eq v0, v4, :cond_0

    const/16 v4, 0x20

    if-lt v0, v4, :cond_0

    .line 756
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 758
    .end local v0           #c:C
    .end local p2
    .restart local v3       #start:I
    :cond_4
    if-lez v1, :cond_5

    .line 759
    iget-object v4, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    sub-int v5, v2, v1

    invoke-virtual {v4, p1, v5, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;II)V

    :cond_5
    move p2, v3

    .line 761
    .end local v1           #count:I
    .end local v2           #limit:I
    .end local v3           #start:I
    .restart local p2
    :cond_6
    iput v6, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 762
    return-void
.end method

.method public write([CII)V
    .locals 7
    .parameter "buf"
    .parameter "off"
    .parameter "len"

    .prologue
    const/16 v6, 0x2d

    .line 766
    if-lez p3, :cond_6

    .line 768
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 769
    add-int v2, p2, p3

    .line 770
    .local v2, limit:I
    const/4 v1, 0x0

    .local v1, count:I
    move v3, p2

    .line 771
    .end local p2
    .local v3, off:I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 773
    add-int/lit8 p2, v3, 0x1

    .end local v3           #off:I
    .restart local p2
    aget-char v0, p1, v3

    .line 774
    .local v0, c:C
    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->mustHexEscape(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lgnu/xml/XMLPrinter;->inComment:I

    if-lez v4, :cond_2

    if-eq v0, v6, :cond_0

    iget v4, p0, Lgnu/xml/XMLPrinter;->inComment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 779
    :cond_0
    if-lez v1, :cond_1

    .line 780
    iget-object v4, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/4 v5, 0x1

    sub-int v5, p2, v5

    sub-int/2addr v5, v1

    invoke-virtual {v4, p1, v5, v1}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 781
    :cond_1
    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->write(I)V

    .line 782
    const/4 v1, 0x0

    :goto_1
    move v3, p2

    .line 786
    .end local p2
    .restart local v3       #off:I
    goto :goto_0

    .line 774
    .end local v3           #off:I
    .restart local p2
    :cond_2
    const/16 v4, 0x3c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_0

    const/16 v4, 0x26

    if-eq v0, v4, :cond_0

    iget-boolean v4, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v4, :cond_3

    const/16 v4, 0x22

    if-eq v0, v4, :cond_0

    const/16 v4, 0x20

    if-lt v0, v4, :cond_0

    .line 785
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 787
    .end local v0           #c:C
    .end local p2
    .restart local v3       #off:I
    :cond_4
    if-lez v1, :cond_5

    .line 788
    iget-object v4, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    sub-int v5, v2, v1

    invoke-virtual {v4, p1, v5, v1}, Lgnu/text/PrettyWriter;->write([CII)V

    :cond_5
    move p2, v3

    .line 790
    .end local v1           #count:I
    .end local v2           #limit:I
    .end local v3           #off:I
    .restart local p2
    :cond_6
    iput v6, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 791
    return-void
.end method

.method public writeBaseUri(Ljava/lang/Object;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 800
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 0
    .parameter "v"

    .prologue
    .line 241
    invoke-direct {p0}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 242
    invoke-super {p0, p1}, Lgnu/mapping/OutPort;->print(Z)V

    .line 243
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->writeWordEnd()V

    .line 244
    return-void
.end method

.method public writeCDATA([CII)V
    .locals 6
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x5d

    const/16 v4, 0x3e

    .line 838
    iget-boolean v2, p0, Lgnu/xml/XMLPrinter;->canonicalizeCDATA:Z

    if-eqz v2, :cond_0

    .line 840
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLPrinter;->write([CII)V

    .line 863
    :goto_0
    return-void

    .line 843
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 844
    iget-object v2, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v3, "<![CDATA["

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 845
    add-int v1, p2, p3

    .line 848
    .local v1, limit:I
    move v0, p2

    .local v0, i:I
    :goto_1
    const/4 v2, 0x2

    sub-int v2, v1, v2

    if-ge v0, v2, :cond_3

    .line 850
    aget-char v2, p1, v0

    if-ne v2, v5, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget-char v2, p1, v2

    if-ne v2, v5, :cond_2

    add-int/lit8 v2, v0, 0x2

    aget-char v2, p1, v2

    if-ne v2, v4, :cond_2

    .line 852
    if-le v0, p2, :cond_1

    .line 853
    iget-object v2, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    sub-int v3, v0, p2

    invoke-virtual {v2, p1, p2, v3}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 854
    :cond_1
    const-string v2, "]]]><![CDATA[]>"

    invoke-virtual {p0, v2}, Lgnu/xml/XMLPrinter;->print(Ljava/lang/String;)V

    .line 855
    add-int/lit8 p2, v0, 0x3

    .line 856
    sub-int p3, v1, p2

    .line 857
    add-int/lit8 v0, v0, 0x2

    .line 848
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 860
    :cond_3
    iget-object v2, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v2, p1, p2, p3}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 861
    iget-object v2, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v3, "]]>"

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 862
    iput v4, p0, Lgnu/xml/XMLPrinter;->prev:I

    goto :goto_0
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 0
    .parameter "chars"

    .prologue
    .line 824
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->beginComment()V

    .line 825
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->write(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->endComment()V

    .line 827
    return-void
.end method

.method public writeComment([CII)V
    .locals 0
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 831
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->beginComment()V

    .line 832
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLPrinter;->write([CII)V

    .line 833
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->endComment()V

    .line 834
    return-void
.end method

.method public writeDouble(D)V
    .locals 2
    .parameter "d"

    .prologue
    .line 592
    invoke-direct {p0}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 593
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-static {p1, p2}, Lgnu/xml/XMLPrinter;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public writeFloat(F)V
    .locals 2
    .parameter "f"

    .prologue
    .line 598
    invoke-direct {p0}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 599
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-static {p1}, Lgnu/xml/XMLPrinter;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0x2d

    .line 685
    instance-of v2, p1, Lgnu/lists/SeqPosition;

    if-eqz v2, :cond_1

    .line 687
    iget-object v2, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v2}, Lgnu/text/PrettyWriter;->clearWordEnd()V

    .line 688
    move-object v0, p1

    check-cast v0, Lgnu/lists/SeqPosition;

    move-object v1, v0

    .line 689
    .local v1, pos:Lgnu/lists/SeqPosition;
    iget-object v2, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v3, v1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v2, v3, p0}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    .line 690
    iget-object v2, v1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of v2, v2, Lgnu/xml/NodeTree;

    if-eqz v2, :cond_0

    .line 691
    iput v4, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 722
    .end local v1           #pos:Lgnu/lists/SeqPosition;
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 694
    .restart local p1
    :cond_1
    instance-of v2, p1, Lgnu/lists/Consumable;

    if-eqz v2, :cond_2

    instance-of v2, p1, Lgnu/lists/UnescapedData;

    if-nez v2, :cond_2

    .line 696
    check-cast p1, Lgnu/lists/Consumable;

    .end local p1
    invoke-interface {p1, p0}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 699
    .restart local p1
    :cond_2
    instance-of v2, p1, Lgnu/expr/Keyword;

    if-eqz v2, :cond_3

    .line 701
    check-cast p1, Lgnu/expr/Keyword;

    .end local p1
    invoke-virtual {p1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/xml/XMLPrinter;->startAttribute(Ljava/lang/Object;)V

    .line 702
    const/4 v2, -0x6

    iput v2, p0, Lgnu/xml/XMLPrinter;->prev:I

    goto :goto_0

    .line 705
    .restart local p1
    :cond_3
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 706
    instance-of v2, p1, Lgnu/lists/UnescapedData;

    if-eqz v2, :cond_4

    .line 708
    iget-object v2, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v2}, Lgnu/text/PrettyWriter;->clearWordEnd()V

    .line 709
    iget-object v2, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    check-cast p1, Lgnu/lists/UnescapedData;

    .end local p1
    invoke-virtual {p1}, Lgnu/lists/UnescapedData;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 710
    iput v4, p0, Lgnu/xml/XMLPrinter;->prev:I

    goto :goto_0

    .line 712
    .restart local p1
    :cond_4
    instance-of v2, p1, Lgnu/text/Char;

    if-eqz v2, :cond_5

    .line 713
    check-cast p1, Lgnu/text/Char;

    .end local p1
    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v2

    invoke-static {v2, p0}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 716
    .restart local p1
    :cond_5
    invoke-direct {p0}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 717
    const/16 v2, 0x20

    iput v2, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 718
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->print(Ljava/lang/Object;)V

    .line 719
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->writeWordEnd()V

    .line 720
    const/4 v2, -0x2

    iput v2, p0, Lgnu/xml/XMLPrinter;->prev:I

    goto :goto_0
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 0
    .parameter "seq"
    .parameter "ipos"

    .prologue
    .line 795
    invoke-virtual {p1, p2, p0}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    .line 796
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 2
    .parameter "target"
    .parameter "content"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 868
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 870
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 871
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->print(Ljava/lang/String;)V

    .line 873
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->print(C)V

    .line 874
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p2, p3, p4}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 875
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 876
    const/16 v0, 0x3e

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 877
    return-void
.end method

.method protected writeQName(Ljava/lang/Object;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 324
    instance-of v3, p1, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_1

    .line 326
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v2, v0

    .line 327
    .local v2, sname:Lgnu/mapping/Symbol;
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, prefix:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 330
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v3, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 331
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(I)V

    .line 333
    :cond_0
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 337
    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #sname:Lgnu/mapping/Symbol;
    .end local p1
    :goto_0
    return-void

    .line 336
    .restart local p1
    :cond_1
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    if-nez p1, :cond_2

    const-string v4, "{null name}"

    .end local p1
    :goto_1
    invoke-virtual {v3, v4}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .restart local p1
    :cond_2
    check-cast p1, Ljava/lang/String;

    move-object v4, p1

    goto :goto_1
.end method
