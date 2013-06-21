.class public Lcom/wolfram/alpha/impl/WAFutureTopicImpl;
.super Ljava/lang/Object;
.source "WAFutureTopicImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WAFutureTopic;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x71886cbf2492e1fL


# instance fields
.field private msg:Ljava/lang/String;

.field private topic:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "thisElement"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "msg"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAFutureTopicImpl;->msg:Ljava/lang/String;

    .line 26
    const-string v0, "topic"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WAFutureTopicImpl;->topic:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 43
    invoke-interface {p1, p0}, Lcom/wolfram/alpha/visitor/Visitor;->visit(Lcom/wolfram/alpha/WAFutureTopic;)V

    .line 44
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAFutureTopicImpl;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAFutureTopicImpl;->topic:Ljava/lang/String;

    return-object v0
.end method
