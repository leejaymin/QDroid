.class public final Lcom/admob/android/ads/q;
.super Ljava/lang/Object;
.source "AdMobOpener.java"

# interfaces
.implements Lcom/admob/android/ads/u$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/q$2;,
        Lcom/admob/android/ads/q$a;
    }
.end annotation


# instance fields
.field public a:Lcom/admob/android/ads/r;

.field public b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/admob/android/ads/u;

.field private d:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance v0, Lcom/admob/android/ads/r;

    invoke-direct {v0}, Lcom/admob/android/ads/r;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    .line 216
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/q;->b:Ljava/util/Vector;

    .line 217
    new-instance v0, Lcom/admob/android/ads/u;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/u;-><init>(Lcom/admob/android/ads/u$a;)V

    iput-object v0, p0, Lcom/admob/android/ads/q;->c:Lcom/admob/android/ads/u;

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/q;->d:Landroid/widget/PopupWindow;

    .line 219
    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 4
    .parameter

    .prologue
    .line 722
    const/4 v0, 0x0

    .line 724
    if-eqz p0, :cond_2

    .line 727
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 729
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 732
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 735
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 739
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 741
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 744
    invoke-static {v2, v0, v3}, Lcom/admob/android/ads/q;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 749
    :cond_2
    return-object v0

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "AdMobSDK"

    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/admob/android/ads/q;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    .line 376
    const/high16 v2, 0x1

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 378
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_1
    :goto_1
    return-void

    .line 384
    :cond_2
    const-string v0, "AdMobSDK"

    const/4 v0, 0x6

    invoke-static {v3, v0}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    const-string v0, "AdMobSDK"

    const-string v0, "Could not find a resolving intent on ad click"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 452
    invoke-direct {p0, p1, p2}, Lcom/admob/android/ads/q;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 453
    invoke-direct {p0, v0}, Lcom/admob/android/ads/q;->a(Landroid/content/Intent;)V

    .line 454
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/admob/android/ads/q;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_0
    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v4, 0x0

    const-string v5, "AdMobSDK"

    .line 685
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 692
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 694
    :cond_2
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 696
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 698
    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 700
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 702
    :cond_4
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 704
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 706
    :cond_5
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 708
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 710
    :cond_6
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_7

    .line 712
    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/admob/android/ads/q;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 714
    :cond_7
    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 716
    check-cast p2, Lorg/json/JSONArray;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_8

    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v2, "AdMobSDK"

    invoke-static {v5, v6}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "AdMobSDK"

    const-string v2, "couldn\'t read bundle array while adding extras"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_9

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, "AdMobSDK"

    invoke-static {v5, v6}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdMobSDK"

    const-string v0, "Couldn\'t read in array when making extras"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    :try_start_2
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_b

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    array-length v1, v0

    new-array v1, v1, [I

    move v2, v4

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_a

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    :cond_b
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_d

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Boolean;

    array-length v1, v0

    new-array v1, v1, [Z

    move v2, v4

    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_c

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_0

    :cond_d
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_f

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v1, v0

    new-array v1, v1, [D

    move v2, v4

    :goto_4
    array-length v3, v1

    if-ge v2, v3, :cond_e

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_0

    :cond_f
    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    array-length v1, v0

    new-array v1, v1, [J

    move v2, v4

    :goto_5
    array-length v3, v1

    if-ge v2, v3, :cond_10

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V
    :try_end_2
    .catch Ljava/lang/ArrayStoreException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iput-object p1, v0, Lcom/admob/android/ads/r;->d:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public static a(Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/admob/android/ads/w;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 773
    if-nez p0, :cond_1

    .line 819
    :cond_0
    return-void

    .line 777
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/w;

    .line 779
    new-instance v1, Lcom/admob/android/ads/q$1;

    invoke-direct {v1}, Lcom/admob/android/ads/q$1;-><init>()V

    .line 804
    const/4 v2, 0x0

    .line 805
    iget-boolean v3, p0, Lcom/admob/android/ads/w;->b:Z

    if-eqz v3, :cond_2

    move-object v2, p1

    .line 812
    :cond_2
    iget-object v3, p0, Lcom/admob/android/ads/w;->a:Ljava/lang/String;

    const-string v4, "click_time_tracking"

    invoke-static {v3, v4, p2, v2, v1}, Lcom/admob/android/ads/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/admob/android/ads/h;)Lcom/admob/android/ads/e;

    move-result-object v1

    .line 817
    invoke-interface {v1}, Lcom/admob/android/ads/e;->f()V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 540
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/admob/android/ads/AdMobActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 541
    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 506
    const/4 v0, 0x0

    .line 507
    iget-object v1, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v1, v1, Lcom/admob/android/ads/r;->a:Lcom/admob/android/ads/j$a;

    .line 509
    if-eqz v1, :cond_1

    .line 510
    sget-object v2, Lcom/admob/android/ads/q$2;->a:[I

    invoke-virtual {v1}, Lcom/admob/android/ads/j$a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 528
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 530
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 532
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 536
    :cond_1
    :goto_0
    return-object v0

    .line 513
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/admob/android/ads/q;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :pswitch_1
    invoke-static {p1}, Lcom/admob/android/ads/q;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 523
    :pswitch_2
    iget-object v0, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v0, v0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v0, v0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    invoke-virtual {v0}, Lcom/admob/android/ads/p;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    invoke-static {p1}, Lcom/admob/android/ads/q;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 510
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/admob/android/ads/q;->d:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/admob/android/ads/q;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/q;->d:Landroid/widget/PopupWindow;

    .line 350
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 280
    iget-object v1, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v1, v1, Lcom/admob/android/ads/r;->a:Lcom/admob/android/ads/j$a;

    sget-object v2, Lcom/admob/android/ads/j$a;->b:Lcom/admob/android/ads/j$a;

    if-ne v1, v2, :cond_1

    .line 281
    iget-object v1, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v1, v1, Lcom/admob/android/ads/r;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v2, v2, Lcom/admob/android/ads/r;->b:Ljava/lang/String;

    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/admob/android/ads/q;->d:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/admob/android/ads/k;->d()F

    move-result v4

    float-to-double v4, v4

    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v7, Lcom/admob/android/ads/y;

    invoke-direct {v7, p1, v2, p0}, Lcom/admob/android/ads/y;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/admob/android/ads/q;)V

    const/4 v2, -0x1

    invoke-virtual {v7, v2}, Lcom/admob/android/ads/y;->setBackgroundColor(I)V

    invoke-virtual {v7, v10}, Lcom/admob/android/ads/y;->setId(I)V

    const/16 v2, 0x140

    invoke-static {v2, v4, v5}, Lcom/admob/android/ads/j;->a(ID)I

    move-result v2

    const/16 v8, 0x127

    invoke-static {v8, v4, v5}, Lcom/admob/android/ads/j;->a(ID)I

    move-result v4

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v7, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v1}, Lcom/admob/android/ads/y;->a(Ljava/lang/String;)V

    const-string v1, "http://mm.admob.com/static/android/canvas.html"

    invoke-virtual {v7, v1}, Lcom/admob/android/ads/y;->loadUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/admob/android/ads/q;->d:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/admob/android/ads/q;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v10}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/admob/android/ads/q;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v1, p0, Lcom/admob/android/ads/q;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/admob/android/ads/q;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, p0, Lcom/admob/android/ads/q;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/admob/android/ads/q;->d:Landroid/widget/PopupWindow;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v1, v9, v4, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object p0, v0

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x6

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x3f00

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0, v6, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/admob/android/ads/q;->c:Lcom/admob/android/ads/u;

    invoke-virtual {v1}, Lcom/admob/android/ads/u;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 286
    iget-object v1, p0, Lcom/admob/android/ads/q;->c:Lcom/admob/android/ads/u;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/admob/android/ads/u;->d:Ljava/lang/ref/WeakReference;

    .line 287
    iget-object v1, p0, Lcom/admob/android/ads/q;->c:Lcom/admob/android/ads/u;

    invoke-virtual {v1}, Lcom/admob/android/ads/u;->b()V

    goto :goto_0

    .line 289
    :cond_2
    invoke-direct {p0, p1}, Lcom/admob/android/ads/q;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-string v3, "AdMobSDK"

    .line 458
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 460
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 461
    invoke-virtual {p0, p1, v1}, Lcom/admob/android/ads/q;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :catch_0
    move-exception v1

    .line 464
    const-string v1, "AdMobSDK"

    const/4 v1, 0x6

    invoke-static {v3, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    const-string v1, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not form an intent from ad action response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 471
    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 475
    if-eqz p2, :cond_0

    .line 478
    const-string v0, "u"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 480
    invoke-direct {p0, p1, v0}, Lcom/admob/android/ads/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    const-string v0, "a"

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    const-string v1, "d"

    invoke-virtual {p2, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 487
    iget-object v2, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v2, v2, Lcom/admob/android/ads/r;->d:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 488
    invoke-direct {p0, v1}, Lcom/admob/android/ads/q;->a(Ljava/lang/String;)V

    .line 491
    :cond_2
    const-string v2, "f"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 493
    const-string v3, "b"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 494
    invoke-static {v3}, Lcom/admob/android/ads/q;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v3

    .line 495
    iget-object v4, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v4, v4, Lcom/admob/android/ads/r;->a:Lcom/admob/android/ads/j$a;

    if-eqz v4, :cond_5

    sget-object v4, Lcom/admob/android/ads/q$2;->a:[I

    iget-object v5, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v5, v5, Lcom/admob/android/ads/r;->a:Lcom/admob/android/ads/j$a;

    invoke-virtual {v5}, Lcom/admob/android/ads/j$a;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v2, :cond_3

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    move-object v0, v4

    .line 496
    :goto_1
    invoke-direct {p0, v0}, Lcom/admob/android/ads/q;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 495
    :pswitch_0
    invoke-direct {p0, p1, v1}, Lcom/admob/android/ads/q;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v5

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/admob/android/ads/u;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v3, "ac"

    .line 409
    if-nez p3, :cond_5

    .line 410
    iget-object v0, p0, Lcom/admob/android/ads/q;->c:Lcom/admob/android/ads/u;

    .line 412
    :goto_0
    iget-object v1, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    invoke-static {p1}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v0, v2}, Lcom/admob/android/ads/r;->a(Lorg/json/JSONObject;Lcom/admob/android/ads/u;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    const-string v1, "u"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/admob/android/ads/r;->d:Ljava/lang/String;

    .line 422
    const-string v0, "ua"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 423
    const-string v1, "ac"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 424
    const-string v2, "ac"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 427
    if-eqz v2, :cond_1

    .line 428
    invoke-virtual {p0, p1, v2}, Lcom/admob/android/ads/q;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 436
    :cond_0
    :goto_1
    return-void

    .line 429
    :cond_1
    if-eqz v1, :cond_2

    .line 430
    invoke-virtual {p0, p1, v1}, Lcom/admob/android/ads/q;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 431
    :cond_2
    if-eqz v0, :cond_4

    .line 432
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, v2}, Lcom/admob/android/ads/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 433
    :cond_4
    iget-object v0, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v0, v0, Lcom/admob/android/ads/r;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v0, v0, Lcom/admob/android/ads/r;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v0, v0, Lcom/admob/android/ads/r;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/admob/android/ads/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v0, p3

    goto :goto_0
.end method

.method public final a(Ljava/util/Hashtable;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    if-eqz v0, :cond_0

    .line 546
    iget-object v1, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iget-object v3, v1, Lcom/admob/android/ads/r;->k:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v3, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 548
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    if-eqz v0, :cond_1

    .line 552
    invoke-virtual {p0}, Lcom/admob/android/ads/q;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/admob/android/ads/q;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/q;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 554
    :cond_0
    if-eqz v0, :cond_1

    .line 555
    const-string v1, "o"

    iget-object v2, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    invoke-virtual {v2}, Lcom/admob/android/ads/r;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 559
    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v0, v0, Lcom/admob/android/ads/r;->a:Lcom/admob/android/ads/j$a;

    sget-object v1, Lcom/admob/android/ads/j$a;->c:Lcom/admob/android/ads/j$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v0, v0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v0, v0, Lcom/admob/android/ads/r;->h:Lcom/admob/android/ads/p;

    invoke-virtual {v0}, Lcom/admob/android/ads/p;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v0, v0, Lcom/admob/android/ads/r;->a:Lcom/admob/android/ads/j$a;

    sget-object v1, Lcom/admob/android/ads/j$a;->d:Lcom/admob/android/ads/j$a;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/admob/android/ads/q;->c:Lcom/admob/android/ads/u;

    iget-object v0, v0, Lcom/admob/android/ads/u;->a:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/q;->a(Ljava/util/Hashtable;)V

    .line 364
    invoke-virtual {p0}, Lcom/admob/android/ads/q;->b()V

    .line 366
    iget-object v0, p0, Lcom/admob/android/ads/q;->c:Lcom/admob/android/ads/u;

    iget-object v1, v0, Lcom/admob/android/ads/u;->d:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/admob/android/ads/u;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 367
    :goto_0
    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0, v0}, Lcom/admob/android/ads/q;->a(Landroid/content/Context;)V

    .line 370
    :cond_0
    return-void

    .line 366
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()V
    .locals 0

    .prologue
    .line 357
    return-void
.end method
