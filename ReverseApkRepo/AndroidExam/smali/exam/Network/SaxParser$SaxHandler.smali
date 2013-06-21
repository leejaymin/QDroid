.class Lexam/Network/SaxParser$SaxHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Network/SaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaxHandler"
.end annotation


# instance fields
.field initem:Z

.field item:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lexam/Network/SaxParser;


# direct methods
.method constructor <init>(Lexam/Network/SaxParser;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lexam/Network/SaxParser$SaxHandler;->this$0:Lexam/Network/SaxParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lexam/Network/SaxParser$SaxHandler;->initem:Z

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lexam/Network/SaxParser$SaxHandler;->item:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "chars"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 64
    iget-boolean v0, p0, Lexam/Network/SaxParser$SaxHandler;->initem:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lexam/Network/SaxParser$SaxHandler;->item:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lexam/Network/SaxParser$SaxHandler;->initem:Z

    .line 68
    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    .line 61
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"

    .prologue
    .line 56
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexam/Network/SaxParser$SaxHandler;->initem:Z

    .line 59
    :cond_0
    return-void
.end method
