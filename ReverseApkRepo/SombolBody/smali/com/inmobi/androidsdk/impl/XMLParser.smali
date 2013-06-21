.class public final Lcom/inmobi/androidsdk/impl/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAdUnitFromResponseData(Ljava/io/Reader;)Lcom/inmobi/androidsdk/impl/AdUnit;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/inmobi/androidsdk/impl/AdException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 23
    new-instance v6, Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-direct {v6}, Lcom/inmobi/androidsdk/impl/AdUnit;-><init>()V

    .line 24
    const/4 v2, 0x0

    .line 27
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 29
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 31
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 32
    invoke-interface {v7, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 33
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v3, v0

    move v4, v2

    move-object v0, v1

    move-object v2, v1

    .line 36
    :goto_0
    if-ne v3, v5, :cond_0

    .line 78
    if-nez v4, :cond_5

    .line 79
    new-instance v0, Lcom/inmobi/androidsdk/impl/AdException;

    const-string v1, "No Ads present"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/AdException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Lcom/inmobi/androidsdk/impl/AdException;

    const-string v2, "Exception constructing Ad"

    .line 103
    const/16 v3, 0xc8

    .line 102
    invoke-direct {v1, v2, v0, v3}, Lcom/inmobi/androidsdk/impl/AdException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    .line 38
    :cond_0
    if-eqz v3, :cond_1

    .line 42
    const/4 v8, 0x2

    if-ne v3, v8, :cond_2

    .line 43
    :try_start_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_1

    const-string v3, "Ad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    const/4 v0, 0x0

    const-string v3, "width"

    .line 52
    invoke-interface {v7, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->setWidth(I)V

    .line 55
    const/4 v0, 0x0

    const-string v3, "height"

    .line 54
    invoke-interface {v7, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->setHeight(I)V

    .line 57
    const/4 v0, 0x0

    const-string v3, "actionName"

    invoke-interface {v7, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->adActionNamefromString(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->setAdActionName(Lcom/inmobi/androidsdk/impl/AdUnit$AdActionNames;)V

    .line 59
    const/4 v0, 0x0

    const-string v3, "type"

    invoke-interface {v7, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->adTypefromString(Ljava/lang/String;)Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/inmobi/androidsdk/impl/AdUnit;->setAdType(Lcom/inmobi/androidsdk/impl/AdUnit$AdTypes;)V

    .line 60
    const/4 v0, 0x0

    const-string v3, "errorcode"

    invoke-interface {v7, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v4, v5

    .line 74
    :cond_1
    :goto_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-result v3

    goto :goto_0

    .line 62
    :cond_2
    const/4 v8, 0x3

    if-ne v3, v8, :cond_3

    move-object v2, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const/4 v8, 0x5

    if-ne v3, v8, :cond_4

    .line 65
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/inmobi/androidsdk/impl/AdUnit;->setCDATABlock(Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_4
    const/4 v8, 0x4

    if-ne v3, v8, :cond_1

    .line 67
    if-eqz v2, :cond_1

    .line 68
    const-string v3, "AdURL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/inmobi/androidsdk/impl/AdUnit;->setTargetUrl(Ljava/lang/String;)V

    .line 70
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/inmobi/androidsdk/impl/AdUnit;->setDefaultTargetUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_5
    if-eqz v0, :cond_9

    .line 82
    const-string v1, "OOF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 83
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 84
    const-string v1, "IP Address not found in CCID File"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Lcom/inmobi/androidsdk/impl/AdException;

    const-string v1, "IP Address not found in CCID File"

    const/16 v2, 0x190

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/AdException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 86
    :cond_6
    const-string v1, "BADIP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 87
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 88
    const-string v1, "Invalid IP Address"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/inmobi/androidsdk/impl/AdException;

    const-string v1, "Invalid IP Address"

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/AdException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 90
    :cond_7
    const-string v1, "UAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 91
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 92
    const-string v1, "User Agent not detected through using wurfl"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Lcom/inmobi/androidsdk/impl/AdException;

    const-string v1, "User Agent not detected through using wurfl"

    const/16 v2, 0x258

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/AdException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 94
    :cond_8
    const-string v1, "-UA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 95
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 96
    const-string v1, "No User Agent found"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Lcom/inmobi/androidsdk/impl/AdException;

    const-string v1, "No User Agent found"

    const/16 v2, 0x2bc

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/AdException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    :cond_9
    return-object v6
.end method
