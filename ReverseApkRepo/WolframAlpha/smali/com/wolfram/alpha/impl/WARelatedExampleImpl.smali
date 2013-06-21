.class public Lcom/wolfram/alpha/impl/WARelatedExampleImpl;
.super Ljava/lang/Object;
.source "WARelatedExampleImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WARelatedExample;
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WARelatedExampleImpl; = null

.field private static final serialVersionUID:J = -0x1123a713520274edL


# instance fields
.field private category:Ljava/lang/String;

.field private categoryPage:Ljava/lang/String;

.field private categoryThumb:Lcom/wolfram/alpha/WAImage;

.field private desc:Ljava/lang/String;

.field private input:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WARelatedExampleImpl;

    sput-object v0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WARelatedExampleImpl;

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V
    .locals 3
    .parameter "thisElement"
    .parameter "http"
    .parameter "tempDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "input"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->input:Ljava/lang/String;

    .line 35
    const-string v0, "desc"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->desc:Ljava/lang/String;

    .line 36
    const-string v0, "category"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->category:Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/wolfram/alpha/impl/WAImageImpl;

    const-string v1, "categorythumb"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/wolfram/alpha/impl/WAImageImpl;-><init>(Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->categoryThumb:Lcom/wolfram/alpha/WAImage;

    .line 38
    const-string v0, "categorypage"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->categoryPage:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->input:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->input:Ljava/lang/String;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->desc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->desc:Ljava/lang/String;

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->category:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->category:Ljava/lang/String;

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->categoryPage:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->categoryPage:Ljava/lang/String;

    .line 43
    :cond_3
    return-void
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 70
    invoke-interface {p1, p0}, Lcom/wolfram/alpha/visitor/Visitor;->visit(Lcom/wolfram/alpha/WARelatedExample;)V

    .line 71
    return-void
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->categoryPage:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryThumb()Lcom/wolfram/alpha/WAImage;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->categoryThumb:Lcom/wolfram/alpha/WAImage;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WARelatedExampleImpl;->input:Ljava/lang/String;

    return-object v0
.end method
