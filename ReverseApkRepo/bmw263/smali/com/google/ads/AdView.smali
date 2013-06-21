.class public Lcom/google/ads/AdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/a;


# instance fields
.field private a:Lcom/google/ads/aq;

.field private b:Lcom/google/ads/internal/o;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 91
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/AdView;->b(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/ads/internal/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string v1, "Could not initialize AdView"

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V

    .line 98
    const-string v1, "Could not initialize AdView"

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/app/Activity;[Lcom/google/ads/g;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 112
    new-instance v0, Lcom/google/ads/g;

    invoke-direct {v0, v1, v1}, Lcom/google/ads/g;-><init>(II)V

    invoke-direct {p0, p1, v0, p3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, p2}, Lcom/google/ads/AdView;->a([Lcom/google/ads/g;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    if-eqz p2, :cond_1

    const/4 v7, 0x0

    :try_start_0
    const-string v2, "adSize"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/AdView;->a(Ljava/lang/String;)[Lcom/google/ads/g;
    :try_end_0
    .catch Lcom/google/ads/internal/g; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_1
    array-length v2, v7

    if-nez v2, :cond_2

    :cond_0
    new-instance v2, Lcom/google/ads/internal/g;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Attribute \"adSize\" invalid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/ads/internal/g;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lcom/google/ads/internal/g; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    :goto_0
    const-string v3, "Could not initialize AdView"

    invoke-virtual {v2, v3}, Lcom/google/ads/internal/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_9

    array-length v4, v1

    if-lez v4, :cond_9

    aget-object v1, v1, v9

    :goto_1
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V

    const-string v1, "Could not initialize AdView"

    invoke-virtual {v2, v1}, Lcom/google/ads/internal/g;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/AdView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Could not initialize AdView"

    invoke-virtual {v2, v1}, Lcom/google/ads/internal/g;->b(Ljava/lang/String;)V

    .line 130
    :cond_1
    :goto_2
    return-void

    .line 129
    :cond_2
    :try_start_2
    const-string v1, "adUnitId"

    const-string v2, "http://schemas.android.com/apk/lib/com.google.ads"

    invoke-interface {p2, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v8

    :goto_3
    if-nez v1, :cond_4

    new-instance v1, Lcom/google/ads/internal/g;

    const-string v2, "Required XML attribute \"adUnitId\" missing"

    invoke-direct {v1, v2}, Lcom/google/ads/internal/g;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move v1, v9

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/google/ads/AdView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v3, "Ads by Google"

    const/4 v4, -0x1

    const/4 v1, 0x0

    aget-object v5, v7, v1

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/g;Landroid/util/AttributeSet;)V

    goto :goto_2

    :cond_5
    const-string v2, "adUnitId"

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/lang/String;

    move-result-object v2

    const-string v1, "http://schemas.android.com/apk/lib/com.google.ads"

    const-string v3, "loadAdOnCreate"

    const/4 v4, 0x0

    invoke-interface {p2, v1, v3, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-direct {p0, v1, v4, p2}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z

    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-direct {p0, v1, v4, p2}, Lcom/google/ads/AdView;->b(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z

    array-length v4, v7

    if-ne v4, v8, :cond_7

    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-direct {p0, v1, v4, v2}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V

    :goto_4
    if-eqz v3, :cond_1

    const-string v1, "testDevices"

    invoke-direct {p0, v1, p1, p2}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "TEST_EMULATOR"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "TEST_EMULATOR"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/google/ads/d;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v2, Lcom/google/ads/d;

    invoke-direct {v2}, Lcom/google/ads/d;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/ads/d;->b(Ljava/util/Set;)Lcom/google/ads/d;

    move-result-object v1

    const-string v2, "keywords"

    invoke-direct {p0, v2, p1, p2}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/d;->a(Ljava/util/Set;)Lcom/google/ads/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/ads/AdView;->a(Lcom/google/ads/d;)V

    goto/16 :goto_2

    :cond_7
    new-instance v4, Lcom/google/ads/g;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/ads/g;-><init>(II)V

    invoke-direct {p0, v1, v4, v2}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/google/ads/AdView;->a([Lcom/google/ads/g;)V

    goto :goto_4

    :cond_8
    new-instance v1, Lcom/google/ads/internal/g;

    const-string v2, "AdView was initialized with a Context that wasn\'t an Activity."

    invoke-direct {v1, v2}, Lcom/google/ads/internal/g;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/google/ads/internal/g; {:try_start_2 .. :try_end_2} :catch_0

    :cond_9
    sget-object v1, Lcom/google/ads/g;->b:Lcom/google/ads/g;

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/google/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 210
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    const-string v0, "http://schemas.android.com/apk/lib/com.google.ads"

    invoke-interface {p3, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 426
    if-eqz v1, :cond_2

    .line 427
    const-string v0, "@string/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    .line 428
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 430
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 433
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/AdView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":string/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v4, v0, v3, v2}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    :goto_0
    if-eqz p5, :cond_1

    if-nez v0, :cond_1

    .line 447
    new-instance v0, Lcom/google/ads/internal/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required XML attribute \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/internal/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    new-instance v2, Lcom/google/ads/internal/g;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find resource for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/google/ads/internal/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 441
    :cond_0
    new-instance v0, Lcom/google/ads/internal/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resource "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not a string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/internal/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/util/Set;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 456
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/AdView;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 457
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 458
    if-eqz v0, :cond_1

    .line 459
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 460
    array-length v2, v0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v3, v0, v4

    .line 461
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 462
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 463
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 468
    :cond_1
    return-object v1
.end method

.method private a(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x2

    .line 486
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 487
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 489
    invoke-static {p0, p3, p1, v1, p2}, Lcom/google/ads/aq;->a(Lcom/google/ads/a;Ljava/lang/String;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/google/ads/g;)Lcom/google/ads/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/aq;

    .line 492
    new-instance v0, Lcom/google/ads/internal/o;

    iget-object v2, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/aq;

    invoke-direct {v0, v2}, Lcom/google/ads/internal/o;-><init>(Lcom/google/ads/aq;)V

    iput-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/o;

    .line 495
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/ads/AdView;->setGravity(I)V

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/o;

    invoke-static {p1, v0}, Lcom/google/ads/internal/w;->a(Landroid/app/Activity;Lcom/google/ads/internal/o;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_0

    .line 500
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 503
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    .line 517
    :goto_0
    return-void

    .line 507
    :cond_0
    const/4 v0, -0x2

    const/4 v2, -0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    const-string v2, "Gestures disabled: Not supported on this version of Android."

    invoke-static {v2, v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 513
    invoke-virtual {p0, v1, v4, v4}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/g;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x11

    .line 165
    if-nez p4, :cond_0

    .line 166
    sget-object p4, Lcom/google/ads/g;->b:Lcom/google/ads/g;

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/google/ads/g;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/g;

    move-result-object v3

    .line 171
    invoke-virtual {p0}, Lcom/google/ads/AdView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 173
    if-nez p5, :cond_2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 175
    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 176
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 181
    if-nez p5, :cond_3

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 183
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 186
    if-nez p5, :cond_4

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 188
    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 189
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 192
    invoke-virtual {v3}, Lcom/google/ads/g;->a()I

    move-result v4

    invoke-static {p1, v4}, Lcom/google/ads/AdView;->a(Landroid/content/Context;I)I

    move-result v4

    .line 193
    invoke-virtual {v3}, Lcom/google/ads/g;->b()I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/ads/AdView;->a(Landroid/content/Context;I)I

    move-result v3

    .line 196
    add-int/lit8 v5, v4, -0x2

    add-int/lit8 v6, v3, -0x2

    invoke-virtual {v1, v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 197
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    invoke-virtual {p0, v2, v4, v3}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    .line 200
    :cond_1
    return-void

    .line 173
    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 181
    :cond_3
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 186
    :cond_4
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    invoke-static {p2}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    .line 300
    const/high16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;ILcom/google/ads/g;Landroid/util/AttributeSet;)V

    .line 301
    return-void
.end method

.method private varargs a([Lcom/google/ads/g;)V
    .locals 4
    .parameter

    .prologue
    .line 611
    array-length v0, p1

    new-array v1, v0, [Lcom/google/ads/g;

    .line 612
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 613
    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/google/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/ads/g;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/g;

    move-result-object v2

    aput-object v2, v1, v0

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->j:Lcom/google/ads/util/ac;

    invoke-virtual {v0, v1}, Lcom/google/ads/util/ac;->a(Ljava/lang/Object;)V

    .line 616
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    const-string v0, "You must have AdActivity declared in AndroidManifest.xml with configChanges."

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V

    .line 235
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[Lcom/google/ads/g;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 309
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 310
    array-length v0, v4

    new-array v2, v0, [Lcom/google/ads/g;

    .line 311
    const/4 v0, 0x0

    :goto_0
    array-length v3, v4

    if-ge v0, v3, :cond_7

    .line 312
    aget-object v3, v4, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 313
    const-string v5, "BANNER"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v3, Lcom/google/ads/g;->b:Lcom/google/ads/g;

    .line 322
    :goto_1
    if-nez v3, :cond_6

    move-object v0, v1

    .line 329
    :goto_2
    return-object v0

    .line 313
    :cond_0
    const-string v5, "SMART_BANNER"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v3, Lcom/google/ads/g;->a:Lcom/google/ads/g;

    goto :goto_1

    :cond_1
    const-string v5, "IAB_MRECT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v3, Lcom/google/ads/g;->c:Lcom/google/ads/g;

    goto :goto_1

    :cond_2
    const-string v5, "IAB_BANNER"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v3, Lcom/google/ads/g;->d:Lcom/google/ads/g;

    goto :goto_1

    :cond_3
    const-string v5, "IAB_LEADERBOARD"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v3, Lcom/google/ads/g;->e:Lcom/google/ads/g;

    goto :goto_1

    :cond_4
    const-string v5, "IAB_WIDE_SKYSCRAPER"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/google/ads/g;->f:Lcom/google/ads/g;

    goto :goto_1

    :cond_5
    move-object v3, v1

    goto :goto_1

    .line 326
    :cond_6
    aput-object v3, v2, v0

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    move-object v0, v2

    .line 329
    goto :goto_2
.end method

.method private b(Landroid/content/Context;Lcom/google/ads/g;Landroid/util/AttributeSet;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    const-string v0, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml."

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/g;Landroid/util/AttributeSet;)V

    .line 264
    const/4 v0, 0x0

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->b()V

    .line 278
    return-void
.end method

.method public final a(Lcom/google/ads/d;)V
    .locals 1
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/o;

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/o;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->e()V

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/o;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/o;->a(Lcom/google/ads/d;)V

    .line 567
    :cond_1
    return-void

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->p()Z

    move-result v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/o;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/google/ads/AdView;->b:Lcom/google/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->w()V

    .line 630
    :cond_0
    return-void
.end method

.method public setAdListener(Lcom/google/ads/c;)V
    .locals 1
    .parameter

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->k:Lcom/google/ads/util/ac;

    invoke-virtual {v0, p1}, Lcom/google/ads/util/ac;->a(Ljava/lang/Object;)V

    .line 579
    return-void
.end method

.method protected setAppEventListener(Lcom/google/ads/h;)V
    .locals 1
    .parameter

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->l:Lcom/google/ads/util/ac;

    invoke-virtual {v0, p1}, Lcom/google/ads/util/ac;->a(Ljava/lang/Object;)V

    .line 588
    return-void
.end method

.method protected varargs setSupportedAdSizes([Lcom/google/ads/g;)V
    .locals 1
    .parameter

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->j:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 597
    const-string v0, "Error: Tried to set supported ad sizes on a single-size AdView."

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    .line 602
    :goto_0
    return-void

    .line 601
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/ads/AdView;->a([Lcom/google/ads/g;)V

    goto :goto_0
.end method
