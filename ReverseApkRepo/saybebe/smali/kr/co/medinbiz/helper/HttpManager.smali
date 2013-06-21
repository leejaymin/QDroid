.class public Lkr/co/medinbiz/helper/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# static fields
.field public static DOMAIN:Ljava/lang/String; = null

.field public static final DOMAIN_CN:Ljava/lang/String; = "http://cn.saybebe.com/medismart/saybebe"

.field public static final DOMAIN_DEFAULT:Ljava/lang/String; = "http://app.saybebe.com/medismart/saybebe"

.field public static final DOMAIN_EN:Ljava/lang/String; = "http://us.saybebe.com/medismart/saybebe"

.field public static final DOMAIN_JA:Ljava/lang/String; = "http://www.saybebe.jp/medismart/saybebe"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParser:Lkr/co/medinbiz/helper/XmlParserHelper;

.field private pm:Lkr/co/medinbiz/helper/PreferencesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "http://app.saybebe.com/medismart/saybebe"

    sput-object v0, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lkr/co/medinbiz/helper/HttpManager;->mContext:Landroid/content/Context;

    .line 63
    new-instance v1, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v1, p1}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 64
    new-instance v1, Lkr/co/medinbiz/helper/XmlParserHelper;

    invoke-direct {v1, p1}, Lkr/co/medinbiz/helper/XmlParserHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/helper/HttpManager;->mParser:Lkr/co/medinbiz/helper/XmlParserHelper;

    .line 66
    iget-object v1, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v1}, Lkr/co/medinbiz/helper/PreferencesManager;->getServer()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, server:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 69
    const-string v1, "ko"

    invoke-static {v1}, Lkr/co/medinbiz/helper/HttpManager;->setDomain(Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {v0}, Lkr/co/medinbiz/helper/HttpManager;->setDomain(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
    .locals 1
    .parameter "in"
    .parameter "conn"

    .prologue
    .line 560
    if-eqz p1, :cond_0

    .line 562
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 569
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 571
    :cond_1
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 565
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private cookieMapping(Ljava/net/HttpURLConnection;)V
    .locals 8
    .parameter "conn"

    .prologue
    .line 535
    if-eqz p1, :cond_1

    .line 536
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 537
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v3, :cond_1

    .line 538
    const-string v4, "set-cookie"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 539
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 540
    .local v0, cook:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 541
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 545
    :cond_0
    iget-object v4, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v4, v0}, Lkr/co/medinbiz/helper/PreferencesManager;->setCookie(Ljava/lang/String;)V

    .line 549
    .end local v0           #cook:Ljava/lang/String;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    return-void

    .line 541
    .restart local v0       #cook:Ljava/lang/String;
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 542
    .local v1, cookie:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "path=/"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private encoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 601
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getConnectInputStream(Ljava/net/HttpURLConnection;Ljava/lang/StringBuffer;)Ljava/io/InputStream;
    .locals 3
    .parameter "conn"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1388

    const/4 v1, 0x1

    .line 513
    if-eqz p1, :cond_0

    .line 514
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 515
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 516
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 517
    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 519
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 521
    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 522
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 521
    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 523
    .local v0, writer:Ljava/io/PrintWriter;
    if-eqz p2, :cond_1

    .line 524
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 526
    :cond_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 527
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public static setDomain(Ljava/lang/String;)V
    .locals 1
    .parameter "strLanguage"

    .prologue
    .line 49
    const-string v0, "en"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "http://us.saybebe.com/medismart/saybebe"

    sput-object v0, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v0, "ja"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const-string v0, "http://www.saybebe.jp/medismart/saybebe"

    sput-object v0, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_1
    const-string v0, "zh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    const-string v0, "http://cn.saybebe.com/medismart/saybebe"

    sput-object v0, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_2
    const-string v0, "http://app.saybebe.com/medismart/saybebe"

    sput-object v0, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    goto :goto_0
.end method

.method private xmlSave(Ljava/io/InputStream;)V
    .locals 7
    .parameter "in"

    .prologue
    .line 582
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 583
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "abcd"

    .line 582
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .local v4, temp:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 585
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 587
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v5, "test.xml"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 588
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 589
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 590
    .local v3, n:I
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 591
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 594
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 598
    .end local v0           #buffer:[B
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #n:I
    .end local v4           #temp:Ljava/io/File;
    :goto_1
    return-void

    .line 592
    .restart local v0       #buffer:[B
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #n:I
    .restart local v4       #temp:Ljava/io/File;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 595
    .end local v0           #buffer:[B
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #n:I
    .end local v4           #temp:Ljava/io/File;
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public contactList()Lkr/co/medinbiz/dto/ContactList;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 370
    .local v3, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v7, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/smart_contact_list_xml.asp"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 371
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 372
    const-string v5, "cookie"

    iget-object v7, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v7}, Lkr/co/medinbiz/helper/PreferencesManager;->getCookie()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5}, Lkr/co/medinbiz/helper/HttpManager;->getConnectInputStream(Ljava/net/HttpURLConnection;Ljava/lang/StringBuffer;)Ljava/io/InputStream;

    move-result-object v3

    .line 376
    iget-object v5, p0, Lkr/co/medinbiz/helper/HttpManager;->mParser:Lkr/co/medinbiz/helper/XmlParserHelper;

    invoke-virtual {v5, v3}, Lkr/co/medinbiz/helper/XmlParserHelper;->getContactList(Ljava/io/InputStream;)Lkr/co/medinbiz/dto/ContactList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 380
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 383
    .end local v4           #url:Ljava/net/URL;
    :goto_0
    return-object v5

    .line 377
    :catch_0
    move-exception v2

    .line 378
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "http"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    move-object v5, v6

    .line 383
    goto :goto_0

    .line 379
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 380
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 381
    throw v5
