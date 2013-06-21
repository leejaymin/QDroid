.class public Lcom/fleapapa/util/MyUtil;
.super Ljava/lang/Object;
.source "MyUtil.java"


# static fields
.field public static final DATE_DEL:Ljava/lang/String; = " "

.field public static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field private static DataDir:Ljava/lang/String; = null

.field public static final WHO:Ljava/lang/String; = "MyUtil"

.field private static sAgo:Ljava/lang/String;

.field private static sDay:Ljava/lang/String;

.field private static sHour:Ljava/lang/String;

.field private static sMin:Ljava/lang/String;

.field private static sMon:Ljava/lang/String;

.field private static sSec:Ljava/lang/String;

.field private static sYear:Ljava/lang/String;

.field private static tick:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v1, 0x7f060093

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/util/MyUtil;->sDay:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v1, 0x7f060094

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/util/MyUtil;->sHour:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v1, 0x7f060095

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/util/MyUtil;->sMin:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v1, 0x7f060096

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/util/MyUtil;->sSec:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v1, 0x7f060092

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/util/MyUtil;->sMon:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v1, 0x7f060091

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/util/MyUtil;->sYear:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const v1, 0x7f060097

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/util/MyUtil;->sAgo:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTags(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "title"
    .parameter "html"

    .prologue
    .line 447
    const-string v0, "<head[^>]*>"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<HeAd><title>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</title></HeAd>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 449
    :cond_0
    const-string v0, "<body[^>]*>"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<BoDy>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</BoDy>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 451
    :cond_1
    const-string v0, "<html[^>]*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<HtMl>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</HtMl>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 453
    :cond_2
    const-string v0, "<br>"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 454
    const-string v0, "[\\r]?\\n"

    const-string v1, "<bR>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 455
    :cond_3
    return-object p1
.end method

.method public static atos(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2
    .parameter "sa"

    .prologue
    .line 88
    if-eqz p0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0.0.0.0:0"

    goto :goto_0
.end method

.method public static boldize(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "vg"

    .prologue
    .line 472
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 478
    return-void

    .line 473
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 474
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 472
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 477
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->boldize(Landroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method public static call(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "a"
    .parameter "phone"

    .prologue
    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, i:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->createURI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 381
    invoke-static {p0, v0}, Lcom/fleapapa/util/MyUtil;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 382
    return-void
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"
    .parameter "a"

    .prologue
    .line 189
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"
    .parameter "del"
    .parameter "a"

    .prologue
    .line 184
    invoke-static {p2}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 186
    :goto_0
    return-object v0

    .line 185
    :cond_0
    invoke-static {p0}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static contentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    const-string v1, "text/html"

    .line 153
    const-string v0, ".htm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "text/html"

    move-object v0, v1

    .line 169
    :goto_0
    return-object v0

    .line 154
    :cond_0
    const-string v0, ".html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "text/html"

    move-object v0, v1

    goto :goto_0

    .line 155
    :cond_1
    const-string v0, ".php"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "text/html"

    move-object v0, v1

    goto :goto_0

    .line 156
    :cond_2
    const-string v0, ".xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "text/xml"

    goto :goto_0

    .line 158
    :cond_3
    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "image/png"

    goto :goto_0

    .line 159
    :cond_4
    const-string v0, ".gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "image/gif"

    goto :goto_0

    .line 160
    :cond_5
    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "image/jpg"

    goto :goto_0

    .line 161
    :cond_6
    const-string v0, ".bmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "image/bmp"

    goto :goto_0

    .line 162
    :cond_7
    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "image/jpeg"

    goto :goto_0

    .line 163
    :cond_8
    const-string v0, ".tiff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "image/tiff"

    goto :goto_0

    .line 165
    :cond_9
    const-string v0, ".mp3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "audio/mp3"

    goto :goto_0

    .line 166
    :cond_a
    const-string v0, ".wav"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "audio/wav"

    goto :goto_0

    .line 167
    :cond_b
    const-string v0, ".ogg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "audio/ogg"

    goto/16 :goto_0

    .line 168
    :cond_c
    const-string v0, ".midi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "audio/midi"

    goto/16 :goto_0

    .line 169
    :cond_d
    const-string v0, "text/plain"

    goto/16 :goto_0
.end method

.method public static createURI(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"

    .prologue
    .line 145
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    :goto_0
    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyUtil.createURI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "istr"

    .prologue
    .line 427
    const-string v4, ""

    .line 429
    .local v4, ostr:Ljava/lang/String;
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 430
    .local v2, md5:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 431
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 432
    .local v3, obuf:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-lt v1, v5, :cond_0

    .line 437
    .end local v1           #i:I
    .end local v2           #md5:Ljava/security/MessageDigest;
    .end local v3           #obuf:[B
    :goto_1
    return-object v4

    .line 432
    .restart local v1       #i:I
    .restart local v2       #md5:Ljava/security/MessageDigest;
    .restart local v3       #obuf:[B
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-byte v9, v3, v1

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    .end local v1           #i:I
    .end local v2           #md5:Ljava/security/MessageDigest;
    .end local v3           #obuf:[B
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 435
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MyUtil.digest: MessageDigest error "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static distance(II)F
    .locals 9
    .parameter "lati"
    .parameter "loni"

    .prologue
    const-wide v4, 0x412e848000000000L

    .line 467
    const/4 v0, 0x1

    new-array v8, v0, [F

    .line 468
    .local v8, dists:[F
    int-to-double v0, p0

    div-double/2addr v0, v4

    int-to-double v2, p1

    div-double/2addr v2, v4

    sget-object v4, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v4}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    sget-object v6, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v6}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 469
    const/4 v0, 0x0

    aget v0, v8, v0

    return v0
.end method

.method public static email(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "a"
    .parameter "email"
    .parameter "subj"

    .prologue
    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, sendIntent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const-string v1, "select email client"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 389
    return-void
.end method

.method public static empty(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 480
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static equal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 400
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 402
    :goto_0
    return v0

    .line 401
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 402
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static expires(Ljava/lang/String;)Z
    .locals 1
    .parameter "dateString"

    .prologue
    .line 282
    const-string v0, "yyyy-MM-dd HH:mm"

    invoke-static {p0, v0}, Lcom/fleapapa/util/MyUtil;->expires(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static expires(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "dateString"
    .parameter "dateFormat"

    .prologue
    .line 278
    invoke-static {p0, p1}, Lcom/fleapapa/util/MyUtil;->toDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 279
    .local v0, date:Ljava/util/Date;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    goto :goto_0
.end method

.method public static getDataDir()Ljava/lang/String;
    .locals 5

    .prologue
    .line 194
    sget-object v2, Lcom/fleapapa/util/MyUtil;->DataDir:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/fleapapa/util/MyUtil;->DataDir:Ljava/lang/String;

    .line 201
    :goto_0
    return-object v2

    .line 196
    :cond_0
    :try_start_0
    sget-object v2, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    const-string v3, "_gun_"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 197
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/fleapapa/util/MyUtil;->DataDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v1           #f:Ljava/io/File;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 200
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MyUtil.getDataDir: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object v2, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static final varargs getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 423
    sget-object v1, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 424
    .local v0, pref:Landroid/content/SharedPreferences;
    array-length v1, p1

    if-lez v1, :cond_0

    aget-object v1, p1, v3

    :goto_0
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getRelativeTime(J)Ljava/lang/String;
    .locals 5
    .parameter "sec"

    .prologue
    .line 290
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p0

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 291
    .local v0, d:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static initWebView(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 2
    .parameter "a"
    .parameter "wv"

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 223
    new-instance v0, Lcom/fleapapa/util/MyUtil$1;

    invoke-direct {v0, p0}, Lcom/fleapapa/util/MyUtil$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 230
    new-instance v0, Lcom/fleapapa/util/MyUtil$2;

    invoke-direct {v0, p0}, Lcom/fleapapa/util/MyUtil$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 237
    return-void
.end method

.method public static isAsian()Z
    .locals 2

    .prologue
    .line 440
    sget-object v1, Lcom/fleapapa/util/My;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, lang:Ljava/lang/String;
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    const-string v1, "jp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    .line 441
    goto :goto_0
.end method

.method public static nap(J)Z
    .locals 4
    .parameter "milliseconds"

    .prologue
    const/4 v3, 0x0

    .line 71
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_0

    move v1, v3

    .line 77
    :goto_0
    return v1

    .line 73
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 74
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static newer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "dateStr1"
    .parameter "dateStr2"

    .prologue
    const-string v3, "yyyy-MM-dd HH:mm"

    .line 285
    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-static {p0, v3}, Lcom/fleapapa/util/MyUtil;->toDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 286
    .local v0, date1:Ljava/util/Date;
    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-static {p1, v3}, Lcom/fleapapa/util/MyUtil;->toDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 287
    .local v1, date2:Ljava/util/Date;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static parseDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4
    .parameter "num"

    .prologue
    .line 135
    :try_start_0
    invoke-static {p0}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "0"

    .line 136
    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 140
    :goto_0
    return-object v1

    .line 138
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 139
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyUtil.parseDouble("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 1
    .parameter "num"

    .prologue
    .line 108
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 4
    .parameter "num"
    .parameter "radix"

    .prologue
    .line 112
    :try_start_0
    invoke-static {p0}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "0"

    .line 113
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 117
    :goto_0
    return v1

    .line 115
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 116
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyUtil.parseInt("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 2
    .parameter "num"

    .prologue
    .line 121
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/fleapapa/util/MyUtil;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong(Ljava/lang/String;I)J
    .locals 4
    .parameter "num"
    .parameter "radix"

    .prologue
    .line 125
    :try_start_0
    invoke-static {p0}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "0"

    .line 126
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 130
    :goto_0
    return-wide v1

    .line 128
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 129
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyUtil.parseLong("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static plural(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "n"
    .parameter "unit"

    .prologue
    const-string v3, ""

    .line 308
    invoke-static {}, Lcom/fleapapa/util/MyUtil;->isAsian()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    move-object v0, v3

    .line 309
    .local v0, del:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    if-gt p0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    :goto_1
    return-object v2

    .line 308
    .end local v0           #del:Ljava/lang/String;
    :cond_0
    const-string v2, " "

    move-object v0, v2

    goto :goto_0

    .line 311
    .restart local v0       #del:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/fleapapa/util/MyUtil;->isAsian()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    move-object v1, v3

    .line 312
    .local v1, s:Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 311
    .end local v1           #s:Ljava/lang/String;
    :cond_2
    const-string v2, "s"

    move-object v1, v2

    goto :goto_2
.end method

.method public static preview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "a"
    .parameter "wv"
    .parameter "url"

    .prologue
    .line 239
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyUtil.preview: loadUrl("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-nez p2, :cond_0

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-static {p0, p1}, Lcom/fleapapa/util/MyUtil;->initWebView(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 243
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static preview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "a"
    .parameter "wv"
    .parameter "title"
    .parameter "body"

    .prologue
    const/4 v1, 0x0

    .line 248
    if-nez p3, :cond_0

    const-string v0, ""

    move-object p3, v0

    :cond_0
    invoke-static {p3}, Lcom/fleapapa/util/MyUtil;->toURI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 249
    .local v7, uri:Landroid/net/Uri;
    if-nez v7, :cond_2

    move-object v6, v1

    .line 250
    .local v6, scheme:Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    const-string v0, "http"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 253
    :cond_1
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MyUtil.preview: loadData("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes)=\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {p0, p1}, Lcom/fleapapa/util/MyUtil;->initWebView(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 256
    invoke-static {p2, p3}, Lcom/fleapapa/util/MyUtil;->addTags(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, html:Ljava/lang/String;
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MyUtil.preview: html="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, "about:blank"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .end local v2           #html:Ljava/lang/String;
    :goto_1
    return-void

    .line 249
    .end local v6           #scheme:Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    .line 262
    .restart local v6       #scheme:Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1, p3}, Lcom/fleapapa/util/MyUtil;->preview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static profile()J
    .locals 4

    .prologue
    .line 405
    sget-wide v0, Lcom/fleapapa/util/MyUtil;->tick:J

    .line 406
    .local v0, old:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/fleapapa/util/MyUtil;->tick:J

    .line 407
    sget-wide v2, Lcom/fleapapa/util/MyUtil;->tick:J

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public static progress(Landroid/app/Activity;Z)V
    .locals 3
    .parameter "a"
    .parameter "on"

    .prologue
    const/4 v2, 0x2

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, -0x3

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 219
    return-void

    .line 217
    :cond_0
    const/4 v1, -0x2

    goto :goto_0

    .line 218
    :cond_1
    const/4 v1, -0x4

    goto :goto_1
.end method

.method public static final varargs putPreference([Ljava/lang/String;)V
    .locals 6
    .parameter "args"

    .prologue
    .line 416
    sget-object v3, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 417
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 418
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 420
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 421
    return-void

    .line 419
    :cond_0
    aget-object v3, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "string"
    .parameter "escape"

    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 173
    .local v3, sbs:[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 174
    .local v1, chs:[B
    const/4 v0, 0x0

    .local v0, bi:I
    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_0

    .line 181
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    return-object v4

    .line 175
    :cond_0
    const/4 v2, 0x0

    .local v2, ci:I
    :goto_1
    array-length v4, v1

    if-lt v2, v4, :cond_1

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    aget-byte v4, v3, v0

    aget-byte v5, v1, v2

    if-ne v4, v5, :cond_3

    .line 177
    int-to-byte v4, v2

    aput-byte v4, v3, v0

    .line 175
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 179
    :cond_3
    aget-byte v4, v3, v0

    int-to-byte v5, v2

    if-ne v4, v5, :cond_2

    .line 180
    aget-byte v4, v1, v2

    aput-byte v4, v3, v0

    goto :goto_2
.end method

.method public static final resolve(Ljava/lang/String;)Ljava/net/InetSocketAddress;
    .locals 5
    .parameter "addr"

    .prologue
    .line 410
    new-instance v2, Lcom/fleapapa/util/MyTokenizer;

    const-string v3, ":"

    invoke-direct {v2, p0, v3}, Lcom/fleapapa/util/MyTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .local v2, scan:Lcom/fleapapa/util/MyTokenizer;
    invoke-virtual {v2}, Lcom/fleapapa/util/MyTokenizer;->next()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, host:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/fleapapa/util/MyTokenizer;->nextInt()I

    move-result v1

    .line 413
    .local v1, port:I
    new-instance v3, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_0

    const/16 v4, 0x50

    :goto_0
    invoke-direct {v3, v0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v3

    :cond_0
    move v4, v1

    goto :goto_0
.end method

.method public static rmvTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "html"

    .prologue
    const-string v3, ""

    .line 459
    .line 460
    const-string v0, "(?i:<HeAd>.*</HeAd>)"

    const-string v1, ""

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    const-string v1, "(?i:<dIV[^>]*>.*</dIV>)"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    const-string v1, "(?i:</?BoDy>)"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    const-string v1, "(?i:</?HtMl>)"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    const-string v1, "(?i:<bR>)"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    return-object v0
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4
    .parameter "a"
    .parameter "i"

    .prologue
    .line 392
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyUtil.startActivity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {p0}, Lcom/fleapapa/util/MyNotify;->todo(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 5
    .parameter "activity"
    .parameter "action"

    .prologue
    .line 50
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const/4 v2, 0x1

    .line 58
    :goto_0
    return v2

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MyUtil.startActivity: fail to start activity "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to start activity "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static startService(Ljava/lang/String;)Z
    .locals 4
    .parameter "action"

    .prologue
    .line 62
    sget-object v1, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 63
    .local v0, service:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 65
    :goto_0
    return v1

    .line 64
    :cond_0
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyUtil.startService: fail to start service "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in Service mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static stoUUID(Ljava/lang/String;)Ljava/util/UUID;
    .locals 4
    .parameter "uuid"

    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyUtil.stoUUID(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static stopService(Ljava/lang/String;)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 68
    sget-object v0, Lcom/fleapapa/util/My;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static timeAgo(Landroid/app/Activity;J)Ljava/lang/String;
    .locals 10
    .parameter "a"
    .parameter "time"

    .prologue
    const v9, 0x1e13380

    const v8, 0x278d00

    const v7, 0x15180

    .line 334
    invoke-static {}, Lcom/fleapapa/util/MyUtil;->isAsian()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    move-object v1, v3

    .line 335
    .local v1, del:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/fleapapa/util/MyUtil;->sAgo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, ago:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p1

    const-wide/16 v5, 0x3e7

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v2, v3

    .line 337
    .local v2, sec:I
    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 338
    :cond_0
    const/16 v3, 0x3c

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/fleapapa/util/MyUtil;->sSec:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    :goto_1
    return-object v3

    .line 334
    .end local v0           #ago:Ljava/lang/String;
    .end local v1           #del:Ljava/lang/String;
    .end local v2           #sec:I
    :cond_1
    const-string v3, " "

    move-object v1, v3

    goto :goto_0

    .line 339
    .restart local v0       #ago:Ljava/lang/String;
    .restart local v1       #del:Ljava/lang/String;
    .restart local v2       #sec:I
    :cond_2
    const/16 v3, 0xe10

    if-ge v2, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    div-int/lit8 v4, v2, 0x3c

    sget-object v5, Lcom/fleapapa/util/MyUtil;->sMin:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 340
    :cond_3
    if-ge v2, v7, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    div-int/lit16 v4, v2, 0xe10

    sget-object v5, Lcom/fleapapa/util/MyUtil;->sHour:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 341
    :cond_4
    if-ge v2, v8, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    div-int v4, v2, v7

    sget-object v5, Lcom/fleapapa/util/MyUtil;->sDay:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 342
    :cond_5
    if-ge v2, v9, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    div-int v4, v2, v8

    sget-object v5, Lcom/fleapapa/util/MyUtil;->sMon:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 343
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    div-int v4, v2, v9

    sget-object v5, Lcom/fleapapa/util/MyUtil;->sYear:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public static timeDiff(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "time"

    .prologue
    const v9, 0x6ddd00

    const/4 v8, 0x1

    .line 315
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 316
    .local v3, gcNow:Ljava/util/GregorianCalendar;
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    .line 318
    .local v4, gcThen:Ljava/util/GregorianCalendar;
    new-instance v5, Ljava/util/SimpleTimeZone;

    const v6, -0x1b77400

    const-string v7, "PST"

    invoke-direct {v5, v6, v7}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 319
    .local v5, pdt:Ljava/util/SimpleTimeZone;
    const/4 v6, 0x3

    invoke-virtual {v5, v6, v8, v8, v9}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    .line 320
    const/16 v6, 0x9

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    .line 321
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 323
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 324
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v4, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0           #date:Ljava/util/Date;
    :goto_0
    const-string v6, "0:0:0:0"

    return-object v6

    .line 328
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 329
    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MyUtil.timeDiff: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static timeLeft(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "a"
    .parameter "tleft"

    .prologue
    .line 353
    if-nez p1, :cond_0

    const-string p0, ""

    .line 375
    .end local p0
    .end local p1
    :goto_0
    return-object p0

    .line 354
    .restart local p0
    .restart local p1
    :cond_0
    invoke-static {}, Lcom/fleapapa/util/MyUtil;->isAsian()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    .line 355
    .local v0, del:Ljava/lang/String;
    :goto_1
    const v1, 0x7f060093

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, sDay:Ljava/lang/String;
    const v1, 0x7f060094

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, sHour:Ljava/lang/String;
    const v1, 0x7f060095

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, sMin:Ljava/lang/String;
    const v1, 0x7f060096

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 359
    .local v6, sSec:Ljava/lang/String;
    const-string p0, ":"

    .end local p0
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 360
    .local p0, t:[Ljava/lang/String;
    if-eqz p0, :cond_1

    array-length p1, p0

    .end local p1
    const/4 v1, 0x4

    if-ge p1, v1, :cond_3

    :cond_1
    const-string p0, ""

    goto :goto_0

    .line 354
    .end local v0           #del:Ljava/lang/String;
    .end local v3           #sDay:Ljava/lang/String;
    .end local v4           #sHour:Ljava/lang/String;
    .end local v5           #sMin:Ljava/lang/String;
    .end local v6           #sSec:Ljava/lang/String;
    .local p0, a:Landroid/app/Activity;
    .restart local p1
    :cond_2
    const-string v0, ", "

    goto :goto_1

    .line 362
    .end local p1
    .restart local v0       #del:Ljava/lang/String;
    .restart local v3       #sDay:Ljava/lang/String;
    .restart local v4       #sHour:Ljava/lang/String;
    .restart local v5       #sMin:Ljava/lang/String;
    .restart local v6       #sSec:Ljava/lang/String;
    .local p0, t:[Ljava/lang/String;
    :cond_3
    const/4 p1, 0x0

    aget-object p1, p0, p1

    invoke-static {p1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 363
    .local v1, hh:I
    const/4 p1, 0x1

    aget-object p1, p0, p1

    invoke-static {p1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 364
    .local v2, mm:I
    const/4 p1, 0x2

    aget-object p1, p0, p1

    invoke-static {p1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 365
    .local v7, ss:I
    const/4 p1, 0x3

    aget-object p0, p0, p1

    .end local p0           #t:[Ljava/lang/String;
    invoke-static {p0}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 366
    .local p0, dd:I
    if-gez v1, :cond_4

    const-string p0, ""

    goto :goto_0

    .line 367
    :cond_4
    const/16 p1, 0x346

    if-ne v1, p1, :cond_5

    const/16 p1, 0x3b

    if-ne v2, p1, :cond_5

    invoke-static {p0, v3}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 368
    :cond_5
    rem-int/lit8 p1, v1, 0x18

    .line 369
    .local p1, h:I
    sub-int p0, v1, p1

    div-int/lit8 p0, p0, 0x18

    .line 370
    .local p0, d:I
    move v1, v2

    .line 371
    .local v1, m:I
    move v2, v7

    .line 372
    .local v2, s:I
    if-lez p0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #m:I
    invoke-static {p0, v3}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #d:I
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, v4}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #h:I
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 373
    .restart local v1       #m:I
    .restart local p0       #d:I
    .restart local p1       #h:I
    :cond_6
    if-lez p1, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #d:I
    invoke-static {p1, v4}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #h:I
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v1, v5}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 374
    .restart local p0       #d:I
    .restart local p1       #h:I
    :cond_7
    if-lez v1, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #d:I
    invoke-static {p1, v5}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #h:I
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v2, v6}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 375
    .restart local p0       #d:I
    .restart local p1       #h:I
    :cond_8
    invoke-static {v2, v6}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static timeLen(Landroid/app/Activity;J)Ljava/lang/String;
    .locals 4
    .parameter "a"
    .parameter "ms"

    .prologue
    const v3, 0x15180

    .line 346
    const-wide/16 v1, 0x3e7

    add-long/2addr v1, p1

    long-to-int v1, v1

    div-int/lit16 v0, v1, 0x3e8

    .line 347
    .local v0, sec:I
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/fleapapa/util/MyUtil;->sSec:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    :goto_0
    return-object v1

    .line 348
    :cond_0
    const/16 v1, 0xe10

    if-ge v0, v1, :cond_1

    div-int/lit8 v1, v0, 0x3c

    sget-object v2, Lcom/fleapapa/util/MyUtil;->sMin:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 349
    :cond_1
    if-ge v0, v3, :cond_2

    div-int/lit16 v1, v0, 0xe10

    sget-object v2, Lcom/fleapapa/util/MyUtil;->sHour:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 350
    :cond_2
    div-int v1, v0, v3

    sget-object v2, Lcom/fleapapa/util/MyUtil;->sDay:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static toDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter "dateString"

    .prologue
    .line 275
    const-string v0, "yyyy-MM-dd HH:mm"

    invoke-static {p0, v0}, Lcom/fleapapa/util/MyUtil;->toDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static toDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .parameter "dateString"
    .parameter "dateFormat"

    .prologue
    .line 267
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v1, p0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 271
    :goto_0
    return-object v1

    .line 269
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 270
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MyUtil.toDate: bad "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " format!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toLocal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "utcTime"

    .prologue
    .line 305
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fleapapa/util/MyUtil;->utcConvert(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toURI(Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .parameter "s"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 205
    if-nez p0, :cond_0

    move-object v2, v5

    .line 213
    :goto_0
    return-object v2

    .line 206
    :cond_0
    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, line:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    move-object v2, v5

    goto :goto_0

    .line 209
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 211
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 212
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "not a URI: \n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 213
    goto :goto_0
.end method

.method public static toUTC(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "localTime"

    .prologue
    .line 302
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/fleapapa/util/MyUtil;->utcConvert(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static utcConvert(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "datetime"
    .parameter "toUTC"

    .prologue
    .line 294
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 295
    .local v0, calendar:Ljava/util/GregorianCalendar;
    invoke-static {p0}, Lcom/fleapapa/util/MyUtil;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 296
    .local v1, date:Ljava/util/Date;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 299
    :goto_0
    return-object v2

    .line 297
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 298
    const/16 v2, 0xc

    if-eqz p1, :cond_1

    sget v3, Lcom/fleapapa/util/My;->tzOffset:I

    neg-int v3, v3

    :goto_1
    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 299
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 298
    :cond_1
    sget v3, Lcom/fleapapa/util/My;->tzOffset:I

    goto :goto_1
.end method
