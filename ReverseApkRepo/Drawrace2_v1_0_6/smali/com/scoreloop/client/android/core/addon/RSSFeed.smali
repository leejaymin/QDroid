.class public Lcom/scoreloop/client/android/core/addon/RSSFeed;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/addon/RSSFeed$c;,
        Lcom/scoreloop/client/android/core/addon/RSSFeed$b;,
        Lcom/scoreloop/client/android/core/addon/RSSFeed$a;,
        Lcom/scoreloop/client/android/core/addon/RSSFeed$State;,
        Lcom/scoreloop/client/android/core/addon/RSSFeed$RequestNextItemCanceledException;,
        Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;,
        Lcom/scoreloop/client/android/core/addon/RSSFeed$ChainedPolicy;
    }
.end annotation


# static fields
.field public static final ON_START_POLICY:Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation
.end field

.field public static final STANDARD_POLICY:Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation
.end field

.field public static final STICKY_POLICY:Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation
.end field

.field public static final UNREAD_POLICY:Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation
.end field

.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/scoreloop/client/android/core/addon/RSSItem;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/addon/RSSItem;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/scoreloop/client/android/core/util/MainThreadHandler;

.field private f:Lorg/apache/http/client/methods/HttpUriRequest;

.field private g:Z

.field private h:Lcom/scoreloop/client/android/core/addon/RSSItem;

.field private final i:Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;

.field private final j:Lcom/scoreloop/client/android/core/model/Session;

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/scoreloop/client/android/core/addon/RSSItem;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/scoreloop/client/android/core/addon/RSSFeed$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a:Ljava/util/Set;

    .line 182
    new-instance v0, Lcom/scoreloop/client/android/core/addon/RSSFeed$a;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed$a;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->STANDARD_POLICY:Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;

    .line 217
    new-instance v0, Lcom/scoreloop/client/android/core/addon/RSSFeed$b;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed$b;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->STICKY_POLICY:Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;

    .line 234
    new-instance v0, Lcom/scoreloop/client/android/core/addon/RSSFeed$c;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed$c;-><init>()V

    sput-object v0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->UNREAD_POLICY:Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;

    .line 251
    new-instance v0, Lcom/scoreloop/client/android/core/addon/RSSFeed$ChainedPolicy;

    new-array v1, v5, [Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;

    sget-object v2, Lcom/scoreloop/client/android/core/addon/RSSFeed;->UNREAD_POLICY:Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;

    aput-object v2, v1, v3

    sget-object v2, Lcom/scoreloop/client/android/core/addon/RSSFeed;->STICKY_POLICY:Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/addon/RSSFeed$ChainedPolicy;-><init>([Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;)V

    sput-object v0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->ON_START_POLICY:Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;

    .line 276
    sget-object v0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a:Ljava/util/Set;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "image/png"

    aput-object v2, v1, v3

    const-string v2, "image/x-png"

    aput-object v2, v1, v4

    const-string v2, "image/jpeg"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;)V
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/scoreloop/client/android/core/addon/RSSFeed;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;)V

    .line 308
    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->k:Ljava/util/Set;

    .line 273
    sget-object v0, Lcom/scoreloop/client/android/core/addon/RSSFeed$State;->IDLE:Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->l:Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    .line 290
    if-nez p1, :cond_0

    .line 291
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->j:Lcom/scoreloop/client/android/core/model/Session;

    .line 295
    :goto_0
    iput-object p2, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->i:Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;

    .line 296
    new-instance v0, Lcom/scoreloop/client/android/core/util/MainThreadHandler;

    invoke-direct {v0}, Lcom/scoreloop/client/android/core/util/MainThreadHandler;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->e:Lcom/scoreloop/client/android/core/util/MainThreadHandler;

    .line 297
    return-void

    .line 293
    :cond_0
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->j:Lcom/scoreloop/client/android/core/model/Session;

    goto :goto_0
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/addon/RSSFeed$State;)Lcom/scoreloop/client/android/core/addon/RSSFeed$State;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->l:Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    return-object p1
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->i:Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://community.scoreloop.com/games/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->j:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->j:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v1

    .line 347
    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/User;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 349
    if-eqz v1, :cond_0

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/users/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/feed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 381
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter

    .prologue
    .line 486
    :try_start_0
    sget-object v0, Lcom/scoreloop/client/android/core/util/Formats;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 488
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Ljava/io/InputStream;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->d:Ljava/util/List;

    return-object p1
