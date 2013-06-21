.class public final Lbi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile ㅼ꽑嫄:Z

.field private 弱밧:Z

.field private final 癤욱븳援:Laz;

.field private final 궗:Lbg;

.field private 대쫫:Ljava/lang/Thread;

.field private final 먯꽌:Lbk;

.field private 쇰뒗:Ljava/lang/String;


# direct methods
.method constructor <init>(Laz;Lbg;)V
    .locals 1

    new-instance v0, Lbj;

    invoke-direct {v0}, Lbj;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lbi;-><init>(Laz;Lbg;Lbk;)V

    return-void
.end method

.method constructor <init>(Laz;Lbg;Lbk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbi;->대쫫:Ljava/lang/Thread;

    iput-object p1, p0, Lbi;->癤욱븳援:Laz;

    iput-object p2, p0, Lbi;->궗:Lbg;

    iput-object p3, p0, Lbi;->먯꽌:Lbk;

    return-void
.end method

.method private ㅼ꽑嫄(Ljava/net/HttpURLConnection;)V
    .locals 2

    const-string v0, "X-Afma-Mediation"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbi;->癤욱븳援:Laz;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Laz;->癤욱븳援(Z)V

    :cond_0
    return-void
.end method

.method private 弱밧(Ljava/net/HttpURLConnection;)V
    .locals 5

    const-string v0, "X-Afma-Interstitial-Timeout"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v2, p0, Lbi;->궗:Lbg;

    const/high16 v3, 0x447a

    mul-float/2addr v0, v3

    float-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lbg;->癤욱븳援(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get timeout value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcv;->ㅼ꽑嫄(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private 洹(Ljava/net/HttpURLConnection;)V
    .locals 4

    const-string v0, "X-Afma-Refresh-Rate"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lbi;->궗:Lbg;

    invoke-virtual {v1, v0}, Lbg;->癤욱븳援(F)V

    iget-object v0, p0, Lbi;->궗:Lbg;

    invoke-virtual {v0}, Lbg;->뚮벏()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbi;->궗:Lbg;

    invoke-virtual {v0}, Lbg;->쇰뒗()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get refresh value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcv;->ㅼ꽑嫄(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbi;->궗:Lbg;

    invoke-virtual {v0}, Lbg;->뚮벏()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbi;->궗:Lbg;

    invoke-virtual {v0}, Lbg;->弱밧()V

    goto :goto_0
.end method

.method private 癤욱븳援(Landroid/content/Context;Ljava/net/HttpURLConnection;)V
    .locals 3

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "drt"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lbi;->弱밧:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/google/ads/util/AdUtil;->癤욱븳援:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const-string v1, "X-Afma-drt-Cookie"

    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Cookie"

    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private 癤욱븳援(Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-direct {p0, p1}, Lbi;->궗(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lbi;->쇰뒗(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lbi;->대쫫(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lbi;->洹(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lbi;->弱밧(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lbi;->몃Ъ(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lbi;->먯껜蹂대떎(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lbi;->꾨뱾(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lbi;->ㅼ꽑嫄(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lbi;->먯꽌(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lbi;->뚮Ц(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method private 癤욱븳援(Ljava/net/HttpURLConnection;I)V
    .locals 3

    const/16 v1, 0x190

    const/16 v0, 0x12c

    if-gt v0, p2, :cond_1

    if-ge p2, v1, :cond_1

    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get redirect location from a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " redirect."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->먯꽌(Ljava/lang/String;)V

    iget-object v0, p0, Lbi;->癤욱븳援:Laz;

    sget-object v1, Lj;->ㅼ꽑嫄:Lj;

    invoke-virtual {v0, v1}, Laz;->癤욱븳援(Lj;)V

    invoke-virtual {p0}, Lbi;->癤욱븳援()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lbi;->癤욱븳援(Ljava/net/HttpURLConnection;)V

    iput-object v0, p0, Lbi;->쇰뒗:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_3

    invoke-direct {p0, p1}, Lbi;->癤욱븳援(Ljava/net/HttpURLConnection;)V

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->癤욱븳援(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response content is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response message is null or zero length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    iget-object v0, p0, Lbi;->癤욱븳援:Laz;

    sget-object v1, Lj;->궗:Lj;

    invoke-virtual {v0, v1}, Laz;->癤욱븳援(Lj;)V

    invoke-virtual {p0}, Lbi;->癤욱븳援()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lbi;->癤욱븳援:Laz;

    iget-object v2, p0, Lbi;->쇰뒗:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Laz;->癤욱븳援(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lbi;->癤욱븳援()V

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    const-string v0, "Bad request"

    invoke-static {v0}, Lcv;->먯꽌(Ljava/lang/String;)V

    iget-object v0, p0, Lbi;->癤욱븳援:Laz;

    sget-object v1, Lj;->癤욱븳援:Lj;

    invoke-virtual {v0, v1}, Laz;->癤욱븳援(Lj;)V

    invoke-virtual {p0}, Lbi;->癤욱븳援()V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->먯꽌(Ljava/lang/String;)V

    iget-object v0, p0, Lbi;->癤욱븳援:Laz;

    sget-object v1, Lj;->ㅼ꽑嫄:Lj;

    invoke-virtual {v0, v1}, Laz;->癤욱븳援(Lj;)V

    invoke-virtual {p0}, Lbi;->癤욱븳援()V

    goto/16 :goto_0
.end method

.method private 궗()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lbi;->ㅼ꽑嫄:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lbi;->쇰뒗:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbi;->먯꽌:Lbk;

    invoke-interface {v1, v0}, Lbk;->癤욱븳援(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lbi;->궗:Lbg;

    invoke-virtual {v0}, Lbg;->洹()Lbw;

    move-result-object v0

    iget-object v0, v0, Lbw;->ㅼ꽑嫄:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lbi;->癤욱븳援(Landroid/content/Context;Ljava/net/HttpURLConnection;)V

    iget-object v0, p0, Lbi;->궗:Lbg;

    invoke-virtual {v0}, Lbg;->洹()Lbw;

    move-result-object v0

    iget-object v0, v0, Lbw;->ㅼ꽑嫄:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/ads/util/AdUtil;->癤욱븳援(Ljava/net/HttpURLConnection;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lbi;->癤욱븳援(Ljava/net/HttpURLConnection;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :cond_0
    return-void
.end method

.method private 궗(Ljava/net/HttpURLConnection;)V
    .locals 2

    const-string v0, "X-Afma-Debug-Dialog"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbi;->癤욱븳援:Laz;

    invoke-virtual {v1, v0}, Laz;->弱밧(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private 꾨뱾(Ljava/net/HttpURLConnection;)V
    .locals 2

    const-string v0, "Cache-Control"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbi;->癤욱븳援:Laz;

    invoke-virtual {v1, v0}, Laz;->먯꽌(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private 대쫫(Ljava/net/HttpURLConnection;)V
    .locals 5

    const-string v0, "X-Afma-Click-Tracking-Urls"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lbi;->癤욱븳援:Laz;

    invoke-virtual {v4, v3}, Laz;->癤욱븳援(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private 뚮Ц(Ljava/net/HttpURLConnection;)V
    .locals 4

    const/4 v3, 0x2

    const-string v0, "X-Afma-Ad-Size"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "x"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-eq v2, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse size header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcv;->弱밧(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    iget-object v1, p0, Lbi;->癤욱븳援:Laz;

    new-instance v3, Ll;

    invoke-direct {v3, v2, v0}, Ll;-><init>(II)V

    invoke-virtual {v1, v3}, Laz;->癤욱븳援(Ll;)V

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse size header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->弱밧(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private 먯껜蹂대떎(Ljava/net/HttpURLConnection;)V
    .locals 3

    const-string v0, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lbi;->궗:Lbg;

    invoke-virtual {v2, v0, v1}, Lbg;->궗(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got bad value of Doritos cookie cache life from header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Using default value instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->弱밧(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private 먯꽌(Ljava/net/HttpURLConnection;)V
    .locals 2

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbi;->癤욱븳援:Laz;

    invoke-virtual {v1, v0}, Laz;->궗(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private 몃Ъ(Ljava/net/HttpURLConnection;)V
    .locals 2

    const-string v0, "X-Afma-Orientation"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lbi;->癤욱븳援:Laz;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->궗()I

    move-result v1

    invoke-virtual {v0, v1}, Laz;->癤욱븳援(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbi;->癤욱븳援:Laz;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->癤욱븳援()I

    move-result v1

    invoke-virtual {v0, v1}, Laz;->癤욱븳援(I)V

    goto :goto_0
.end method

.method private 쇰뒗(Ljava/net/HttpURLConnection;)V
    .locals 5

    const-string v0, "X-Afma-Tracking-Urls"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lbi;->궗:Lbg;

    invoke-virtual {v4, v3}, Lbg;->궗(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lbi;->궗()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Received malformed ad url from javascript."

    invoke-static {v1, v0}, Lcv;->궗(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lbi;->癤욱븳援:Laz;

    sget-object v1, Lj;->ㅼ꽑嫄:Lj;

    invoke-virtual {v0, v1}, Laz;->癤욱븳援(Lj;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "IOException connecting to ad url."

    invoke-static {v1, v0}, Lcv;->ㅼ꽑嫄(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lbi;->癤욱븳援:Laz;

    sget-object v1, Lj;->먯꽌:Lj;

    invoke-virtual {v0, v1}, Laz;->癤욱븳援(Lj;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "An unknown error occurred in AdResponseLoader."

    invoke-static {v1, v0}, Lcv;->궗(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lbi;->癤욱븳援:Laz;

    sget-object v1, Lj;->ㅼ꽑嫄:Lj;

    invoke-virtual {v0, v1}, Laz;->癤욱븳援(Lj;)V

    goto :goto_0
.end method

.method 癤욱븳援()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbi;->ㅼ꽑嫄:Z

    return-void
.end method

.method declared-synchronized 癤욱븳援(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbi;->대쫫:Ljava/lang/Thread;

    if-nez v0, :cond_0

    iput-object p1, p0, Lbi;->쇰뒗:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbi;->ㅼ꽑嫄:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lbi;->대쫫:Ljava/lang/Thread;

    iget-object v0, p0, Lbi;->대쫫:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public 癤욱븳援(Z)V
    .locals 0

    iput-boolean p1, p0, Lbi;->弱밧:Z

    return-void
.end method
