.class public Lcom/cauly/android/ad/AdCommon;
.super Ljava/lang/Object;
.source "AdCommon.java"


# static fields
.field static AD_SERVER_ADDRESS:Ljava/lang/String; = null

.field static AD_SERVER_CONNECT_TIMEOUT:I = 0x0

.field static AD_SERVER_PAGE:Ljava/lang/String; = null

.field static AD_SERVER_PORT:Ljava/lang/String; = null

.field static AD_SERVER_READ_TIMEOUT:I = 0x0

.field public static final A_CH:Ljava/lang/String; = "vItZm"

.field public static final A_SP:Ljava/lang/String; = "@#_"

.field public static final AdCompanyName:Ljava/lang/String; = "Ads By Cauly"

.field static CLICK_SERVER_ADDRESS:Ljava/lang/String; = null

.field static CLICK_SERVER_CONNECT_TIMEOUT:I = 0x0

.field static CLICK_SERVER_PAGE:Ljava/lang/String; = null

.field static CLICK_SERVER_PORT:Ljava/lang/String; = null

.field static CLICK_SERVER_READ_TIMEOUT:I = 0x0

.field public static final CaulyNameTag:Ljava/lang/String; = "Cauly Ads"

.field public static final Clear:I = 0x0

.field public static final Debug:Ljava/lang/String; = null

.field public static final Error:Ljava/lang/String; = null

.field public static final LAYOUT_HEIGHT:I = 0x30

.field static PLATFORM:Ljava/lang/String;

.field public static REQ_SEQ:I

.field public static REU_SEQ:I

.field static SDK_VERSION:Ljava/lang/String;


# instance fields
.field public action:Ljava/lang/String;

.field public adType:Ljava/lang/String;

.field public age:Ljava/lang/String;

.field public allowcall:Ljava/lang/String;

.field public appCode:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public gpsInfo:Ljava/lang/String;

.field public lang:Ljava/lang/String;

.field public manufacturer:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public provider:Ljava/lang/String;

.field public udid:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v1, 0xbb8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 15
    const-string v0, "1.1.5"

    sput-object v0, Lcom/cauly/android/ad/AdCommon;->SDK_VERSION:Ljava/lang/String;

    .line 16
    const-string v0, "Android"

    sput-object v0, Lcom/cauly/android/ad/AdCommon;->PLATFORM:Ljava/lang/String;

    .line 18
    const-string v0, "ad.cauly.co.kr"

    sput-object v0, Lcom/cauly/android/ad/AdCommon;->AD_SERVER_ADDRESS:Ljava/lang/String;

    .line 19
    const-string v0, "11000"

    sput-object v0, Lcom/cauly/android/ad/AdCommon;->AD_SERVER_PORT:Ljava/lang/String;

    .line 20
    const-string v0, "caulyImpress"

    sput-object v0, Lcom/cauly/android/ad/AdCommon;->AD_SERVER_PAGE:Ljava/lang/String;

    .line 22
    const-string v0, "click.cauly.co.kr"

    sput-object v0, Lcom/cauly/android/ad/AdCommon;->CLICK_SERVER_ADDRESS:Ljava/lang/String;

    .line 23
    const-string v0, "15000"

    sput-object v0, Lcom/cauly/android/ad/AdCommon;->CLICK_SERVER_PORT:Ljava/lang/String;

    .line 24
    const-string v0, "caulyClick"

    sput-object v0, Lcom/cauly/android/ad/AdCommon;->CLICK_SERVER_PAGE:Ljava/lang/String;

    .line 26
    const/16 v0, 0x1388

    sput v0, Lcom/cauly/android/ad/AdCommon;->AD_SERVER_CONNECT_TIMEOUT:I

    .line 27
    sput v1, Lcom/cauly/android/ad/AdCommon;->CLICK_SERVER_CONNECT_TIMEOUT:I

    .line 29
    const/16 v0, 0x1388

    sput v0, Lcom/cauly/android/ad/AdCommon;->AD_SERVER_READ_TIMEOUT:I

    .line 30
    sput v1, Lcom/cauly/android/ad/AdCommon;->CLICK_SERVER_READ_TIMEOUT:I

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@#_"

    const/4 v2, 0x3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "vItZm"

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cauly/android/ad/AdCommon;->Debug:Ljava/lang/String;

    .line 41
    sput v3, Lcom/cauly/android/ad/AdCommon;->REQ_SEQ:I

    .line 42
    sput v3, Lcom/cauly/android/ad/AdCommon;->REU_SEQ:I

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@#_"

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "vItZm"

    const/4 v2, 0x5

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vItZm"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@#_"

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cauly/android/ad/AdCommon;->Error:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BackgroundImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "color"

    .prologue
    .line 92
    const-string v0, ""

    .line 93
    .local v0, resultImage:Ljava/lang/String;
    const-string v1, "black,blue,brown,gray,green,lblue,pink,purple,red"

    .line 94
    .local v1, str:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "a_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 100
    :cond_0
    const-string v0, "a_black.png"

    goto :goto_0
