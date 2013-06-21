.class public Lcom/kavsdk/updater/Index;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# static fields
.field private static final a:Ljava/text/DateFormat; = null

.field private static final serialVersionUID:J = 0x7193428406868674L


# instance fields
.field private transient b:Lcom/kms/cryptoc/SignatureChecker;

.field private final mComponentIds:Ljava/util/List;

.field private mDate:Ljava/util/Date;

.field private final mEntries:Ljava/util/Map;

.field private final mHashMap:Ljava/util/Map;

.field private final mRegistries:Ljava/util/List;

.field private mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ddMMyyyy HHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/kavsdk/updater/Index;->a:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/kavsdk/updater/Index;->mDate:Ljava/util/Date;

    .line 144
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/kavsdk/updater/Index;->mEntries:Ljava/util/Map;

    .line 145
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kavsdk/updater/Index;->mRegistries:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kavsdk/updater/Index;->mHashMap:Ljava/util/Map;

    .line 152
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kavsdk/updater/Index;->mComponentIds:Ljava/util/List;

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/kavsdk/updater/Index;->mDate:Ljava/util/Date;

    .line 144
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/kavsdk/updater/Index;->mEntries:Ljava/util/Map;

    .line 145
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kavsdk/updater/Index;->mRegistries:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kavsdk/updater/Index;->mHashMap:Ljava/util/Map;

    .line 157
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kavsdk/updater/Index;->mComponentIds:Ljava/util/List;

    .line 158
    const-string v0, "index/mobile.xml"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/kavsdk/updater/Index;->a(Ljava/net/URL;Ljava/lang/String;Z)V

    .line 159
    return-void
.end method

