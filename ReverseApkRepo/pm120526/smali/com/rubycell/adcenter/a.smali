.class public Lcom/rubycell/adcenter/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/rubycell/checkupdate/AlarmReceiver;

.field private d:Landroid/app/AlarmManager;

.field private e:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/rubycell/adcenter/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rubycell/adcenter/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    sget-object v0, Lcom/rubycell/adcenter/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "---->C2DM="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/rubycell/adcenter/a/a;->d(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/rubycell/adcenter/a/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/rubycell/adcenter/a/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/rubycell/adcenter/a/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "C2DM"

    const-string v1, "start registration process"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "rubynotification@rubycell.com"

    invoke-static {p1, v0}, Lcom/rubycell/c2dm/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.rubycell.adcenter.ALARM_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/rubycell/checkupdate/AlarmReceiver;

    invoke-direct {v1}, Lcom/rubycell/checkupdate/AlarmReceiver;-><init>()V

    iput-object v1, p0, Lcom/rubycell/adcenter/a;->c:Lcom/rubycell/checkupdate/AlarmReceiver;

    iget-object v1, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/rubycell/adcenter/a;->c:Lcom/rubycell/checkupdate/AlarmReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/rubycell/adcenter/a;->d:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.rubycell.adcenter.ALARM_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    const/high16 v2, 0x1000

    invoke-static {v1, v4, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/adcenter/a;->e:Landroid/app/PendingIntent;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xe

    const/16 v2, 0x7530

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    iget-object v1, p0, Lcom/rubycell/adcenter/a;->d:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/rubycell/adcenter/a;->e:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_2
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/rubycell/adcenter/a/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/flurry/android/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/android/e;->a()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Q3L9WM3GMM8WZKESQ13G"

    invoke-static {p0, v0}, Lcom/flurry/android/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/android/e;->a()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/flurry/android/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/rubycell/adcenter/a/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/flurry/android/e;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-lt v4, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void

    :cond_1
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v1, v2, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    if-eqz v1, :cond_3

    move-object v0, v2

    check-cast v0, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;->c()V

    check-cast v2, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;->e()V

    :cond_2
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_3
    instance-of v1, v2, Lcom/google/ads/AdView;

    if-eqz v1, :cond_2

    check-cast v2, Lcom/google/ads/AdView;

    invoke-virtual {v2}, Lcom/google/ads/AdView;->a()V

    goto :goto_1
.end method

.method public static c(Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;->c()V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    const-class v2, Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    const/16 v2, 0xdac

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/rubycell/adcenter/a;->b(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v5

    :goto_0
    if-eqz v0, :cond_7

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.rubycell.adfreekey.pro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.rubycell.adfreekey.pro"

    invoke-static {v1, v0}, Lcom/rubycell/adcenter/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rubycell/adcenter/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1}, Lcom/rubycell/provider/c;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/provider/b;

    invoke-virtual {v0}, Lcom/rubycell/provider/b;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "DoBao: parsing date null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v7

    :goto_2
    new-instance v1, Lorg/a/a/b;

    invoke-direct {v1}, Lorg/a/a/b;-><init>()V

    invoke-virtual {v1, v0}, Lorg/a/a/b;->a(Lorg/a/a/u;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_5

    move v0, v5

    goto :goto_0

    :cond_3
    const-string v1, "dd/MM/yyyy"

    invoke-static {v1}, Lorg/a/a/d/a;->a(Ljava/lang/String;)Lorg/a/a/d/b;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/a/a/b;->a(Ljava/lang/String;Lorg/a/a/d/b;)Lorg/a/a/b;

    move-result-object v0

    goto :goto_2

    :cond_4
    move v0, v5

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_0

    :cond_6
    move v0, v5

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/rubycell/adcenter/a/a;->h(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/ads/AdView;

    iget-object v1, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    sget-object v2, Lcom/google/ads/f;->a:Lcom/google/ads/f;

    iget-object v3, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    invoke-static {v3}, Lcom/rubycell/adcenter/a/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/f;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/google/ads/c;

    invoke-direct {v1}, Lcom/google/ads/c;-><init>()V

    invoke-virtual {v1}, Lcom/google/ads/c;->a()V

    const-string v2, "354957034270622"

    invoke-virtual {v1, v2}, Lcom/google/ads/c;->a(Ljava/lang/String;)V

    const-string v2, "356716047170718"

    invoke-virtual {v1, v2}, Lcom/google/ads/c;->a(Ljava/lang/String;)V

    const-string v2, "99000052107633"

    invoke-virtual {v1, v2}, Lcom/google/ads/c;->a(Ljava/lang/String;)V

    const-string v2, "354635031583540"

    invoke-virtual {v1, v2}, Lcom/google/ads/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->a(Lcom/google/ads/c;)V

    goto/16 :goto_1

    :cond_8
    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->a(Landroid/app/Activity;)V

    new-instance v0, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    iget-object v1, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/google/ads/AdView;

    iget-object v1, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    sget-object v2, Lcom/google/ads/f;->a:Lcom/google/ads/f;

    iget-object v3, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    invoke-static {v3}, Lcom/rubycell/adcenter/a/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/f;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/google/ads/c;

    invoke-direct {v1}, Lcom/google/ads/c;-><init>()V

    invoke-virtual {v1}, Lcom/google/ads/c;->a()V

    const-string v2, "354957034270622"

    invoke-virtual {v1, v2}, Lcom/google/ads/c;->a(Ljava/lang/String;)V

    const-string v2, "356716047170718"

    invoke-virtual {v1, v2}, Lcom/google/ads/c;->a(Ljava/lang/String;)V

    const-string v2, "99000052107633"

    invoke-virtual {v1, v2}, Lcom/google/ads/c;->a(Ljava/lang/String;)V

    const-string v2, "354635031583540"

    invoke-virtual {v1, v2}, Lcom/google/ads/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->a(Lcom/google/ads/c;)V

    iget-object v1, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    const-string v3, "key_mobclix_id"

    const-string v4, "143A34AD-F25E-4D59-9AC5-798D0B016556"

    invoke-static {v2, v3, v4}, Lcom/rubycell/adcenter/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mobclix/android/sdk/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v1, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    iget-object v2, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    const-string v3, "selectedAd"

    const-string v4, "admob"

    invoke-static {v2, v3, v4}, Lcom/rubycell/adcenter/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "admob"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, v5}, Lcom/google/ads/AdView;->setVisibility(I)V

    invoke-virtual {v1, v6}, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_a
    const-string v3, "moblicx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v6}, Lcom/google/ads/AdView;->setVisibility(I)V

    invoke-virtual {v1, v5}, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public final b()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    const-class v2, Lcom/rubycell/adcenter/RubycellAdCenterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_app_in_amazon"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    const/16 v2, 0xdac

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/adcenter/a;->c:Lcom/rubycell/checkupdate/AlarmReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/adcenter/a;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/rubycell/adcenter/a;->c:Lcom/rubycell/checkupdate/AlarmReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/a;->d:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/adcenter/a;->e:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/adcenter/a;->d:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/rubycell/adcenter/a;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rubycell/adcenter/a;->d:Landroid/app/AlarmManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rubycell/adcenter/a;->e:Landroid/app/PendingIntent;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rubycell/adcenter/a;->c:Lcom/rubycell/checkupdate/AlarmReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
