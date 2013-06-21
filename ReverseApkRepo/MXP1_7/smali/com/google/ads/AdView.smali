.class public Lcom/google/ads/AdView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lf;


# instance fields
.field private 癤욱븳援:Lbw;

.field private 궗:Lbg;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ll;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/AdView;->癤욱븳援(Landroid/content/Context;Ll;Landroid/util/AttributeSet;)Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/AdView;->궗(Landroid/content/Context;Ll;Landroid/util/AttributeSet;)Z

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/AdView;->癤욱븳援(Landroid/app/Activity;Ll;Ljava/lang/String;)V
    :try_end_0
    .catch Lay; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not initialize AdView"

    invoke-virtual {v0, v1}, Lay;->먯꽌(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/google/ads/AdView;->癤욱븳援(Landroid/content/Context;Ljava/lang/String;Ll;Landroid/util/AttributeSet;)V

    const-string v1, "Could not initialize AdView"

    invoke-virtual {v0, v1}, Lay;->癤욱븳援(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/google/ads/AdView;->癤욱븳援(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private 癤욱븳援(Landroid/content/Context;I)I
    .locals 3

    const/4 v0, 0x1

    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private 癤욱븳援(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const-string v0, "http://schemas.android.com/apk/lib/com.google.ads"

    invoke-interface {p3, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "@string/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    const-string v0, "@string/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

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

    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p5, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Lay;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required XML attribute \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" missing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lay;-><init>(Ljava/lang/String;Z)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v2, Lay;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find resource for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v6, v0}, Lay;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v0, Lay;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not a string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lay;-><init>(Ljava/lang/String;Z)V

    throw v0

    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private 癤욱븳援(Landroid/app/Activity;Ll;Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, -0x2

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-static {p0, p3, p1, v1, p2}, Lbw;->癤욱븳援(Lf;Ljava/lang/String;Landroid/app/Activity;Landroid/view/ViewGroup;Ll;)Lbw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/AdView;->癤욱븳援:Lbw;

    new-instance v0, Lbg;

    iget-object v2, p0, Lcom/google/ads/AdView;->癤욱븳援:Lbw;

    invoke-direct {v0, v2, v3}, Lbg;-><init>(Lbw;Z)V

    iput-object v0, p0, Lcom/google/ads/AdView;->궗:Lbg;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/ads/AdView;->setGravity(I)V

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/AdView;->궗:Lbg;

    invoke-static {p1, v0}, Lbo;->癤욱븳援(Landroid/app/Activity;Lbg;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x2

    const/4 v2, -0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Gestures disabled: Not supported on this version of Android."

    invoke-static {v2, v0}, Lcv;->癤욱븳援(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v4, v4}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private 癤욱븳援(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    :try_start_0
    const-string v2, "adSize"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/AdView;->癤욱븳援(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/ads/AdView;->癤욱븳援(Ljava/lang/String;)[Ll;
    :try_end_0
    .catch Lay; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    if-eqz v7, :cond_2

    :try_start_1
    array-length v2, v7

    if-nez v2, :cond_3

    :cond_2
    new-instance v2, Lay;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute \"adSize\" invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lay;-><init>(Ljava/lang/String;Z)V

    throw v2
    :try_end_1
    .catch Lay; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    :goto_1
    const-string v3, "Could not initialize AdView"

    invoke-virtual {v2, v3}, Lay;->먯꽌(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_9

    array-length v4, v1

    if-lez v4, :cond_9

    aget-object v1, v1, v9

    :goto_2
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/google/ads/AdView;->癤욱븳援(Landroid/content/Context;Ljava/lang/String;Ll;Landroid/util/AttributeSet;)V

    const-string v1, "Could not initialize AdView"

    invoke-virtual {v2, v1}, Lay;->癤욱븳援(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/AdView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Could not initialize AdView"

    invoke-virtual {v2, v1}, Lay;->궗(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v1, "adUnitId"

    invoke-direct {p0, v1, p2}, Lcom/google/ads/AdView;->癤욱븳援(Ljava/lang/String;Landroid/util/AttributeSet;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lay;

    const-string v2, "Required XML attribute \"adUnitId\" missing"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lay;-><init>(Ljava/lang/String;Z)V

    throw v1

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

    invoke-virtual/range {v1 .. v6}, Lcom/google/ads/AdView;->癤욱븳援(Landroid/content/Context;Ljava/lang/String;ILl;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_5
    const-string v2, "adUnitId"

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/AdView;->癤욱븳援(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/lang/String;

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

    invoke-direct {p0, v1, v4, p2}, Lcom/google/ads/AdView;->癤욱븳援(Landroid/content/Context;Ll;Landroid/util/AttributeSet;)Z

    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-direct {p0, v1, v4, p2}, Lcom/google/ads/AdView;->궗(Landroid/content/Context;Ll;Landroid/util/AttributeSet;)Z

    array-length v4, v7

    if-ne v4, v8, :cond_7

    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-direct {p0, v1, v4, v2}, Lcom/google/ads/AdView;->癤욱븳援(Landroid/app/Activity;Ll;Ljava/lang/String;)V

    :goto_3
    if-eqz v3, :cond_0

    const-string v2, "testDevices"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/AdView;->궗(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/util/Set;

    move-result-object v1

    const-string v2, "TEST_EMULATOR"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "TEST_EMULATOR"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v2, Li;->癤욱븳援:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v2, Li;

    invoke-direct {v2}, Li;-><init>()V

    invoke-virtual {v2, v1}, Li;->궗(Ljava/util/Set;)Li;

    move-result-object v8

    const-string v2, "keywords"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/AdView;->궗(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v8, v1}, Li;->癤욱븳援(Ljava/util/Set;)Li;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/ads/AdView;->癤욱븳援(Li;)V

    goto/16 :goto_0

    :cond_7
    new-instance v4, Ll;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ll;-><init>(II)V

    invoke-direct {p0, v1, v4, v2}, Lcom/google/ads/AdView;->癤욱븳援(Landroid/app/Activity;Ll;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/google/ads/AdView;->癤욱븳援([Ll;)V

    goto :goto_3

    :cond_8
    new-instance v1, Lay;

    const-string v2, "AdView was initialized with a Context that wasn\'t an Activity."

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lay;-><init>(Ljava/lang/String;Z)V

    throw v1
    :try_end_2
    .catch Lay; {:try_start_2 .. :try_end_2} :catch_0

    :cond_9
    sget-object v1, Ll;->궗:Ll;

    goto/16 :goto_2

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v7

    goto/16 :goto_1
.end method

.method private 癤욱븳援(Landroid/content/Context;Ljava/lang/String;Ll;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-static {p2}, Lcv;->궗(Ljava/lang/String;)V

    const/high16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/AdView;->癤욱븳援(Landroid/content/Context;Ljava/lang/String;ILl;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private varargs 癤욱븳援([Ll;)V
    .locals 4

    array-length v0, p1

    new-array v1, v0, [Ll;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0}, Lcom/google/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Ll;->癤욱븳援(Ll;Landroid/content/Context;)Ll;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdView;->癤욱븳援:Lbw;

    iget-object v0, v0, Lbw;->먯껜蹂대떎:Ldv;

    invoke-virtual {v0, v1}, Ldv;->癤욱븳援(Ljava/lang/Object;)V

    return-void
.end method

.method private 癤욱븳援(Landroid/content/Context;Ll;Landroid/util/AttributeSet;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->먯꽌(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "You must have AdActivity declared in AndroidManifest.xml with configChanges."

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/AdView;->癤욱븳援(Landroid/content/Context;Ljava/lang/String;Ll;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private 癤욱븳援(Ljava/lang/String;Landroid/util/AttributeSet;)Z
    .locals 1

    const-string v0, "http://schemas.android.com/apk/lib/com.google.ads"

    invoke-interface {p2, v0, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private 癤욱븳援(Ljava/lang/String;)[Ll;
    .locals 6

    const/4 v1, 0x0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    new-array v2, v0, [Ll;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v4

    if-ge v0, v3, :cond_7

    aget-object v3, v4, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, "BANNER"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v3, Ll;->궗:Ll;

    :goto_1
    if-nez v3, :cond_6

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    const-string v5, "SMART_BANNER"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v3, Ll;->癤욱븳援:Ll;

    goto :goto_1

    :cond_1
    const-string v5, "IAB_MRECT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v3, Ll;->먯꽌:Ll;

    goto :goto_1

    :cond_2
    const-string v5, "IAB_BANNER"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v3, Ll;->ㅼ꽑嫄:Ll;

    goto :goto_1

    :cond_3
    const-string v5, "IAB_LEADERBOARD"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v3, Ll;->弱밧:Ll;

    goto :goto_1

    :cond_4
    const-string v5, "IAB_WIDE_SKYSCRAPER"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Ll;->쇰뒗:Ll;

    goto :goto_1

    :cond_5
    move-object v3, v1

    goto :goto_1

    :cond_6
    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    move-object v0, v2

    goto :goto_2
.end method

.method private 궗(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/util/Set;
    .locals 6

    invoke-direct/range {p0 .. p5}, Lcom/google/ads/AdView;->癤욱븳援(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private 궗(Landroid/content/Context;Ll;Landroid/util/AttributeSet;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->궗(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "You must have INTERNET and ACCESS_NETWORK_STATE permissions in AndroidManifest.xml."

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/ads/AdView;->癤욱븳援(Landroid/content/Context;Ljava/lang/String;Ll;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public setAdListener(Lh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdView;->癤욱븳援:Lbw;

    iget-object v0, v0, Lbw;->꾨뱾:Ldv;

    invoke-virtual {v0, p1}, Ldv;->癤욱븳援(Ljava/lang/Object;)V

    return-void
.end method

.method public setAppEventListener(Lm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdView;->癤욱븳援:Lbw;

    iget-object v0, v0, Lbw;->뚮Ц:Ldv;

    invoke-virtual {v0, p1}, Ldv;->癤욱븳援(Ljava/lang/Object;)V

    return-void
.end method

.method public varargs setSupportedAdSizes([Ll;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdView;->癤욱븳援:Lbw;

    iget-object v0, v0, Lbw;->먯껜蹂대떎:Ldv;

    invoke-virtual {v0}, Ldv;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Error: Tried to set supported ad sizes on a single-size AdView."

    invoke-static {v0}, Lcv;->궗(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/ads/AdView;->癤욱븳援([Ll;)V

    goto :goto_0
.end method

.method public 癤욱븳援()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdView;->궗:Lbg;

    invoke-virtual {v0}, Lbg;->궗()V

    return-void
.end method

.method 癤욱븳援(Landroid/content/Context;Ljava/lang/String;ILl;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v4, 0x11

    if-nez p4, :cond_0

    sget-object p4, Ll;->궗:Ll;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p4, v0}, Ll;->癤욱븳援(Ll;Landroid/content/Context;)Ll;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/ads/AdView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p5, :cond_2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    if-nez p5, :cond_3

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    if-nez p5, :cond_4

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v3}, Ll;->癤욱븳援()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/google/ads/AdView;->癤욱븳援(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3}, Ll;->궗()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/google/ads/AdView;->癤욱븳援(Landroid/content/Context;I)I

    move-result v3

    add-int/lit8 v5, v4, -0x2

    add-int/lit8 v6, v3, -0x2

    invoke-virtual {v1, v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    :cond_4
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1, p5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_2
.end method

.method public 癤욱븳援(Li;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdView;->궗:Lbg;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/AdView;->먯꽌()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/AdView;->궗:Lbg;

    invoke-virtual {v0}, Lbg;->弱밧()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdView;->궗:Lbg;

    invoke-virtual {v0, p1}, Lbg;->癤욱븳援(Li;)V

    :cond_1
    return-void
.end method

.method public 궗()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdView;->궗:Lbg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdView;->궗:Lbg;

    invoke-virtual {v0}, Lbg;->寃껋씠()Z

    move-result v0

    goto :goto_0
.end method

.method public 먯꽌()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdView;->궗:Lbg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdView;->궗:Lbg;

    invoke-virtual {v0}, Lbg;->뚮벏()Z

    move-result v0

    goto :goto_0
.end method
