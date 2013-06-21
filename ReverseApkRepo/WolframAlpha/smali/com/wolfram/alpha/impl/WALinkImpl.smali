.class public Lcom/wolfram/alpha/impl/WALinkImpl;
.super Ljava/lang/Object;
.source "WALinkImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WALink;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7b006472679343d3L


# instance fields
.field private text:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "thisElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "url"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WALinkImpl;->url:Ljava/lang/String;

    .line 27
    const-string v0, "text"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WALinkImpl;->text:Ljava/lang/String;

    .line 28
    const-string v0, "title"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WALinkImpl;->title:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 50
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WALinkImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WALinkImpl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WALinkImpl;->url:Ljava/lang/String;

    return-object v0
.end method
