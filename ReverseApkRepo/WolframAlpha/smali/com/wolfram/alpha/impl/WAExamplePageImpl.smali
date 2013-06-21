.class public Lcom/wolfram/alpha/impl/WAExamplePageImpl;
.super Ljava/lang/Object;
.source "WAExamplePageImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WAExamplePage;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x131a66cbedd54b77L


# instance fields
.field private category:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "thisElement"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "category"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAExamplePageImpl;->category:Ljava/lang/String;

    .line 26
    const-string v0, "url"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAExamplePageImpl;->url:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 43
    invoke-interface {p1, p0}, Lcom/wolfram/alpha/visitor/Visitor;->visit(Lcom/wolfram/alpha/WAExamplePage;)V

    .line 44
    return-void
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAExamplePageImpl;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAExamplePageImpl;->url:Ljava/lang/String;

    return-object v0
.end method
