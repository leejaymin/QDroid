.class public final Lcom/wooboo/adlib_android/___;
.super Ljava/lang/Object;
.source "___.java"


# static fields
.field private static a:Landroid/telephony/TelephonyManager;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:Ljava/lang/String;

.field public static g:I

.field public static h:I

.field public static i:I

.field public static isGif:Z

.field public static j:I

.field public static volatile k:I

.field private static l:Ljava/lang/String;

.field private static m:Landroid/content/Context;

.field private static volatile n:Z

.field private static o:Ljava/lang/String;

.field public static oid:I

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:I

.field private static timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    sput-boolean v2, Lcom/wooboo/adlib_android/___;->isGif:Z

    .line 35
    sput v2, Lcom/wooboo/adlib_android/___;->g:I

    .line 36
    const/4 v0, 0x2

    sput v0, Lcom/wooboo/adlib_android/___;->h:I

    .line 37
    const/4 v0, 0x3

    sput v0, Lcom/wooboo/adlib_android/___;->i:I

    .line 38
    const/4 v0, 0x4

    sput v0, Lcom/wooboo/adlib_android/___;->j:I

    .line 39
    sput v2, Lcom/wooboo/adlib_android/___;->k:I

    .line 40
    sput-object v1, Lcom/wooboo/adlib_android/___;->l:Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/wooboo/adlib_android/___;->m:Landroid/content/Context;

    .line 42
    sput-boolean v3, Lcom/wooboo/adlib_android/___;->n:Z

    .line 43
    sput-object v1, Lcom/wooboo/adlib_android/___;->o:Ljava/lang/String;

    .line 44
    sput-object v1, Lcom/wooboo/adlib_android/___;->p:Ljava/lang/String;

    .line 45
    sput-object v1, Lcom/wooboo/adlib_android/___;->q:Ljava/lang/String;

    .line 46
    sput-object v1, Lcom/wooboo/adlib_android/___;->r:Ljava/lang/String;

    .line 47
    const/4 v0, -0x2

    sput v0, Lcom/wooboo/adlib_android/___;->s:I

    .line 48
    sput v3, Lcom/wooboo/adlib_android/___;->oid:I

    .line 240
    const/16 v0, 0xbb8

    sput v0, Lcom/wooboo/adlib_android/___;->timeout:I

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ______()Ljava/lang/String;
    .locals 7

    .prologue
    .line 376
    const/4 v3, 0x0

    .line 377
    .local v3, searchQuery:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v2, post:Ljava/lang/StringBuilder;
    sget-object v4, Lcom/wooboo/adlib_android/___;->r:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 380
    invoke-static {}, Lcom/wooboo/adlib_android/___;->r()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/wooboo/adlib_android/___;->r:Ljava/lang/String;

    .line 382
    :cond_0
    const-string v4, "pit"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/wooboo/adlib_android/___;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v0, "4"

    .line 385
    .local v0, _ifm:Ljava/lang/String;
    const-string v4, "ifm"

    invoke-static {v2, v4, v0}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sget v4, Lcom/wooboo/adlib_android/___;->s:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1

    .line 388
    invoke-static {}, Lcom/wooboo/adlib_android/___;->s()I

    move-result v4

    sput v4, Lcom/wooboo/adlib_android/___;->s:I

    .line 389
    :cond_1
    sget v4, Lcom/wooboo/adlib_android/___;->s:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 390
    const-string v4, "mt"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :goto_0
    const-string v4, "bs"

    const-string v5, "7"

    invoke-static {v2, v4, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v4, "pid"

    invoke-static {}, Lcom/wooboo/adlib_android/___;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v4, "csdk"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v4, "sdk"

    const-string v5, "v1.0"

    invoke-static {v2, v4, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v4, "uid"

    invoke-static {}, Lcom/wooboo/adlib_android/___;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    sget-object v4, Lcom/wooboo/adlib_android/___;->l:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/wooboo/adlib_android/___;->q:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 405
    sget-object v4, Lcom/wooboo/adlib_android/___;->l:Ljava/lang/String;

    invoke-static {v4}, Lcom/wooboo/adlib_android/___;->getSIMDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/wooboo/adlib_android/___;->q:Ljava/lang/String;

    .line 408
    :cond_2
    sget-object v4, Lcom/wooboo/adlib_android/___;->q:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 409
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/wooboo/adlib_android/___;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_3
    const-string v4, "ml"

    invoke-static {}, Lcom/wooboo/adlib_android/___;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v4, "pn"

    invoke-static {}, Lcom/wooboo/adlib_android/___;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v4, "apn"

    invoke-static {}, Lcom/wooboo/adlib_android/___;->_p()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v4, "sw"

    invoke-static {v2, v4, v3}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/wooboo/adlib_android/___;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, mid:Ljava/lang/String;
    const-string v4, "mid"

    invoke-static {v2, v4, v1}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 392
    .end local v1           #mid:Ljava/lang/String;
    :cond_4
    const-string v4, "mi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/wooboo/adlib_android/___;->s:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static _p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/wooboo/adlib_android/___;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static _p(Ljava/lang/String;)V
    .locals 0
    .parameter "_"

    .prologue
    .line 54
    sput-object p0, Lcom/wooboo/adlib_android/___;->p:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/wooboo/adlib_android/___;->a:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/wooboo/adlib_android/___;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 99
    invoke-static {}, Lcom/wooboo/adlib_android/___;->dc()V

    return-void
.end method

.method private static b()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/wooboo/adlib_android/___;->b:Z

    return v0
.end method

.method protected static bs(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/16 v3, 0x12c

    const/16 v7, 0xd8

    const/16 v6, 0xa8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 225
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 226
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 227
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 228
    .local v1, w:I
    if-lt v1, v3, :cond_0

    .line 229
    const-string v2, "1"

    .line 237
    :goto_0
    return-object v2

    .line 230
    :cond_0
    if-ge v1, v3, :cond_1

    move v2, v5

    :goto_1
    if-lt v1, v7, :cond_2

    move v3, v5

    :goto_2
    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 231
    const-string v2, "2"

    goto :goto_0

    :cond_1
    move v2, v4

    .line 230
    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    .line 232
    :cond_3
    if-ge v1, v7, :cond_4

    move v2, v5

    :goto_3
    if-lt v1, v6, :cond_5

    move v3, v5

    :goto_4
    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    .line 233
    const-string v2, "3"

    goto :goto_0

    :cond_4
    move v2, v4

    .line 232
    goto :goto_3

    :cond_5
    move v3, v4

    goto :goto_4

    .line 234
    :cond_6
    if-ge v1, v6, :cond_7

    move v2, v5

    :goto_5
    const/16 v3, 0x78

    if-lt v1, v3, :cond_8

    move v3, v5

    :goto_6
    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    .line 235
    const-string v2, "4"

    goto :goto_0

    :cond_7
    move v2, v4

    .line 234
    goto :goto_5

    :cond_8
    move v3, v4

    goto :goto_6

    .line 237
    :cond_9
    const-string v2, "1"

    goto :goto_0
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/wooboo/adlib_android/___;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected static c(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 188
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CONFIGURATION ERROR:  Incorrect Wooboo publisher ID.  Should 32 [a-z,0-9] characters:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    sget-object v1, Lcom/wooboo/adlib_android/___;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wooboo/adlib_android/___;->clientError(Ljava/lang/String;)V

    .line 192
    :cond_1
    sput-object p0, Lcom/wooboo/adlib_android/___;->c:Ljava/lang/String;

    .line 193
    return-void
.end method

.method protected static clientError(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 134
    const-string v0, "Wooboo SDK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/wooboo/adlib_android/___;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 212
    sput-object p0, Lcom/wooboo/adlib_android/___;->d:Ljava/lang/String;

    .line 213
    return-void
.end method

.method private static dc()V
    .locals 7

    .prologue
    .line 101
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const-string v5, "http://162.105.131.113/"

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 102
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 103
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 104
    const/16 v5, 0x1388

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 105
    const/16 v5, 0x1388

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 106
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 108
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 109
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 111
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 130
    sget v5, Lcom/wooboo/adlib_android/___;->g:I

    sput v5, Lcom/wooboo/adlib_android/___;->k:I

    .line 131
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #url:Ljava/net/URL;
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 114
    .local v2, ex:Ljava/net/SocketTimeoutException;
    sget v5, Lcom/wooboo/adlib_android/___;->oid:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    .line 115
    sget v5, Lcom/wooboo/adlib_android/___;->h:I

    sput v5, Lcom/wooboo/adlib_android/___;->k:I

    .line 121
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    goto :goto_0

    .line 116
    :cond_2
    sget v5, Lcom/wooboo/adlib_android/___;->oid:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_3

    .line 117
    sget v5, Lcom/wooboo/adlib_android/___;->i:I

    sput v5, Lcom/wooboo/adlib_android/___;->k:I

    goto :goto_1

    .line 118
    :cond_3
    sget v5, Lcom/wooboo/adlib_android/___;->oid:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    .line 119
    sget v5, Lcom/wooboo/adlib_android/___;->j:I

    sput v5, Lcom/wooboo/adlib_android/___;->k:I

    goto :goto_1

    .line 123
    .end local v2           #ex:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 124
    .local v1, e:Ljava/net/MalformedURLException;
    goto :goto_0

    .line 125
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 126
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static e()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/wooboo/adlib_android/___;->e:I

    return v0
.end method

.method public static e(I)V
    .locals 0
    .parameter "e"

    .prologue
    .line 70
    sput p0, Lcom/wooboo/adlib_android/___;->e:I

    .line 71
    return-void
.end method

.method private static ga()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/wooboo/adlib_android/___;->a:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 148
    sget-object v0, Lcom/wooboo/adlib_android/___;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wooboo/adlib_android/___;->f:Ljava/lang/String;

    .line 149
    sget-object v0, Lcom/wooboo/adlib_android/___;->f:Ljava/lang/String;

    .line 151
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static gd(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 216
    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 218
    const-string v2, "android_id"

    .line 216
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, _:Ljava/lang/String;
    return-object v0
.end method

.method public static getSIMDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "ssn"

    .prologue
    const-string v11, "11"

    const-string v10, "10"

    const-string v9, "31"

    const-string v8, "so"

    const-string v7, "ac"

    .line 442
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 443
    .local v1, length:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v5, 0x6

    if-lt v1, v5, :cond_2

    .line 445
    const/4 v5, 0x4

    const/4 v6, 0x6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, on:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "7"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 448
    :cond_0
    const-string v5, "on"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 449
    const/4 v5, 0x5

    sput v5, Lcom/wooboo/adlib_android/___;->oid:I

    .line 450
    const/4 v5, 0x7

    if-lt v1, v5, :cond_2

    .line 451
    const/4 v5, 0x6

    const/4 v6, 0x7

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, so:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 453
    const-string v5, "so"

    const-string v5, "0"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_1
    :goto_0
    const/16 v5, 0xa

    if-lt v1, v5, :cond_2

    .line 484
    const/16 v5, 0x8

    const/16 v6, 0xa

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, ac:Ljava/lang/String;
    const-string v5, "01"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 486
    const-string v5, "ac"

    const-string v5, "01"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    .end local v0           #ac:Ljava/lang/String;
    .end local v2           #on:Ljava/lang/String;
    .end local v4           #so:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 454
    .restart local v2       #on:Ljava/lang/String;
    .restart local v4       #so:Ljava/lang/String;
    :cond_3
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 455
    const-string v5, "so"

    const-string v5, "1"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_4
    const-string v5, "2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 457
    const-string v5, "so"

    const-string v5, "2"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_5
    const-string v5, "3"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 459
    const-string v5, "so"

    const-string v5, "3"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_6
    const-string v5, "4"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 461
    const-string v5, "so"

    const-string v5, "4"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_7
    const-string v5, "5"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 463
    const-string v5, "so"

    const-string v5, "5"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_8
    const-string v5, "6"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 465
    const-string v5, "so"

    const-string v5, "6"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_9
    const-string v5, "7"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 467
    const-string v5, "so"

    const-string v5, "7"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 468
    :cond_a
    const-string v5, "8"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 469
    const-string v5, "so"

    const-string v5, "8"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 470
    :cond_b
    const-string v5, "9"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 471
    const-string v5, "so"

    const-string v5, "9"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 472
    :cond_c
    const-string v5, "A"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 473
    const-string v5, "so"

    const-string v5, "10"

    invoke-static {v3, v8, v10}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 474
    :cond_d
    const-string v5, "B"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 475
    const-string v5, "so"

    const-string v5, "11"

    invoke-static {v3, v8, v11}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 476
    :cond_e
    const-string v5, "C"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 477
    const-string v5, "so"

    const-string v5, "12"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 478
    :cond_f
    const-string v5, "D"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 479
    const-string v5, "so"

    const-string v5, "13"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    :cond_10
    const-string v5, "E"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 481
    const-string v5, "so"

    const-string v5, "14"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 487
    .restart local v0       #ac:Ljava/lang/String;
    :cond_11
    const-string v5, "02"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 488
    const-string v5, "ac"

    const-string v5, "03"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 489
    :cond_12
    const-string v5, "03"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 490
    const-string v5, "ac"

    const-string v5, "09"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 491
    :cond_13
    const-string v5, "04"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 492
    const-string v5, "ac"

    const-string v5, "12"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 493
    :cond_14
    const-string v5, "05"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 494
    const-string v5, "ac"

    const-string v5, "08"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 495
    :cond_15
    const-string v5, "06"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 496
    const-string v5, "ac"

    const-string v5, "07"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 497
    :cond_16
    const-string v5, "07"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 498
    const-string v5, "ac"

    const-string v5, "06"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 499
    :cond_17
    const-string v5, "08"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 500
    const-string v5, "ac"

    const-string v5, "05"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 501
    :cond_18
    const-string v5, "09"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 502
    const-string v5, "ac"

    const-string v5, "02"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 503
    :cond_19
    const-string v5, "10"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 504
    const-string v5, "ac"

    const-string v5, "14"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 505
    :cond_1a
    const-string v5, "11"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 506
    const-string v5, "ac"

    const-string v5, "18"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 507
    :cond_1b
    const-string v5, "12"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 508
    const-string v5, "ac"

    const-string v5, "13"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 509
    :cond_1c
    const-string v5, "13"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 510
    const-string v5, "ac"

    const-string v5, "19"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 511
    :cond_1d
    const-string v5, "14"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 512
    const-string v5, "ac"

    const-string v5, "15"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 513
    :cond_1e
    const-string v5, "15"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 514
    const-string v5, "ac"

    const-string v5, "11"

    invoke-static {v3, v7, v11}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 515
    :cond_1f
    const-string v5, "16"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 516
    const-string v5, "ac"

    const-string v5, "10"

    invoke-static {v3, v7, v10}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 517
    :cond_20
    const-string v5, "17"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 518
    const-string v5, "ac"

    const-string v5, "17"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 519
    :cond_21
    const-string v5, "18"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 520
    const-string v5, "ac"

    const-string v5, "16"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 521
    :cond_22
    const-string v5, "19"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 522
    const-string v5, "ac"

    const-string v5, "20"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 523
    :cond_23
    const-string v5, "20"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 524
    const-string v5, "ac"

    const-string v5, "29"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 525
    :cond_24
    const-string v5, "21"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 526
    const-string v5, "ac"

    const-string v5, "27"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 527
    :cond_25
    const-string v5, "22"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 528
    const-string v5, "ac"

    const-string v5, "24"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 529
    :cond_26
    const-string v5, "23"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 530
    const-string v5, "ac"

    const-string v5, "25"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 531
    :cond_27
    const-string v5, "24"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 532
    const-string v5, "ac"

    const-string v5, "26"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 533
    :cond_28
    const-string v5, "25"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 534
    const-string v5, "ac"

    const-string v5, "30"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 535
    :cond_29
    const-string v5, "26"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 536
    const-string v5, "ac"

    const-string v5, "21"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 537
    :cond_2a
    const-string v5, "27"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 538
    const-string v5, "ac"

    const-string v5, "22"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 539
    :cond_2b
    const-string v5, "28"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 540
    const-string v5, "ac"

    const-string v5, "23"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 541
    :cond_2c
    const-string v5, "29"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 542
    const-string v5, "ac"

    const-string v5, "28"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 543
    :cond_2d
    const-string v5, "30"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 544
    const-string v5, "ac"

    const-string v5, "31"

    invoke-static {v3, v7, v9}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 545
    :cond_2e
    const-string v5, "31"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 546
    const-string v5, "ac"

    const-string v5, "04"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 550
    .end local v0           #ac:Ljava/lang/String;
    .end local v4           #so:Ljava/lang/String;
    :cond_2f
    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 551
    const-string v5, "on"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    const/16 v5, 0xb

    sput v5, Lcom/wooboo/adlib_android/___;->oid:I

    .line 553
    const/16 v5, 0x9

    if-lt v1, v5, :cond_2

    .line 554
    const/16 v5, 0x8

    const/16 v6, 0x9

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 555
    .restart local v4       #so:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 556
    const-string v5, "so"

    const-string v5, "24"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_30
    :goto_2
    const/16 v5, 0xd

    if-lt v1, v5, :cond_2

    .line 567
    const/16 v5, 0xa

    const/16 v6, 0xd

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 568
    .restart local v0       #ac:Ljava/lang/String;
    const-string v5, "010"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 569
    const-string v5, "ac"

    const-string v5, "01"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 557
    .end local v0           #ac:Ljava/lang/String;
    :cond_31
    const-string v5, "1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 558
    const-string v5, "so"

    const-string v5, "15"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 559
    :cond_32
    const-string v5, "2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 560
    const-string v5, "so"

    const-string v5, "16"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 561
    :cond_33
    const-string v5, "5"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 562
    const-string v5, "so"

    const-string v5, "19"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 563
    :cond_34
    const-string v5, "6"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 564
    const-string v5, "so"

    const-string v5, "20"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 570
    .restart local v0       #ac:Ljava/lang/String;
    :cond_35
    const-string v5, "022"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 571
    const-string v5, "ac"

    const-string v5, "03"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 572
    :cond_36
    const-string v5, "31"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_37

    const-string v5, "33"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 573
    :cond_37
    const-string v5, "ac"

    const-string v5, "09"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 574
    :cond_38
    const-string v5, "35"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_39

    const-string v5, "34"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 575
    :cond_39
    const-string v5, "ac"

    const-string v5, "12"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 576
    :cond_3a
    const-string v5, "47"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3b

    const-string v5, "48"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 577
    :cond_3b
    const-string v5, "ac"

    const-string v5, "08"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 578
    :cond_3c
    const-string v5, "024"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    const-string v5, "41"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 579
    const-string v5, "42"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 580
    :cond_3d
    const-string v5, "ac"

    const-string v5, "07"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 581
    :cond_3e
    const-string v5, "43"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 582
    const-string v5, "ac"

    const-string v5, "06"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 583
    :cond_3f
    const-string v5, "45"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_40

    const-string v5, "46"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 584
    :cond_40
    const-string v5, "ac"

    const-string v5, "05"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 585
    :cond_41
    const-string v5, "021"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 586
    const-string v5, "ac"

    const-string v5, "02"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 587
    :cond_42
    const-string v5, "025"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    const-string v5, "51"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 588
    const-string v5, "52"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 589
    :cond_43
    const-string v5, "ac"

    const-string v5, "14"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 590
    :cond_44
    const-string v5, "57"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 591
    const-string v5, "ac"

    const-string v5, "18"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 592
    :cond_45
    const-string v5, "55"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_46

    const-string v5, "56"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 593
    :cond_46
    const-string v5, "ac"

    const-string v5, "13"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 594
    :cond_47
    const-string v5, "59"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 595
    const-string v5, "ac"

    const-string v5, "19"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 596
    :cond_48
    const-string v5, "79"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_49

    const-string v5, "70"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 597
    :cond_49
    const-string v5, "ac"

    const-string v5, "15"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 598
    :cond_4a
    const-string v5, "53"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4b

    const-string v5, "54"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 599
    const-string v5, "63"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 600
    :cond_4b
    const-string v5, "ac"

    const-string v5, "11"

    invoke-static {v3, v7, v11}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 601
    :cond_4c
    const-string v5, "37"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4d

    const-string v5, "39"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 602
    :cond_4d
    const-string v5, "ac"

    const-string v5, "10"

    invoke-static {v3, v7, v10}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 603
    :cond_4e
    const-string v5, "027"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    const-string v5, "71"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 604
    const-string v5, "72"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 605
    :cond_4f
    const-string v5, "ac"

    const-string v5, "17"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 606
    :cond_50
    const-string v5, "73"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_51

    const-string v5, "74"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 607
    :cond_51
    const-string v5, "ac"

    const-string v5, "16"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 608
    :cond_52
    const-string v5, "020"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    const-string v5, "75"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_53

    .line 609
    const-string v5, "76"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_53

    const-string v5, "66"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 610
    :cond_53
    const-string v5, "ac"

    const-string v5, "20"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 611
    :cond_54
    const-string v5, "77"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 612
    const-string v5, "ac"

    const-string v5, "29"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 613
    :cond_55
    const-string v5, "898"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 614
    const-string v5, "ac"

    const-string v5, "27"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 615
    :cond_56
    const-string v5, "028"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    const-string v5, "81"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_57

    .line 616
    const-string v5, "82"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_57

    const-string v5, "83"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 617
    :cond_57
    const-string v5, "ac"

    const-string v5, "24"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 618
    :cond_58
    const-string v5, "85"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 619
    const-string v5, "ac"

    const-string v5, "25"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 620
    :cond_59
    const-string v5, "87"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "88"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 621
    const-string v5, "69"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 622
    :cond_5a
    const-string v5, "ac"

    const-string v5, "26"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 623
    :cond_5b
    const-string v5, "89"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 624
    const-string v5, "ac"

    const-string v5, "30"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 625
    :cond_5c
    const-string v5, "029"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    const-string v5, "91"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 626
    :cond_5d
    const-string v5, "ac"

    const-string v5, "21"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 627
    :cond_5e
    const-string v5, "93"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5f

    const-string v5, "94"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 628
    :cond_5f
    const-string v5, "ac"

    const-string v5, "22"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 629
    :cond_60
    const-string v5, "97"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 630
    const-string v5, "ac"

    const-string v5, "23"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 631
    :cond_61
    const-string v5, "95"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 632
    const-string v5, "ac"

    const-string v5, "28"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 633
    :cond_62
    const-string v5, "90"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_63

    const-string v5, "99"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 634
    :cond_63
    const-string v5, "ac"

    const-string v5, "31"

    invoke-static {v3, v7, v9}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 635
    :cond_64
    const-string v5, "023"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 636
    const-string v5, "ac"

    const-string v5, "04"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 640
    .end local v0           #ac:Ljava/lang/String;
    .end local v4           #so:Ljava/lang/String;
    :cond_65
    const-string v5, "3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 641
    const-string v5, "on"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 642
    const/16 v5, 0xc

    sput v5, Lcom/wooboo/adlib_android/___;->oid:I

    .line 643
    const/16 v5, 0x9

    if-lt v1, v5, :cond_2

    .line 644
    const/16 v5, 0x8

    const/16 v6, 0x9

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 645
    .restart local v4       #so:Ljava/lang/String;
    const-string v5, "3"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 646
    const-string v5, "so"

    const-string v5, "17"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_66
    :goto_3
    const/16 v5, 0xd

    if-lt v1, v5, :cond_2

    .line 657
    const/16 v5, 0xa

    const/16 v6, 0xd

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 658
    .restart local v0       #ac:Ljava/lang/String;
    const-string v5, "010"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 659
    const-string v5, "ac"

    const-string v5, "01"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 647
    .end local v0           #ac:Ljava/lang/String;
    :cond_67
    const-string v5, "4"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 648
    const-string v5, "so"

    const-string v5, "18"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 649
    :cond_68
    const-string v5, "7"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 650
    const-string v5, "so"

    const-string v5, "21"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 651
    :cond_69
    const-string v5, "8"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 652
    const-string v5, "so"

    const-string v5, "22"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 653
    :cond_6a
    const-string v5, "9"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 654
    const-string v5, "so"

    const-string v5, "23"

    invoke-static {v3, v8, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 660
    .restart local v0       #ac:Ljava/lang/String;
    :cond_6b
    const-string v5, "022"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 661
    const-string v5, "ac"

    const-string v5, "03"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 662
    :cond_6c
    const-string v5, "31"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "33"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 663
    :cond_6d
    const-string v5, "ac"

    const-string v5, "09"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 664
    :cond_6e
    const-string v5, "35"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6f

    const-string v5, "34"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 665
    :cond_6f
    const-string v5, "ac"

    const-string v5, "12"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 666
    :cond_70
    const-string v5, "47"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_71

    const-string v5, "48"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 667
    :cond_71
    const-string v5, "ac"

    const-string v5, "08"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 668
    :cond_72
    const-string v5, "024"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    const-string v5, "41"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_73

    .line 669
    const-string v5, "42"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 670
    :cond_73
    const-string v5, "ac"

    const-string v5, "07"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 671
    :cond_74
    const-string v5, "43"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 672
    const-string v5, "ac"

    const-string v5, "06"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 673
    :cond_75
    const-string v5, "45"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_76

    const-string v5, "46"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 674
    :cond_76
    const-string v5, "ac"

    const-string v5, "05"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 675
    :cond_77
    const-string v5, "021"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 676
    const-string v5, "ac"

    const-string v5, "02"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 677
    :cond_78
    const-string v5, "025"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_79

    const-string v5, "51"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_79

    .line 678
    const-string v5, "52"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 679
    :cond_79
    const-string v5, "ac"

    const-string v5, "14"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 680
    :cond_7a
    const-string v5, "57"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7b

    const-string v5, "58"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 681
    :cond_7b
    const-string v5, "ac"

    const-string v5, "18"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 682
    :cond_7c
    const-string v5, "55"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, "56"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 683
    :cond_7d
    const-string v5, "ac"

    const-string v5, "13"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 684
    :cond_7e
    const-string v5, "59"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 685
    const-string v5, "ac"

    const-string v5, "19"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 686
    :cond_7f
    const-string v5, "79"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_80

    const-string v5, "70"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 687
    :cond_80
    const-string v5, "ac"

    const-string v5, "15"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 688
    :cond_81
    const-string v5, "53"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_82

    const-string v5, "54"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 689
    const-string v5, "63"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 690
    :cond_82
    const-string v5, "ac"

    const-string v5, "11"

    invoke-static {v3, v7, v11}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 691
    :cond_83
    const-string v5, "37"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_84

    const-string v5, "39"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 692
    :cond_84
    const-string v5, "ac"

    const-string v5, "10"

    invoke-static {v3, v7, v10}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 693
    :cond_85
    const-string v5, "027"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_86

    const-string v5, "71"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_86

    .line 694
    const-string v5, "72"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 695
    :cond_86
    const-string v5, "ac"

    const-string v5, "17"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 696
    :cond_87
    const-string v5, "73"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_88

    const-string v5, "74"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 697
    :cond_88
    const-string v5, "ac"

    const-string v5, "16"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 698
    :cond_89
    const-string v5, "020"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8a

    const-string v5, "75"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8a

    .line 699
    const-string v5, "76"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8a

    const-string v5, "66"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 700
    :cond_8a
    const-string v5, "ac"

    const-string v5, "20"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 701
    :cond_8b
    const-string v5, "77"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 702
    const-string v5, "ac"

    const-string v5, "29"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 703
    :cond_8c
    const-string v5, "898"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 704
    const-string v5, "ac"

    const-string v5, "27"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 705
    :cond_8d
    const-string v5, "028"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8e

    const-string v5, "81"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8e

    .line 706
    const-string v5, "82"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8e

    const-string v5, "83"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 707
    :cond_8e
    const-string v5, "ac"

    const-string v5, "24"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 708
    :cond_8f
    const-string v5, "85"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 709
    const-string v5, "ac"

    const-string v5, "25"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 710
    :cond_90
    const-string v5, "87"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_91

    const-string v5, "88"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_91

    .line 711
    const-string v5, "69"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 712
    :cond_91
    const-string v5, "ac"

    const-string v5, "26"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 713
    :cond_92
    const-string v5, "89"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 714
    const-string v5, "ac"

    const-string v5, "30"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 715
    :cond_93
    const-string v5, "029"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_94

    const-string v5, "91"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 716
    :cond_94
    const-string v5, "ac"

    const-string v5, "21"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 717
    :cond_95
    const-string v5, "93"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_96

    const-string v5, "94"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 718
    :cond_96
    const-string v5, "ac"

    const-string v5, "22"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 719
    :cond_97
    const-string v5, "97"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 720
    const-string v5, "ac"

    const-string v5, "23"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 721
    :cond_98
    const-string v5, "95"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 722
    const-string v5, "ac"

    const-string v5, "28"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 723
    :cond_99
    const-string v5, "90"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9a

    const-string v5, "99"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 724
    :cond_9a
    const-string v5, "ac"

    const-string v5, "31"

    invoke-static {v3, v7, v9}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 725
    :cond_9b
    const-string v5, "023"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 726
    const-string v5, "ac"

    const-string v5, "04"

    invoke-static {v3, v7, v5}, Lcom/wooboo/adlib_android/___;->param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected static gl(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const-string v3, "2"

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 164
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, l:Ljava/lang/String;
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    const-string v2, "2"

    move-object v2, v3

    .line 184
    :goto_0
    return-object v2

    .line 167
    :cond_0
    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    const-string v2, "0"

    goto :goto_0

    .line 169
    :cond_1
    const-string v2, "ko"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    const-string v2, "5"

    goto :goto_0

    .line 171
    :cond_2
    const-string v2, "fr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    const-string v2, "3"

    goto :goto_0

    .line 173
    :cond_3
    const-string v2, "es"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 174
    const-string v2, "8"

    goto :goto_0

    .line 175
    :cond_4
    const-string v2, "de"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 176
    const-string v2, "6"

    goto :goto_0

    .line 177
    :cond_5
    const-string v2, "it"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 178
    const-string v2, "7"

    goto :goto_0

    .line 179
    :cond_6
    const-string v2, "ja"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 180
    const-string v2, "4"

    goto :goto_0

    .line 181
    :cond_7
    const-string v2, "ru"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 182
    const-string v2, "9"

    goto :goto_0

    .line 184
    :cond_8
    const-string v2, "2"

    move-object v2, v3

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 74
    sput-object p0, Lcom/wooboo/adlib_android/___;->m:Landroid/content/Context;

    .line 75
    sget-object v0, Lcom/wooboo/adlib_android/___;->m:Landroid/content/Context;

    .line 76
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 75
    .end local p0
    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcom/wooboo/adlib_android/___;->a:Landroid/telephony/TelephonyManager;

    .line 77
    invoke-static {}, Lcom/wooboo/adlib_android/___;->ga()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wooboo/adlib_android/___;->l:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/wooboo/adlib_android/___;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wooboo/adlib_android/___;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/wooboo/adlib_android/___;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/wooboo/adlib_android/___;->getSIMDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wooboo/adlib_android/___;->q:Ljava/lang/String;

    .line 81
    :cond_0
    return-void
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/wooboo/adlib_android/___;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static o(Ljava/lang/String;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 62
    sput-object p0, Lcom/wooboo/adlib_android/___;->o:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private static param(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "param"
    .parameter "key"
    .parameter "val"

    .prologue
    const-string v1, "UTF-8"

    .line 425
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 427
    :try_start_0
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 428
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 432
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "Wooboo SDK"

    .line 433
    const-string v2, "UTF-8 encoding is not supported on this device.  Ad requests are impossible."

    .line 431
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    sget-object v0, Lcom/wooboo/adlib_android/___;->r:Ljava/lang/String;

    return-object v0
.end method

.method public static r(Ljava/lang/String;)V
    .locals 0
    .parameter "pit"

    .prologue
    .line 372
    sput-object p0, Lcom/wooboo/adlib_android/___;->r:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public static s()I
    .locals 1

    .prologue
    .line 357
    sget v0, Lcom/wooboo/adlib_android/___;->s:I

    return v0
.end method

.method public static s(Landroid/content/Context;)Lcom/wooboo/adlib_android/__;
    .locals 14
    .parameter "____"

    .prologue
    .line 243
    .line 244
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 243
    if-ne v0, v1, :cond_0

    .line 246
    const-string v0, "Cannot request an ad without Internet permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v0}, Lcom/wooboo/adlib_android/___;->clientError(Ljava/lang/String;)V

    .line 250
    :cond_0
    const/4 v0, 0x0

    .line 251
    .local v0, _:Lcom/wooboo/adlib_android/__;
    invoke-static {}, Lcom/wooboo/adlib_android/___;->______()Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, p:Ljava/lang/String;
    const/4 v2, 0x0

    .line 253
    .local v2, a:Ljava/io/BufferedWriter;
    const/4 v3, 0x0

    .line 254
    .local v3, b:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 255
    .local v4, c:Ljava/net/URL;
    const/4 v5, 0x0

    .line 257
    .local v5, d:Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-static {}, Lcom/wooboo/adlib_android/___;->r()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, _pit:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "pit="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #_pit:Ljava/lang/String;
    const-string v7, "&pf=android"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 260
    .local v8, g:Ljava/lang/String;
    sget v1, Lcom/wooboo/adlib_android/___;->k:I

    sget v7, Lcom/wooboo/adlib_android/___;->g:I

    if-ne v1, v7, :cond_4

    .line 261
    invoke-static {}, Lcom/wooboo/adlib_android/___;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 262
    new-instance v1, Ljava/net/URL;

    const-string v7, "http://ade.wooboo.com.cn/t/test"

    invoke-direct {v1, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v4           #c:Ljava/net/URL;
    .local v1, c:Ljava/net/URL;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 268
    .end local v5           #d:Ljava/net/HttpURLConnection;
    .local v4, d:Ljava/net/HttpURLConnection;
    :try_start_2
    sget v5, Lcom/wooboo/adlib_android/___;->timeout:I

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 269
    sget v5, Lcom/wooboo/adlib_android/___;->timeout:I

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-object v5, v4

    .end local v4           #d:Ljava/net/HttpURLConnection;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    move-object v4, v1

    .line 297
    .end local v1           #c:Ljava/net/URL;
    .local v4, c:Ljava/net/URL;
    :cond_1
    :goto_1
    if-nez v5, :cond_9

    .line 335
    if-eqz v2, :cond_18

    .line 336
    const/4 p0, 0x0

    .line 338
    .end local v2           #a:Ljava/io/BufferedWriter;
    .local p0, a:Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v3, :cond_17

    .line 339
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    .line 340
    const/4 v1, 0x0

    .line 342
    .end local v3           #b:Ljava/io/InputStream;
    .local v1, b:Ljava/io/InputStream;
    :goto_3
    if-eqz v5, :cond_2

    .line 343
    :try_start_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    .line 298
    :cond_2
    :goto_4
    const/4 v2, 0x0

    move-object v3, v5

    .end local v5           #d:Ljava/net/HttpURLConnection;
    .local v3, d:Ljava/net/HttpURLConnection;
    move-object v12, v4

    .end local v4           #c:Ljava/net/URL;
    .local v12, c:Ljava/net/URL;
    move-object v4, v2

    move-object v2, v12

    .end local v12           #c:Ljava/net/URL;
    .local v2, c:Ljava/net/URL;
    move-object v13, v0

    .end local v0           #_:Lcom/wooboo/adlib_android/__;
    .local v13, _:Lcom/wooboo/adlib_android/__;
    move-object v0, p0

    .end local p0           #a:Ljava/io/BufferedWriter;
    .local v0, a:Ljava/io/BufferedWriter;
    move-object p0, v13

    .line 350
    .end local v6           #p:Ljava/lang/String;
    .end local v8           #g:Ljava/lang/String;
    .end local v13           #_:Lcom/wooboo/adlib_android/__;
    .local p0, _:Lcom/wooboo/adlib_android/__;
    :goto_5
    return-object v4

    .line 264
    .end local v1           #b:Ljava/io/InputStream;
    .local v0, _:Lcom/wooboo/adlib_android/__;
    .local v2, a:Ljava/io/BufferedWriter;
    .local v3, b:Ljava/io/InputStream;
    .restart local v4       #c:Ljava/net/URL;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    .restart local v6       #p:Ljava/lang/String;
    .restart local v8       #g:Ljava/lang/String;
    .local p0, ____:Landroid/content/Context;
    :cond_3
    :try_start_5
    new-instance v1, Ljava/net/URL;

    const-string v7, "http://ade.wooboo.com.cn/a/p1"

    invoke-direct {v1, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v4           #c:Ljava/net/URL;
    .local v1, c:Ljava/net/URL;
    goto :goto_0

    .line 270
    .end local v1           #c:Ljava/net/URL;
    .restart local v4       #c:Ljava/net/URL;
    :cond_4
    sget v1, Lcom/wooboo/adlib_android/___;->k:I

    sget v7, Lcom/wooboo/adlib_android/___;->h:I

    if-eq v1, v7, :cond_5

    .line 271
    sget v1, Lcom/wooboo/adlib_android/___;->k:I

    sget v7, Lcom/wooboo/adlib_android/___;->i:I

    if-ne v1, v7, :cond_7

    .line 272
    :cond_5
    invoke-static {}, Lcom/wooboo/adlib_android/___;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 273
    new-instance v1, Ljava/net/URL;

    const-string v7, "http://10.0.0.172/t/test"

    invoke-direct {v1, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 278
    .end local v4           #c:Ljava/net/URL;
    .restart local v1       #c:Ljava/net/URL;
    :goto_6
    :try_start_6
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 279
    .end local v5           #d:Ljava/net/HttpURLConnection;
    .local v4, d:Ljava/net/HttpURLConnection;
    :try_start_7
    const-string v5, "X-Online-Host"

    const-string v7, "ade.wooboo.com.cn"

    invoke-virtual {v4, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget v5, Lcom/wooboo/adlib_android/___;->timeout:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 281
    sget v5, Lcom/wooboo/adlib_android/___;->timeout:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    move-object v5, v4

    .end local v4           #d:Ljava/net/HttpURLConnection;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    move-object v4, v1

    .end local v1           #c:Ljava/net/URL;
    .local v4, c:Ljava/net/URL;
    goto :goto_1

    .line 275
    :cond_6
    :try_start_8
    new-instance v1, Ljava/net/URL;

    const-string v7, "http://10.0.0.172/a/p1"

    invoke-direct {v1, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v4           #c:Ljava/net/URL;
    .restart local v1       #c:Ljava/net/URL;
    goto :goto_6

    .line 282
    .end local v1           #c:Ljava/net/URL;
    .restart local v4       #c:Ljava/net/URL;
    :cond_7
    sget v1, Lcom/wooboo/adlib_android/___;->k:I

    sget v7, Lcom/wooboo/adlib_android/___;->j:I

    if-ne v1, v7, :cond_1

    .line 283
    invoke-static {}, Lcom/wooboo/adlib_android/___;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 284
    new-instance v1, Ljava/net/URL;

    const-string v7, "http://ade.wooboo.com.cn/t/test"

    invoke-direct {v1, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 289
    .end local v4           #c:Ljava/net/URL;
    .restart local v1       #c:Ljava/net/URL;
    :goto_7
    :try_start_9
    new-instance v4, Ljava/net/Proxy;

    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 290
    new-instance v9, Ljava/net/InetSocketAddress;

    const-string v10, "10.0.0.200"

    const/16 v11, 0x50

    invoke-direct {v9, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 289
    invoke-direct {v4, v7, v9}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 292
    .local v4, proxy:Ljava/net/Proxy;
    invoke-virtual {v1, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v4

    .end local v4           #proxy:Ljava/net/Proxy;
    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 293
    .end local v5           #d:Ljava/net/HttpURLConnection;
    .local v4, d:Ljava/net/HttpURLConnection;
    :try_start_a
    sget v5, Lcom/wooboo/adlib_android/___;->timeout:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 294
    sget v5, Lcom/wooboo/adlib_android/___;->timeout:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    move-object v5, v4

    .end local v4           #d:Ljava/net/HttpURLConnection;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    move-object v4, v1

    .end local v1           #c:Ljava/net/URL;
    .local v4, c:Ljava/net/URL;
    goto/16 :goto_1

    .line 286
    :cond_8
    :try_start_b
    new-instance v1, Ljava/net/URL;

    const-string v7, "http://ade.wooboo.com.cn/a/p1"

    invoke-direct {v1, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v4           #c:Ljava/net/URL;
    .restart local v1       #c:Ljava/net/URL;
    goto :goto_7

    .line 300
    .end local v1           #c:Ljava/net/URL;
    .restart local v4       #c:Ljava/net/URL;
    :cond_9
    const-string v1, "POST"

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 301
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 302
    const-string v1, "Content-Type"

    .line 303
    const-string v7, "application/x-www-form-urlencoded"

    .line 302
    invoke-virtual {v5, v1, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/wooboo/adlib_android/___;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 305
    const-string v1, "Content-Length"

    .line 306
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 305
    invoke-virtual {v5, v1, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :goto_8
    move-object v6, v6

    .line 313
    .local v6, e:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 314
    .local v7, f:Ljava/io/OutputStream;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 315
    .end local v2           #a:Ljava/io/BufferedWriter;
    .local v1, a:Ljava/io/BufferedWriter;
    :try_start_c
    invoke-static {}, Lcom/wooboo/adlib_android/___;->b()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 316
    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 321
    :goto_9
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 322
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    move-result-object v2

    .line 323
    .end local v3           #b:Ljava/io/InputStream;
    .local v2, b:Ljava/io/InputStream;
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 324
    .local v3, h:I
    new-array v7, v3, [B

    .line 325
    .local v7, l:[B
    const/4 v6, 0x0

    .local v6, i:I
    :goto_a
    if-lt v6, v3, :cond_e

    .line 328
    array-length v3, v7

    .end local v3           #h:I
    if-lez v3, :cond_16

    .line 329
    invoke-static {p0, v7}, Lcom/wooboo/adlib_android/__;->___(Landroid/content/Context;[B)Lcom/wooboo/adlib_android/__;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    move-result-object p0

    .line 335
    .end local v0           #_:Lcom/wooboo/adlib_android/__;
    .local p0, _:Lcom/wooboo/adlib_android/__;
    :goto_b
    if-eqz v1, :cond_13

    .line 336
    const/4 v0, 0x0

    .line 338
    .end local v1           #a:Ljava/io/BufferedWriter;
    .local v0, a:Ljava/io/BufferedWriter;
    :goto_c
    if-eqz v2, :cond_12

    .line 339
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 340
    const/4 v1, 0x0

    .line 342
    .end local v2           #b:Ljava/io/InputStream;
    .local v1, b:Ljava/io/InputStream;
    :goto_d
    if-eqz v5, :cond_11

    .line 343
    :try_start_f
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    move-object v3, v5

    .end local v5           #d:Ljava/net/HttpURLConnection;
    .local v3, d:Ljava/net/HttpURLConnection;
    move-object v2, v4

    .end local v4           #c:Ljava/net/URL;
    .end local v6           #i:I
    .end local v7           #l:[B
    .end local v8           #g:Ljava/lang/String;
    .local v2, c:Ljava/net/URL;
    :goto_e
    move-object v4, p0

    .line 350
    goto/16 :goto_5

    .line 308
    .end local v1           #b:Ljava/io/InputStream;
    .local v0, _:Lcom/wooboo/adlib_android/__;
    .local v2, a:Ljava/io/BufferedWriter;
    .local v3, b:Ljava/io/InputStream;
    .restart local v4       #c:Ljava/net/URL;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    .local v6, p:Ljava/lang/String;
    .restart local v8       #g:Ljava/lang/String;
    .local p0, ____:Landroid/content/Context;
    :cond_a
    :try_start_10
    const-string v1, "Content-Length"

    .line 309
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 308
    invoke-virtual {v5, v1, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    goto :goto_8

    .line 331
    .end local v6           #p:Ljava/lang/String;
    .end local v8           #g:Ljava/lang/String;
    :catch_0
    move-exception p0

    move-object v1, v3

    .end local v3           #b:Ljava/io/InputStream;
    .restart local v1       #b:Ljava/io/InputStream;
    move-object v3, v5

    .end local v5           #d:Ljava/net/HttpURLConnection;
    .local v3, d:Ljava/net/HttpURLConnection;
    move-object v12, v4

    .end local v4           #c:Ljava/net/URL;
    .restart local v12       #c:Ljava/net/URL;
    move-object v4, p0

    move-object p0, v2

    .end local v2           #a:Ljava/io/BufferedWriter;
    .local p0, a:Ljava/io/BufferedWriter;
    move-object v2, v12

    .line 332
    .end local v12           #c:Ljava/net/URL;
    .local v2, c:Ljava/net/URL;
    .local v4, ex:Ljava/lang/Exception;
    :goto_f
    :try_start_11
    const-string v4, "Wooboo SDK"

    .end local v4           #ex:Ljava/lang/Exception;
    const-string v5, "Could not get ad from Wooboo servers."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 335
    if-eqz p0, :cond_b

    .line 336
    const/4 p0, 0x0

    .line 338
    :cond_b
    if-eqz v1, :cond_c

    .line 339
    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 340
    const/4 v1, 0x0

    .line 342
    :cond_c
    if-eqz v3, :cond_15

    .line 343
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    move-object v12, p0

    .end local p0           #a:Ljava/io/BufferedWriter;
    .local v12, a:Ljava/io/BufferedWriter;
    move-object p0, v0

    .end local v0           #_:Lcom/wooboo/adlib_android/__;
    .local p0, _:Lcom/wooboo/adlib_android/__;
    move-object v0, v12

    .end local v12           #a:Ljava/io/BufferedWriter;
    .local v0, a:Ljava/io/BufferedWriter;
    goto :goto_e

    .line 318
    .end local v2           #c:Ljava/net/URL;
    .local v0, _:Lcom/wooboo/adlib_android/__;
    .local v1, a:Ljava/io/BufferedWriter;
    .local v3, b:Ljava/io/InputStream;
    .local v4, c:Ljava/net/URL;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    .local v6, e:Ljava/lang/String;
    .local v7, f:Ljava/io/OutputStream;
    .restart local v8       #g:Ljava/lang/String;
    .local p0, ____:Landroid/content/Context;
    :cond_d
    :try_start_13
    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    goto :goto_9

    .line 331
    :catch_1
    move-exception p0

    move-object v2, v4

    .end local v4           #c:Ljava/net/URL;
    .restart local v2       #c:Ljava/net/URL;
    move-object v4, p0

    move-object p0, v1

    .end local v1           #a:Ljava/io/BufferedWriter;
    .local p0, a:Ljava/io/BufferedWriter;
    move-object v1, v3

    .end local v3           #b:Ljava/io/InputStream;
    .local v1, b:Ljava/io/InputStream;
    move-object v3, v5

    .end local v5           #d:Ljava/net/HttpURLConnection;
    .local v3, d:Ljava/net/HttpURLConnection;
    goto :goto_f

    .line 326
    .local v1, a:Ljava/io/BufferedWriter;
    .local v2, b:Ljava/io/InputStream;
    .local v3, h:I
    .restart local v4       #c:Ljava/net/URL;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    .local v6, i:I
    .local v7, l:[B
    .local p0, ____:Landroid/content/Context;
    :cond_e
    :try_start_14
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    .line 325
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 346
    .end local v4           #c:Ljava/net/URL;
    .end local v5           #d:Ljava/net/HttpURLConnection;
    .end local v6           #i:I
    .end local v7           #l:[B
    .end local v8           #g:Ljava/lang/String;
    .local v1, b:Ljava/io/InputStream;
    .local v2, c:Ljava/net/URL;
    .local v3, d:Ljava/net/HttpURLConnection;
    .local p0, a:Ljava/io/BufferedWriter;
    :catch_2
    move-exception v4

    move-object v12, p0

    .end local p0           #a:Ljava/io/BufferedWriter;
    .restart local v12       #a:Ljava/io/BufferedWriter;
    move-object p0, v0

    .end local v0           #_:Lcom/wooboo/adlib_android/__;
    .local p0, _:Lcom/wooboo/adlib_android/__;
    move-object v0, v12

    .end local v12           #a:Ljava/io/BufferedWriter;
    .local v0, a:Ljava/io/BufferedWriter;
    goto :goto_e

    .line 333
    .end local v1           #b:Ljava/io/InputStream;
    .local v0, _:Lcom/wooboo/adlib_android/__;
    .local v2, a:Ljava/io/BufferedWriter;
    .local v3, b:Ljava/io/InputStream;
    .restart local v4       #c:Ljava/net/URL;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    .local p0, ____:Landroid/content/Context;
    :catchall_0
    move-exception p0

    move-object v1, v4

    .end local v4           #c:Ljava/net/URL;
    .local v1, c:Ljava/net/URL;
    move-object v0, v3

    .end local v3           #b:Ljava/io/InputStream;
    .local v0, b:Ljava/io/InputStream;
    move-object v3, p0

    move-object p0, v2

    .end local v2           #a:Ljava/io/BufferedWriter;
    .local p0, a:Ljava/io/BufferedWriter;
    move-object v2, v5

    .line 335
    .end local v5           #d:Ljava/net/HttpURLConnection;
    .local v2, d:Ljava/net/HttpURLConnection;
    :goto_10
    if-eqz p0, :cond_f

    .line 336
    const/4 p0, 0x0

    .line 338
    :cond_f
    if-eqz v0, :cond_14

    .line 339
    :try_start_15
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5

    .line 340
    const/4 p0, 0x0

    .line 342
    .end local v0           #b:Ljava/io/InputStream;
    .local p0, b:Ljava/io/InputStream;
    :goto_11
    if-eqz v2, :cond_10

    .line 343
    :try_start_16
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    .line 349
    :cond_10
    :goto_12
    throw v3

    .line 346
    .end local v1           #c:Ljava/net/URL;
    .local v0, a:Ljava/io/BufferedWriter;
    .local v2, b:Ljava/io/InputStream;
    .restart local v4       #c:Ljava/net/URL;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    .restart local v6       #i:I
    .restart local v7       #l:[B
    .restart local v8       #g:Ljava/lang/String;
    .local p0, _:Lcom/wooboo/adlib_android/__;
    :catch_3
    move-exception v1

    move-object v1, v2

    .end local v2           #b:Ljava/io/InputStream;
    .local v1, b:Ljava/io/InputStream;
    :goto_13
    move-object v3, v5

    .end local v5           #d:Ljava/net/HttpURLConnection;
    .local v3, d:Ljava/net/HttpURLConnection;
    move-object v2, v4

    .end local v4           #c:Ljava/net/URL;
    .local v2, c:Ljava/net/URL;
    goto :goto_e

    .end local v2           #c:Ljava/net/URL;
    .end local v3           #d:Ljava/net/HttpURLConnection;
    .restart local v4       #c:Ljava/net/URL;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    :catch_4
    move-exception v2

    goto :goto_13

    .end local v4           #c:Ljava/net/URL;
    .end local v5           #d:Ljava/net/HttpURLConnection;
    .end local v6           #i:I
    .end local v7           #l:[B
    .end local v8           #g:Ljava/lang/String;
    .local v0, b:Ljava/io/InputStream;
    .local v1, c:Ljava/net/URL;
    .local v2, d:Ljava/net/HttpURLConnection;
    .local p0, a:Ljava/io/BufferedWriter;
    :catch_5
    move-exception p0

    move-object p0, v0

    .end local v0           #b:Ljava/io/InputStream;
    .local p0, b:Ljava/io/InputStream;
    goto :goto_12

    :catch_6
    move-exception v0

    goto :goto_12

    .line 333
    .local v0, _:Lcom/wooboo/adlib_android/__;
    .local v2, a:Ljava/io/BufferedWriter;
    .local v3, b:Ljava/io/InputStream;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    .local v6, p:Ljava/lang/String;
    .restart local v8       #g:Ljava/lang/String;
    .local p0, ____:Landroid/content/Context;
    :catchall_1
    move-exception p0

    move-object v0, v3

    .end local v3           #b:Ljava/io/InputStream;
    .local v0, b:Ljava/io/InputStream;
    move-object v3, p0

    move-object p0, v2

    .end local v2           #a:Ljava/io/BufferedWriter;
    .local p0, a:Ljava/io/BufferedWriter;
    move-object v2, v5

    .end local v5           #d:Ljava/net/HttpURLConnection;
    .local v2, d:Ljava/net/HttpURLConnection;
    goto :goto_10

    .local v0, _:Lcom/wooboo/adlib_android/__;
    .local v2, a:Ljava/io/BufferedWriter;
    .restart local v3       #b:Ljava/io/InputStream;
    .local v4, d:Ljava/net/HttpURLConnection;
    .local p0, ____:Landroid/content/Context;
    :catchall_2
    move-exception p0

    move-object v0, v3

    .end local v3           #b:Ljava/io/InputStream;
    .local v0, b:Ljava/io/InputStream;
    move-object v3, p0

    move-object p0, v2

    .end local v2           #a:Ljava/io/BufferedWriter;
    .local p0, a:Ljava/io/BufferedWriter;
    move-object v2, v4

    .end local v4           #d:Ljava/net/HttpURLConnection;
    .local v2, d:Ljava/net/HttpURLConnection;
    goto :goto_10

    .end local v2           #d:Ljava/net/HttpURLConnection;
    .local v0, _:Lcom/wooboo/adlib_android/__;
    .local v1, a:Ljava/io/BufferedWriter;
    .restart local v3       #b:Ljava/io/InputStream;
    .local v4, c:Ljava/net/URL;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    .local v6, e:Ljava/lang/String;
    .local v7, f:Ljava/io/OutputStream;
    .local p0, ____:Landroid/content/Context;
    :catchall_3
    move-exception p0

    move-object v2, v5

    .end local v5           #d:Ljava/net/HttpURLConnection;
    .restart local v2       #d:Ljava/net/HttpURLConnection;
    move-object v0, v3

    .end local v3           #b:Ljava/io/InputStream;
    .local v0, b:Ljava/io/InputStream;
    move-object v3, p0

    move-object p0, v1

    .end local v1           #a:Ljava/io/BufferedWriter;
    .local p0, a:Ljava/io/BufferedWriter;
    move-object v1, v4

    .end local v4           #c:Ljava/net/URL;
    .local v1, c:Ljava/net/URL;
    goto :goto_10

    .end local v6           #e:Ljava/lang/String;
    .end local v7           #f:Ljava/io/OutputStream;
    .local v0, _:Lcom/wooboo/adlib_android/__;
    .local v1, a:Ljava/io/BufferedWriter;
    .local v2, b:Ljava/io/InputStream;
    .restart local v4       #c:Ljava/net/URL;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    .local p0, ____:Landroid/content/Context;
    :catchall_4
    move-exception p0

    move-object v3, p0

    move-object v0, v2

    .end local v2           #b:Ljava/io/InputStream;
    .local v0, b:Ljava/io/InputStream;
    move-object v2, v5

    .end local v5           #d:Ljava/net/HttpURLConnection;
    .local v2, d:Ljava/net/HttpURLConnection;
    move-object p0, v1

    .end local v1           #a:Ljava/io/BufferedWriter;
    .local p0, a:Ljava/io/BufferedWriter;
    move-object v1, v4

    .end local v4           #c:Ljava/net/URL;
    .local v1, c:Ljava/net/URL;
    goto :goto_10

    .end local v8           #g:Ljava/lang/String;
    .local v0, _:Lcom/wooboo/adlib_android/__;
    .local v1, b:Ljava/io/InputStream;
    .local v2, c:Ljava/net/URL;
    .local v3, d:Ljava/net/HttpURLConnection;
    :catchall_5
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    .end local v1           #b:Ljava/io/InputStream;
    .local v0, b:Ljava/io/InputStream;
    move-object v1, v2

    .end local v2           #c:Ljava/net/URL;
    .local v1, c:Ljava/net/URL;
    move-object v2, v3

    .end local v3           #d:Ljava/net/HttpURLConnection;
    .local v2, d:Ljava/net/HttpURLConnection;
    move-object v3, v12

    goto :goto_10

    .line 331
    .local v0, _:Lcom/wooboo/adlib_android/__;
    .local v2, a:Ljava/io/BufferedWriter;
    .local v3, b:Ljava/io/InputStream;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    .local v6, p:Ljava/lang/String;
    .restart local v8       #g:Ljava/lang/String;
    .local p0, ____:Landroid/content/Context;
    :catch_7
    move-exception p0

    move-object v4, p0

    move-object p0, v2

    .end local v2           #a:Ljava/io/BufferedWriter;
    .local p0, a:Ljava/io/BufferedWriter;
    move-object v2, v1

    .end local v1           #c:Ljava/net/URL;
    .local v2, c:Ljava/net/URL;
    move-object v1, v3

    .end local v3           #b:Ljava/io/InputStream;
    .local v1, b:Ljava/io/InputStream;
    move-object v3, v5

    .end local v5           #d:Ljava/net/HttpURLConnection;
    .local v3, d:Ljava/net/HttpURLConnection;
    goto :goto_f

    .local v1, c:Ljava/net/URL;
    .local v2, a:Ljava/io/BufferedWriter;
    .local v3, b:Ljava/io/InputStream;
    .local v4, d:Ljava/net/HttpURLConnection;
    .local p0, ____:Landroid/content/Context;
    :catch_8
    move-exception p0

    move-object v12, p0

    move-object p0, v2

    .end local v2           #a:Ljava/io/BufferedWriter;
    .local p0, a:Ljava/io/BufferedWriter;
    move-object v2, v1

    .end local v1           #c:Ljava/net/URL;
    .local v2, c:Ljava/net/URL;
    move-object v1, v3

    .end local v3           #b:Ljava/io/InputStream;
    .local v1, b:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #d:Ljava/net/HttpURLConnection;
    .local v3, d:Ljava/net/HttpURLConnection;
    move-object v4, v12

    goto :goto_f

    .end local v3           #d:Ljava/net/HttpURLConnection;
    .end local v6           #p:Ljava/lang/String;
    .local v1, a:Ljava/io/BufferedWriter;
    .local v2, b:Ljava/io/InputStream;
    .local v4, c:Ljava/net/URL;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    .local p0, ____:Landroid/content/Context;
    :catch_9
    move-exception p0

    move-object v3, v5

    .end local v5           #d:Ljava/net/HttpURLConnection;
    .restart local v3       #d:Ljava/net/HttpURLConnection;
    move-object v12, p0

    move-object p0, v1

    .end local v1           #a:Ljava/io/BufferedWriter;
    .local p0, a:Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2           #b:Ljava/io/InputStream;
    .local v1, b:Ljava/io/InputStream;
    move-object v2, v4

    .end local v4           #c:Ljava/net/URL;
    .local v2, c:Ljava/net/URL;
    move-object v4, v12

    goto/16 :goto_f

    .line 346
    .end local v1           #b:Ljava/io/InputStream;
    .end local v2           #c:Ljava/net/URL;
    .local v3, b:Ljava/io/InputStream;
    .restart local v4       #c:Ljava/net/URL;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    .restart local v6       #p:Ljava/lang/String;
    :catch_a
    move-exception v1

    move-object v1, v3

    .end local v3           #b:Ljava/io/InputStream;
    .restart local v1       #b:Ljava/io/InputStream;
    goto/16 :goto_4

    :catch_b
    move-exception v2

    goto/16 :goto_4

    .local v0, a:Ljava/io/BufferedWriter;
    .local v6, i:I
    .local v7, l:[B
    .local p0, _:Lcom/wooboo/adlib_android/__;
    :cond_11
    move-object v3, v5

    .end local v5           #d:Ljava/net/HttpURLConnection;
    .local v3, d:Ljava/net/HttpURLConnection;
    move-object v2, v4

    .end local v4           #c:Ljava/net/URL;
    .restart local v2       #c:Ljava/net/URL;
    goto/16 :goto_e

    .end local v1           #b:Ljava/io/InputStream;
    .end local v3           #d:Ljava/net/HttpURLConnection;
    .local v2, b:Ljava/io/InputStream;
    .restart local v4       #c:Ljava/net/URL;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    :cond_12
    move-object v1, v2

    .end local v2           #b:Ljava/io/InputStream;
    .restart local v1       #b:Ljava/io/InputStream;
    goto/16 :goto_d

    .end local v0           #a:Ljava/io/BufferedWriter;
    .local v1, a:Ljava/io/BufferedWriter;
    .restart local v2       #b:Ljava/io/InputStream;
    :cond_13
    move-object v0, v1

    .end local v1           #a:Ljava/io/BufferedWriter;
    .restart local v0       #a:Ljava/io/BufferedWriter;
    goto/16 :goto_c

    .end local v4           #c:Ljava/net/URL;
    .end local v5           #d:Ljava/net/HttpURLConnection;
    .end local v6           #i:I
    .end local v7           #l:[B
    .end local v8           #g:Ljava/lang/String;
    .local v0, b:Ljava/io/InputStream;
    .local v1, c:Ljava/net/URL;
    .local v2, d:Ljava/net/HttpURLConnection;
    .local p0, a:Ljava/io/BufferedWriter;
    :cond_14
    move-object p0, v0

    .end local v0           #b:Ljava/io/InputStream;
    .local p0, b:Ljava/io/InputStream;
    goto :goto_11

    .local v0, _:Lcom/wooboo/adlib_android/__;
    .local v1, b:Ljava/io/InputStream;
    .local v2, c:Ljava/net/URL;
    .restart local v3       #d:Ljava/net/HttpURLConnection;
    .local p0, a:Ljava/io/BufferedWriter;
    :cond_15
    move-object v12, p0

    .end local p0           #a:Ljava/io/BufferedWriter;
    .restart local v12       #a:Ljava/io/BufferedWriter;
    move-object p0, v0

    .end local v0           #_:Lcom/wooboo/adlib_android/__;
    .local p0, _:Lcom/wooboo/adlib_android/__;
    move-object v0, v12

    .end local v12           #a:Ljava/io/BufferedWriter;
    .local v0, a:Ljava/io/BufferedWriter;
    goto/16 :goto_e

    .end local v3           #d:Ljava/net/HttpURLConnection;
    .local v0, _:Lcom/wooboo/adlib_android/__;
    .local v1, a:Ljava/io/BufferedWriter;
    .local v2, b:Ljava/io/InputStream;
    .restart local v4       #c:Ljava/net/URL;
    .restart local v5       #d:Ljava/net/HttpURLConnection;
    .restart local v6       #i:I
    .restart local v7       #l:[B
    .restart local v8       #g:Ljava/lang/String;
    .local p0, ____:Landroid/content/Context;
    :cond_16
    move-object p0, v0

    .end local v0           #_:Lcom/wooboo/adlib_android/__;
    .local p0, _:Lcom/wooboo/adlib_android/__;
    goto/16 :goto_b

    .end local v1           #a:Ljava/io/BufferedWriter;
    .end local v2           #b:Ljava/io/InputStream;
    .end local v7           #l:[B
    .restart local v0       #_:Lcom/wooboo/adlib_android/__;
    .local v3, b:Ljava/io/InputStream;
    .local v6, p:Ljava/lang/String;
    .local p0, a:Ljava/io/BufferedWriter;
    :cond_17
    move-object v1, v3

    .end local v3           #b:Ljava/io/InputStream;
    .local v1, b:Ljava/io/InputStream;
    goto/16 :goto_3

    .end local v1           #b:Ljava/io/InputStream;
    .local v2, a:Ljava/io/BufferedWriter;
    .restart local v3       #b:Ljava/io/InputStream;
    .local p0, ____:Landroid/content/Context;
    :cond_18
    move-object p0, v2

    .end local v2           #a:Ljava/io/BufferedWriter;
    .local p0, a:Ljava/io/BufferedWriter;
    goto/16 :goto_2
.end method

.method protected static setInTestMode(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 204
    sput-boolean p0, Lcom/wooboo/adlib_android/___;->b:Z

    .line 205
    return-void
.end method

.method public static setS(I)V
    .locals 0
    .parameter "mid"

    .prologue
    .line 361
    sput p0, Lcom/wooboo/adlib_android/___;->s:I

    .line 362
    return-void
.end method

.method protected static tc()V
    .locals 2

    .prologue
    .line 85
    :try_start_0
    new-instance v0, Lcom/wooboo/adlib_android/___$1;

    invoke-direct {v0}, Lcom/wooboo/adlib_android/___$1;-><init>()V

    .line 90
    .local v0, t:Ljava/lang/Thread;
    sget-boolean v1, Lcom/wooboo/adlib_android/___;->n:Z

    if-nez v1, :cond_0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    const/4 v1, 0x1

    sput-boolean v1, Lcom/wooboo/adlib_android/___;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0           #t:Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v1

    goto :goto_0
.end method
