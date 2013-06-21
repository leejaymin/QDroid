.class public Lcom/adwhirl/util/AdWhirlUtil;
.super Ljava/lang/Object;
.source "AdWhirlUtil.java"


# static fields
.field public static final ADWHIRL:Ljava/lang/String; = "AdWhirl SDK"

.field public static final CUSTOM_TYPE_BANNER:I = 0x1

.field public static final CUSTOM_TYPE_ICON:I = 0x2

.field public static final NETWORK_TYPE_4THSCREEN:I = 0xd

.field public static final NETWORK_TYPE_ADMOB:I = 0x1

.field public static final NETWORK_TYPE_ADSENSE:I = 0xe

.field public static final NETWORK_TYPE_ADWHIRL:I = 0xa

.field public static final NETWORK_TYPE_CUSTOM:I = 0x9

.field public static final NETWORK_TYPE_DOUBLECLICK:I = 0xf

.field public static final NETWORK_TYPE_EVENT:I = 0x11

.field public static final NETWORK_TYPE_GENERIC:I = 0x10

.field public static final NETWORK_TYPE_GREYSTRIP:I = 0x7

.field public static final NETWORK_TYPE_JUMPTAP:I = 0x2

.field public static final NETWORK_TYPE_LIVERAIL:I = 0x5

.field public static final NETWORK_TYPE_MDOTM:I = 0xc

.field public static final NETWORK_TYPE_MEDIALETS:I = 0x4

.field public static final NETWORK_TYPE_MILLENNIAL:I = 0x6

.field public static final NETWORK_TYPE_MOBCLIX:I = 0xb

.field public static final NETWORK_TYPE_QUATTRO:I = 0x8

.field public static final NETWORK_TYPE_VIDEOEGG:I = 0x3

.field public static final NETWORK_TYPE_ZESTADZ:I = 0x14

.field public static final VERSION:I = 0xff

.field public static final locationString:Ljava/lang/String; = "&location=%f,%f&location_timestamp=%d"

.field public static final urlClick:Ljava/lang/String; = "http://met.adwhirl.com/exclick.php?appid=%s&nid=%s&type=%d&uuid=%s&country_code=%s&appver=%d&client=2"

.field public static final urlConfig:Ljava/lang/String; = "http://mob.adwhirl.com/getInfo.php?appid=%s&appver=%d&client=2"

.field public static final urlCustom:Ljava/lang/String; = "http://cus.adwhirl.com/custom.php?appid=%s&nid=%s&uuid=%s&country_code=%s%s&appver=%d&client=2"

.field public static final urlImpression:Ljava/lang/String; = "http://met.adwhirl.com/exmet.php?appid=%s&nid=%s&type=%d&uuid=%s&country_code=%s&appver=%d&client=2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToHex([B)Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p0

    if-lt v2, v5, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 60
    :cond_0
    aget-byte v5, p0, v2

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 61
    .local v1, halfbyte:I
    const/4 v3, 0x0

    .local v3, two_halfs:I
    move v4, v3

    .line 63
    .end local v3           #two_halfs:I
    .local v4, two_halfs:I
    :goto_1
    if-ltz v1, :cond_1

    const/16 v5, 0x9

    if-gt v1, v5, :cond_1

    .line 64
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    :goto_2
    aget-byte v5, p0, v2

    and-int/lit8 v1, v5, 0xf

    .line 68
    add-int/lit8 v3, v4, 0x1

    .end local v4           #two_halfs:I
    .restart local v3       #two_halfs:I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v3           #two_halfs:I
    .restart local v4       #two_halfs:I
    :cond_1
    const/16 v5, 0xa

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .end local v4           #two_halfs:I
    .restart local v3       #two_halfs:I
    :cond_2
    move v4, v3

    .end local v3           #two_halfs:I
    .restart local v4       #two_halfs:I
    goto :goto_1
.end method
