.class public Lcom/superdroid/sqd/ad/AdMgr;
.super Ljava/lang/Object;
.source "AdMgr.java"


# static fields
.field public static ZH_LOCAL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/superdroid/sqd/ad/AdMgr;->ZH_LOCAL:Z

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 12
    .parameter "activity"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 23
    sget-boolean v1, Lcom/superdroid/sqd/ad/AdMgr;->ZH_LOCAL:Z

    if-eqz v1, :cond_1

    .line 24
    new-instance v0, Lcom/wooboo/adlib_android/WoobooAdView;

    .line 25
    const-string v2, "a3188a32b561491f94b561a35106c500"

    .line 26
    const/16 v6, 0x12c

    const/16 v7, 0x30

    const/4 v8, 0x2

    move-object v1, p0

    move v5, v3

    .line 24
    invoke-direct/range {v0 .. v8}, Lcom/wooboo/adlib_android/WoobooAdView;-><init>(Landroid/content/Context;Ljava/lang/String;IIZIII)V

    .line 27
    .local v0, ad:Lcom/wooboo/adlib_android/WoobooAdView;
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    .line 28
    const/4 v1, -0x2

    .line 27
    invoke-direct {v11, v4, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 29
    .local v11, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v11}, Lcom/wooboo/adlib_android/WoobooAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 31
    .local v10, layout:Landroid/widget/RelativeLayout;
    if-eqz v10, :cond_0

    .line 32
    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 41
    .end local v0           #ad:Lcom/wooboo/adlib_android/WoobooAdView;
    .end local v10           #layout:Landroid/widget/RelativeLayout;
    .end local v11           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const v1, 0x7f060006

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 36
    .local v9, adMobView:Landroid/view/View;
    if-eqz v9, :cond_0

    .line 39
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static initOnce(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 19
    .local v0, locale:Ljava/util/Locale;
    const-string v1, "zh"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/superdroid/sqd/ad/AdMgr;->ZH_LOCAL:Z

    .line 20
    return-void
.end method
