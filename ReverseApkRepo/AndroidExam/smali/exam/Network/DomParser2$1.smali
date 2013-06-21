.class Lexam/Network/DomParser2$1;
.super Ljava/lang/Object;
.source "DomParser2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Network/DomParser2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Network/DomParser2;


# direct methods
.method constructor <init>(Lexam/Network/DomParser2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Network/DomParser2$1;->this$0:Lexam/Network/DomParser2;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 20
    .parameter "v"

    .prologue
    .line 27
    const-string v16, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<order><item Maker=\"Samsung\" Price=\"23000\">Mouse</item><item Maker=\"LG\" Price=\"12000\">KeyBoard</item><item Price=\"156000\" Maker=\"Western Digital\">HDD</item></order>"

    .line 35
    .local v16, xml:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 36
    .local v8, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 37
    .local v5, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v10, Ljava/io/ByteArrayInputStream;

    const-string v17, "utf-8"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 38
    .local v10, istream:Ljava/io/InputStream;
    invoke-virtual {v5, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 40
    .local v6, doc:Lorg/w3c/dom/Document;
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    .line 41
    .local v14, order:Lorg/w3c/dom/Element;
    const-string v17, "item"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 42
    .local v12, items:Lorg/w3c/dom/NodeList;
    const-string v3, ""

    .line 43
    .local v3, Result:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-lt v9, v0, :cond_0

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lexam/Network/DomParser2$1;->this$0:Lexam/Network/DomParser2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lexam/Network/DomParser2;->mResult:Landroid/widget/EditText;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "\uc8fc\ubb38 \ubaa9\ub85d\n"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .end local v3           #Result:Ljava/lang/String;
    .end local v5           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #doc:Lorg/w3c/dom/Document;
    .end local v8           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9           #i:I
    .end local v10           #istream:Ljava/io/InputStream;
    .end local v12           #items:Lorg/w3c/dom/NodeList;
    .end local v14           #order:Lorg/w3c/dom/Element;
    :goto_1
    return-void

    .line 44
    .restart local v3       #Result:Ljava/lang/String;
    .restart local v5       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #doc:Lorg/w3c/dom/Document;
    .restart local v8       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9       #i:I
    .restart local v10       #istream:Ljava/io/InputStream;
    .restart local v12       #items:Lorg/w3c/dom/NodeList;
    .restart local v14       #order:Lorg/w3c/dom/Element;
    :cond_0
    invoke-interface {v12, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 45
    .local v11, item:Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v15

    .line 46
    .local v15, text:Lorg/w3c/dom/Node;
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, ItemName:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 50
    .local v1, Attrs:Lorg/w3c/dom/NamedNodeMap;
    const/4 v13, 0x0

    .local v13, j:I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-lt v13, v0, :cond_1

    .line 54
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v1, v13}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 52
    .local v4, attr:Lorg/w3c/dom/Node;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 50
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 58
    .end local v1           #Attrs:Lorg/w3c/dom/NamedNodeMap;
    .end local v2           #ItemName:Ljava/lang/String;
    .end local v3           #Result:Ljava/lang/String;
    .end local v4           #attr:Lorg/w3c/dom/Node;
    .end local v5           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #doc:Lorg/w3c/dom/Document;
    .end local v8           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9           #i:I
    .end local v10           #istream:Ljava/io/InputStream;
    .end local v11           #item:Lorg/w3c/dom/Node;
    .end local v12           #items:Lorg/w3c/dom/NodeList;
    .end local v13           #j:I
    .end local v14           #order:Lorg/w3c/dom/Element;
    .end local v15           #text:Lorg/w3c/dom/Node;
    :catch_0
    move-exception v7

    .line 59
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method
