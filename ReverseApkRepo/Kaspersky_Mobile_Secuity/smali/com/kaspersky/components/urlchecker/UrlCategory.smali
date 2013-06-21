.class public final enum Lcom/kaspersky/components/urlchecker/UrlCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ANON_PROXY:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum CASUAL_GAMES:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum CC_PAYMENTS:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum CHAT:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum DRUGS:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum GAMBLING:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum ILLEGAL_SOFT:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum JOB_SITE:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum MALWARE:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum NONE:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum PHISHING:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum PORN:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum SHOPS:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum SOCIAL_NET:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum SWEARING:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum UNKNOWN:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum VIOLENCE:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum WEAPONS:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field public static final enum WEB_MAIL:Lcom/kaspersky/components/urlchecker/UrlCategory;

.field private static final synthetic a:[Lcom/kaspersky/components/urlchecker/UrlCategory;


# instance fields
.field private final mCategory:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->UNKNOWN:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 6
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->NONE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 8
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "PORN"

    invoke-direct {v0, v1, v6, v4}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->PORN:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 9
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "ILLEGAL_SOFT"

    invoke-direct {v0, v1, v7, v5}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->ILLEGAL_SOFT:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 10
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "DRUGS"

    invoke-direct {v0, v1, v8, v6}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->DRUGS:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 11
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "VIOLENCE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v7}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->VIOLENCE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 12
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "SWEARING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v8}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->SWEARING:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 13
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "WEAPONS"

    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->WEAPONS:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 14
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "GAMBLING"

    const/16 v2, 0x8

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->GAMBLING:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 15
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "CHAT"

    const/16 v2, 0x9

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->CHAT:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 16
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "WEB_MAIL"

    const/16 v2, 0xa

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->WEB_MAIL:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 17
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "SHOPS"

    const/16 v2, 0xb

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->SHOPS:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 18
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "SOCIAL_NET"

    const/16 v2, 0xc

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->SOCIAL_NET:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 19
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "JOB_SITE"

    const/16 v2, 0xd

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->JOB_SITE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 20
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "ANON_PROXY"

    const/16 v2, 0xe

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->ANON_PROXY:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 21
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "CC_PAYMENTS"

    const/16 v2, 0xf

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->CC_PAYMENTS:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 22
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "CASUAL_GAMES"

    const/16 v2, 0x10

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->CASUAL_GAMES:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 24
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "PHISHING"

    const/16 v2, 0x11

    const/16 v3, 0x3e

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->PHISHING:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 25
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    const-string v1, "MALWARE"

    const/16 v2, 0x12

    const/16 v3, 0x3f

    invoke-direct {v0, v1, v2, v3}, Lcom/kaspersky/components/urlchecker/UrlCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->MALWARE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    .line 3
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/kaspersky/components/urlchecker/UrlCategory;

    sget-object v1, Lcom/kaspersky/components/urlchecker/UrlCategory;->UNKNOWN:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaspersky/components/urlchecker/UrlCategory;->NONE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaspersky/components/urlchecker/UrlCategory;->PORN:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaspersky/components/urlchecker/UrlCategory;->ILLEGAL_SOFT:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kaspersky/components/urlchecker/UrlCategory;->DRUGS:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->VIOLENCE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->SWEARING:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->WEAPONS:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->GAMBLING:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->CHAT:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->WEB_MAIL:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->SHOPS:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->SOCIAL_NET:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->JOB_SITE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->ANON_PROXY:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->CC_PAYMENTS:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->CASUAL_GAMES:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->PHISHING:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlCategory;->MALWARE:Lcom/kaspersky/components/urlchecker/UrlCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->a:[Lcom/kaspersky/components/urlchecker/UrlCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/kaspersky/components/urlchecker/UrlCategory;->mCategory:I

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaspersky/components/urlchecker/UrlCategory;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/urlchecker/UrlCategory;

    return-object v0
.end method

.method public static values()[Lcom/kaspersky/components/urlchecker/UrlCategory;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/kaspersky/components/urlchecker/UrlCategory;->a:[Lcom/kaspersky/components/urlchecker/UrlCategory;

    invoke-virtual {v0}, [Lcom/kaspersky/components/urlchecker/UrlCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaspersky/components/urlchecker/UrlCategory;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/kaspersky/components/urlchecker/UrlCategory;->mCategory:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    sget-object v0, LY;->a:[I

    invoke-virtual {p0}, Lcom/kaspersky/components/urlchecker/UrlCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 82
    const-string v0, "INVALID CATEGORY VALUE"

    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 46
    :pswitch_1
    const-string v0, "NONE"

    goto :goto_0

    .line 48
    :pswitch_2
    const-string v0, "PORN"

    goto :goto_0

    .line 50
    :pswitch_3
    const-string v0, "ILLEGAL_SOFT"

    goto :goto_0

    .line 52
    :pswitch_4
    const-string v0, "DRUGS"

    goto :goto_0

    .line 54
    :pswitch_5
    const-string v0, "VIOLENCE"

    goto :goto_0

    .line 56
    :pswitch_6
    const-string v0, "SWEARING"

    goto :goto_0

    .line 58
    :pswitch_7
    const-string v0, "WEAPONS"

    goto :goto_0

    .line 60
    :pswitch_8
    const-string v0, "GAMBLING"

    goto :goto_0

    .line 62
    :pswitch_9
    const-string v0, "CHAT"

    goto :goto_0

    .line 64
    :pswitch_a
    const-string v0, "WEB_MAIL"

    goto :goto_0

    .line 66
    :pswitch_b
    const-string v0, "SHOPS"

    goto :goto_0

    .line 68
    :pswitch_c
    const-string v0, "SOCIAL_NET"

    goto :goto_0

    .line 70
    :pswitch_d
    const-string v0, "JOB_SITE"

    goto :goto_0

    .line 72
    :pswitch_e
    const-string v0, "ANON_PROXY"

    goto :goto_0

    .line 74
    :pswitch_f
    const-string v0, "CC_PAYMENTS"

    goto :goto_0

    .line 76
    :pswitch_10
    const-string v0, "CASUAL_GAMES"

    goto :goto_0

    .line 78
    :pswitch_11
    const-string v0, "PHISHING"

    goto :goto_0

    .line 80
    :pswitch_12
    const-string v0, "MALWARE"

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