.end method

.method private a(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/addon/RSSItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 417
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 418
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 419
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 420
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 423
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 425
    const-string v1, "item"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 426
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 427
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_9

    .line 428
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 430
    new-instance v5, Lcom/scoreloop/client/android/core/addon/RSSItem;

    iget-object v6, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->j:Lcom/scoreloop/client/android/core/model/Session;

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/model/Session;->b()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/scoreloop/client/android/core/addon/RSSItem;-><init>(Landroid/content/Context;)V

    .line 431
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 432
    :goto_1
    if-eqz v0, :cond_7

    .line 433
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-ne v6, v9, :cond_0

    .line 434
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 435
    const-string v7, "guid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 436
    invoke-static {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/scoreloop/client/android/core/addon/RSSItem;->b(Ljava/lang/String;)V

    .line 471
    :cond_0
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    .line 437
    :cond_1
    const-string v7, "title"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 438
    invoke-static {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/scoreloop/client/android/core/addon/RSSItem;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 478
    :catch_0
    move-exception v0

    .line 480
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 439
    :cond_2
    :try_start_1
    const-string v7, "description"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 440
    invoke-static {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/scoreloop/client/android/core/addon/RSSItem;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 441
    :cond_3
    const-string v7, "link"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 442
    invoke-static {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/scoreloop/client/android/core/addon/RSSItem;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 443
    :cond_4
    const-string v7, "source"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 444
    invoke-static {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 445
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 446
    if-eqz v7, :cond_0

    .line 447
    const-string v8, "url"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 448
    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 449
    const-string v7, "Sticky"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/scoreloop/client/android/core/addon/RSSItem;->a(Z)V

    goto :goto_2

    .line 452
    :cond_5
    const-string v7, "enclosure"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 453
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 454
    if-eqz v6, :cond_0

    .line 455
    const-string v7, "url"

    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 456
    const-string v8, "type"

    invoke-interface {v6, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 457
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 458
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 459
    if-eqz v6, :cond_0

    sget-object v8, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a:Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 460
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/scoreloop/client/android/core/addon/RSSItem;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 464
    :cond_6
    const-string v7, "pubDate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 465
    invoke-static {v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 466
    if-eqz v6, :cond_0

    .line 467
    invoke-virtual {v5, v6}, Lcom/scoreloop/client/android/core/addon/RSSItem;->a(Ljava/util/Date;)V

    goto/16 :goto_2

    .line 473
    :cond_7
    invoke-virtual {v5}, Lcom/scoreloop/client/android/core/addon/RSSItem;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 474
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 427
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 477
    :cond_9
    return-object v2
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/addon/RSSItem;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/core/addon/RSSItem;->setHasPersistentReadFlag(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/scoreloop/client/android/core/model/Continuation;->withValue(Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->c:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;

    invoke-direct {v1, p0, p1}, Lcom/scoreloop/client/android/core/addon/RSSFeed$5;-><init>(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/model/Continuation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/addon/RSSFeed;Ljava/util/List;Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->e:Lcom/scoreloop/client/android/core/util/MainThreadHandler;

    new-instance v1, Lcom/scoreloop/client/android/core/addon/RSSFeed$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/scoreloop/client/android/core/addon/RSSFeed$3;-><init>(Lcom/scoreloop/client/android/core/addon/RSSFeed;Ljava/util/List;Lcom/scoreloop/client/android/core/model/Continuation;)V

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/util/MainThreadHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/scoreloop/client/android/core/model/Continuation;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/addon/RSSItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 662
    monitor-enter p0

    .line 663
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->g:Z

    .line 664
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 665
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->j:Lcom/scoreloop/client/android/core/model/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/Session;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;

    .line 668
    new-instance v1, Lcom/scoreloop/client/android/core/addon/RSSFeed$4;

    invoke-direct {v1, p0, p1}, Lcom/scoreloop/client/android/core/addon/RSSFeed$4;-><init>(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/model/Continuation;)V

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/controller/TermsOfServiceManager;->a(Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 682
    return-void

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/addon/RSSItem;)Lcom/scoreloop/client/android/core/addon/RSSItem;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->h:Lcom/scoreloop/client/android/core/addon/RSSItem;

    return-object p1
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Lcom/scoreloop/client/android/core/model/Session;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->j:Lcom/scoreloop/client/android/core/model/Session;

    return-object v0
.end method

.method static synthetic c(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Z
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method static synthetic f(Lcom/scoreloop/client/android/core/addon/RSSFeed;)Lcom/scoreloop/client/android/core/util/MainThreadHandler;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->e:Lcom/scoreloop/client/android/core/util/MainThreadHandler;

    return-object v0
.end method


# virtual methods
.method public cancelRequestNextItem()V
    .locals 2
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->getState()Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/core/addon/RSSFeed$State;->PENDING:Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    if-eq v0, v1, :cond_0

    .line 328
    :goto_0
    return-void

    .line 323
    :cond_0
    monitor-enter p0

    .line 324
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->g:Z

    .line 325
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 328
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultItem()Lcom/scoreloop/client/android/core/addon/RSSItem;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->b:Lcom/scoreloop/client/android/core/addon/RSSItem;

    return-object v0
.end method

.method public getLastItem()Lcom/scoreloop/client/android/core/addon/RSSItem;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->h:Lcom/scoreloop/client/android/core/addon/RSSItem;

    return-object v0
.end method

.method public getState()Lcom/scoreloop/client/android/core/addon/RSSFeed$State;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->l:Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    return-object v0
.end method

.method public hasSessionReadFlag(Lcom/scoreloop/client/android/core/addon/RSSItem;)Z
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnread(Lcom/scoreloop/client/android/core/addon/RSSItem;)Z
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->hasSessionReadFlag(Lcom/scoreloop/client/android/core/addon/RSSItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/addon/RSSItem;->hasPersistentReadFlag()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reloadOnNextRequest()V
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->d:Ljava/util/List;

    .line 505
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 506
    return-void
.end method

.method public requestAllItems(Lcom/scoreloop/client/android/core/model/Continuation;ZLcom/scoreloop/client/android/core/addon/RSSFeed$Policy;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/Continuation",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/scoreloop/client/android/core/addon/RSSItem;",
            ">;>;Z",
            "Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->getState()Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/core/addon/RSSFeed$State;->IDLE:Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    if-eq v0, v1, :cond_0

    .line 584
    const/4 v0, 0x0

    .line 604
    :goto_0
    return v0

    .line 586
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/core/addon/RSSFeed$State;->PENDING:Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->l:Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    .line 587
    new-instance v0, Lcom/scoreloop/client/android/core/addon/RSSFeed$2;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/scoreloop/client/android/core/addon/RSSFeed$2;-><init>(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;ZLcom/scoreloop/client/android/core/model/Continuation;)V

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/model/Continuation;)V

    .line 604
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestNextItem(Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 523
    if-nez p1, :cond_0

    .line 524
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "policy argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->getState()Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/core/addon/RSSFeed$State;->IDLE:Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    if-eq v0, v1, :cond_1

    .line 561
    :goto_0
    return-void

    .line 529
    :cond_1
    sget-object v0, Lcom/scoreloop/client/android/core/addon/RSSFeed$State;->PENDING:Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    iput-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->l:Lcom/scoreloop/client/android/core/addon/RSSFeed$State;

    .line 530
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->i:Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->i:Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/addon/RSSFeedObserver;->feedDidRequestNextItem(Lcom/scoreloop/client/android/core/addon/RSSFeed;)V

    .line 535
    :cond_2
    new-instance v0, Lcom/scoreloop/client/android/core/addon/RSSFeed$1;

    invoke-direct {v0, p0, p1}, Lcom/scoreloop/client/android/core/addon/RSSFeed$1;-><init>(Lcom/scoreloop/client/android/core/addon/RSSFeed;Lcom/scoreloop/client/android/core/addon/RSSFeed$Policy;)V

    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/addon/RSSFeed;->a(Lcom/scoreloop/client/android/core/model/Continuation;)V

    goto :goto_0
.end method

.method public setDefaultItem(Lcom/scoreloop/client/android/core/addon/RSSItem;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_0_0;
    .end annotation

    .prologue
    .line 614
    if-eqz p1, :cond_0

    .line 615
    const-string v0, "29007410-1D00-4291-AD44-EBAB78720949"

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/core/addon/RSSItem;->b(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/addon/RSSItem;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the item needs to have at least a title set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_0
    iput-object p1, p0, Lcom/scoreloop/client/android/core/addon/RSSFeed;->b:Lcom/scoreloop/client/android/core/addon/RSSItem;

    .line 621
    return-void
.end method
