.class public Lcom/feelingk/lguiab/util/ParserXML;
.super Ljava/lang/Object;
.source "ParserXML.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authAllInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/AuthAllInfo;
    .locals 2
    .parameter "xmlString"

    .prologue
    .line 92
    :try_start_0
    new-instance v1, Lcom/feelingk/lguiab/vo/AuthAllInfo;

    invoke-direct {v1}, Lcom/feelingk/lguiab/vo/AuthAllInfo;-><init>()V

    invoke-static {p0, v1}, Lcom/feelingk/lguiab/util/ParserXML;->parserXML(Ljava/lang/String;Lcom/feelingk/lguiab/vo/AuthAllInfo;)Lcom/feelingk/lguiab/vo/AuthAllInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static buyCheckInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/BuyCheckInfo;
    .locals 2
    .parameter "xmlString"

    .prologue
    .line 53
    :try_start_0
    new-instance v1, Lcom/feelingk/lguiab/vo/BuyCheckInfo;

    invoke-direct {v1}, Lcom/feelingk/lguiab/vo/BuyCheckInfo;-><init>()V

    invoke-static {p0, v1}, Lcom/feelingk/lguiab/util/ParserXML;->parserXML(Ljava/lang/String;Lcom/feelingk/lguiab/vo/BuyCheckInfo;)Lcom/feelingk/lguiab/vo/BuyCheckInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 55
    :goto_0
    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static buyConfirmInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/BuyConfirmInfo;
    .locals 2
    .parameter "xmlString"

    .prologue
    .line 66
    :try_start_0
    new-instance v1, Lcom/feelingk/lguiab/vo/BuyConfirmInfo;

    invoke-direct {v1}, Lcom/feelingk/lguiab/vo/BuyConfirmInfo;-><init>()V

    invoke-static {p0, v1}, Lcom/feelingk/lguiab/util/ParserXML;->parserXML(Ljava/lang/String;Lcom/feelingk/lguiab/vo/BuyConfirmInfo;)Lcom/feelingk/lguiab/vo/BuyConfirmInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 68
    :goto_0
    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static feeChargingInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/FeeChargingInfo;
    .locals 2
    .parameter "xmlString"

    .prologue
    .line 79
    :try_start_0
    new-instance v1, Lcom/feelingk/lguiab/vo/FeeChargingInfo;

    invoke-direct {v1}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;-><init>()V

    invoke-static {p0, v1}, Lcom/feelingk/lguiab/util/ParserXML;->parserXML(Ljava/lang/String;Lcom/feelingk/lguiab/vo/FeeChargingInfo;)Lcom/feelingk/lguiab/vo/FeeChargingInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 81
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parserXML(Ljava/lang/String;Lcom/feelingk/lguiab/vo/AuthAllInfo;)Lcom/feelingk/lguiab/vo/AuthAllInfo;
    .locals 12
    .parameter "xmlString"
    .parameter "authAllInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 438
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 439
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2, v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 440
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 442
    .local v8, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 443
    const-string v5, ""

    .line 444
    .local v5, sTag:Ljava/lang/String;
    const-string v0, ""

    .line 445
    .local v0, eTag:Ljava/lang/String;
    const-string v6, ""

    .line 447
    .local v6, tTag:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v4, productList:Ljava/util/List;,"Ljava/util/List<Lcom/feelingk/lguiab/vo/ProductItemInfo;>;"
    new-instance v3, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-direct {v3}, Lcom/feelingk/lguiab/vo/ProductItemInfo;-><init>()V

    .line 450
    .local v3, productItemInfo:Lcom/feelingk/lguiab/vo/ProductItemInfo;
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 451
    .local v1, eventType:I
    :goto_0
    if-ne v1, v11, :cond_0

    .line 513
    return-object p1

    .line 453
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 511
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 456
    :pswitch_1
    const-string v9, "[AuthAll] Start document"

    invoke-static {v9}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 459
    :pswitch_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 463
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[AuthAll] Start tag == > "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "pt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 466
    new-instance v3, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    .end local v3           #productItemInfo:Lcom/feelingk/lguiab/vo/ProductItemInfo;
    invoke-direct {v3}, Lcom/feelingk/lguiab/vo/ProductItemInfo;-><init>()V

    .line 468
    .restart local v3       #productItemInfo:Lcom/feelingk/lguiab/vo/ProductItemInfo;
    goto :goto_1

    .line 470
    :pswitch_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 471
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[AuthAll] End tag ==> "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "pt"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 473
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 474
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "response"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 475
    invoke-virtual {p1, v4}, Lcom/feelingk/lguiab/vo/AuthAllInfo;->setProductList(Ljava/util/List;)V

    goto :goto_1

    .line 478
    :pswitch_4
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 479
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    .line 480
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[AuthAll] TEXT  ==> "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "service_name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 482
    invoke-virtual {p1, v6}, Lcom/feelingk/lguiab/vo/AuthAllInfo;->setServiceName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 483
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "request_time"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 484
    invoke-virtual {p1, v6}, Lcom/feelingk/lguiab/vo/AuthAllInfo;->setRequestTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 485
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "response_time"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 486
    invoke-virtual {p1, v6}, Lcom/feelingk/lguiab/vo/AuthAllInfo;->setResponseTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 487
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "result_code"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 488
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/feelingk/lguiab/vo/AuthAllInfo;->setResultCode(I)V

    goto/16 :goto_1

    .line 489
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "status"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 490
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/feelingk/lguiab/vo/AuthAllInfo;->setStatus(I)V

    goto/16 :goto_1

    .line 491
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "msg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 492
    invoke-virtual {p1, v6}, Lcom/feelingk/lguiab/vo/AuthAllInfo;->setMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 493
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "tot"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 494
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/feelingk/lguiab/vo/AuthAllInfo;->setTot(I)V

    goto/16 :goto_1

    .line 496
    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 497
    invoke-virtual {v3, v6}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setProductName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 498
    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "d"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 500
    const-string v9, "\\;"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 501
    .local v7, token:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v3, v9}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setPid(Ljava/lang/String;)V

    .line 502
    aget-object v9, v7, v11

    invoke-virtual {v3, v9}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setProductType(Ljava/lang/String;)V

    .line 503
    const/4 v9, 0x2

    aget-object v9, v7, v9

    invoke-virtual {v3, v9}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setProductKind(Ljava/lang/String;)V

    .line 504
    const/4 v9, 0x3

    aget-object v9, v7, v9

    invoke-virtual {v3, v9}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setUsePeriod(Ljava/lang/String;)V

    .line 505
    const/4 v9, 0x4

    aget-object v9, v7, v9

    invoke-virtual {v3, v9}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setPrice(Ljava/lang/String;)V

    .line 506
    const/4 v9, 0x5

    aget-object v9, v7, v9

    invoke-virtual {v3, v9}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setRegDate(Ljava/lang/String;)V

    .line 507
    const/4 v9, 0x6

    aget-object v9, v7, v9

    invoke-virtual {v3, v9}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setEndDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static parserXML(Ljava/lang/String;Lcom/feelingk/lguiab/vo/BuyCheckInfo;)Lcom/feelingk/lguiab/vo/BuyCheckInfo;
    .locals 10
    .parameter "xmlString"
    .parameter "buyCheckInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 156
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 157
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 158
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 160
    .local v6, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 161
    const-string v4, ""

    .line 162
    .local v4, sTag:Ljava/lang/String;
    const-string v0, ""

    .line 163
    .local v0, eTag:Ljava/lang/String;
    const-string v5, ""

    .line 165
    .local v5, tTag:Ljava/lang/String;
    new-instance v3, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-direct {v3}, Lcom/feelingk/lguiab/vo/ProductItemInfo;-><init>()V

    .line 167
    .local v3, productItemInfo:Lcom/feelingk/lguiab/vo/ProductItemInfo;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 168
    .local v1, eventType:I
    :goto_0
    if-ne v1, v9, :cond_0

    .line 221
    return-object p1

    .line 170
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 219
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 173
    :pswitch_1
    const-string v7, "[BuyCheck] Start document"

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 176
    :pswitch_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[BuyCheck] Start tag == > "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :pswitch_3
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[BuyCheck] End tag ==> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "product"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 186
    invoke-virtual {p1, v3}, Lcom/feelingk/lguiab/vo/BuyCheckInfo;->setProdcutItem(Lcom/feelingk/lguiab/vo/ProductItemInfo;)V

    goto :goto_1

    .line 189
    :pswitch_4
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 190
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[BuyCheck] TEXT  ==> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "service_name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 193
    invoke-virtual {p1, v5}, Lcom/feelingk/lguiab/vo/BuyCheckInfo;->setServiceName(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "request_time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 195
    invoke-virtual {p1, v5}, Lcom/feelingk/lguiab/vo/BuyCheckInfo;->setRequestTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 196
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "response_time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 197
    invoke-virtual {p1, v5}, Lcom/feelingk/lguiab/vo/BuyCheckInfo;->setResponseTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 198
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "result_code"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 199
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/feelingk/lguiab/vo/BuyCheckInfo;->setResultCode(I)V

    goto/16 :goto_1

    .line 200
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "status"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 201
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/feelingk/lguiab/vo/BuyCheckInfo;->setStatus(I)V

    goto/16 :goto_1

    .line 202
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "msg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 203
    invoke-virtual {p1, v5}, Lcom/feelingk/lguiab/vo/BuyCheckInfo;->setMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 205
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "pid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 206
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setPid(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 207
    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "productName"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 208
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setProductName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 209
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "productType"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 210
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setProductType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 211
    :cond_a
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "productKind"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 212
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setProductKind(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 213
    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "usePeriod"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 214
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setUsePeriod(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 215
    :cond_c
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "price"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 216
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setPrice(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static parserXML(Ljava/lang/String;Lcom/feelingk/lguiab/vo/BuyConfirmInfo;)Lcom/feelingk/lguiab/vo/BuyConfirmInfo;
    .locals 10
    .parameter "xmlString"
    .parameter "buyConfirmInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 245
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 246
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 247
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 249
    .local v6, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 250
    const-string v4, ""

    .line 251
    .local v4, sTag:Ljava/lang/String;
    const-string v0, ""

    .line 252
    .local v0, eTag:Ljava/lang/String;
    const-string v5, ""

    .line 254
    .local v5, tTag:Ljava/lang/String;
    new-instance v3, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-direct {v3}, Lcom/feelingk/lguiab/vo/ProductItemInfo;-><init>()V

    .line 256
    .local v3, productItemInfo:Lcom/feelingk/lguiab/vo/ProductItemInfo;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 257
    .local v1, eventType:I
    :goto_0
    if-ne v1, v9, :cond_0

    .line 316
    return-object p1

    .line 259
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 314
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 262
    :pswitch_1
    const-string v7, "[BuyConfirm] Start document"

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :pswitch_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 269
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[BuyConfirm] Start tag == > "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :pswitch_3
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 273
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[BuyConfirm] End tag ==> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "product"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 275
    invoke-virtual {p1, v3}, Lcom/feelingk/lguiab/vo/BuyConfirmInfo;->setProdcutItem(Lcom/feelingk/lguiab/vo/ProductItemInfo;)V

    goto :goto_1

    .line 278
    :pswitch_4
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 279
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 280
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[BuyConfirm] TEXT  ==> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "service_name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 282
    invoke-virtual {p1, v5}, Lcom/feelingk/lguiab/vo/BuyConfirmInfo;->setServiceName(Ljava/lang/String;)V

    goto :goto_1

    .line 283
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "request_time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 284
    invoke-virtual {p1, v5}, Lcom/feelingk/lguiab/vo/BuyConfirmInfo;->setRequestTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 285
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "response_time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 286
    invoke-virtual {p1, v5}, Lcom/feelingk/lguiab/vo/BuyConfirmInfo;->setResponseTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 287
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "result_code"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 288
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/feelingk/lguiab/vo/BuyConfirmInfo;->setResultCode(I)V

    goto/16 :goto_1

    .line 289
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "status"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 290
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/feelingk/lguiab/vo/BuyConfirmInfo;->setStatus(I)V

    goto/16 :goto_1

    .line 291
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "msg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 292
    invoke-virtual {p1, v5}, Lcom/feelingk/lguiab/vo/BuyConfirmInfo;->setMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 294
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "aid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 295
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setaID(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 296
    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "pid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 297
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setPid(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 298
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "productName"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 299
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setProductName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 300
    :cond_a
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "productType"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 301
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setProductType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 302
    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "productKind"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 303
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setProductKind(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 304
    :cond_c
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "usePeriod"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 305
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setUsePeriod(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 306
    :cond_d
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "price"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 307
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setPrice(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 308
    :cond_e
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "regDate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 309
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setRegDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 310
    :cond_f
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "endDate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 311
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setEndDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static parserXML(Ljava/lang/String;Lcom/feelingk/lguiab/vo/FeeChargingInfo;)Lcom/feelingk/lguiab/vo/FeeChargingInfo;
    .locals 10
    .parameter "xmlString"
    .parameter "feeChargingInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 341
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 342
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 343
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 345
    .local v6, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 346
    const-string v4, ""

    .line 347
    .local v4, sTag:Ljava/lang/String;
    const-string v0, ""

    .line 348
    .local v0, eTag:Ljava/lang/String;
    const-string v5, ""

    .line 350
    .local v5, tTag:Ljava/lang/String;
    new-instance v3, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-direct {v3}, Lcom/feelingk/lguiab/vo/ProductItemInfo;-><init>()V

    .line 352
    .local v3, productItemInfo:Lcom/feelingk/lguiab/vo/ProductItemInfo;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 353
    .local v1, eventType:I
    :goto_0
    if-ne v1, v9, :cond_0

    .line 412
    return-object p1

    .line 355
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 410
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 358
    :pswitch_1
    const-string v7, "[FeeCharging] Start document"

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 361
    :pswitch_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 365
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[FeeCharging] Start tag == > "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 368
    :pswitch_3
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[FeeCharging] End tag ==> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "product"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 371
    invoke-virtual {p1, v3}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->setProdcutItem(Lcom/feelingk/lguiab/vo/ProductItemInfo;)V

    goto :goto_1

    .line 374
    :pswitch_4
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 375
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 376
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[FeeCharging] TEXT  ==> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "service_name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 378
    invoke-virtual {p1, v5}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->setServiceName(Ljava/lang/String;)V

    goto :goto_1

    .line 379
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "request_time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 380
    invoke-virtual {p1, v5}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->setRequestTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 381
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "response_time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 382
    invoke-virtual {p1, v5}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->setResponseTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 383
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "result_code"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 384
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->setResultCode(I)V

    goto/16 :goto_1

    .line 385
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "status"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 386
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->setStatus(I)V

    goto/16 :goto_1

    .line 387
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "msg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 388
    invoke-virtual {p1, v5}, Lcom/feelingk/lguiab/vo/FeeChargingInfo;->setMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 390
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "aid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 391
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setaID(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 392
    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "pid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 393
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setPid(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 394
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "productName"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 395
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setProductName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 396
    :cond_a
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "productType"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 397
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setProductType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 398
    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "productKind"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 399
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setProductKind(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 400
    :cond_c
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "usePeriod"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 401
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setUsePeriod(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 402
    :cond_d
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "price"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 403
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setPrice(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 404
    :cond_e
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "regDate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 405
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setRegDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 406
    :cond_f
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "endDate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 407
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setEndDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static parserXML(Ljava/lang/String;Lcom/feelingk/lguiab/vo/ProductInfo;)Lcom/feelingk/lguiab/vo/ProductInfo;
    .locals 10
    .parameter "xmlString"
    .parameter "productInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 537
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 538
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 539
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 541
    .local v6, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 542
    const-string v4, ""

    .line 543
    .local v4, sTag:Ljava/lang/String;
    const-string v0, ""

    .line 544
    .local v0, eTag:Ljava/lang/String;
    const-string v5, ""

    .line 546
    .local v5, tTag:Ljava/lang/String;
    new-instance v3, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-direct {v3}, Lcom/feelingk/lguiab/vo/ProductItemInfo;-><init>()V

    .line 548
    .local v3, productItemInfo:Lcom/feelingk/lguiab/vo/ProductItemInfo;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 549
    .local v1, eventType:I
    :goto_0
    if-ne v1, v9, :cond_0

    .line 606
    return-object p1

    .line 551
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 604
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 554
    :pswitch_1
    const-string v7, "[ProductInfo] Start document"

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 557
    :pswitch_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 561
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ProductInfo] Start tag == > "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 564
    :pswitch_3
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 565
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ProductInfo] End tag ==> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "product"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 567
    invoke-virtual {p1, v3}, Lcom/feelingk/lguiab/vo/ProductInfo;->setProdcutItem(Lcom/feelingk/lguiab/vo/ProductItemInfo;)V

    goto :goto_1

    .line 570
    :pswitch_4
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 571
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 572
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[ProductInfo] TEXT  ==> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "service_name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 574
    invoke-virtual {p1, v5}, Lcom/feelingk/lguiab/vo/ProductInfo;->setServiceName(Ljava/lang/String;)V

    goto :goto_1

    .line 575
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "request_time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 576
    invoke-virtual {p1, v5}, Lcom/feelingk/lguiab/vo/ProductInfo;->setRequestTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 577
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "response_time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 578
    invoke-virtual {p1, v5}, Lcom/feelingk/lguiab/vo/ProductInfo;->setResponseTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 579
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "result_code"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 580
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/feelingk/lguiab/vo/ProductInfo;->setResultCode(I)V

    goto/16 :goto_1

    .line 581
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "status"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 582
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/feelingk/lguiab/vo/ProductInfo;->setStatus(I)V

    goto/16 :goto_1

    .line 583
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "msg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 584
    invoke-virtual {p1, v5}, Lcom/feelingk/lguiab/vo/ProductInfo;->setMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 586
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "pid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 587
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setPid(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 588
    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "productName"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 589
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setProductName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 590
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "productType"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 591
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setProductType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 592
    :cond_a
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "productKind"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 593
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setProductKind(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 594
    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "usePeriod"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 595
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setUsePeriod(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 596
    :cond_c
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "price"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 597
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setPrice(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 598
    :cond_d
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "regDate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 599
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setRegDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 600
    :cond_e
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "endDate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 601
    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->setEndDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static parserXML(Ljava/lang/String;Lcom/feelingk/lguiab/vo/UseItemInfo;)Lcom/feelingk/lguiab/vo/UseItemInfo;
    .locals 9
    .parameter "xmlString"
    .parameter "useItemInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 687
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 688
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2, v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 689
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 691
    .local v5, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 692
    const-string v3, ""

    .line 693
    .local v3, sTag:Ljava/lang/String;
    const-string v0, ""

    .line 694
    .local v0, eTag:Ljava/lang/String;
    const-string v4, ""

    .line 696
    .local v4, tTag:Ljava/lang/String;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 697
    .local v1, eventType:I
    :goto_0
    if-ne v1, v8, :cond_0

    .line 742
    return-object p1

    .line 699
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 740
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 702
    :pswitch_1
    const-string v6, "[UseItem] Start document"

    invoke-static {v6}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 705
    :pswitch_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 709
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[UseItem] Start tag == > "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 712
    :pswitch_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 713
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[UseItem] End tag ==> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 717
    :pswitch_4
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 718
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 719
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[UseItem] TEXT  ==> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "service_name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 721
    invoke-virtual {p1, v4}, Lcom/feelingk/lguiab/vo/UseItemInfo;->setServiceName(Ljava/lang/String;)V

    goto :goto_1

    .line 722
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "request_time"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 723
    invoke-virtual {p1, v4}, Lcom/feelingk/lguiab/vo/UseItemInfo;->setRequestTime(Ljava/lang/String;)V

    goto :goto_1

    .line 724
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "response_time"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 725
    invoke-virtual {p1, v4}, Lcom/feelingk/lguiab/vo/UseItemInfo;->setResponseTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 726
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "result_code"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 727
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/feelingk/lguiab/vo/UseItemInfo;->setResultCode(I)V

    goto/16 :goto_1

    .line 728
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "status"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 729
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/feelingk/lguiab/vo/UseItemInfo;->setStatus(I)V

    goto/16 :goto_1

    .line 730
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 731
    invoke-virtual {p1, v4}, Lcom/feelingk/lguiab/vo/UseItemInfo;->setMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 732
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 733
    invoke-virtual {p1, v4}, Lcom/feelingk/lguiab/vo/UseItemInfo;->setPid(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 734
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "productName"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 735
    invoke-virtual {p1, v4}, Lcom/feelingk/lguiab/vo/UseItemInfo;->setProductName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 736
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cnt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 737
    invoke-virtual {p1, v4}, Lcom/feelingk/lguiab/vo/UseItemInfo;->setCnt(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static parserXML(Ljava/lang/String;Lcom/feelingk/lguiab/vo/UserAuthInfo;)Lcom/feelingk/lguiab/vo/UserAuthInfo;
    .locals 9
    .parameter "xmlString"
    .parameter "userAuthInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 622
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 623
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2, v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 624
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 626
    .local v5, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 627
    const-string v3, ""

    .line 628
    .local v3, sTag:Ljava/lang/String;
    const-string v0, ""

    .line 629
    .local v0, eTag:Ljava/lang/String;
    const-string v4, ""

    .line 631
    .local v4, tTag:Ljava/lang/String;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 632
    .local v1, eventType:I
    :goto_0
    if-ne v1, v8, :cond_0

    .line 670
    return-object p1

    .line 634
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 668
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 637
    :pswitch_1
    const-string v6, "[UserAuth] Start document"

    invoke-static {v6}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 640
    :pswitch_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 644
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[UserAuth] Start tag == > "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 647
    :pswitch_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 648
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[UserAuth] End tag ==> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 651
    :pswitch_4
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 652
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 653
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[UserAuth] TEXT  ==> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 654
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "service_name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 655
    invoke-virtual {p1, v4}, Lcom/feelingk/lguiab/vo/UserAuthInfo;->setServiceName(Ljava/lang/String;)V

    goto :goto_1

    .line 656
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "request_time"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 657
    invoke-virtual {p1, v4}, Lcom/feelingk/lguiab/vo/UserAuthInfo;->setRequestTime(Ljava/lang/String;)V

    goto :goto_1

    .line 658
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "response_time"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 659
    invoke-virtual {p1, v4}, Lcom/feelingk/lguiab/vo/UserAuthInfo;->setResponseTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 660
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "result_code"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 661
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/feelingk/lguiab/vo/UserAuthInfo;->setResultCode(I)V

    goto/16 :goto_1

    .line 662
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "status"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 663
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/feelingk/lguiab/vo/UserAuthInfo;->setStatus(I)V

    goto/16 :goto_1

    .line 664
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 665
    invoke-virtual {p1, v4}, Lcom/feelingk/lguiab/vo/UserAuthInfo;->setMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static productInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/ProductInfo;
    .locals 2
    .parameter "xmlString"

    .prologue
    .line 105
    :try_start_0
    new-instance v1, Lcom/feelingk/lguiab/vo/ProductInfo;

    invoke-direct {v1}, Lcom/feelingk/lguiab/vo/ProductInfo;-><init>()V

    invoke-static {p0, v1}, Lcom/feelingk/lguiab/util/ParserXML;->parserXML(Ljava/lang/String;Lcom/feelingk/lguiab/vo/ProductInfo;)Lcom/feelingk/lguiab/vo/ProductInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 107
    :goto_0
    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static useItemInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/UseItemInfo;
    .locals 2
    .parameter "xmlString"

    .prologue
    .line 131
    :try_start_0
    new-instance v1, Lcom/feelingk/lguiab/vo/UseItemInfo;

    invoke-direct {v1}, Lcom/feelingk/lguiab/vo/UseItemInfo;-><init>()V

    invoke-static {p0, v1}, Lcom/feelingk/lguiab/util/ParserXML;->parserXML(Ljava/lang/String;Lcom/feelingk/lguiab/vo/UseItemInfo;)Lcom/feelingk/lguiab/vo/UseItemInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 133
    :goto_0
    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static userAuthInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/UserAuthInfo;
    .locals 2
    .parameter "xmlString"

    .prologue
    .line 118
    :try_start_0
    new-instance v1, Lcom/feelingk/lguiab/vo/UserAuthInfo;

    invoke-direct {v1}, Lcom/feelingk/lguiab/vo/UserAuthInfo;-><init>()V

    invoke-static {p0, v1}, Lcom/feelingk/lguiab/util/ParserXML;->parserXML(Ljava/lang/String;Lcom/feelingk/lguiab/vo/UserAuthInfo;)Lcom/feelingk/lguiab/vo/UserAuthInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    const/4 v1, 0x0

    goto :goto_0
.end method
