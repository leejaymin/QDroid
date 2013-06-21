.class public Lcom/wolfram/alpha/impl/WANoteImpl;
.super Ljava/lang/Object;
.source "WANoteImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WANote;
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WANoteImpl; = null

.field private static final serialVersionUID:J = -0x63f92a852f74e8d6L


# instance fields
.field private NoteText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WANoteImpl;

    sput-object v0, Lcom/wolfram/alpha/impl/WANoteImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WANoteImpl;

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V
    .locals 2
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
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 28
    .local v0, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/wolfram/alpha/impl/WANoteImpl;->NoteText:Ljava/lang/String;

    .line 29
    return-void

    .line 28
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 43
    return-void
.end method

.method public getNoteText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WANoteImpl;->NoteText:Ljava/lang/String;

    return-object v0
.end method
