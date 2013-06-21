.class public final Lcom/mxtech/videoplayer/ad/App;
.super Lcom/mxtech/videoplayer/App;


# static fields
.field private static final 궗:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "movie"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "video"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "music"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fun"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "entertainment"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "stream"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mxtech/videoplayer/ad/App;->궗:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/videoplayer/App;-><init>()V

    return-void
.end method

.method static 먯꽌(Landroid/app/Activity;)I
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 v1, 0x4436

    invoke-static {v1}, Lee;->먯꽌(F)F

    move-result v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/high16 v1, 0x43ea

    invoke-static {v1}, Lee;->먯꽌(F)F

    move-result v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public ㅼ꽑嫄()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public 弱밧()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected 먯꽌()V
    .locals 10

    const/16 v9, 0x7d

    const/4 v8, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/mxtech/videoplayer/App;->먯꽌()V

    invoke-static {p0, v8}, Lej;->癤욱븳援(Landroid/content/Context;Z)V

    invoke-static {p0, v0}, Lcom/mxtech/videoplayer/L;->癤욱븳援(Landroid/content/Context;I)V

    const-string v0, "movies"

    sget-object v1, Lcom/mxtech/videoplayer/ad/App;->궗:[Ljava/lang/String;

    invoke-static {v0, v1}, Lfc;->癤욱븳援(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ad/App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v1, "http://crowdin.net/project/mx-video-player/invite"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    :try_start_1
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v0, "market://details?id=com.mxtech.videoplayer.pro"
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const-string v6, "app_name"

    const v7, 0x7f08002c

    invoke-virtual {p0, v7}, Lcom/mxtech/videoplayer/ad/App;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "app_name_pro"

    const v7, 0x7f08002d

    invoke-virtual {p0, v7}, Lcom/mxtech/videoplayer/ad/App;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "store_name"

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    const v6, 0x7f080233

    invoke-virtual {p0, v6}, Lcom/mxtech/videoplayer/ad/App;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "{"

    invoke-static {v6, v4, v7, v9}, Leo;->癤욱븳援(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v6, v2, v0}, Lex;->癤욱븳援(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;)V

    const v0, 0x7f080234

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ad/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{"

    invoke-static {v0, v4, v1, v9}, Leo;->癤욱븳援(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v3, v5}, Lex;->癤욱븳援(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;)V

    return-void

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const v0, 0x7f080230

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ad/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ad/App;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v3

    goto :goto_1
.end method
