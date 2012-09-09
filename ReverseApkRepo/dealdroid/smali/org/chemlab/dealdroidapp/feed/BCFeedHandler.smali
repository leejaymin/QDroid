.class public Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "BCFeedHandler.java"

# interfaces
.implements Lorg/chemlab/dealdroidapp/feed/FeedHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$chemlab$dealdroidapp$feed$BCFeedHandler$ItemTag:[I


# instance fields
.field private final currentItem:Lorg/chemlab/dealdroidapp/Item;

.field private currentString:Ljava/lang/StringBuilder;

.field private currentTag:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

.field private inItem:Z


# direct methods
.method static synthetic $SWITCH_TABLE$org$chemlab$dealdroidapp$feed$BCFeedHandler$ItemTag()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->$SWITCH_TABLE$org$chemlab$dealdroidapp$feed$BCFeedHandler$ItemTag:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->values()[Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->DESCRIPTION:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->IMAGE_LINK:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->LINK:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->RETAIL_PRICE:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->SALE_PRICE:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->TITLE:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->$SWITCH_TABLE$org$chemlab$dealdroidapp$feed$BCFeedHandler$ItemTag:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->inItem:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentTag:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    .line 48
    new-instance v0, Lorg/chemlab/dealdroidapp/Item;

    invoke-direct {v0}, Lorg/chemlab/dealdroidapp/Item;-><init>()V

    iput-object v0, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    .line 16
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
    .line 142
    iget-boolean v1, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->inItem:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentTag:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    if-eqz v1, :cond_0

    .line 144
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    add-int v2, p2, p3

    invoke-virtual {v1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, chars:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 147
    iget-object v1, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentString:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .end local v0           #chars:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, tag:Ljava/lang/String;
    const-string v7, "product"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 95
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->inItem:Z

    .line 97
    iget-object v7, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-virtual {v7}, Lorg/chemlab/dealdroidapp/Item;->getSalePrice()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 98
    .local v4, sp:D
    iget-object v7, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-virtual {v7}, Lorg/chemlab/dealdroidapp/Item;->getRetailPrice()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 99
    .local v2, rp:D
    const-wide/16 v7, 0x0

    cmpl-double v7, v4, v7

    if-lez v7, :cond_0

    const-wide/16 v7, 0x0

    cmpl-double v7, v2, v7

    if-lez v7, :cond_0

    cmpl-double v7, v2, v4

    if-ltz v7, :cond_0

    .line 100
    const-wide/high16 v7, 0x4059

    const-wide/high16 v9, 0x3ff0

    div-double v11, v4, v2

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v1, v7

    .line 101
    .local v1, discount:I
    iget-object v7, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/chemlab/dealdroidapp/Item;->setSavings(Ljava/lang/String;)V

    .line 131
    .end local v1           #discount:I
    .end local v2           #rp:D
    .end local v4           #sp:D
    :cond_0
    :goto_0
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentTag:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    .line 133
    return-void

    .line 104
    :cond_1
    iget-object v7, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentTag:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    if-eqz v7, :cond_0

    .line 106
    iget-object v7, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentString:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, chars:Ljava/lang/String;
    invoke-static {}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->$SWITCH_TABLE$org$chemlab$dealdroidapp$feed$BCFeedHandler$ItemTag()[I

    move-result-object v7

    iget-object v8, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentTag:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    invoke-virtual {v8}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    iget-object v7, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-virtual {v7, v0}, Lorg/chemlab/dealdroidapp/Item;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v7, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/chemlab/dealdroidapp/Item;->setLink(Landroid/net/Uri;)V

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v7, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-virtual {v7, v0}, Lorg/chemlab/dealdroidapp/Item;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v7, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/chemlab/dealdroidapp/Item;->setImageLink(Landroid/net/Uri;)V

    goto :goto_0

    .line 122
    :pswitch_4
    iget-object v7, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-virtual {v7, v0}, Lorg/chemlab/dealdroidapp/Item;->setRetailPrice(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :pswitch_5
    iget-object v7, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    invoke-virtual {v7, v0}, Lorg/chemlab/dealdroidapp/Item;->setSalePrice(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public getCurrentItem()Lorg/chemlab/dealdroidapp/Item;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentItem:Lorg/chemlab/dealdroidapp/Item;

    return-object v0
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
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentString:Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, tag:Ljava/lang/String;
    const-string v2, "product"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->inItem:Z

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentTag:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    .line 72
    invoke-static {}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->values()[Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 73
    .local v0, itemTag:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;
    invoke-virtual {v0, v1}, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    iput-object v0, p0, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;->currentTag:Lorg/chemlab/dealdroidapp/feed/BCFeedHandler$ItemTag;

    goto :goto_0

    .line 72
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
