.class Lexam/Network/DomParser$1;
.super Ljava/lang/Object;
.source "DomParser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Network/DomParser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Network/DomParser;


# direct methods
.method constructor <init>(Lexam/Network/DomParser;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Network/DomParser$1;->this$0:Lexam/Network/DomParser;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    .line 27
    const-string v10, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<order><item>Mouse</item></order>"

    .line 31
    .local v10, xml:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 32
    .local v4, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 33
    .local v1, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v11, "utf-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 34
    .local v5, istream:Ljava/io/InputStream;
    invoke-virtual {v1, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 36
    .local v2, doc:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    .line 37
    .local v8, order:Lorg/w3c/dom/Element;
    const-string v11, "item"

    invoke-interface {v8, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 38
    .local v7, items:Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    invoke-interface {v7, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 39
    .local v6, item:Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    .line 40
    .local v9, text:Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, ItemName:Ljava/lang/String;
    iget-object v11, p0, Lexam/Network/DomParser$1;->this$0:Lexam/Network/DomParser;

    iget-object v11, v11, Lexam/Network/DomParser;->mResult:Landroid/widget/EditText;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\uc8fc\ubb38 \ud56d\ubaa9 : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0           #ItemName:Ljava/lang/String;
    .end local v1           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v4           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #istream:Ljava/io/InputStream;
    .end local v6           #item:Lorg/w3c/dom/Node;
    .end local v7           #items:Lorg/w3c/dom/NodeList;
    .end local v8           #order:Lorg/w3c/dom/Element;
    .end local v9           #text:Lorg/w3c/dom/Node;
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v3

    .line 44
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
