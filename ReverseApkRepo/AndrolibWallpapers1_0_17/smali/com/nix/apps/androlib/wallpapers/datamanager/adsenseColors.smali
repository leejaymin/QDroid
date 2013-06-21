.class public Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;
.super Ljava/lang/Object;
.source "adsenseColors.java"


# static fields
.field private static _adsenseColors:Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

.field private static db:Ljavax/xml/parsers/DocumentBuilder;

.field private static dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static http:Lorg/apache/http/impl/client/DefaultHttpClient;


# instance fields
.field public ColorBackground:Ljava/lang/String;

.field public ColorBorder:Ljava/lang/String;

.field public ColorLink:Ljava/lang/String;

.field public ColorText:Ljava/lang/String;

.field public ColorUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-string v3, "008000"

    const-string v2, "000000"

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v1, "http://api.androlib.com/ads/wallpapers.xml"

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->url:Ljava/lang/String;

    .line 29
    const-string v1, "000000"

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBackground:Ljava/lang/String;

    .line 30
    const-string v1, "FFFFFF"

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorText:Ljava/lang/String;

    .line 31
    const-string v1, "008000"

    iput-object v3, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorUrl:Ljava/lang/String;

    .line 32
    const-string v1, "000000"

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBorder:Ljava/lang/String;

    .line 33
    const-string v1, "008000"

    iput-object v3, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorLink:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->LoadPreferences()V

    .line 38
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors$1;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors$1;-><init>(Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;)V

    .line 44
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 46
    return-void
.end method

.method private LoadPreferences()V
    .locals 3

    .prologue
    .line 112
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "adsColorBackground"

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBackground:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBackground:Ljava/lang/String;

    .line 114
    const-string v1, "adsColorText"

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorText:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorText:Ljava/lang/String;

    .line 115
    const-string v1, "adsColorUrl"

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorUrl:Ljava/lang/String;

    .line 116
    const-string v1, "adsColorBorder"

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBorder:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBorder:Ljava/lang/String;

    .line 117
    const-string v1, "adsColorLink"

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorLink:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorLink:Ljava/lang/String;

    .line 118
    return-void
.end method

.method private SavePreferences()V
    .locals 4

    .prologue
    .line 121
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 122
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "adsColorBackground"

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBackground:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    const-string v2, "adsColorText"

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorText:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string v2, "adsColorUrl"

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorUrl:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    const-string v2, "adsColorBorder"

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBorder:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    const-string v2, "adsColorLink"

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorLink:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-void
.end method

.method static synthetic access$0(Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getAdsColor(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private getAdsColor(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "el"

    .prologue
    const/4 v5, 0x0

    .line 99
    const-string v2, "Colors"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 100
    .local v1, nodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 101
    .local v0, n:I
    if-lez v0, :cond_0

    .line 103
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v3, "ColorBackground"

    iget-object v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBackground:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getNodeString(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBackground:Ljava/lang/String;

    .line 104
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v3, "ColorText"

    iget-object v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorText:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getNodeString(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorText:Ljava/lang/String;

    .line 105
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v3, "ColorUrl"

    iget-object v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorUrl:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getNodeString(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorUrl:Ljava/lang/String;

    .line 106
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v3, "ColorBorder"

    iget-object v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBorder:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getNodeString(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBorder:Ljava/lang/String;

    .line 107
    invoke-interface {v1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v3, "ColorLink"

    iget-object v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorLink:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getNodeString(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorLink:Ljava/lang/String;

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->SavePreferences()V

    .line 110
    return-void
.end method

.method public static getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->_adsenseColors:Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;-><init>()V

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->_adsenseColors:Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    .line 54
    :cond_0
    sget-object v0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->_adsenseColors:Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    return-object v0
.end method

.method public static getNodeString(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "node"
    .parameter "TagName"
    .parameter "DefaultValue"

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 138
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p2

    .line 145
    :goto_0
    return-object v0

    .line 142
    :cond_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 145
    goto :goto_0
.end method

.method public static sendXMLRequest(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->sendXMLRequest(Ljava/lang/String;Z)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public static sendXMLRequest(Ljava/lang/String;Z)Lorg/w3c/dom/Element;
    .locals 8
    .parameter "uri"
    .parameter "retry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v6, "Content-Encoding"

    .line 66
    :try_start_0
    sget-object v6, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->http:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v6, :cond_0

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v6, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->http:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 67
    :cond_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 68
    .local v4, request:Lorg/apache/http/client/methods/HttpGet;
    const-string v6, "Accept-Encoding"

    const-string v7, "gzip, deflate"

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v6, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->http:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v6, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 70
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 72
    .local v2, is:Ljava/io/InputStream;
    const-string v6, "Content-Encoding"

    invoke-interface {v5, v6}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_1

    .line 73
    const-string v6, "Content-Encoding"

    invoke-interface {v5, v6}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gzip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    move-object v2, v3

    .line 78
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :cond_1
    sget-object v6, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    if-nez v6, :cond_2

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    sput-object v6, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 79
    :cond_2
    sget-object v6, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->db:Ljavax/xml/parsers/DocumentBuilder;

    if-nez v6, :cond_3

    sget-object v6, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    sput-object v6, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->db:Ljavax/xml/parsers/DocumentBuilder;

    .line 80
    :cond_3
    sget-object v6, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->db:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v6, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 81
    .local v0, doc:Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 82
    .local v1, e:Lorg/w3c/dom/Element;
    invoke-interface {v1}, Lorg/w3c/dom/Element;->normalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v1

    .line 92
    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v1           #e:Lorg/w3c/dom/Element;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v6

    .line 85
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 87
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    if-eqz p1, :cond_4

    .line 90
    const/4 v6, 0x0

    goto :goto_0

    .line 92
    :cond_4
    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->sendXMLRequest(Ljava/lang/String;Z)Lorg/w3c/dom/Element;

    move-result-object v6

    goto :goto_0
.end method
