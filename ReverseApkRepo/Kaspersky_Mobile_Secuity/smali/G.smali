.class final LG;
.super Ljava/lang/Object;

# interfaces
.implements Lu;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/apache/http/HttpHost;

.field private c:LH;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "GoogleAnalytics"

    const-string v1, "1.4.2"

    invoke-direct {p0, v0, v1}, LG;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "www.google-analytics.com"

    const/16 v1, 0x50

    invoke-direct {p0, p1, p2, v0, v1}, LG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, LG;->d:Z

    new-instance v0, Lorg/apache/http/HttpHost;

    const/16 v1, 0x50

    invoke-direct {v0, p3, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, LG;->b:Lorg/apache/http/HttpHost;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%s/%s (Linux; U; Android %s; %s-%s; %s Build/%s)"

    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/4 v0, 0x2

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x3

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v4

    const/4 v0, 0x5

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x6

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LG;->a:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "en"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method static synthetic a(LG;)Lorg/apache/http/HttpHost;
    .locals 1

    iget-object v0, p0, LG;->b:Lorg/apache/http/HttpHost;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, LG;->c:LH;

    if-eqz v0, :cond_0

    iget-object v0, p0, LG;->c:LH;

    invoke-virtual {v0}, LH;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LG;->c:LH;

    invoke-virtual {v0}, LH;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, LG;->c:LH;

    :cond_0
    return-void
.end method

.method public final a(Lv;)V
    .locals 2

    invoke-virtual {p0}, LG;->a()V

    new-instance v0, LH;

    iget-object v1, p0, LG;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p0}, LH;-><init>(Lv;Ljava/lang/String;LG;)V

    iput-object v0, p0, LG;->c:LH;

    iget-object v0, p0, LG;->c:LH;

    invoke-virtual {v0}, LH;->start()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, LG;->d:Z

    return-void
.end method

.method public final a([LB;)V
    .locals 1

    iget-object v0, p0, LG;->c:LH;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LG;->c:LH;

    invoke-virtual {v0, p1}, LH;->a([LB;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, LG;->d:Z

    return v0
.end method
