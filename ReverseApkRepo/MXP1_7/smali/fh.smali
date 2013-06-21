.class public final Lfh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final 뚮Ц:Ljava/lang/String;


# instance fields
.field public ㅼ꽑嫄:Ljava/lang/String;

.field private 寃껋씠:[Lfl;

.field public 弱밧:I

.field public 洹:Ljava/lang/Integer;

.field public 癤욱븳援:I

.field public 궗:I

.field public 꾨뱾:I

.field public 대쫫:Ljava/lang/Integer;

.field private 덉쓣:I

.field private final 뚮벏:Ljava/util/concurrent/atomic/AtomicReference;

.field private final 뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

.field private final 먮:Landroid/content/Context;

.field public 먯껜蹂대떎:I

.field public 먯꽌:I

.field public 몃Ъ:Z

.field private final 붿슧:Ljava/util/concurrent/ScheduledExecutorService;

.field public 쇰뒗:I

.field private 留먰븷:I

.field private 紐낆옱:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mxtech/app/MXApplication;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfh;->뚮Ц:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9

    const-wide/16 v2, 0x2710

    const v6, 0x2bf20

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lfh;->붿슧:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lfh;->뚮벏:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfh;->먮:Landroid/content/Context;

    const-string v0, "a"

    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    :try_start_0
    iget-object v0, p0, Lfh;->먮:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfh;->먮:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lfh;->癤욱븳援:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "min_version"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfh;->궗:I

    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "latest_version"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfh;->먯꽌:I

    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "latest_version_name"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfh;->ㅼ꽑嫄:Ljava/lang/String;

    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "noticed_version"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfh;->弱밧:I

    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "refresh"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfh;->쇰뒗:I

    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "interstitial_initial_load_term"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfh;->먯껜蹂대떎:I

    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "interstitial_reload_term"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfh;->꾨뱾:I

    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "processor_count"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {v0}, Lcom/mxtech/app/AppUtils;->updateProcessorCount(I)V

    :cond_0
    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "textcolor"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "textcolor"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lfh;->대쫫:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "backcolor"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "backcolor"

    const/high16 v4, -0x100

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lfh;->洹:Ljava/lang/Integer;

    :cond_2
    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "location"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lfh;->몃Ъ:Z

    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "dont_inquire_update_for"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lfh;->덉쓣:I

    sget-boolean v0, Lej;->癤욱븳援:Z

    if-eqz v0, :cond_7

    :try_start_1
    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "schedule"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lfl;->癤욱븳援(Ljava/lang/String;)[Lfl;

    move-result-object v0

    iput-object v0, p0, Lfh;->寃껋씠:[Lfl;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v0, p0, Lfh;->먮:Landroid/content/Context;

    invoke-static {v0}, Lee;->먯꽌(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    :cond_4
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v4, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v5, "last_country"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v6, "last_language"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    iget-object v0, p0, Lfh;->뚮벏:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lfh;->붿슧:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_3
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lfh;->뚮Ц:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v7, p0, Lfh;->癤욱븳援:I

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    iget v0, p0, Lfh;->癤욱븳援:I

    iget-object v1, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v4, "auth_version"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lfh;->뚮벏:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lfh;->붿슧:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, p2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v1, "auth_time_next"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    sget-boolean v4, Lej;->癤욱븳援:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lfh;->寃껋씠:[Lfl;

    if-eqz v4, :cond_a

    :cond_9
    move-wide v0, v2

    :cond_a
    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-gez v2, :cond_b

    int-to-long v0, p2

    :cond_b
    iget-object v2, p0, Lfh;->뚮벏:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lfh;->붿슧:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, p0, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method static synthetic ㅼ꽑嫄(Lfh;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lfh;->붿슧:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic 癤욱븳援(Lfh;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic 癤욱븳援(Lfh;I)V
    .locals 0

    iput p1, p0, Lfh;->덉쓣:I

    return-void
.end method

.method static synthetic 癤욱븳援(Lfh;[Lfl;)V
    .locals 0

    iput-object p1, p0, Lfh;->寃껋씠:[Lfl;

    return-void
.end method

.method private 癤욱븳援()Z
    .locals 14

    const/4 v13, 0x6

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {v2}, Lcom/mxtech/app/AppUtils;->getSS(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v0, "User-Agent"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lfh;->먮:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lfh;->癤욱븳援:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iget-object v0, p0, Lfh;->먮:Landroid/content/Context;

    invoke-static {v0}, Lee;->먯꽌(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "cn"

    invoke-direct {v6, v7, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "la"

    invoke-direct {v6, v7, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lfh;->먮:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lfh;->먮:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "sg"

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lcom/mxtech/app/AppUtils;->癤욱븳援([B)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v6, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const/16 v7, 0x1388

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v7, 0x1f40

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    :try_start_0
    invoke-interface {v5, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    const/4 v5, 0x0

    iput v5, p0, Lfh;->留먰븷:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_1
    :goto_1
    return v2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v0, p0, Lfh;->留먰븷:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfh;->留먰븷:I

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x200

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_1
    invoke-interface {v1, v5}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v1, v2

    :goto_2
    array-length v6, v5

    if-lt v1, v6, :cond_4

    array-length v1, v5

    if-lt v1, v3, :cond_1

    aget-object v1, v5, v2

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    if-ne v6, v12, :cond_1

    aget-object v6, v1, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lfh;->궗:I

    aget-object v6, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lfh;->먯꽌:I

    aget-object v1, v1, v11

    const/16 v6, 0x5f

    const/16 v7, 0x20

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfh;->ㅼ꽑嫄:Ljava/lang/String;

    iget-object v1, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    :try_start_2
    const-string v6, "min_version"

    iget v7, p0, Lfh;->궗:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v6, "latest_version"

    iget v7, p0, Lfh;->먯꽌:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v6, "latest_version_name"

    iget-object v7, p0, Lfh;->ㅼ꽑嫄:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-boolean v6, Lej;->癤욱븳援:Z

    if-eqz v6, :cond_6

    array-length v6, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ge v6, v13, :cond_5

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    throw v0

    :cond_4
    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    :try_start_3
    aget-object v2, v5, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, -0x1

    iput v2, p0, Lfh;->쇰뒗:I

    const-string v2, "refresh"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_3
    const/4 v2, 0x2

    aget-object v2, v5, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    iput-object v2, p0, Lfh;->대쫫:Ljava/lang/Integer;

    const-string v2, "textcolor"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_4
    const/4 v2, 0x3

    aget-object v2, v5, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x0

    iput-object v2, p0, Lfh;->洹:Ljava/lang/Integer;

    const-string v2, "backcolor"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_5
    const/4 v2, 0x4

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lfh;->몃Ъ:Z

    const-string v2, "location"

    iget-boolean v6, p0, Lfh;->몃Ъ:Z

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x5

    aget-object v2, v5, v2

    invoke-static {v2}, Lfl;->癤욱븳援(Ljava/lang/String;)[Lfl;

    move-result-object v2

    const-string v6, "schedule"

    const/4 v7, 0x5

    aget-object v7, v5, v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v6, Lfi;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lfi;-><init>(Lfh;Landroid/os/Looper;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    array-length v2, v5

    if-le v2, v13, :cond_7

    const-string v2, "auth_time_next"

    const/4 v8, 0x6

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    add-long/2addr v8, v6

    invoke-interface {v1, v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_7
    array-length v2, v5

    const/16 v8, 0x8

    if-le v2, v8, :cond_8

    sget-boolean v2, Lej;->癤욱븳援:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x7

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lfh;->먯껜蹂대떎:I

    const/16 v2, 0x8

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lfh;->꾨뱾:I

    const-string v2, "interstitial_initial_load_term"

    iget v5, p0, Lfh;->먯껜蹂대떎:I

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "interstitial_reload_term"

    iget v5, p0, Lfh;->꾨뱾:I

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_8
    const-string v2, "last_country"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "last_language"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "auth_time"

    invoke-interface {v1, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "auth_version"

    iget v2, p0, Lfh;->癤욱븳援:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v2, v3

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x1

    :try_start_4
    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lfh;->쇰뒗:I

    const-string v2, "refresh"

    iget v6, p0, Lfh;->쇰뒗:I

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    throw v0

    :cond_a
    const/4 v2, 0x2

    :try_start_5
    aget-object v2, v5, v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lfh;->대쫫:Ljava/lang/Integer;

    const-string v2, "textcolor"

    iget-object v6, p0, Lfh;->대쫫:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    :cond_b
    const/4 v2, 0x3

    aget-object v2, v5, v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lfh;->洹:Ljava/lang/Integer;

    const-string v2, "backcolor"

    iget-object v6, p0, Lfh;->洹:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_5
.end method

.method static synthetic 궗(Lfh;)Z
    .locals 1

    invoke-direct {p0}, Lfh;->癤욱븳援()Z

    move-result v0

    return v0
.end method

.method static synthetic 먯꽌(Lfh;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lfh;->뚮벏:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    const-wide/32 v0, 0x927c0

    :try_start_0
    invoke-static {}, Lfd;->癤욱븳援()Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lej;->癤욱븳援:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfh;->寃껋씠:[Lfl;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v0, p0, Lfh;->뚮벏:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lfh;->붿슧:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/32 v2, 0x927c0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lej;->癤욱븳援:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lfh;->먮:Landroid/content/Context;

    invoke-static {v2}, Lee;->ㅼ꽑嫄(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lfh;->癤욱븳援()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    const-string v3, "auth_time_next"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lfh;->뚮벏:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, p0, Lfh;->붿슧:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, p0, v2, v3, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_3
    :try_start_2
    iget-object v2, p0, Lfh;->뚮벏:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lfh;->붿슧:Ljava/util/concurrent/ScheduledExecutorService;

    sget-boolean v4, Lej;->癤욱븳援:Z

    if-eqz v4, :cond_4

    const-wide/32 v0, 0x1d4c0

    :cond_4
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, p0, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public 癤욱븳援(Ljava/util/Set;)Lfl;
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lfh;->寃껋씠:[Lfl;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p0, Lfh;->寃껋씠:[Lfl;

    array-length v5, v4

    move v2, v3

    move v0, v3

    :goto_1
    if-lt v2, v5, :cond_4

    if-lez v0, :cond_3

    iget-object v2, p0, Lfh;->紐낆옱:Ljava/util/Random;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Lfh;->紐낆옱:Ljava/util/Random;

    :cond_2
    iget-object v2, p0, Lfh;->紐낆옱:Ljava/util/Random;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v5, p0, Lfh;->寃껋씠:[Lfl;

    array-length v6, v5

    move v4, v3

    :goto_2
    if-lt v4, v6, :cond_6

    :cond_3
    iget-object v4, p0, Lfh;->寃껋씠:[Lfl;

    array-length v5, v4

    move v2, v3

    :goto_3
    if-lt v2, v5, :cond_9

    move-object v0, v1

    goto :goto_0

    :cond_4
    aget-object v6, v4, v2

    iget-char v7, v6, Lfl;->癤욱븳援:C

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget v6, v6, Lfl;->궗:I

    add-int/2addr v0, v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    aget-object v2, v5, v4

    iget-char v7, v2, Lfl;->癤욱븳援:C

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget v7, v2, Lfl;->궗:I

    if-ge v0, v7, :cond_7

    move-object v0, v2

    goto :goto_0

    :cond_7
    iget v2, v2, Lfl;->궗:I

    sub-int/2addr v0, v2

    :cond_8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_9
    aget-object v0, v4, v2

    iget-char v3, v0, Lfl;->癤욱븳援:C

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3
.end method

.method public 癤욱븳援(I)V
    .locals 2

    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "processor_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public 癤욱븳援(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lfh;->뚮벏:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lfh;->붿슧:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lfj;

    invoke-direct {v1, p0, p1, p2}, Lfj;-><init>(Lfh;Landroid/os/Handler;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public 癤욱븳援(Landroid/content/Context;Lfm;Landroid/content/pm/PackageInfo;ILandroid/content/DialogInterface$OnClickListener;)Z
    .locals 10

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lfh;->먯꽌:I

    iget v1, p0, Lfh;->덉쓣:I

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lfh;->癤욱븳援:I

    iget v1, p0, Lfh;->먯꽌:I

    if-lt v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_1
    iget v0, p0, Lfh;->癤욱븳援:I

    iget v1, p0, Lfh;->궗:I

    if-lt v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    new-instance v5, Lfk;

    invoke-direct {v5, p0, v9}, Lfk;-><init>(Lfh;Lfk;)V

    sget v0, Lha;->inquire_update_content:I

    invoke-static {p1, v0, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lgz;->text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lgz;->deny:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    sget v6, Lhb;->inquire_update_text:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v8, v7, v3

    iget-object v3, p0, Lfh;->ㅼ꽑嫄:Ljava/lang/String;

    aput-object v3, v7, v4

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lhb;->inquire_update_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x1040013

    invoke-virtual {v1, v0, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x1040009

    invoke-virtual {v1, v0, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p2, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    iput-object v0, v5, Lfk;->癤욱븳援:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1
.end method

.method public 궗(I)V
    .locals 2

    iget-object v0, p0, Lfh;->뚮젮議뚮떎怨:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "noticed_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    iput p1, p0, Lfh;->弱밧:I

    return-void
.end method
