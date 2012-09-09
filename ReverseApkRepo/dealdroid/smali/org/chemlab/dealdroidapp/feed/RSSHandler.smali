.class public Lorg/chemlab/dealdroidapp/feed/RSSHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RSSHandler.java"

# interfaces
.implements Lorg/chemlab/dealdroidapp/feed/FeedHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$chemlab$dealdroidapp$feed$RSSHandler$ItemTag:[I


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private currentItem:Lorg/chemlab/dealdroidapp/Item;

.field private currentItemDate:Ljava/util/Date;

.field private currentString:Ljava/lang/StringBuilder;

.field private currentTag:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

.field private inItem:Z

.field private final items:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/util/Date;",
            "Lorg/chemlab/dealdroidapp/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$org$chemlab$dealdroidapp$feed$RSSHandler$ItemTag()[I
    .locals 3

    .prologue
    .line 24
    sget-object v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->$SWITCH_TABLE$org$chemlab$dealdroidapp$feed$RSSHandler$ItemTag:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->values()[Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->DESCRIPTION:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->IMAGE_LINK:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->LINK:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->PRICE:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->PUBDATE:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->SHORT_DESCRIPTION:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->TITLE:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->WOOTOFF:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->$SWITCH_TABLE$org$chemlab$dealdroidapp$feed$RSSHandler$ItemTag:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->LOG_TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->inItem:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentTag:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    .line 67
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->items:Ljava/util/TreeMap;

    .line 24
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 176
    iget-boolean v1, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->inItem:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentTag:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    if-eqz v1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    add-int v2, p2, p3

    invoke-virtual {v1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, chars:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 179
    iget-object v1, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .end local v0           #chars:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 108
    iget-boolean v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->inItem:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    if-eqz v4, :cond_0

    .line 109
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "item"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->inItem:Z

    .line 112
    iget-object v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentItemDate:Ljava/util/Date;

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-virtual {v4}, Lorg/chemlab/dealdroidapp/Item;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chemlab/dealdroidapp/Item;

    .line 114
    .local v2, clone:Lorg/chemlab/dealdroidapp/Item;
    iget-object v5, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->items:Ljava/util/TreeMap;

    iget-object v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentItemDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    invoke-virtual {v5, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iput-object v7, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentItemDate:Ljava/util/Date;

    .line 164
    .end local v2           #clone:Lorg/chemlab/dealdroidapp/Item;
    :cond_0
    :goto_0
    iput-object v7, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentTag:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    .line 166
    return-void

    .line 118
    :cond_1
    iget-object v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentTag:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    if-eqz v4, :cond_0

    .line 120
    iget-object v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentString:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, chars:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 123
    invoke-static {}, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->$SWITCH_TABLE$org$chemlab$dealdroidapp$feed$RSSHandler$ItemTag()[I

    move-result-object v4

    iget-object v5, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentTag:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    invoke-virtual {v5}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    iget-object v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-virtual {v4, v1}, Lorg/chemlab/dealdroidapp/Item;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/chemlab/dealdroidapp/Item;->setLink(Landroid/net/Uri;)V

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/chemlab/dealdroidapp/Item;->setImageLink(Landroid/net/Uri;)V

    goto :goto_0

    .line 134
    :pswitch_3
    iget-object v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-virtual {v4, v1}, Lorg/chemlab/dealdroidapp/Item;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :pswitch_4
    iget-object v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-virtual {v4, v1}, Lorg/chemlab/dealdroidapp/Item;->setSalePrice(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :pswitch_5
    iget-object v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-virtual {v4, v1}, Lorg/chemlab/dealdroidapp/Item;->setShortDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :pswitch_6
    const-string v4, "false"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 146
    .local v0, c:Ljava/util/Calendar;
    const/16 v4, 0xb

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 147
    iget-object v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/chemlab/dealdroidapp/Item;->setExpiration(Ljava/util/Date;)V

    goto :goto_0

    .line 152
    .end local v0           #c:Ljava/util/Calendar;
    :pswitch_7
    :try_start_0
    invoke-static {v1}, Lorg/chemlab/dealdroidapp/Utils;->parseRFC822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentItemDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v3

    .line 156
    .local v3, e:Ljava/text/ParseException;
    iget-object v4, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[data: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getCurrentItem()Lorg/chemlab/dealdroidapp/Item;
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->items:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 192
    .local v0, ret:Lorg/chemlab/dealdroidapp/Item;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chemlab/dealdroidapp/Item;->getSalePrice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 193
    invoke-virtual {v0}, Lorg/chemlab/dealdroidapp/Item;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/chemlab/dealdroidapp/Utils;->searchForPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chemlab/dealdroidapp/Item;->setSalePrice(Ljava/lang/String;)V

    .line 195
    :cond_0
    return-object v0

    .line 191
    .end local v0           #ret:Lorg/chemlab/dealdroidapp/Item;
    :cond_1
    iget-object v1, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->items:Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->items:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chemlab/dealdroidapp/Item;

    move-object v0, v1

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentString:Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, tag:Ljava/lang/String;
    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->inItem:Z

    .line 85
    new-instance v2, Lorg/chemlab/dealdroidapp/Item;

    invoke-direct {v2}, Lorg/chemlab/dealdroidapp/Item;-><init>()V

    iput-object v2, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentTag:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    .line 90
    invoke-static {}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->values()[Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 91
    .local v0, itemTag:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;
    invoke-virtual {v0, v1}, Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    iput-object v0, p0, Lorg/chemlab/dealdroidapp/feed/RSSHandler;->currentTag:Lorg/chemlab/dealdroidapp/feed/RSSHandler$ItemTag;

    goto :goto_0

    .line 90
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
