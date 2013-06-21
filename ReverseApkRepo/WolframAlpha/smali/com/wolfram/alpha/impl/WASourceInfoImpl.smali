.class public Lcom/wolfram/alpha/impl/WASourceInfoImpl;
.super Ljava/lang/Object;
.source "WASourceInfoImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WASourceInfo;
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WASourceInfoImpl; = null

.field private static final serialVersionUID:J = -0x5ac6ae6c87bee136L


# instance fields
.field private formattedUrl:Ljava/lang/String;

.field private formattedUrl_anotherVersion:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WASourceInfoImpl;

    sput-object v0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WASourceInfoImpl;

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 7
    .parameter "thisElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2f

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v2, "text"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->text:Ljava/lang/String;

    .line 33
    const-string v2, "url"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->url:Ljava/lang/String;

    .line 41
    iget-object v2, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->url:Ljava/lang/String;

    const-string v3, "SourceInformationNotes.html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->url:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "SourceInformationNotes.html"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, dataType:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.wolframalpha.com/input/sources.jsp?sources="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->formattedUrl:Ljava/lang/String;

    .line 44
    iget-object v2, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->url:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, dataType_diff:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.wolframalpha.com/iphone/sources-rewrite.html?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->formattedUrl_anotherVersion:Ljava/lang/String;

    .line 50
    .end local v0           #dataType:Ljava/lang/String;
    .end local v1           #dataType_diff:Ljava/lang/String;
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->url:Ljava/lang/String;

    iput-object v2, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->formattedUrl:Ljava/lang/String;

    .line 48
    iget-object v2, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->url:Ljava/lang/String;

    iput-object v2, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->formattedUrl_anotherVersion:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 70
    invoke-interface {p1, p0}, Lcom/wolfram/alpha/visitor/Visitor;->visit(Lcom/wolfram/alpha/WASourceInfo;)V

    .line 71
    return-void
.end method

.method public getFormattedURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->formattedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedURL_anotherVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->formattedUrl_anotherVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WASourceInfoImpl;->url:Ljava/lang/String;

    return-object v0
.end method
