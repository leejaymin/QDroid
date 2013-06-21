.class public final Lcom/rubycell/b/a/e;
.super Lcom/rubycell/b/a/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/rubycell/b/a/c;-><init>()V

    iput-object p1, p0, Lcom/rubycell/b/a/e;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Lorg/w3c/dom/Document;)Ljava/util/ArrayList;
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "game"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    :goto_0
    if-lt v3, v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    new-instance v4, Lcom/rubycell/b/a/b;

    invoke-direct {v4}, Lcom/rubycell/b/a/b;-><init>()V

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    const-string v5, "gameinfo"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    const-string v5, "category"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rubycell/b/a/b;->a(Ljava/lang/String;)V

    const-string v5, "packageName"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rubycell/b/a/b;->b(Ljava/lang/String;)V

    const-string v5, "gameName"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rubycell/b/a/b;->c(Ljava/lang/String;)V

    const-string v5, "downloadURI"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rubycell/b/a/b;->d(Ljava/lang/String;)V

    const-string v5, "imgPrevURL1"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rubycell/b/a/b;->e(Ljava/lang/String;)V

    const-string v5, "imgPrevURL2"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rubycell/b/a/b;->f(Ljava/lang/String;)V

    const-string v5, "iconURL"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rubycell/b/a/b;->g(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {p1}, Lcom/rubycell/moregame/a/b/a;->a(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/rubycell/b/a/e;->a(Lorg/w3c/dom/Document;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/b/a/e;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/rubycell/b/a/e;->b:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
