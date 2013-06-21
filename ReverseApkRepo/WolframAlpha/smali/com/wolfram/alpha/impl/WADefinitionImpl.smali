.class public Lcom/wolfram/alpha/impl/WADefinitionImpl;
.super Ljava/lang/Object;
.source "WADefinitionImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WADefinition;
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WADefinitionImpl; = null

.field private static final serialVersionUID:J = -0x407322810914d854L


# instance fields
.field private Description:Ljava/lang/String;

.field private Word:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WADefinitionImpl;

    sput-object v0, Lcom/wolfram/alpha/impl/WADefinitionImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WADefinitionImpl;

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V
    .locals 1
    .parameter "thisElement"
    .parameter "http"
    .parameter "tempDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "word"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WADefinitionImpl;->Word:Ljava/lang/String;

    .line 28
    const-string v0, "desc"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WADefinitionImpl;->Description:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 51
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WADefinitionImpl;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WADefinitionImpl;->Word:Ljava/lang/String;

    return-object v0
.end method