.end method

.method public geoCoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "geo"

    .prologue
    const/4 v12, 0x0

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, code:Ljava/lang/String;
    const/4 v4, 0x0

    .line 466
    .local v4, in:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 467
    .local v7, parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x0

    .line 469
    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 470
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 471
    new-instance v8, Ljava/net/URL;

    .line 472
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://maps.google.com/maps/api/geocode/xml?latlng="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 473
    const-string v10, "&language=ko&sensor=true"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 472
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 471
    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 474
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    .line 475
    const-string v9, "UTF-8"

    invoke-interface {v6, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 476
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 477
    .local v3, eventType:I
    const/4 v1, 0x0

    .line 478
    .local v1, done:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 496
    invoke-direct {p0, v4, v12}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 498
    .end local v1           #done:Z
    .end local v3           #eventType:I
    .end local v8           #url:Ljava/net/URL;
    :goto_1
    return-object v0

    .line 479
    .restart local v1       #done:Z
    .restart local v3       #eventType:I
    .restart local v8       #url:Ljava/net/URL;
    :cond_0
    const/4 v5, 0x0

    .line 480
    .local v5, name:Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 490
    :cond_1
    :goto_2
    :try_start_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 482
    :pswitch_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 483
    const-string v9, "formatted_address"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 484
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 485
    const/4 v1, 0x1

    goto :goto_2

    .line 493
    .end local v1           #done:Z
    .end local v3           #eventType:I
    .end local v5           #name:Ljava/lang/String;
    .end local v8           #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 494
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "http"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 496
    invoke-direct {p0, v4, v12}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    goto :goto_1

    .line 495
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 496
    invoke-direct {p0, v4, v12}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 497
    throw v9

    .line 480
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public inviteChange(Ljava/lang/String;Ljava/lang/String;)Lkr/co/medinbiz/dto/Roots;
    .locals 9
    .parameter "hp"
    .parameter "status"

    .prologue
    .line 396
    const/4 v1, 0x0

    .line 397
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 398
    .local v3, in:Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 399
    .local v4, params:Ljava/lang/StringBuffer;
    const-string v6, "hp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/smart_change_status_xml.asp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 404
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 405
    const-string v6, "cookie"

    iget-object v7, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v7}, Lkr/co/medinbiz/helper/PreferencesManager;->getCookie()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-direct {p0, v1, v4}, Lkr/co/medinbiz/helper/HttpManager;->getConnectInputStream(Ljava/net/HttpURLConnection;Ljava/lang/StringBuffer;)Ljava/io/InputStream;

    move-result-object v3

    .line 408
    iget-object v6, p0, Lkr/co/medinbiz/helper/HttpManager;->mParser:Lkr/co/medinbiz/helper/XmlParserHelper;

    invoke-virtual {v6, v3}, Lkr/co/medinbiz/helper/XmlParserHelper;->getRoots(Ljava/io/InputStream;)Lkr/co/medinbiz/dto/Roots;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 412
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 415
    .end local v5           #url:Ljava/net/URL;
    :goto_0
    return-object v6

    .line 409
    :catch_0
    move-exception v2

    .line 410
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "http"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 415
    const/4 v6, 0x0

    goto :goto_0

    .line 411
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 412
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 413
    throw v6
