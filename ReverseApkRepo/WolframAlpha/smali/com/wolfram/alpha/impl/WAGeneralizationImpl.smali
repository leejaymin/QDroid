.class public Lcom/wolfram/alpha/impl/WAGeneralizationImpl;
.super Ljava/lang/Object;
.source "WAGeneralizationImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WAGeneralization;
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAGeneralizationImpl; = null

.field private static final serialVersionUID:J = -0xf1ad4bc88f71269L


# instance fields
.field private Description:Ljava/lang/String;

.field private Topic:Ljava/lang/String;

.field private URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WAGeneralizationImpl;

    sput-object v0, Lcom/wolfram/alpha/impl/WAGeneralizationImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WAGeneralizationImpl;

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "thisElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "topic"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAGeneralizationImpl;->Topic:Ljava/lang/String;

    .line 28
    const-string v0, "desc"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAGeneralizationImpl;->Description:Ljava/lang/String;

    .line 29
    const-string v0, "url"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAGeneralizationImpl;->URL:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 55
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAGeneralizationImpl;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAGeneralizationImpl;->Topic:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAGeneralizationImpl;->URL:Ljava/lang/String;

    return-object v0
.end method
