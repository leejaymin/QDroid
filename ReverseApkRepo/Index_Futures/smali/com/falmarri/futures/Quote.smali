.class public Lcom/falmarri/futures/Quote;
.super Ljava/lang/Object;
.source "Quote.java"


# instance fields
.field blank:Z

.field private change:Ljava/lang/String;

.field private high:Ljava/lang/String;

.field private index:Ljava/lang/String;

.field private low:Ljava/lang/String;

.field private open:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "region"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/falmarri/futures/Quote;->index:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/falmarri/futures/Quote;->blank:Z

    .line 48
    iput-object p1, p0, Lcom/falmarri/futures/Quote;->region:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "region"
    .parameter "index"
    .parameter "value"
    .parameter "updown"
    .parameter "change"
    .parameter "open"
    .parameter "high"
    .parameter "low"
    .parameter "time"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/falmarri/futures/Quote;->index:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/falmarri/futures/Quote;->region:Ljava/lang/String;

    .line 58
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/falmarri/futures/Quote;->index:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/falmarri/futures/Quote;->value:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lcom/falmarri/futures/Quote;->change:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Lcom/falmarri/futures/Quote;->open:Ljava/lang/String;

    .line 62
    iput-object p7, p0, Lcom/falmarri/futures/Quote;->high:Ljava/lang/String;

    .line 63
    iput-object p8, p0, Lcom/falmarri/futures/Quote;->low:Ljava/lang/String;

    .line 64
    iput-object p9, p0, Lcom/falmarri/futures/Quote;->time:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "region"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/falmarri/futures/QuoteValueException;
        }
    .end annotation

    .prologue
    .local p2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/falmarri/futures/Quote;->index:Ljava/lang/String;

    .line 24
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 25
    new-instance v0, Lcom/falmarri/futures/QuoteValueException;

    invoke-direct {v0}, Lcom/falmarri/futures/QuoteValueException;-><init>()V

    throw v0

    .line 29
    :cond_0
    iput-boolean v2, p0, Lcom/falmarri/futures/Quote;->blank:Z

    .line 30
    iput-object p1, p0, Lcom/falmarri/futures/Quote;->region:Ljava/lang/String;

    .line 31
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "__and__"

    const-string v2, "&"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/falmarri/futures/Quote;->index:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/falmarri/futures/Quote;->value:Ljava/lang/String;

    .line 33
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/falmarri/futures/Quote;->change:Ljava/lang/String;

    .line 34
    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/falmarri/futures/Quote;->open:Ljava/lang/String;

    .line 35
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/falmarri/futures/Quote;->high:Ljava/lang/String;

    .line 36
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/falmarri/futures/Quote;->low:Ljava/lang/String;

    .line 37
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/falmarri/futures/Quote;->time:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "j"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/falmarri/futures/Quote;->index:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    .end local p1
    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/falmarri/futures/Quote;->change:Ljava/lang/String;

    return-object v0
.end method

.method public getHigh()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/falmarri/futures/Quote;->high:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/falmarri/futures/Quote;->index:Ljava/lang/String;

    return-object v0
.end method

.method public getLow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/falmarri/futures/Quote;->low:Ljava/lang/String;

    return-object v0
.end method

.method public getOpen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/falmarri/futures/Quote;->open:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/falmarri/futures/Quote;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/falmarri/futures/Quote;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getVal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/falmarri/futures/Quote;->value:Ljava/lang/String;

    return-object v0
.end method
