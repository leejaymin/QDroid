.class public Lcom/cauly/android/ad/AdHandler;
.super Ljava/lang/Object;
.source "AdHandler.java"


# static fields
.field static final AD_TYPE:Ljava/lang/String; = "ad_type"

.field static final CODE:Ljava/lang/String; = "code"

.field static final COLOR:Ljava/lang/String; = "color"

.field static final DESCRIPTION:Ljava/lang/String; = "description"

.field static final EVENT:Ljava/lang/String; = "event_img"

.field static final ID:Ljava/lang/String; = "id"

.field static final IMG:Ljava/lang/String; = "img"

.field static final LINK:Ljava/lang/String; = "link"

.field static final MARKET:Ljava/lang/String; = "market"

.field static final PAY_TYPE:Ljava/lang/String; = "pay_type"

.field static final Root:Ljava/lang/String; = "response"

.field static final TITLE:Ljava/lang/String; = "title"

.field static feedUrlString:Ljava/lang/String;


# instance fields
.field private final feedUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, ""

    sput-object v0, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    .line 16
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "ctx"
    .parameter "addr"
    .parameter "port"
    .parameter "page"
    .parameter "code"
    .parameter "gender"
    .parameter "age"
    .parameter "gps"
    .parameter "udid"
    .parameter "version"
    .parameter "adtype"
    .parameter "c_time"
    .parameter "r_time"
    .parameter "lang"
    .parameter "provider"
    .parameter "manufacturer"
    .parameter "model"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v1, Lcom/cauly/android/ad/AdCommon;

    invoke-direct {v1}, Lcom/cauly/android/ad/AdCommon;-><init>()V

    .line 38
    .local v1, Cm:Lcom/cauly/android/ad/AdCommon;
    const-string v3, "http://"

    sput-object v3, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/cauly/android/ad/AdCommon;->AD_SERVER_ADDRESS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/cauly/android/ad/AdCommon;->AD_SERVER_PORT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/cauly/android/ad/AdCommon;->AD_SERVER_PAGE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "gender="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "age="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    .line 42
    invoke-virtual {v1, p5}, Lcom/cauly/android/ad/AdCommon;->nullChk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    .line 46
    :cond_0
    invoke-virtual {v1, p8}, Lcom/cauly/android/ad/AdCommon;->nullChk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    .line 50
    :cond_1
    invoke-virtual {v1, p9}, Lcom/cauly/android/ad/AdCommon;->nullChk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cauly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    .line 54
    :cond_2
    invoke-virtual {v1, p10}, Lcom/cauly/android/ad/AdCommon;->nullChk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    .line 58
    :cond_3
    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Lcom/cauly/android/ad/AdCommon;->nullChk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pay_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    .line 62
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sdk_version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/cauly/android/ad/AdCommon;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "platform="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/cauly/android/ad/AdCommon;->PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lang="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p14

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    .line 65
    move-object/from16 v0, p15

    invoke-virtual {v1, v0}, Lcom/cauly/android/ad/AdCommon;->nullChk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "provider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p15

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    .line 69
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "manufacturer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "model="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    .line 74
    :try_start_0
    new-instance v3, Ljava/net/URL;

    sget-object v4, Lcom/cauly/android/ad/AdHandler;->feedUrlString:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/cauly/android/ad/AdHandler;->feedUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, e:Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method protected getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/cauly/android/ad/AdHandler;->feedUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cauly/android/ad/Message_Ads;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/cauly/android/ad/Message_Ads;

    invoke-direct {v0}, Lcom/cauly/android/ad/Message_Ads;-><init>()V

    .line 90
    .local v0, currentMessage:Lcom/cauly/android/ad/Message_Ads;
    new-instance v3, Landroid/sax/RootElement;

    const-string v4, "response"

    invoke-direct {v3, v4}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    .line 91
    .local v3, root:Landroid/sax/RootElement;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v2, messages:Ljava/util/List;,"Ljava/util/List<Lcom/cauly/android/ad/Message_Ads;>;"
    new-instance v4, Lcom/cauly/android/ad/AdHandler$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/cauly/android/ad/AdHandler$1;-><init>(Lcom/cauly/android/ad/AdHandler;Ljava/util/List;Lcom/cauly/android/ad/Message_Ads;)V

    invoke-virtual {v3, v4}, Landroid/sax/RootElement;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 98
    const-string v4, "pay_type"

    invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    new-instance v5, Lcom/cauly/android/ad/AdHandler$2;

    invoke-direct {v5, p0, v0}, Lcom/cauly/android/ad/AdHandler$2;-><init>(Lcom/cauly/android/ad/AdHandler;Lcom/cauly/android/ad/Message_Ads;)V

    invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 103
    const-string v4, "code"

    invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    new-instance v5, Lcom/cauly/android/ad/AdHandler$3;

    invoke-direct {v5, p0, v0}, Lcom/cauly/android/ad/AdHandler$3;-><init>(Lcom/cauly/android/ad/AdHandler;Lcom/cauly/android/ad/Message_Ads;)V

    invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 108
    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    new-instance v5, Lcom/cauly/android/ad/AdHandler$4;

    invoke-direct {v5, p0, v0}, Lcom/cauly/android/ad/AdHandler$4;-><init>(Lcom/cauly/android/ad/AdHandler;Lcom/cauly/android/ad/Message_Ads;)V

    invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 113
    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    new-instance v5, Lcom/cauly/android/ad/AdHandler$5;

    invoke-direct {v5, p0, v0}, Lcom/cauly/android/ad/AdHandler$5;-><init>(Lcom/cauly/android/ad/AdHandler;Lcom/cauly/android/ad/Message_Ads;)V

    invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 118
    const-string v4, "description"

    invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    new-instance v5, Lcom/cauly/android/ad/AdHandler$6;

    invoke-direct {v5, p0, v0}, Lcom/cauly/android/ad/AdHandler$6;-><init>(Lcom/cauly/android/ad/AdHandler;Lcom/cauly/android/ad/Message_Ads;)V

    invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 123
    const-string v4, "link"

    invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    new-instance v5, Lcom/cauly/android/ad/AdHandler$7;

    invoke-direct {v5, p0, v0}, Lcom/cauly/android/ad/AdHandler$7;-><init>(Lcom/cauly/android/ad/AdHandler;Lcom/cauly/android/ad/Message_Ads;)V

    invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 128
    const-string v4, "ad_type"

    invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    new-instance v5, Lcom/cauly/android/ad/AdHandler$8;

    invoke-direct {v5, p0, v0}, Lcom/cauly/android/ad/AdHandler$8;-><init>(Lcom/cauly/android/ad/AdHandler;Lcom/cauly/android/ad/Message_Ads;)V

    invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 133
    const-string v4, "img"

    invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    new-instance v5, Lcom/cauly/android/ad/AdHandler$9;

    invoke-direct {v5, p0, v0}, Lcom/cauly/android/ad/AdHandler$9;-><init>(Lcom/cauly/android/ad/AdHandler;Lcom/cauly/android/ad/Message_Ads;)V

    invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 138
    const-string v4, "color"

    invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    new-instance v5, Lcom/cauly/android/ad/AdHandler$10;

    invoke-direct {v5, p0, v0}, Lcom/cauly/android/ad/AdHandler$10;-><init>(Lcom/cauly/android/ad/AdHandler;Lcom/cauly/android/ad/Message_Ads;)V

    invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 143
    const-string v4, "market"

    invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    new-instance v5, Lcom/cauly/android/ad/AdHandler$11;

    invoke-direct {v5, p0, v0}, Lcom/cauly/android/ad/AdHandler$11;-><init>(Lcom/cauly/android/ad/AdHandler;Lcom/cauly/android/ad/Message_Ads;)V

    invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 148
    const-string v4, "event_img"

    invoke-virtual {v3, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    new-instance v5, Lcom/cauly/android/ad/AdHandler$12;

    invoke-direct {v5, p0, v0}, Lcom/cauly/android/ad/AdHandler$12;-><init>(Lcom/cauly/android/ad/AdHandler;Lcom/cauly/android/ad/Message_Ads;)V

    invoke-virtual {v4, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 155
    :try_start_0
    invoke-virtual {p0}, Lcom/cauly/android/ad/AdHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    sget-object v5, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v3}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return-object v2

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
