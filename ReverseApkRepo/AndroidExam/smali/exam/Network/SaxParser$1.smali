.class Lexam/Network/SaxParser$1;
.super Ljava/lang/Object;
.source "SaxParser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Network/SaxParser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Network/SaxParser;


# direct methods
.method constructor <init>(Lexam/Network/SaxParser;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Network/SaxParser$1;->this$0:Lexam/Network/SaxParser;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 28
    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<order><item>Mouse</item></order>"

    .line 32
    .local v6, xml:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 33
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 34
    .local v4, parser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 35
    .local v5, reader:Lorg/xml/sax/XMLReader;
    new-instance v2, Lexam/Network/SaxParser$SaxHandler;

    iget-object v7, p0, Lexam/Network/SaxParser$1;->this$0:Lexam/Network/SaxParser;

    invoke-direct {v2, v7}, Lexam/Network/SaxParser$SaxHandler;-><init>(Lexam/Network/SaxParser;)V

    .line 36
    .local v2, handler:Lexam/Network/SaxParser$SaxHandler;
    invoke-interface {v5, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 37
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v7, "utf-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 38
    .local v3, istream:Ljava/io/InputStream;
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 39
    iget-object v7, p0, Lexam/Network/SaxParser$1;->this$0:Lexam/Network/SaxParser;

    iget-object v7, v7, Lexam/Network/SaxParser;->mResult:Landroid/widget/EditText;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\uc8fc\ubb38 \ud56d\ubaa9 : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lexam/Network/SaxParser$SaxHandler;->item:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v1           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v2           #handler:Lexam/Network/SaxParser$SaxHandler;
    .end local v3           #istream:Ljava/io/InputStream;
    .end local v4           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v5           #reader:Lorg/xml/sax/XMLReader;
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