.end method

.method public inviteSend(Ljava/lang/String;Ljava/lang/String;)Lkr/co/medinbiz/dto/Roots;
    .locals 10
    .parameter "hp"
    .parameter "msg"

    .prologue
    .line 428
    iget-object v7, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v7}, Lkr/co/medinbiz/helper/PreferencesManager;->getHcode()Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, hcode:Ljava/lang/String;
    const/4 v1, 0x0

    .line 430
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 431
    .local v4, in:Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 432
    .local v5, params:Ljava/lang/StringBuffer;
    const-string v7, "hp"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "msg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    if-eqz v3, :cond_0

    const-string v7, "saybebe"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 436
    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "hcode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    :cond_0
    :try_start_0
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/smart_invite_sms_xml.asp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 442
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 443
    const-string v7, "cookie"

    iget-object v8, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v8}, Lkr/co/medinbiz/helper/PreferencesManager;->getCookie()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-direct {p0, v1, v5}, Lkr/co/medinbiz/helper/HttpManager;->getConnectInputStream(Ljava/net/HttpURLConnection;Ljava/lang/StringBuffer;)Ljava/io/InputStream;

    move-result-object v4

    .line 446
    iget-object v7, p0, Lkr/co/medinbiz/helper/HttpManager;->mParser:Lkr/co/medinbiz/helper/XmlParserHelper;

    invoke-virtual {v7, v4}, Lkr/co/medinbiz/helper/XmlParserHelper;->getRoots(Ljava/io/InputStream;)Lkr/co/medinbiz/dto/Roots;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 450
    invoke-direct {p0, v4, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 453
    .end local v6           #url:Ljava/net/URL;
    :goto_0
    return-object v7

    .line 447
    :catch_0
    move-exception v2

    .line 448
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v7, "http"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    invoke-direct {p0, v4, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 453
    const/4 v7, 0x0

    goto :goto_0

    .line 449
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 450
    invoke-direct {p0, v4, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 451
    throw v7
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkr/co/medinbiz/dto/Roots;
    .locals 12
    .parameter "id"
    .parameter "pw"
    .parameter "hp"

    .prologue
    const/4 v9, 0x0

    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 146
    .local v3, in:Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    .local v4, params:Ljava/lang/StringBuffer;
    const-string v8, "userid"

    invoke-direct {p0, v8}, Lkr/co/medinbiz/helper/HttpManager;->encoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-direct {p0, p1}, Lkr/co/medinbiz/helper/HttpManager;->encoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    const-string v8, "&"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "type"

    invoke-direct {p0, v10}, Lkr/co/medinbiz/helper/HttpManager;->encoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 149
    const-string v10, "saybebe"

    invoke-direct {p0, v10}, Lkr/co/medinbiz/helper/HttpManager;->encoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v8, "&"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "userpw"

    invoke-direct {p0, v10}, Lkr/co/medinbiz/helper/HttpManager;->encoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 151
    invoke-direct {p0, p2}, Lkr/co/medinbiz/helper/HttpManager;->encoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const-string v8, "&"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "version"

    invoke-direct {p0, v10}, Lkr/co/medinbiz/helper/HttpManager;->encoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 153
    sget-object v10, Lkr/co/medinbiz/helper/AppData;->appVersion:Ljava/lang/String;

    invoke-direct {p0, v10}, Lkr/co/medinbiz/helper/HttpManager;->encoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    if-nez p3, :cond_0

    .line 155
    const-string p3, "0"

    .line 157
    :cond_0
    const-string v8, "&"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "hp"

    invoke-direct {p0, v10}, Lkr/co/medinbiz/helper/HttpManager;->encoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 158
    invoke-direct {p0, p3}, Lkr/co/medinbiz/helper/HttpManager;->encoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    sget-object v8, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 161
    iget-object v8, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lkr/co/medinbiz/helper/PreferencesManager;->setForeignVersion(Z)V

    .line 162
    iget-object v8, p0, Lkr/co/medinbiz/helper/HttpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v6, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 163
    .local v6, systemLocale:Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, strLanguage:Ljava/lang/String;
    const-string v8, "en"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 165
    iget-object v8, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    const-string v10, "en"

    invoke-virtual {v8, v10}, Lkr/co/medinbiz/helper/PreferencesManager;->setServer(Ljava/lang/String;)V

    .line 166
    const-string v8, "en"

    invoke-static {v8}, Lkr/co/medinbiz/helper/HttpManager;->setDomain(Ljava/lang/String;)V

    .line 183
    .end local v5           #strLanguage:Ljava/lang/String;
    .end local v6           #systemLocale:Ljava/util/Locale;
    :goto_0
    :try_start_0
    new-instance v7, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v10, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/smart_login_xml.asp"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 184
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 185
    invoke-direct {p0, v1, v4}, Lkr/co/medinbiz/helper/HttpManager;->getConnectInputStream(Ljava/net/HttpURLConnection;Ljava/lang/StringBuffer;)Ljava/io/InputStream;

    move-result-object v3

    .line 187
    iget-object v8, p0, Lkr/co/medinbiz/helper/HttpManager;->mParser:Lkr/co/medinbiz/helper/XmlParserHelper;

    invoke-virtual {v8, v3}, Lkr/co/medinbiz/helper/XmlParserHelper;->getRoots(Ljava/io/InputStream;)Lkr/co/medinbiz/dto/Roots;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 191
    invoke-direct {p0, v1}, Lkr/co/medinbiz/helper/HttpManager;->cookieMapping(Ljava/net/HttpURLConnection;)V

    .line 192
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 195
    .end local v7           #url:Ljava/net/URL;
    :goto_1
    return-object v8

    .line 167
    .restart local v5       #strLanguage:Ljava/lang/String;
    .restart local v6       #systemLocale:Ljava/util/Locale;
    :cond_1
    const-string v8, "zh"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 168
    iget-object v8, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    const-string v10, "zh"

    invoke-virtual {v8, v10}, Lkr/co/medinbiz/helper/PreferencesManager;->setServer(Ljava/lang/String;)V

    .line 169
    const-string v8, "zh"

    invoke-static {v8}, Lkr/co/medinbiz/helper/HttpManager;->setDomain(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v8, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    const-string v10, "ja"

    invoke-virtual {v8, v10}, Lkr/co/medinbiz/helper/PreferencesManager;->setServer(Ljava/lang/String;)V

    .line 173
    const-string v8, "ja"

    invoke-static {v8}, Lkr/co/medinbiz/helper/HttpManager;->setDomain(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v5           #strLanguage:Ljava/lang/String;
    .end local v6           #systemLocale:Ljava/util/Locale;
    :cond_3
    iget-object v8, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lkr/co/medinbiz/helper/PreferencesManager;->setForeignVersion(Z)V

    .line 177
    iget-object v8, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v8, v9}, Lkr/co/medinbiz/helper/PreferencesManager;->setServer(Ljava/lang/String;)V

    .line 178
    const-string v8, "ko"

    invoke-static {v8}, Lkr/co/medinbiz/helper/HttpManager;->setDomain(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :catch_0
    move-exception v2

    .line 189
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v8, "http"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Exception = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    invoke-direct {p0, v1}, Lkr/co/medinbiz/helper/HttpManager;->cookieMapping(Ljava/net/HttpURLConnection;)V

    .line 192
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    move-object v8, v9

    .line 195
    goto :goto_1

    .line 190
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 191
    invoke-direct {p0, v1}, Lkr/co/medinbiz/helper/HttpManager;->cookieMapping(Ljava/net/HttpURLConnection;)V

    .line 192
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 193
    throw v8
.end method

.method public loginHP(Ljava/lang/String;)Lkr/co/medinbiz/dto/Roots;
    .locals 9
    .parameter "hp"

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 209
    .local v3, in:Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .local v4, params:Ljava/lang/StringBuffer;
    const-string v6, "hp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "invite"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "version"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 213
    sget-object v7, Lkr/co/medinbiz/helper/AppData;->appVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/smart_login_xml.asp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 217
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 218
    invoke-direct {p0, v1, v4}, Lkr/co/medinbiz/helper/HttpManager;->getConnectInputStream(Ljava/net/HttpURLConnection;Ljava/lang/StringBuffer;)Ljava/io/InputStream;

    move-result-object v3

    .line 220
    iget-object v6, p0, Lkr/co/medinbiz/helper/HttpManager;->mParser:Lkr/co/medinbiz/helper/XmlParserHelper;

    invoke-virtual {v6, v3}, Lkr/co/medinbiz/helper/XmlParserHelper;->getRoots(Ljava/io/InputStream;)Lkr/co/medinbiz/dto/Roots;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 224
    invoke-direct {p0, v1}, Lkr/co/medinbiz/helper/HttpManager;->cookieMapping(Ljava/net/HttpURLConnection;)V

    .line 225
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 228
    .end local v5           #url:Ljava/net/URL;
    :goto_0
    return-object v6

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "http"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    invoke-direct {p0, v1}, Lkr/co/medinbiz/helper/HttpManager;->cookieMapping(Ljava/net/HttpURLConnection;)V

    .line 225
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 228
    const/4 v6, 0x0

    goto :goto_0

    .line 223
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 224
    invoke-direct {p0, v1}, Lkr/co/medinbiz/helper/HttpManager;->cookieMapping(Ljava/net/HttpURLConnection;)V

    .line 225
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 226
    throw v6
.end method

.method public memberJoin(Lkr/co/medinbiz/dto/MemberJoin;)Lkr/co/medinbiz/dto/Roots;
    .locals 9
    .parameter "join"

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 242
    .local v3, in:Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 243
    .local v4, params:Ljava/lang/StringBuffer;
    const-string v6, "name"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p1, Lkr/co/medinbiz/dto/MemberJoin;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "jumin1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p1, Lkr/co/medinbiz/dto/MemberJoin;->jumin1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "jumin2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p1, Lkr/co/medinbiz/dto/MemberJoin;->jumin2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "hp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p1, Lkr/co/medinbiz/dto/MemberJoin;->hp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "email"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p1, Lkr/co/medinbiz/dto/MemberJoin;->email:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "agree1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p1, Lkr/co/medinbiz/dto/MemberJoin;->agree1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "agree2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p1, Lkr/co/medinbiz/dto/MemberJoin;->agree2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "agree3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p1, Lkr/co/medinbiz/dto/MemberJoin;->agree3:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/smart_regist_xml.asp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 254
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 255
    invoke-direct {p0, v1, v4}, Lkr/co/medinbiz/helper/HttpManager;->getConnectInputStream(Ljava/net/HttpURLConnection;Ljava/lang/StringBuffer;)Ljava/io/InputStream;

    move-result-object v3

    .line 257
    iget-object v6, p0, Lkr/co/medinbiz/helper/HttpManager;->mParser:Lkr/co/medinbiz/helper/XmlParserHelper;

    invoke-virtual {v6, v3}, Lkr/co/medinbiz/helper/XmlParserHelper;->getRoots(Ljava/io/InputStream;)Lkr/co/medinbiz/dto/Roots;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 261
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 264
    .end local v5           #url:Ljava/net/URL;
    :goto_0
    return-object v6

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "http"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 264
    const/4 v6, 0x0

    goto :goto_0

    .line 260
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 261
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 262
    throw v6
.end method

.method public memberList()Lkr/co/medinbiz/dto/MemberList;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 273
    const/4 v1, 0x0

    .line 274
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 277
    .local v3, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v7, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/smart_member_list_xml.asp"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 278
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 279
    const-string v5, "cookie"

    iget-object v7, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v7}, Lkr/co/medinbiz/helper/PreferencesManager;->getCookie()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5}, Lkr/co/medinbiz/helper/HttpManager;->getConnectInputStream(Ljava/net/HttpURLConnection;Ljava/lang/StringBuffer;)Ljava/io/InputStream;

    move-result-object v3

    .line 282
    iget-object v5, p0, Lkr/co/medinbiz/helper/HttpManager;->mParser:Lkr/co/medinbiz/helper/XmlParserHelper;

    invoke-virtual {v5, v3}, Lkr/co/medinbiz/helper/XmlParserHelper;->getMemberList(Ljava/io/InputStream;)Lkr/co/medinbiz/dto/MemberList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 286
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 289
    .end local v4           #url:Ljava/net/URL;
    :goto_0
    return-object v5

    .line 283
    :catch_0
    move-exception v2

    .line 284
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "http"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    move-object v5, v6

    .line 289
    goto :goto_0

    .line 285
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 286
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 287
    throw v5
.end method

.method public phoneCheck(Ljava/lang/String;Ljava/lang/String;)Lkr/co/medinbiz/dto/Roots;
    .locals 9
    .parameter "hp"
    .parameter "cer_num"

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 88
    .local v3, in:Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v4, params:Ljava/lang/StringBuffer;
    const-string v6, "hp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "cer_num"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/smart_send_sms_ok_xml.asp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 94
    invoke-direct {p0, v1, v4}, Lkr/co/medinbiz/helper/HttpManager;->getConnectInputStream(Ljava/net/HttpURLConnection;Ljava/lang/StringBuffer;)Ljava/io/InputStream;

    move-result-object v3

    .line 96
    iget-object v6, p0, Lkr/co/medinbiz/helper/HttpManager;->mParser:Lkr/co/medinbiz/helper/XmlParserHelper;

    invoke-virtual {v6, v3}, Lkr/co/medinbiz/helper/XmlParserHelper;->getRoots(Ljava/io/InputStream;)Lkr/co/medinbiz/dto/Roots;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 100
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 103
    .end local v5           #url:Ljava/net/URL;
    :goto_0
    return-object v6

    .line 97
    :catch_0
    move-exception v2

    .line 98
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "http"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 103
    const/4 v6, 0x0

    goto :goto_0

    .line 99
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 100
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 101
    throw v6
.end method

.method public phoneSend(Ljava/lang/String;)Lkr/co/medinbiz/dto/Roots;
    .locals 9
    .parameter "hp"

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 117
    .local v3, in:Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    .local v4, params:Ljava/lang/StringBuffer;
    const-string v6, "hp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/smart_send_sms_xml.asp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 121
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 122
    invoke-direct {p0, v1, v4}, Lkr/co/medinbiz/helper/HttpManager;->getConnectInputStream(Ljava/net/HttpURLConnection;Ljava/lang/StringBuffer;)Ljava/io/InputStream;

    move-result-object v3

    .line 124
    iget-object v6, p0, Lkr/co/medinbiz/helper/HttpManager;->mParser:Lkr/co/medinbiz/helper/XmlParserHelper;

    invoke-virtual {v6, v3}, Lkr/co/medinbiz/helper/XmlParserHelper;->getRoots(Ljava/io/InputStream;)Lkr/co/medinbiz/dto/Roots;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 128
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 131
    .end local v5           #url:Ljava/net/URL;
    :goto_0
    return-object v6

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "http"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 131
    const/4 v6, 0x0

    goto :goto_0

    .line 127
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 128
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 129
    throw v6
.end method

.method public photoList(Ljava/lang/String;I)Lkr/co/medinbiz/dto/PhotoList;
    .locals 9
    .parameter "mnum"
    .parameter "aPage"

    .prologue
    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 303
    .local v3, in:Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 304
    .local v4, params:Ljava/lang/StringBuffer;
    const-string v6, "mnum"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "page"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 308
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/smart_photo_list_xml.asp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 309
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 310
    const-string v6, "cookie"

    iget-object v7, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v7}, Lkr/co/medinbiz/helper/PreferencesManager;->getCookie()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0, v1, v4}, Lkr/co/medinbiz/helper/HttpManager;->getConnectInputStream(Ljava/net/HttpURLConnection;Ljava/lang/StringBuffer;)Ljava/io/InputStream;

    move-result-object v3

    .line 315
    iget-object v6, p0, Lkr/co/medinbiz/helper/HttpManager;->mParser:Lkr/co/medinbiz/helper/XmlParserHelper;

    invoke-virtual {v6, v3}, Lkr/co/medinbiz/helper/XmlParserHelper;->getPhotoList(Ljava/io/InputStream;)Lkr/co/medinbiz/dto/PhotoList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 319
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 322
    .end local v5           #url:Ljava/net/URL;
    :goto_0
    return-object v6

    .line 316
    :catch_0
    move-exception v2

    .line 317
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "http"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 322
    const/4 v6, 0x0

    goto :goto_0

    .line 318
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 319
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 320
    throw v6
.end method

.method public setDomainPerLocale()V
    .locals 3

    .prologue
    .line 43
    iget-object v2, p0, Lkr/co/medinbiz/helper/HttpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 44
    .local v1, systemLocale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, strLanguage:Ljava/lang/String;
    invoke-static {v0}, Lkr/co/medinbiz/helper/HttpManager;->setDomain(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public videoList(Ljava/lang/String;I)Lkr/co/medinbiz/dto/VideoList;
    .locals 9
    .parameter "mnum"
    .parameter "aPage"

    .prologue
    .line 333
    const/4 v1, 0x0

    .line 334
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 336
    .local v3, in:Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 337
    .local v4, params:Ljava/lang/StringBuffer;
    const-string v6, "mnum"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "page"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    :try_start_0
    iget-object v6, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v6}, Lkr/co/medinbiz/helper/PreferencesManager;->getForeignVersion()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 342
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/smart_wmv_list_xml.asp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 346
    .local v5, url:Ljava/net/URL;
    :goto_0
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 347
    const-string v6, "cookie"

    iget-object v7, p0, Lkr/co/medinbiz/helper/HttpManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v7}, Lkr/co/medinbiz/helper/PreferencesManager;->getCookie()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-direct {p0, v1, v4}, Lkr/co/medinbiz/helper/HttpManager;->getConnectInputStream(Ljava/net/HttpURLConnection;Ljava/lang/StringBuffer;)Ljava/io/InputStream;

    move-result-object v3

    .line 350
    iget-object v6, p0, Lkr/co/medinbiz/helper/HttpManager;->mParser:Lkr/co/medinbiz/helper/XmlParserHelper;

    invoke-virtual {v6, v3}, Lkr/co/medinbiz/helper/XmlParserHelper;->getVideoList(Ljava/io/InputStream;)Lkr/co/medinbiz/dto/VideoList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 354
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 357
    .end local v5           #url:Ljava/net/URL;
    :goto_1
    return-object v6

    .line 344
    :cond_0
    :try_start_1
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lkr/co/medinbiz/helper/HttpManager;->DOMAIN:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/smart_video_list_xml.asp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5       #url:Ljava/net/URL;
    goto :goto_0

    .line 351
    .end local v5           #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 352
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "http"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 357
    const/4 v6, 0x0

    goto :goto_1

    .line 353
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 354
    invoke-direct {p0, v3, v1}, Lkr/co/medinbiz/helper/HttpManager;->connectionClose(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 355
    throw v6
.end method
