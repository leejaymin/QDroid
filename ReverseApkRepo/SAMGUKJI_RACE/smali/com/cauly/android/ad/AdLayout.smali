.class public Lcom/cauly/android/ad/AdLayout;
.super Landroid/widget/RelativeLayout;
.source "AdLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final CAULY_RIGHT_ID:I = 0x4

.field private static final Click_Area:I = 0x5

.field private static final Click_Area2:I = 0x6

.field private static final ICON:I = 0x3

.field private static final IMAGE_ID:I = 0x1

.field private static final TEXT_ID:I = 0x3

.field private static final TITLE_ID:I = 0x2


# instance fields
.field private ClickLayout:Landroid/widget/RelativeLayout;

.field private adCaulyView:Landroid/widget/ImageView;

.field private adCommon:Lcom/cauly/android/ad/AdCommon;

.field private adData:Lcom/cauly/android/ad/AdData;

.field private adIconView:Landroid/widget/ImageView;

.field private adImageView:Landroid/widget/ImageView;

.field private adTextView:Landroid/widget/TextView;

.field private adTitleView:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private padding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/cauly/android/ad/AdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cauly/android/ad/AdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-object v0, p0, Lcom/cauly/android/ad/AdLayout;->adTitleView:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/cauly/android/ad/AdLayout;->adTextView:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/cauly/android/ad/AdLayout;->adCaulyView:Landroid/widget/ImageView;

    .line 44
    iput-object v0, p0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    .line 45
    iput-object v0, p0, Lcom/cauly/android/ad/AdLayout;->adIconView:Landroid/widget/ImageView;

    .line 46
    iput-object v0, p0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    .line 60
    iput-object p1, p0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/cauly/android/ad/AdLayout;)Lcom/cauly/android/ad/AdData;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cauly/android/ad/AdLayout;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cauly/android/ad/AdLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/cauly/android/ad/AdLayout;->clickedAD()V

    return-void
.end method

.method static synthetic access$3(Lcom/cauly/android/ad/AdLayout;)Lcom/cauly/android/ad/AdCommon;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cauly/android/ad/AdLayout;->adCommon:Lcom/cauly/android/ad/AdCommon;

    return-object v0
.end method

.method private clickedAD()V
    .locals 1

    .prologue
    .line 656
    new-instance v0, Lcom/cauly/android/ad/AdLayout$5;

    invoke-direct {v0, p0}, Lcom/cauly/android/ad/AdLayout$5;-><init>(Lcom/cauly/android/ad/AdLayout;)V

    .line 666
    invoke-virtual {v0}, Lcom/cauly/android/ad/AdLayout$5;->start()V

    .line 668
    return-void
.end method