.method private a()Lcom/kms/cryptoc/SignatureChecker;
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/kavsdk/updater/Index;->b:Lcom/kms/cryptoc/SignatureChecker;

    if-nez v0, :cond_0

    .line 189
    new-instance v1, Lcom/kms/cryptoc/SignatureChecker;

    iget-object v0, p0, Lcom/kavsdk/updater/Index;->mRegistries:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [[B

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    invoke-direct {v1, v0}, Lcom/kms/cryptoc/SignatureChecker;-><init>([[B)V

    iput-object v1, p0, Lcom/kavsdk/updater/Index;->b:Lcom/kms/cryptoc/SignatureChecker;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/kavsdk/updater/Index;->b:Lcom/kms/cryptoc/SignatureChecker;

    return-object v0
.end method

.method private a(Ljava/net/URL;Ljava/lang/String;Z)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-static {p1, p2}, Lcom/kavsdk/updater/Index;->a(Ljava/net/URL;Ljava/lang/String;)[B

    move-result-object v3

    .line 226
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 228
    if-nez v0, :cond_9

    .line 229
    const-string v0, ""

    move-object v2, v0

    .line 233
    :goto_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v5, 0x0

    invoke-virtual {p0, v3}, Lcom/kavsdk/updater/Index;->getXMLDataLength([B)I

    move-result v6

    invoke-direct {v1, v3, v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 236
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 237
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v6, :cond_8

    .line 239
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 240
    const-string v7, "UpdateFiles"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 242
    if-eqz p3, :cond_0

    .line 244
    sget-object v7, Lcom/kavsdk/updater/Index;->a:Ljava/text/DateFormat;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string v9, "UpdateDate"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    iput-object v7, p0, Lcom/kavsdk/updater/Index;->mDate:Ljava/util/Date;

    .line 246
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 247
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    .line 250
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_2

    .line 252
    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 253
    const-string v10, "Registry"

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 255
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    .line 256
    if-eqz v9, :cond_1

    .line 258
    const-string v10, "Body"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 259
    if-eqz v9, :cond_1

    .line 261
    iget-object v10, p0, Lcom/kavsdk/updater/Index;->mRegistries:Ljava/util/List;

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {v9, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v9, p0, Lcom/kavsdk/updater/Index;->b:Lcom/kms/cryptoc/SignatureChecker;

    if-eqz v9, :cond_1

    .line 264
    iget-object v9, p0, Lcom/kavsdk/updater/Index;->b:Lcom/kms/cryptoc/SignatureChecker;

    invoke-virtual {v9}, Lcom/kms/cryptoc/SignatureChecker;->close()V

    .line 265
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/kavsdk/updater/Index;->b:Lcom/kms/cryptoc/SignatureChecker;

    .line 250
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 272
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-direct {p0}, Lcom/kavsdk/updater/Index;->a()Lcom/kms/cryptoc/SignatureChecker;

    move-result-object v9

    invoke-virtual {v9, v0, v3}, Lcom/kms/cryptoc/SignatureChecker;->verifySignature(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 274
    new-instance v0, Ljava/security/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index signature for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :catch_0
    move-exception v0

    .line 310
    new-instance v1, Lcom/kavsdk/updater/IndexParserException;

    invoke-direct {v1, v0}, Lcom/kavsdk/updater/IndexParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 276
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v8, :cond_7

    .line 278
    :try_start_1
    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 279
    const-string v10, "FileDescription"

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 281
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    .line 282
    if-eqz v9, :cond_4

    .line 284
    const-string v10, "ComponentID"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 285
    if-eqz v10, :cond_4

    iget-object v11, p0, Lcom/kavsdk/updater/Index;->mComponentIds:Ljava/util/List;

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 287
    const-string v10, "UpdateType"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 288
    const-string v11, "desc"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 290
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RelativeSrvPath"

    invoke-interface {v9, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Filename"

    invoke-interface {v9, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {p0, p1, v9, v10}, Lcom/kavsdk/updater/Index;->a(Ljava/net/URL;Ljava/lang/String;Z)V

    .line 276
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 293
    :cond_5
    const-string v11, "base"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 295
    invoke-direct {p0, v9, v2}, Lcom/kavsdk/updater/Index;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V

    goto :goto_4

    .line 299
    :cond_6
    new-instance v0, Lcom/kavsdk/updater/IndexParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported file type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kavsdk/updater/IndexParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 311
    :cond_8
    return-void

    :cond_9
    move-object v2, v0

    goto/16 :goto_0
.end method

.method private a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 354
    const-string v0, "Filename"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 356
    const-string v0, "RelativeSrvPath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 357
    const-string v2, "ServerFolder"

    invoke-interface {p1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 358
    const-string v3, "FileDate"

    invoke-interface {p1, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 361
    if-eqz v0, :cond_2

    .line 363
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    .line 374
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/kavsdk/updater/Index;->mEntries:Ljava/util/Map;

    new-instance v4, Lcom/kavsdk/updater/Index$Entry;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v4, p2, v1, v0}, Lcom/kavsdk/updater/Index$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v0, "FileSize"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_1

    .line 379
    iget-wide v1, p0, Lcom/kavsdk/updater/Index;->mSize:J

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/kavsdk/updater/Index;->mSize:J

    .line 381
    :cond_1
    return-void

    .line 365
    :cond_2
    if-eqz v2, :cond_0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 374
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 327
    .line 328
    const/4 v1, 0x0

    .line 332
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 335
    if-eqz v2, :cond_0

    const-string v3, "text/vnd.wap.wml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 340
    :cond_0
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 342
    invoke-static {v2, v0}, Lah;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 344
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 348
    invoke-static {v2}, Lah;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lah;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/kavsdk/updater/Index;->a:Ljava/text/DateFormat;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kavsdk/updater/Index;->b:Lcom/kms/cryptoc/SignatureChecker;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/kavsdk/updater/Index;->b:Lcom/kms/cryptoc/SignatureChecker;

    invoke-virtual {v0}, Lcom/kms/cryptoc/SignatureChecker;->close()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kavsdk/updater/Index;->b:Lcom/kms/cryptoc/SignatureChecker;

    .line 168
    :cond_0
    return-void
.end method

.method public containsHash([B)Z
    .locals 1
    .parameter

    .prologue
    .line 200
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/kavsdk/updater/Index;->a()Lcom/kms/cryptoc/SignatureChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kms/cryptoc/SignatureChecker;->findHash([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findHash(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/kavsdk/updater/Index;->mHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/kavsdk/updater/Index$Entry;
    .locals 1
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/kavsdk/updater/Index;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kavsdk/updater/Index$Entry;

    .line 215
    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Lcom/kavsdk/updater/Index$Entry;->access$100()Lcom/kavsdk/updater/Index$Entry;

    move-result-object v0

    .line 219
    :cond_0
    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/kavsdk/updater/Index;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/kavsdk/updater/Index;->mSize:J

    return-wide v0
.end method

.method getXMLDataLength([B)I
    .locals 3
    .parameter

    .prologue
    .line 316
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x4

    if-ge v0, v1, :cond_2

    .line 318
    aget-byte v1, p1, v0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 321
    :cond_0
    :goto_1
    return v0

    .line 316
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_2
    array-length v0, p1

    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kavsdk/updater/Index;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public verifyAndRemember(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/kavsdk/updater/Index;->a()Lcom/kms/cryptoc/SignatureChecker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kms/cryptoc/SignatureChecker;->calculateHash(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v0

    .line 206
    invoke-direct {p0}, Lcom/kavsdk/updater/Index;->a()Lcom/kms/cryptoc/SignatureChecker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kms/cryptoc/SignatureChecker;->findHash([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/kavsdk/updater/Index;->mHashMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const/4 v0, 0x1

    goto :goto_0
.end method
