.class public Lcom/falmarri/futures/GetFuturesParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GetFuturesParser.java"


# instance fields
.field private inStockPortion:Z

.field quotes:Lcom/falmarri/futures/QuoteList;

.field region:Ljava/lang/String;

.field tempVal:Ljava/lang/String;

.field values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/falmarri/futures/GetFuturesParser;->inStockPortion:Z

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/falmarri/futures/GetFuturesParser;->region:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const-string v1, "__and__"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/falmarri/futures/GetFuturesParser;->tempVal:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/falmarri/futures/GetFuturesParser;->tempVal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/falmarri/futures/GetFuturesParser;->tempVal:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 66
    iget-boolean v1, p0, Lcom/falmarri/futures/GetFuturesParser;->inStockPortion:Z

    if-eqz v1, :cond_1

    const-string v1, "h3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/falmarri/futures/GetFuturesParser;->tempVal:Ljava/lang/String;

    iget-object v2, p0, Lcom/falmarri/futures/GetFuturesParser;->region:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    .line 70
    iget-object v1, p0, Lcom/falmarri/futures/GetFuturesParser;->quotes:Lcom/falmarri/futures/QuoteList;

    new-instance v2, Lcom/falmarri/futures/Quote;

    iget-object v3, p0, Lcom/falmarri/futures/GetFuturesParser;->tempVal:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/falmarri/futures/Quote;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/falmarri/futures/QuoteList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/falmarri/futures/GetFuturesParser;->tempVal:Ljava/lang/String;

    iput-object v1, p0, Lcom/falmarri/futures/GetFuturesParser;->region:Ljava/lang/String;

    .line 78
    :cond_1
    iget-boolean v1, p0, Lcom/falmarri/futures/GetFuturesParser;->inStockPortion:Z

    if-eqz v1, :cond_2

    const-string v1, "td"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/falmarri/futures/GetFuturesParser;->values:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/falmarri/futures/GetFuturesParser;->tempVal:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_2
    iget-boolean v1, p0, Lcom/falmarri/futures/GetFuturesParser;->inStockPortion:Z

    if-eqz v1, :cond_3

    const-string v1, "tr"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/falmarri/futures/GetFuturesParser;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/falmarri/futures/GetFuturesParser;->quotes:Lcom/falmarri/futures/QuoteList;

    new-instance v2, Lcom/falmarri/futures/Quote;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/falmarri/futures/GetFuturesParser;->region:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/falmarri/futures/GetFuturesParser;->values:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/falmarri/futures/Quote;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/falmarri/futures/QuoteList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/falmarri/futures/QuoteValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/falmarri/futures/GetFuturesParser;->inStockPortion:Z

    if-eqz v1, :cond_4

    const-string v1, "div"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/falmarri/futures/GetFuturesParser;->quotes:Lcom/falmarri/futures/QuoteList;

    invoke-virtual {v1}, Lcom/falmarri/futures/QuoteList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 101
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/falmarri/futures/GetFuturesParser;->inStockPortion:Z

    .line 106
    :cond_4
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Lcom/falmarri/futures/QuoteValueException;
    const-string v1, "GetFutures"

    const-string v2, "Error parsing quotes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    invoke-virtual {v0}, Lcom/falmarri/futures/QuoteValueException;->printStackTrace()V

    goto :goto_0
.end method

.method public getQuotes()Lcom/falmarri/futures/QuoteList;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/falmarri/futures/GetFuturesParser;->quotes:Lcom/falmarri/futures/QuoteList;

    return-object v0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 34
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 42
    const-string v0, "div"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stock_data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/falmarri/futures/QuoteList;

    invoke-direct {v0}, Lcom/falmarri/futures/QuoteList;-><init>()V

    iput-object v0, p0, Lcom/falmarri/futures/GetFuturesParser;->quotes:Lcom/falmarri/futures/QuoteList;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/falmarri/futures/GetFuturesParser;->inStockPortion:Z

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcom/falmarri/futures/GetFuturesParser;->inStockPortion:Z

    if-eqz v0, :cond_1

    const-string v0, "tr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/falmarri/futures/GetFuturesParser;->values:Ljava/util/ArrayList;

    .line 58
    :cond_1
    return-void
.end method