# virtual methods
.method public GetActivityStateCheck(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 672
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 673
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 674
    .local v1, runningtaskinfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/high16 v12, 0x1000

    const/4 v11, 0x0

    .line 400
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_1

    .line 402
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getPay_type()Ljava/lang/String;

    move-result-object v8

    const-string v9, "cpc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 651
    :cond_0
    :goto_0
    return v11

    .line 406
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v10, :cond_0

    .line 408
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getPay_type()Ljava/lang/String;

    move-result-object v8

    const-string v9, "cpc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getPay_type()Ljava/lang/String;

    move-result-object v8

    const-string v9, "banner"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 409
    :cond_2
    const-string v7, ""

    .line 411
    .local v7, url:Ljava/lang/String;
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getAdsId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 413
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getAdType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "site"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 414
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getLink()Ljava/lang/String;

    move-result-object v5

    .line 416
    .local v5, site:Ljava/lang/String;
    const-string v8, "http://"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 418
    const-string v8, "http://"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 419
    const-string v8, "http://%s"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v5, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 430
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 431
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 434
    :try_start_0
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 436
    invoke-direct {p0}, Lcom/cauly/android/ad/AdLayout;->clickedAD()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v2

    .line 438
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "Cauly Ads"

    const-string v9, "click Site AD CPC"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 421
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:Landroid/content/Intent;
    :cond_3
    const-string v8, "https://"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 423
    const-string v8, "https://"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 424
    const-string v8, "https://%s"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v5, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 428
    :cond_4
    const-string v8, "http://%s"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v5, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 441
    .end local v5           #site:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getAdType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "app"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 442
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getMarket()Ljava/lang/String;

    move-result-object v8

    const-string v9, "2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 444
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "market://details?id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v9}, Lcom/cauly/android/ad/AdData;->getLink()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 445
    .local v4, market:Ljava/lang/String;
    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 446
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 447
    .restart local v3       #i:Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    :try_start_1
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 450
    :catch_1
    move-exception v2

    .line 451
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "Cauly Ads"

    const-string v9, "click App AD CPC"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 454
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:Landroid/content/Intent;
    .end local v4           #market:Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getMarket()Ljava/lang/String;

    move-result-object v8

    const-string v9, "4"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 456
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getLink()Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, tstore:Ljava/lang/String;
    const-string v8, "tstore://"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "http://"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 459
    :cond_7
    move-object v7, v6

    .line 465
    :goto_2
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 466
    .restart local v3       #i:Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 468
    :try_start_2
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 470
    invoke-direct {p0}, Lcom/cauly/android/ad/AdLayout;->clickedAD()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 471
    :catch_2
    move-exception v2

    .line 472
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "Cauly Ads"

    const-string v9, "click Default AD CPC"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 463
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:Landroid/content/Intent;
    :cond_8
    const-string v8, "tstore://PRODUCT_VIEW/%s/0"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v6, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 475
    .end local v6           #tstore:Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getMarket()Ljava/lang/String;

    move-result-object v8

    const-string v9, "8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 478
    const-string v8, "http://%s"

    new-array v9, v10, [Ljava/lang/Object;

    const-string v10, "www.cauly.net"

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 479
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 480
    .restart local v3       #i:Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 483
    :try_start_3
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 485
    invoke-direct {p0}, Lcom/cauly/android/ad/AdLayout;->clickedAD()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 486
    :catch_3
    move-exception v2

    .line 487
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "Cauly Ads"

    const-string v9, "click Default AD CPC"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 490
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:Landroid/content/Intent;
    :cond_a
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getMarket()Ljava/lang/String;

    move-result-object v8

    const-string v9, "16"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 493
    const-string v8, "http://%s"

    new-array v9, v10, [Ljava/lang/Object;

    const-string v10, "www.cauly.net"

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 494
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 495
    .restart local v3       #i:Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 498
    :try_start_4
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 500
    invoke-direct {p0}, Lcom/cauly/android/ad/AdLayout;->clickedAD()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 501
    :catch_4
    move-exception v2

    .line 502
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "Cauly Ads"

    const-string v9, "click Default AD CPC"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 505
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:Landroid/content/Intent;
    :cond_b
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getAdType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "map"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 506
    const-string v8, "geo:%s"

    new-array v9, v10, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v10}, Lcom/cauly/android/ad/AdData;->getLink()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 507
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 508
    .restart local v3       #i:Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 510
    :try_start_5
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 512
    invoke-direct {p0}, Lcom/cauly/android/ad/AdLayout;->clickedAD()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 513
    :catch_5
    move-exception v2

    .line 514
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "Cauly Ads"

    const-string v9, "click MAP AD CPC"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 516
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:Landroid/content/Intent;
    :cond_c
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getAdType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "call"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 517
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adCommon:Lcom/cauly/android/ad/AdCommon;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdCommon;->getAllowcall()Ljava/lang/String;

    move-result-object v8

    const-string v9, "yes"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 518
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 519
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v9}, Lcom/cauly/android/ad/AdData;->getLink()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\ubc88\uc73c\ub85c \uc804\ud654\ub97c \uac81\ub2c8\ub2e4.\n\uac70\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 520
    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 521
    const-string v9, "YES"

    new-instance v10, Lcom/cauly/android/ad/AdLayout$1;

    invoke-direct {v10, p0}, Lcom/cauly/android/ad/AdLayout$1;-><init>(Lcom/cauly/android/ad/AdLayout;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 543
    const-string v9, "NO"

    new-instance v10, Lcom/cauly/android/ad/AdLayout$2;

    invoke-direct {v10, p0}, Lcom/cauly/android/ad/AdLayout$2;-><init>(Lcom/cauly/android/ad/AdLayout;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 551
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 552
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 554
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #dialog:Landroid/app/AlertDialog$Builder;
    :cond_d
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getAdType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "freecall"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 555
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adCommon:Lcom/cauly/android/ad/AdCommon;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdCommon;->getAllowcall()Ljava/lang/String;

    move-result-object v8

    const-string v9, "yes"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 556
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 557
    .restart local v1       #dialog:Landroid/app/AlertDialog$Builder;
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v9}, Lcom/cauly/android/ad/AdData;->getLink()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\ubc88\uc73c\ub85c \uc804\ud654\ub97c \uac81\ub2c8\ub2e4.\n\uac70\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 558
    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 559
    const-string v9, "YES"

    new-instance v10, Lcom/cauly/android/ad/AdLayout$3;

    invoke-direct {v10, p0}, Lcom/cauly/android/ad/AdLayout$3;-><init>(Lcom/cauly/android/ad/AdLayout;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 581
    const-string v9, "NO"

    new-instance v10, Lcom/cauly/android/ad/AdLayout$4;

    invoke-direct {v10, p0}, Lcom/cauly/android/ad/AdLayout$4;-><init>(Lcom/cauly/android/ad/AdLayout;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 589
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 590
    .restart local v0       #alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 592
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #dialog:Landroid/app/AlertDialog$Builder;
    :cond_e
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getAdType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "skt"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 593
    new-instance v3, Landroid/content/Intent;

    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.skt.skaf.A000Z00040"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 594
    .restart local v3       #i:Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 597
    :try_start_6
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 599
    invoke-direct {p0}, Lcom/cauly/android/ad/AdLayout;->clickedAD()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 601
    :catch_6
    move-exception v2

    .line 602
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "Cauly Ads"

    const-string v9, "click AD CPC"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 605
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:Landroid/content/Intent;
    :cond_f
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getLink()Ljava/lang/String;

    move-result-object v7

    .line 606
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 607
    .restart local v3       #i:Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 609
    :try_start_7
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 611
    invoke-direct {p0}, Lcom/cauly/android/ad/AdLayout;->clickedAD()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 612
    :catch_7
    move-exception v2

    .line 613
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "Cauly Ads"

    const-string v9, "click Default AD CPC"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 619
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:Landroid/content/Intent;
    :cond_10
    const-string v8, "http://%s"

    new-array v9, v10, [Ljava/lang/Object;

    const-string v10, "www.cauly.net"

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 620
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 621
    .restart local v3       #i:Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 624
    :try_start_8
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 626
    invoke-direct {p0}, Lcom/cauly/android/ad/AdLayout;->clickedAD()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    .line 627
    :catch_8
    move-exception v2

    .line 628
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "Cauly Ads"

    const-string v9, "click Default AD CPC"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 634
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:Landroid/content/Intent;
    .end local v7           #url:Ljava/lang/String;
    :cond_11
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdData;->getAdsId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 636
    invoke-direct {p0}, Lcom/cauly/android/ad/AdLayout;->clickedAD()V

    .line 638
    :cond_12
    invoke-virtual {p0}, Lcom/cauly/android/ad/AdLayout;->removeAllViews()V

    .line 639
    invoke-super {p0, v11}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 640
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 641
    .restart local v3       #i:Landroid/content/Intent;
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/cauly/android/ad/AdLayout;->adCommon:Lcom/cauly/android/ad/AdCommon;

    iget-object v9, v9, Lcom/cauly/android/ad/AdCommon;->action:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 645
    :try_start_9
    iget-object v8, p0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_0

    .line 646
    :catch_9
    move-exception v2

    .line 647
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "Cauly Ads"

    const-string v9, "click AD CPM"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public setAdData(Lcom/cauly/android/ad/AdData;Lcom/cauly/android/ad/AdCommon;I)V
    .locals 42
    .parameter "adData"
    .parameter "adCommon"
    .parameter "size"

    .prologue
    .line 65
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cauly/android/ad/AdLayout;->adData:Lcom/cauly/android/ad/AdData;

    .line 66
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cauly/android/ad/AdLayout;->adCommon:Lcom/cauly/android/ad/AdCommon;

    .line 68
    if-eqz p1, :cond_4

    .line 69
    const/16 v37, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/AdLayout;->setFocusable(Z)V

    .line 70
    const/16 v37, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/AdLayout;->setClickable(Z)V

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 73
    .local v6, adImage:Landroid/graphics/Bitmap;
    const/16 v37, 0x5

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cauly/android/ad/AdLayout;->padding:I

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getPay_type()Ljava/lang/String;

    move-result-object v37

    const-string v38, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getPay_type()Ljava/lang/String;

    move-result-object v37

    if-nez v37, :cond_1

    .line 77
    :cond_0
    const-string v37, "cpc"

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/AdData;->setPay_type(Ljava/lang/String;)V

    .line 80
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getPay_type()Ljava/lang/String;

    move-result-object v37

    const-string v38, "cpc"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_d

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getAdsId()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_4

    .line 83
    if-eqz v6, :cond_5

    .line 84
    add-int/lit8 v26, p3, -0xa

    .line 85
    .local v26, imageSize:I
    new-instance v37, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setId(I)V

    .line 88
    const/16 v37, 0x1

    move/from16 v0, v26

    move/from16 v1, v26

    move/from16 v2, v37

    invoke-static {v6, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 89
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-static {v6, v0}, Lcom/cauly/android/ad/ImageHelper;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    new-instance v27, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v27, imageViewparams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cauly/android/ad/AdLayout;->padding:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cauly/android/ad/AdLayout;->padding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cauly/android/ad/AdLayout;->padding:I

    move/from16 v40, v0

    move-object/from16 v0, v27

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 95
    const/16 v37, 0x9

    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 96
    const/16 v37, 0xf

    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/AdLayout;->addView(Landroid/view/View;)V

    .line 136
    .end local v26           #imageSize:I
    :goto_0
    const-string v36, ""

    .line 138
    .local v36, title:Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getTitle()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0xe

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_6

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getTitle()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0xe

    invoke-virtual/range {v37 .. v39}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    .line 161
    :goto_1
    new-instance v37, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cauly/android/ad/AdLayout;->adTitleView:Landroid/widget/TextView;

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adTitleView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/16 v38, 0x2

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setId(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adTitleView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adTitleView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adTitleView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/16 v38, -0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adTitleView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/high16 v38, 0x4150

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setTextSize(F)V

    .line 168
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 169
    const/16 v37, -0x2

    .line 170
    const/16 v38, -0x2

    .line 168
    move/from16 v0, v37

    move/from16 v1, v38

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v8, adTitleViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v37, 0x1

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 172
    const/16 v37, 0x7

    const/16 v38, 0x8

    const/16 v39, 0x0

    const/16 v40, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 173
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adTitleView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adTitleView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/AdLayout;->addView(Landroid/view/View;)V

    .line 178
    new-instance v37, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cauly/android/ad/AdLayout;->adTextView:Landroid/widget/TextView;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/16 v38, 0x3

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setId(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 182
    const-string v11, ""

    .line 184
    .local v11, contents:Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getText()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0x11

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_9

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getText()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0x11

    invoke-virtual/range {v37 .. v39}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 207
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/16 v38, -0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    const/high16 v38, 0x4130

    invoke-virtual/range {v37 .. v38}, Landroid/widget/TextView;->setTextSize(F)V

    .line 211
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 212
    const/16 v37, -0x2

    .line 213
    const/16 v38, -0x2

    .line 211
    move/from16 v0, v37

    move/from16 v1, v38

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 214
    .local v7, adTextViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v37, 0x6

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0xc

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 216
    const/16 v37, 0x1

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 217
    const/16 v37, 0xc

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adTextView:Landroid/widget/TextView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/AdLayout;->addView(Landroid/view/View;)V

    .line 222
    const/16 v32, 0x0

    .line 223
    .local v32, offset:I
    if-eqz v6, :cond_2

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getBackgroundColor()Ljava/lang/String;

    move-result-object v10

    .line 225
    .local v10, color:Ljava/lang/String;
    const-string v37, "a_"

    const-string v38, "b_"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 226
    new-instance v37, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cauly/android/ad/AdLayout;->adCaulyView:Landroid/widget/ImageView;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adCaulyView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x4

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setId(I)V

    .line 229
    const/16 v17, 0x28

    .line 230
    .local v17, d_width:I
    const-wide/high16 v12, 0x4058

    .line 231
    .local v12, d_height:D
    const/16 v31, 0x0

    .line 233
    .local v31, new_width:I
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v37, v0

    div-double v33, v37, v12

    .line 234
    .local v33, rate:D
    :try_start_0
    const-string v37, "%.0f"

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v40, v0

    mul-double v40, v40, v33

    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v31

    .line 240
    :goto_3
    move/from16 v32, v31

    .line 241
    const/16 v35, 0x0

    .line 243
    .local v35, right_cauly:Landroid/graphics/Bitmap;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v35

    .line 247
    :goto_4
    const/16 v37, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v31

    move/from16 v2, p3

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v35

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adCaulyView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 250
    new-instance v27, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v27           #imageViewparams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 251
    .restart local v27       #imageViewparams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 252
    const/16 v37, 0xb

    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 253
    const/16 v37, 0xf

    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adCaulyView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adCaulyView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/AdLayout;->addView(Landroid/view/View;)V

    .line 259
    .end local v10           #color:Ljava/lang/String;
    .end local v12           #d_height:D
    .end local v17           #d_width:I
    .end local v31           #new_width:I
    .end local v33           #rate:D
    .end local v35           #right_cauly:Landroid/graphics/Bitmap;
    :cond_2
    new-instance v37, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cauly/android/ad/AdLayout;->adIconView:Landroid/widget/ImageView;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adIconView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x3

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setId(I)V

    .line 262
    const/16 v16, 0x4c

    .line 263
    .local v16, d_icon_width:I
    const-wide/high16 v14, 0x4058

    .line 264
    .local v14, d_icon_height:D
    const/16 v30, 0x0

    .line 267
    .local v30, new_icon_width:I
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v37, v0

    div-double v24, v37, v14

    .line 268
    .local v24, icon_rate:D
    :try_start_2
    const-string v37, "%.0f"

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v40, v0

    mul-double v40, v40, v24

    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result v30

    .line 275
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getAdType()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/cauly/android/ad/AdCommon;->Change_Icon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 277
    .local v23, icon_image:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getAdType()Ljava/lang/String;

    move-result-object v37

    const-string v38, "app"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getMarket()Ljava/lang/String;

    move-result-object v37

    const-string v38, "4"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_3

    .line 279
    const-string v37, "skt"

    invoke-static/range {v37 .. v37}, Lcom/cauly/android/ad/AdCommon;->Change_Icon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 281
    :cond_3
    const/16 v22, 0x0

    .line 283
    .local v22, icon_cauly:Landroid/graphics/Bitmap;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v22

    .line 288
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getBackgroundColor()Ljava/lang/String;

    move-result-object v19

    .line 289
    .local v19, gradient_color:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getEventUrl()Ljava/lang/String;

    move-result-object v37

    if-nez v37, :cond_c

    .line 291
    const-string v37, "a_"

    const-string v38, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 292
    const-string v37, ".png"

    const-string v38, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 298
    :goto_7
    invoke-static/range {v19 .. v19}, Lcom/cauly/android/ad/AdCommon;->Change_Icon_Background(Ljava/lang/String;)[I

    move-result-object v21

    .line 299
    .local v21, icon_back:[I
    new-instance v37, Landroid/graphics/drawable/GradientDrawable;

    sget-object v38, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cauly/android/ad/AdLayout;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 302
    const/16 v37, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, p3

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adIconView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adIconView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 306
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 307
    .local v20, iconViewparams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v32

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 308
    const/16 v37, 0xb

    move-object/from16 v0, v20

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 309
    const/16 v37, 0xf

    move-object/from16 v0, v20

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adIconView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adIconView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/AdLayout;->addView(Landroid/view/View;)V

    .line 314
    new-instance v37, Lcom/cauly/android/ad/AdLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Lcom/cauly/android/ad/AdLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v37, v0

    const/16 v38, 0x5

    invoke-virtual/range {v37 .. v38}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 317
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v37, -0x1

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 318
    .local v5, Clickparams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v37, 0xa

    const/16 v38, 0xf

    const/16 v39, 0x14

    const/16 v40, 0xf

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/AdLayout;->addView(Landroid/view/View;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 396
    .end local v5           #Clickparams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #adImage:Landroid/graphics/Bitmap;
    .end local v7           #adTextViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8           #adTitleViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11           #contents:Ljava/lang/String;
    .end local v14           #d_icon_height:D
    .end local v16           #d_icon_width:I
    .end local v19           #gradient_color:Ljava/lang/String;
    .end local v20           #iconViewparams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v21           #icon_back:[I
    .end local v22           #icon_cauly:Landroid/graphics/Bitmap;
    .end local v23           #icon_image:Ljava/lang/String;
    .end local v24           #icon_rate:D
    .end local v27           #imageViewparams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v30           #new_icon_width:I
    .end local v32           #offset:I
    .end local v36           #title:Ljava/lang/String;
    :cond_4
    :goto_8
    return-void

    .line 103
    .restart local v6       #adImage:Landroid/graphics/Bitmap;
    :cond_5
    new-instance v37, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setId(I)V

    .line 106
    const/16 v17, 0x28

    .line 107
    .restart local v17       #d_width:I
    const-wide/high16 v12, 0x4058

    .line 108
    .restart local v12       #d_height:D
    const/16 v31, 0x0

    .line 110
    .restart local v31       #new_width:I
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v37, v0

    div-double v33, v37, v12

    .line 111
    .restart local v33       #rate:D
    :try_start_4
    const-string v37, "%.0f"

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v40, v0

    mul-double v40, v40, v33

    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v31

    .line 118
    :goto_9
    const/16 v29, 0x0

    .line 120
    .local v29, left_cauly:Landroid/graphics/Bitmap;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v37

    const-string v38, "b_left.png"

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v29

    .line 125
    :goto_a
    const/16 v37, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, p3

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    new-instance v27, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 129
    .restart local v27       #imageViewparams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 130
    const/16 v37, 0x9

    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    const/16 v37, 0xf

    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/AdLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 112
    .end local v27           #imageViewparams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v29           #left_cauly:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v18

    .line 114
    .local v18, e:Ljava/lang/Exception;
    const-string v37, "new_width"

    const-string v38, "Default value"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/16 v31, 0x14

    goto/16 :goto_9

    .line 121
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v29       #left_cauly:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v18

    .line 122
    .local v18, e:Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 146
    .end local v12           #d_height:D
    .end local v17           #d_width:I
    .end local v18           #e:Ljava/io/IOException;
    .end local v29           #left_cauly:Landroid/graphics/Bitmap;
    .end local v31           #new_width:I
    .end local v33           #rate:D
    .restart local v27       #imageViewparams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v36       #title:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getTitle()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_1

    .line 151
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getTitle()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0x12

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_8

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getTitle()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0x12

    invoke-virtual/range {v37 .. v39}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_1

    .line 157
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getTitle()Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_1

    .line 192
    .restart local v8       #adTitleViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v11       #contents:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getText()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 197
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getText()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    const/16 v38, 0x15

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_b

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getText()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0x15

    invoke-virtual/range {v37 .. v39}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 203
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getText()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 235
    .restart local v7       #adTextViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v10       #color:Ljava/lang/String;
    .restart local v12       #d_height:D
    .restart local v17       #d_width:I
    .restart local v31       #new_width:I
    .restart local v32       #offset:I
    .restart local v33       #rate:D
    :catch_2
    move-exception v18

    .line 237
    .local v18, e:Ljava/lang/Exception;
    const-string v37, "new_width"

    const-string v38, "Default value"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/16 v31, 0x14

    goto/16 :goto_3

    .line 244
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v35       #right_cauly:Landroid/graphics/Bitmap;
    :catch_3
    move-exception v18

    .line 245
    .local v18, e:Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 269
    .end local v10           #color:Ljava/lang/String;
    .end local v12           #d_height:D
    .end local v17           #d_width:I
    .end local v18           #e:Ljava/io/IOException;
    .end local v31           #new_width:I
    .end local v33           #rate:D
    .end local v35           #right_cauly:Landroid/graphics/Bitmap;
    .restart local v14       #d_icon_height:D
    .restart local v16       #d_icon_width:I
    .restart local v24       #icon_rate:D
    .restart local v30       #new_icon_width:I
    :catch_4
    move-exception v18

    .line 271
    .local v18, e:Ljava/lang/Exception;
    const-string v37, "new_icon_width"

    const-string v38, "Default value"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/16 v30, 0x26

    goto/16 :goto_5

    .line 284
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v22       #icon_cauly:Landroid/graphics/Bitmap;
    .restart local v23       #icon_image:Ljava/lang/String;
    :catch_5
    move-exception v18

    .line 285
    .local v18, e:Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 296
    .end local v18           #e:Ljava/io/IOException;
    .restart local v19       #gradient_color:Ljava/lang/String;
    :cond_c
    const-string v19, "event"

    goto/16 :goto_7

    .line 327
    .end local v7           #adTextViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8           #adTitleViewParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11           #contents:Ljava/lang/String;
    .end local v14           #d_icon_height:D
    .end local v16           #d_icon_width:I
    .end local v19           #gradient_color:Ljava/lang/String;
    .end local v22           #icon_cauly:Landroid/graphics/Bitmap;
    .end local v23           #icon_image:Ljava/lang/String;
    .end local v24           #icon_rate:D
    .end local v27           #imageViewparams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v30           #new_icon_width:I
    .end local v32           #offset:I
    .end local v36           #title:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getPay_type()Ljava/lang/String;

    move-result-object v37

    const-string v38, "banner"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_e

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/cauly/android/ad/AdData;->getAdsId()Ljava/lang/String;

    move-result-object v37

    if-eqz v37, :cond_4

    .line 330
    if-eqz v6, :cond_4

    .line 332
    add-int/lit8 v26, p3, 0x14

    .line 333
    .restart local v26       #imageSize:I
    new-instance v37, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setId(I)V

    .line 336
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 337
    .local v9, background:Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    new-instance v27, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v37, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v37

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 340
    .restart local v27       #imageViewparams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 341
    const/16 v37, 0x9

    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 342
    const/16 v37, 0xf

    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/AdLayout;->addView(Landroid/view/View;)V

    .line 347
    new-instance v37, Lcom/cauly/android/ad/AdLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Lcom/cauly/android/ad/AdLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v37, v0

    const/16 v38, 0x6

    invoke-virtual/range {v37 .. v38}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 350
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v37, -0x1

    const/16 v38, -0x1

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 351
    .restart local v5       #Clickparams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v37, 0xa

    const/16 v38, 0xf

    const/16 v39, 0x14

    const/16 v40, 0xf

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/AdLayout;->addView(Landroid/view/View;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->ClickLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_8

    .line 362
    .end local v5           #Clickparams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #background:Landroid/graphics/drawable/BitmapDrawable;
    .end local v26           #imageSize:I
    .end local v27           #imageViewparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/AdLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 363
    if-eqz v6, :cond_f

    .line 364
    new-instance v37, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setId(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 368
    new-instance v27, Landroid/widget/RelativeLayout$LayoutParams;

    .line 369
    const/16 v37, -0x1

    .line 370
    const/16 v38, -0x1

    .line 368
    move-object/from16 v0, v27

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 371
    .restart local v27       #imageViewparams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    sget-object v38, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/AdLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_8

    .line 377
    .end local v27           #imageViewparams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_f
    new-instance v37, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setId(I)V

    .line 379
    const/16 v28, 0x0

    .line 381
    .local v28, layout_cpm:Landroid/graphics/Bitmap;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->context:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v37

    const-string v38, "cauly_default.jpg"

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v28

    .line 385
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 386
    new-instance v27, Landroid/widget/RelativeLayout$LayoutParams;

    .line 387
    const/16 v37, -0x1

    .line 388
    const/16 v38, -0x1

    .line 386
    move-object/from16 v0, v27

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 389
    .restart local v27       #imageViewparams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    sget-object v38, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v37 .. v38}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cauly/android/ad/AdLayout;->adImageView:Landroid/widget/ImageView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/cauly/android/ad/AdLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_8

    .line 382
    .end local v27           #imageViewparams:Landroid/widget/RelativeLayout$LayoutParams;
    :catch_6
    move-exception v18

    .line 383
    .restart local v18       #e:Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b
.end method