.end method

.method public static Change_Icon(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 107
    const-string v0, ""

    .line 108
    .local v0, result:Ljava/lang/String;
    const-string v1, "app"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string v0, "btn_market.png"

    .line 160
    :goto_0
    return-object v0

    .line 112
    :cond_0
    const-string v1, "skt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const-string v0, "btn_tstore.png"

    goto :goto_0

    .line 116
    :cond_1
    const-string v1, "site"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    const-string v0, "btn_site.png"

    goto :goto_0

    .line 120
    :cond_2
    const-string v1, "movie"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    const-string v0, "btn_video.png"

    goto :goto_0

    .line 124
    :cond_3
    const-string v1, "image"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 126
    const-string v0, "btn_image.png"

    goto :goto_0

    .line 128
    :cond_4
    const-string v1, "map"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 130
    const-string v0, "btn_map.png"

    goto :goto_0

    .line 132
    :cond_5
    const-string v1, "call"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 134
    const-string v0, "btn_call.png"

    goto :goto_0

    .line 136
    :cond_6
    const-string v1, "freecall"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 138
    const-string v0, "btn_freecall.png"

    goto :goto_0

    .line 140
    :cond_7
    const-string v1, "shop"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 142
    const-string v0, "btn_cart.png"

    goto :goto_0

    .line 144
    :cond_8
    const-string v1, "twit"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 146
    const-string v0, "btn_twitter.png"

    goto :goto_0

    .line 148
    :cond_9
    const-string v1, "me2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 150
    const-string v0, "btn_me2day.png"

    goto :goto_0

    .line 152
    :cond_a
    const-string v1, "blog"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 154
    const-string v0, "btn_blog.png"

    goto :goto_0

    .line 158
    :cond_b
    const-string v0, "btn_site.png"

    goto :goto_0
.end method

.method public static Change_Icon_Background(Ljava/lang/String;)[I
    .locals 2
    .parameter "color"

    .prologue
    const/4 v1, 0x2

    .line 165
    const-string v0, "black"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 207
    :goto_0
    return-object v0

    .line 169
    :cond_0
    const-string v0, "blue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    goto :goto_0

    .line 173
    :cond_1
    const-string v0, "brown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    goto :goto_0

    .line 177
    :cond_2
    const-string v0, "gray"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    goto :goto_0

    .line 181
    :cond_3
    const-string v0, "green"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    goto :goto_0

    .line 185
    :cond_4
    const-string v0, "lblue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    goto :goto_0

    .line 189
    :cond_5
    const-string v0, "pink"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 191
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    goto :goto_0

    .line 193
    :cond_6
    const-string v0, "purple"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 195
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    goto :goto_0

    .line 197
    :cond_7
    const-string v0, "red"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 199
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    goto :goto_0

    .line 201
    :cond_8
    const-string v0, "event"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 203
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    goto :goto_0

    .line 207
    :cond_9
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    goto/16 :goto_0

    .line 167
    :array_0
    .array-data 0x4
        0x8t 0x8t 0x8t 0xfft
        0x7bt 0x7bt 0x7bt 0xfft
    .end array-data

    .line 171
    :array_1
    .array-data 0x4
        0x9et 0x56t 0x3ct 0xfft
        0xe2t 0x85t 0x5dt 0xfft
    .end array-data

    .line 175
    :array_2
    .array-data 0x4
        0x2at 0x44t 0x5et 0xfft
        0x45t 0x6bt 0x92t 0xfft
    .end array-data

    .line 179
    :array_3
    .array-data 0x4
        0x83t 0x83t 0x83t 0xfft
        0xb1t 0xb1t 0xb1t 0xfft
    .end array-data

    .line 183
    :array_4
    .array-data 0x4
        0xdt 0x89t 0x65t 0xfft
        0x1dt 0xd0t 0xa2t 0xfft
    .end array-data

    .line 187
    :array_5
    .array-data 0x4
        0xbct 0xa3t 0x23t 0xfft
        0xd4t 0xcet 0x77t 0xfft
    .end array-data

    .line 191
    :array_6
    .array-data 0x4
        0x8ct 0x6et 0xe8t 0xfft
        0xc0t 0xa3t 0xf9t 0xfft
    .end array-data

    .line 195
    :array_7
    .array-data 0x4
        0x79t 0x42t 0x45t 0xfft
        0xb7t 0x69t 0x6et 0xfft
    .end array-data

    .line 199
    :array_8
    .array-data 0x4
        0x2t 0x2t 0x85t 0xfft
        0x2t 0x2t 0xc6t 0xfft
    .end array-data

    .line 203
    :array_9
    .array-data 0x4
        0x2t 0x2t 0x85t 0x0t
        0x2t 0x2t 0xc6t 0x0t
    .end array-data

    .line 207
    :array_a
    .array-data 0x4
        0x8t 0x8t 0x8t 0xfft
        0x7bt 0x7bt 0x7bt 0xfft
    .end array-data
.end method

.method public static alertError(Ljava/lang/String;)V
    .locals 1
    .parameter "errorMessage"

    .prologue
    .line 294
    const-string v0, "Cauly Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 5
    .parameter "ba"

    .prologue
    .line 221
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 228
    :goto_0
    return-object v3

    .line 222
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 224
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    array-length v3, p0

    if-lt v2, v3, :cond_2

    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 225
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, hexNumber:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private connect(Ljava/lang/String;)I
    .locals 6
    .parameter "clickurl"

    .prologue
    .line 273
    const/4 v3, -0x1

    .line 275
    .local v3, returnValue:I
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    .local v4, url:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 278
    .local v0, conn:Ljava/net/URLConnection;
    const/16 v5, 0xbb8

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 279
    const/16 v5, 0xbb8

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 280
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 281
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 282
    .local v2, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 283
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    .end local v0           #conn:Ljava/net/URLConnection;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v4           #url:Ljava/net/URL;
    :goto_0
    return v3

    .line 284
    .restart local v4       #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 285
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 287
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #url:Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 288
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "encrypted"
    .parameter "keyStr"

    .prologue
    .line 250
    invoke-static {p1}, Lcom/cauly/android/ad/AdCommon;->makeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, key:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 255
    .local v5, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "AES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 256
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 257
    invoke-static {p0}, Lcom/cauly/android/ad/AdCommon;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 258
    .local v3, original:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #original:[B
    .end local v5           #skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    .local v4, originalString:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 259
    .end local v4           #originalString:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 260
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ERR"

    .restart local v4       #originalString:Ljava/lang/String;
    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "message"
    .parameter "keyStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 241
    invoke-static {p1}, Lcom/cauly/android/ad/AdCommon;->makeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, key:Ljava/lang/String;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 243
    .local v3, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 244
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 245
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 246
    .local v1, encrypted:[B
    invoke-static {v1}, Lcom/cauly/android/ad/AdCommon;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 4
    .parameter "hex"

    .prologue
    .line 212
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 217
    :cond_1
    return-object v0

    .line 213
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 214
    .local v0, ba:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 215
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static makeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "keyStr"

    .prologue
    .line 232
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 233
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 234
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_1
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public Download_Info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "cauly"
    .parameter "appcode"

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://downinfo.cauly.co.kr:1130/CCaulyAppDownInfo?action=stack_appdown_info&udid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cauly/android/ad/AdCommon;->connect(Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/cauly/android/ad/AdCommon;->adType:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/cauly/android/ad/AdCommon;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getAllowcall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/cauly/android/ad/AdCommon;->allowcall:Ljava/lang/String;

    return-object v0
.end method

.method public getAppCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/cauly/android/ad/AdCommon;->appCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/cauly/android/ad/AdCommon;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/cauly/android/ad/AdCommon;->gpsInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/cauly/android/ad/AdCommon;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/cauly/android/ad/AdCommon;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/cauly/android/ad/AdCommon;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/cauly/android/ad/AdCommon;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/cauly/android/ad/AdCommon;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/cauly/android/ad/AdCommon;->version:Ljava/lang/String;

    return-object v0
.end method

.method public initCommon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "adType"
    .parameter "appCode"
    .parameter "gender"
    .parameter "age"
    .parameter "gpsInfo"
    .parameter "udid"
    .parameter "version"
    .parameter "lang"
    .parameter "provider"
    .parameter "manufacturer"
    .parameter "model"
    .parameter "allowcall"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cauly/android/ad/AdCommon;->action:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/cauly/android/ad/AdCommon;->adType:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/cauly/android/ad/AdCommon;->appCode:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/cauly/android/ad/AdCommon;->gender:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/cauly/android/ad/AdCommon;->age:Ljava/lang/String;

    .line 67
    iput-object p6, p0, Lcom/cauly/android/ad/AdCommon;->gpsInfo:Ljava/lang/String;

    .line 68
    iput-object p7, p0, Lcom/cauly/android/ad/AdCommon;->udid:Ljava/lang/String;

    .line 69
    iput-object p8, p0, Lcom/cauly/android/ad/AdCommon;->version:Ljava/lang/String;

    .line 70
    iput-object p9, p0, Lcom/cauly/android/ad/AdCommon;->lang:Ljava/lang/String;

    .line 71
    iput-object p10, p0, Lcom/cauly/android/ad/AdCommon;->provider:Ljava/lang/String;

    .line 72
    iput-object p11, p0, Lcom/cauly/android/ad/AdCommon;->manufacturer:Ljava/lang/String;

    .line 73
    iput-object p12, p0, Lcom/cauly/android/ad/AdCommon;->model:Ljava/lang/String;

    .line 74
    iput-object p13, p0, Lcom/cauly/android/ad/AdCommon;->allowcall:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public nullChk(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "inval"

    .prologue
    .line 79
    const-string v0, ""

    .line 80
    .local v0, resultStr:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 81
    const-string v0, ""

    .line 87
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string v0, ""

    goto :goto_0

    .line 85
    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public setAdType(Ljava/lang/String;)V
    .locals 0
    .parameter "adType"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/cauly/android/ad/AdCommon;->adType:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .parameter "age"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/cauly/android/ad/AdCommon;->age:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setAllowcall(Ljava/lang/String;)V
    .locals 0
    .parameter "allowcall"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/cauly/android/ad/AdCommon;->allowcall:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public setAppCode(Ljava/lang/String;)V
    .locals 0
    .parameter "appCode"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/cauly/android/ad/AdCommon;->appCode:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/cauly/android/ad/AdCommon;->gender:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setGpsInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "gpsInfo"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/cauly/android/ad/AdCommon;->gpsInfo:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .parameter "lang"

    .prologue
    .line 359
    iput-object p1, p0, Lcom/cauly/android/ad/AdCommon;->lang:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0
    .parameter "manufacturer"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/cauly/android/ad/AdCommon;->manufacturer:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/cauly/android/ad/AdCommon;->model:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/cauly/android/ad/AdCommon;->provider:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .parameter "udid"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/cauly/android/ad/AdCommon;->udid:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/cauly/android/ad/AdCommon;->version:Ljava/lang/String;

    .line 352
    return-void
.end method
