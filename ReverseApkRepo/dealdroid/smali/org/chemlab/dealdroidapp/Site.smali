.class public final enum Lorg/chemlab/dealdroidapp/Site;
.super Ljava/lang/Enum;
.source "Site.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chemlab/dealdroidapp/Site;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BONKTOWN:Lorg/chemlab/dealdroidapp/Site;

.field public static final enum CHAINLOVE:Lorg/chemlab/dealdroidapp/Site;

.field private static final synthetic ENUM$VALUES:[Lorg/chemlab/dealdroidapp/Site;

.field public static final enum SLICKDEALS:Lorg/chemlab/dealdroidapp/Site;

.field public static final enum STEEPANDCHEAP:Lorg/chemlab/dealdroidapp/Site;

.field public static final enum THINGFLING:Lorg/chemlab/dealdroidapp/Site;

.field public static final enum TRAMDOCK:Lorg/chemlab/dealdroidapp/Site;

.field public static final enum WHISKEYMILITIA:Lorg/chemlab/dealdroidapp/Site;

.field public static final enum WOOT:Lorg/chemlab/dealdroidapp/Site;

.field public static final enum WOOTSELLOUT:Lorg/chemlab/dealdroidapp/Site;

.field public static final enum WOOTSHIRT:Lorg/chemlab/dealdroidapp/Site;

.field public static final enum WOOTWINE:Lorg/chemlab/dealdroidapp/Site;


# instance fields
.field private final affiliationKey:Ljava/lang/String;

.field private final affiliationValue:Ljava/lang/String;

.field private final category:Ljava/lang/String;

.field private final clickThru:Ljava/net/URL;

.field private final drawable:I

.field private final enabledByDefault:Z

.field private final encoding:Landroid/util/Xml$Encoding;

.field private forceUrl:Z

.field private final handler:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/chemlab/dealdroidapp/feed/FeedHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final site:Ljava/net/URL;

.field private final url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    .line 21
    new-instance v0, Lorg/chemlab/dealdroidapp/Site;

    const-string v1, "BONKTOWN"

    const/4 v2, 0x0

    const-string v3, "Bonktown"

    .line 22
    const-string v4, "Cycling"

    .line 23
    const-string v5, "http://www.bonktown.com/docs/bonktown/rssaff.xml"

    .line 24
    const-string v6, "http://www.bonktown.com"

    .line 25
    const v7, 0x7f020001

    .line 26
    const-class v8, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;

    const-string v9, "avad"

    const-string v10, "14749"

    const/4 v11, 0x0

    .line 27
    const-string v12, "http://www.avantlink.com/click.php?tt=dotd&ti=12021&pw=14749"

    sget-object v13, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lorg/chemlab/dealdroidapp/Site;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/util/Xml$Encoding;Z)V

    .line 21
    sput-object v0, Lorg/chemlab/dealdroidapp/Site;->BONKTOWN:Lorg/chemlab/dealdroidapp/Site;

    .line 29
    new-instance v0, Lorg/chemlab/dealdroidapp/Site;

    const-string v1, "CHAINLOVE"

    const/4 v2, 0x1

    const-string v3, "Chainlove"

    .line 30
    const-string v4, "Cycling"

    .line 31
    const-string v5, "http://www.chainlove.com/docs/chainlove/rssaff.xml"

    .line 32
    const-string v6, "http://www.chainlove.com"

    .line 33
    const v7, 0x7f020002

    .line 34
    const-class v8, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;

    const-string v9, "avad"

    const-string v10, "14749"

    const/4 v11, 0x0

    .line 35
    const-string v12, "http://www.avantlink.com/click.php?tt=dotd&ti=8761&pw=14749"

    sget-object v13, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lorg/chemlab/dealdroidapp/Site;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/util/Xml$Encoding;Z)V

    .line 29
    sput-object v0, Lorg/chemlab/dealdroidapp/Site;->CHAINLOVE:Lorg/chemlab/dealdroidapp/Site;

    .line 37
    new-instance v0, Lorg/chemlab/dealdroidapp/Site;

    const-string v1, "STEEPANDCHEAP"

    const/4 v2, 0x2

    const-string v3, "Steep and Cheap"

    .line 38
    const-string v4, "Outdoor Gear"

    .line 39
    const-string v5, "http://www.steepandcheap.com/docs/steepcheap/rssaff.xml"

    .line 40
    const-string v6, "http://www.steepandcheap.com"

    .line 41
    const v7, 0x7f020004

    .line 42
    const-class v8, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;

    const-string v9, "avad"

    const-string v10, "14749"

    const/4 v11, 0x1

    .line 43
    const-string v12, "http://www.avantlink.com/click.php?tt=dotd&ti=8733&pw=14749"

    sget-object v13, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lorg/chemlab/dealdroidapp/Site;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/util/Xml$Encoding;Z)V

    .line 37
    sput-object v0, Lorg/chemlab/dealdroidapp/Site;->STEEPANDCHEAP:Lorg/chemlab/dealdroidapp/Site;

    .line 45
    new-instance v0, Lorg/chemlab/dealdroidapp/Site;

    const-string v1, "TRAMDOCK"

    const/4 v2, 0x3

    const-string v3, "Tramdock"

    .line 46
    const-string v4, "Skiing"

    .line 47
    const-string v5, "http://www.tramdock.com/docs/tramdock/rssaff.xml"

    .line 48
    const-string v6, "http://www.tramdock.com"

    .line 49
    const v7, 0x7f020006

    .line 50
    const-class v8, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;

    const-string v9, "avad"

    const-string v10, "14749"

    const/4 v11, 0x0

    .line 51
    const-string v12, "http://www.avantlink.com/click.php?tt=dotd&ti=8773&pw=14749"

    sget-object v13, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lorg/chemlab/dealdroidapp/Site;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/util/Xml$Encoding;Z)V

    .line 45
    sput-object v0, Lorg/chemlab/dealdroidapp/Site;->TRAMDOCK:Lorg/chemlab/dealdroidapp/Site;

    .line 53
    new-instance v0, Lorg/chemlab/dealdroidapp/Site;

    const-string v1, "WHISKEYMILITIA"

    const/4 v2, 0x4

    const-string v3, "Whiskey Militia"

    .line 54
    const-string v4, "Snow, Skate, Surf"

    .line 55
    const-string v5, "http://www.whiskeymilitia.com/docs/wm/rssaff.xml"

    .line 56
    const-string v6, "http://www.whiskeymilitia.com"

    .line 57
    const v7, 0x7f020007

    .line 58
    const-class v8, Lorg/chemlab/dealdroidapp/feed/BCFeedHandler;

    const-string v9, "avad"

    const-string v10, "14749"

    const/4 v11, 0x1

    .line 59
    const-string v12, "http://www.avantlink.com/click.php?tt=dotd&ti=8801&pw=14749"

    sget-object v13, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lorg/chemlab/dealdroidapp/Site;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/util/Xml$Encoding;Z)V

    .line 53
    sput-object v0, Lorg/chemlab/dealdroidapp/Site;->WHISKEYMILITIA:Lorg/chemlab/dealdroidapp/Site;

    .line 61
    new-instance v0, Lorg/chemlab/dealdroidapp/Site;

    const-string v1, "SLICKDEALS"

    const/4 v2, 0x5

    const-string v3, "SlickDeals"

    .line 62
    const-string v4, "Various, Community-Driven"

    .line 63
    const-string v5, "http://feeds.feedburner.com/SlickdealsnetFP?format=xml"

    .line 64
    const-string v6, "http://www.slickdeals.net"

    .line 65
    const v7, 0x7f020003

    .line 66
    const-class v8, Lorg/chemlab/dealdroidapp/feed/RSSHandler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lorg/chemlab/dealdroidapp/Site;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/util/Xml$Encoding;Z)V

    .line 61
    sput-object v0, Lorg/chemlab/dealdroidapp/Site;->SLICKDEALS:Lorg/chemlab/dealdroidapp/Site;

    .line 68
    new-instance v0, Lorg/chemlab/dealdroidapp/Site;

    const-string v1, "THINGFLING"

    const/4 v2, 0x6

    const-string v3, "ThingFling"

    .line 69
    const-string v4, "Electronics"

    .line 70
    const-string v5, "http://feed.thingfling.com/ThingflingRssFeed?format=xml"

    .line 71
    const-string v6, "http://www.thingfling.com"

    .line 72
    const v7, 0x7f020005

    .line 73
    const-class v8, Lorg/chemlab/dealdroidapp/feed/RSSHandler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Landroid/util/Xml$Encoding;->ISO_8859_1:Landroid/util/Xml$Encoding;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lorg/chemlab/dealdroidapp/Site;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/util/Xml$Encoding;Z)V

    .line 68
    sput-object v0, Lorg/chemlab/dealdroidapp/Site;->THINGFLING:Lorg/chemlab/dealdroidapp/Site;

    .line 75
    new-instance v0, Lorg/chemlab/dealdroidapp/Site;

    const-string v1, "WOOT"

    const/4 v2, 0x7

    const-string v3, "Woot"

    .line 76
    const-string v4, "Anything and Everything"

    .line 77
    const-string v5, "http://www.woot.com/salerss.aspx"

    .line 78
    const-string v6, "http://www.woot.com"

    .line 79
    const v7, 0x7f020008

    .line 80
    const-class v8, Lorg/chemlab/dealdroidapp/feed/RSSHandler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    sget-object v13, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lorg/chemlab/dealdroidapp/Site;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/util/Xml$Encoding;Z)V

    .line 75
    sput-object v0, Lorg/chemlab/dealdroidapp/Site;->WOOT:Lorg/chemlab/dealdroidapp/Site;

    .line 82
    new-instance v0, Lorg/chemlab/dealdroidapp/Site;

    const-string v1, "WOOTSELLOUT"

    const/16 v2, 0x8

    const-string v3, "Woot Sellout"

    .line 83
    const-string v4, "Anything and Everything"

    .line 84
    const-string v5, "http://sellout.woot.com/salerss.aspx"

    .line 85
    const-string v6, "http://shopping.yahoo.com/#woot"

    .line 86
    const v7, 0x7f020009

    .line 87
    const-class v8, Lorg/chemlab/dealdroidapp/feed/RSSHandler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    const/4 v14, 0x1

    invoke-direct/range {v0 .. v14}, Lorg/chemlab/dealdroidapp/Site;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/util/Xml$Encoding;Z)V

    .line 82
    sput-object v0, Lorg/chemlab/dealdroidapp/Site;->WOOTSELLOUT:Lorg/chemlab/dealdroidapp/Site;

    .line 89
    new-instance v0, Lorg/chemlab/dealdroidapp/Site;

    const-string v1, "WOOTSHIRT"

    const/16 v2, 0x9

    const-string v3, "Woot Shirt"

    .line 90
    const-string v4, "T-Shirts"

    .line 91
    const-string v5, "http://shirt.woot.com/salerss.aspx"

    .line 92
    const-string v6, "http://shirt.woot.com"

    .line 93
    const v7, 0x7f02000a

    .line 94
    const-class v8, Lorg/chemlab/dealdroidapp/feed/RSSHandler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lorg/chemlab/dealdroidapp/Site;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/util/Xml$Encoding;Z)V

    .line 89
    sput-object v0, Lorg/chemlab/dealdroidapp/Site;->WOOTSHIRT:Lorg/chemlab/dealdroidapp/Site;

    .line 96
    new-instance v0, Lorg/chemlab/dealdroidapp/Site;

    const-string v1, "WOOTWINE"

    const/16 v2, 0xa

    const-string v3, "Woot Wine"

    .line 97
    const-string v4, "Wine"

    .line 98
    const-string v5, "http://wine.woot.com/salerss.aspx"

    .line 99
    const-string v6, "http://wine.woot.com"

    .line 100
    const v7, 0x7f02000b

    .line 101
    const-class v8, Lorg/chemlab/dealdroidapp/feed/RSSHandler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Lorg/chemlab/dealdroidapp/Site;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/util/Xml$Encoding;Z)V

    .line 96
    sput-object v0, Lorg/chemlab/dealdroidapp/Site;->WOOTWINE:Lorg/chemlab/dealdroidapp/Site;

    .line 19
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/chemlab/dealdroidapp/Site;

    const/4 v1, 0x0

    sget-object v2, Lorg/chemlab/dealdroidapp/Site;->BONKTOWN:Lorg/chemlab/dealdroidapp/Site;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/chemlab/dealdroidapp/Site;->CHAINLOVE:Lorg/chemlab/dealdroidapp/Site;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/chemlab/dealdroidapp/Site;->STEEPANDCHEAP:Lorg/chemlab/dealdroidapp/Site;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/chemlab/dealdroidapp/Site;->TRAMDOCK:Lorg/chemlab/dealdroidapp/Site;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/chemlab/dealdroidapp/Site;->WHISKEYMILITIA:Lorg/chemlab/dealdroidapp/Site;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/chemlab/dealdroidapp/Site;->SLICKDEALS:Lorg/chemlab/dealdroidapp/Site;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chemlab/dealdroidapp/Site;->THINGFLING:Lorg/chemlab/dealdroidapp/Site;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/chemlab/dealdroidapp/Site;->WOOT:Lorg/chemlab/dealdroidapp/Site;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/chemlab/dealdroidapp/Site;->WOOTSELLOUT:Lorg/chemlab/dealdroidapp/Site;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/chemlab/dealdroidapp/Site;->WOOTSHIRT:Lorg/chemlab/dealdroidapp/Site;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/chemlab/dealdroidapp/Site;->WOOTWINE:Lorg/chemlab/dealdroidapp/Site;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chemlab/dealdroidapp/Site;->ENUM$VALUES:[Lorg/chemlab/dealdroidapp/Site;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/util/Xml$Encoding;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter "name"
    .parameter "category"
    .parameter "url"
    .parameter "site"
    .parameter "drawable"
    .parameter
    .parameter "affiliationKey"
    .parameter "affiliationValue"
    .parameter "enabledByDefault"
    .parameter "clickThru"
    .parameter "encoding"
    .parameter "forceUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Lorg/chemlab/dealdroidapp/feed/FeedHandler;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/util/Xml$Encoding;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p8, handler:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/chemlab/dealdroidapp/feed/FeedHandler;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 131
    :try_start_0
    iput-object p3, p0, Lorg/chemlab/dealdroidapp/Site;->name:Ljava/lang/String;

    .line 132
    iput-object p4, p0, Lorg/chemlab/dealdroidapp/Site;->category:Ljava/lang/String;

    .line 133
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/chemlab/dealdroidapp/Site;->url:Ljava/net/URL;

    .line 134
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/chemlab/dealdroidapp/Site;->site:Ljava/net/URL;

    .line 135
    iput p7, p0, Lorg/chemlab/dealdroidapp/Site;->drawable:I

    .line 136
    iput-object p8, p0, Lorg/chemlab/dealdroidapp/Site;->handler:Ljava/lang/Class;

    .line 137
    iput-object p9, p0, Lorg/chemlab/dealdroidapp/Site;->affiliationKey:Ljava/lang/String;

    .line 138
    iput-object p10, p0, Lorg/chemlab/dealdroidapp/Site;->affiliationValue:Ljava/lang/String;

    .line 139
    iput-boolean p11, p0, Lorg/chemlab/dealdroidapp/Site;->enabledByDefault:Z

    .line 140
    if-nez p12, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lorg/chemlab/dealdroidapp/Site;->clickThru:Ljava/net/URL;

    .line 141
    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/chemlab/dealdroidapp/Site;->encoding:Landroid/util/Xml$Encoding;

    .line 142
    move/from16 v0, p14

    iput-boolean v0, p0, Lorg/chemlab/dealdroidapp/Site;->forceUrl:Z

    .line 147
    return-void

    .line 140
    :cond_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, e:Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chemlab/dealdroidapp/Site;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/chemlab/dealdroidapp/Site;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chemlab/dealdroidapp/Site;

    return-object v0
.end method

.method public static values()[Lorg/chemlab/dealdroidapp/Site;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/chemlab/dealdroidapp/Site;->ENUM$VALUES:[Lorg/chemlab/dealdroidapp/Site;

    array-length v1, v0

    new-array v2, v1, [Lorg/chemlab/dealdroidapp/Site;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public applyAffiliation(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/chemlab/dealdroidapp/Site;->getClickThru()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lorg/chemlab/dealdroidapp/Site;->getClickThru()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 255
    .local v0, link:Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 249
    .end local v0           #link:Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lorg/chemlab/dealdroidapp/Site;->getAffiliationKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/chemlab/dealdroidapp/Site;->getAffiliationValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chemlab/dealdroidapp/Site;->getAffiliationKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/chemlab/dealdroidapp/Site;->getAffiliationValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #link:Landroid/net/Uri;
    goto :goto_0

    .line 252
    .end local v0           #link:Landroid/net/Uri;
    :cond_1
    move-object v0, p1

    .restart local v0       #link:Landroid/net/Uri;
    goto :goto_0
.end method

.method public getAffiliationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Site;->affiliationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAffiliationValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Site;->affiliationValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Site;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getClickThru()Ljava/net/URL;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Site;->clickThru:Ljava/net/URL;

    return-object v0
.end method

.method public getDrawable()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lorg/chemlab/dealdroidapp/Site;->drawable:I

    return v0
.end method

.method public getEncoding()Landroid/util/Xml$Encoding;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Site;->encoding:Landroid/util/Xml$Encoding;

    return-object v0
.end method

.method public getHandler()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/chemlab/dealdroidapp/feed/FeedHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Site;->handler:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Site;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSite()Ljava/net/URL;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Site;->site:Ljava/net/URL;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Site;->url:Ljava/net/URL;

    return-object v0
.end method

.method public isEnabledByDefault()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lorg/chemlab/dealdroidapp/Site;->enabledByDefault:Z

    return v0
.end method

.method public isForceUrl()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lorg/chemlab/dealdroidapp/Site;->forceUrl:Z

    return v0
.end method

.method public setForceUrl(Z)V
    .locals 0
    .parameter "forceUrl"

    .prologue
    .line 237
    iput-boolean p1, p0, Lorg/chemlab/dealdroidapp/Site;->forceUrl:Z

    .line 238
    return-void
.end method
