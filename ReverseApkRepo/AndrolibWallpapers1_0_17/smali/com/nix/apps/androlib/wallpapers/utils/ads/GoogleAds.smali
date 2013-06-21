.class public final Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds;
.super Ljava/lang/Object;
.source "GoogleAds.java"


# static fields
.field private static final GGADS_ALTERNATE_AD_URL:Ljava/lang/String; = "http://api.androlib.com/houseads/podkast.aspx"

.field private static final GGADS_APP_NAME:Ljava/lang/String; = "AndroLib Wallpapers"

.field private static final GGADS_CHANNEL_ID:Ljava/lang/String; = "0835371735"

.field private static final GGADS_CLIENT_ID:Ljava/lang/String; = "ca-mb-app-pub-6807707624701585"

.field private static final GGADS_COMPANY_NAME:Ljava/lang/String; = "Magma Mobile"

.field private static GGADS_KEYWORDS:Ljava/lang/String; = null

.field private static GGADS_TESTING:Z = false

.field private static final GGADS_WEBEQUIVALENT_URL:Ljava/lang/String; = "http://wallpapers.androlib.com/"

.field private static final TAG:Ljava/lang/String; = "Wallpapers"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds;->GGADS_TESTING:Z

    .line 44
    const-string v0, "free+wallpapers,nature+wallpapers,beautiful+wallpapers,cool+wallpapers,mobile+wallpapers"

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds;->GGADS_KEYWORDS:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetViewThreaded(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "view"
    .parameter "weburlequivalent"
    .parameter "keywords"
    .parameter "imageOnly"

    .prologue
    .line 56
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds$1;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63
    return-void
.end method

.method public static setView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .parameter "view"
    .parameter "weburlequivalent"
    .parameter "keywords"
    .parameter "imageOnly"

    .prologue
    const-string v9, "#0000FF"

    const-string v8, ""

    const-string v7, "Wallpapers"

    const-string v6, "#FFFFFF"

    .line 68
    if-nez p0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 71
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/google/ads/GoogleAdView;

    move-object v2, v0

    .line 74
    .local v2, adView:Lcom/google/ads/GoogleAdView;
    new-instance v1, Lcom/google/ads/AdSenseSpec;

    const-string v4, "ca-mb-app-pub-6807707624701585"

    invoke-direct {v1, v4}, Lcom/google/ads/AdSenseSpec;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, adSenseSpec:Lcom/google/ads/AdSenseSpec;
    const-string v4, "Magma Mobile"

    invoke-virtual {v1, v4}, Lcom/google/ads/AdSenseSpec;->setCompanyName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 80
    const-string v4, "AndroLib Wallpapers"

    invoke-virtual {v1, v4}, Lcom/google/ads/AdSenseSpec;->setAppName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 83
    const-string v4, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    const-string v4, " "

    const-string v5, "+"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/ads/AdSenseSpec;->setKeywords(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 94
    :goto_1
    const-string v4, "0835371735"

    invoke-virtual {v1, v4}, Lcom/google/ads/AdSenseSpec;->setChannel(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 97
    if-eqz p3, :cond_2

    .line 98
    sget-object v4, Lcom/google/ads/AdSenseSpec$AdType;->IMAGE:Lcom/google/ads/AdSenseSpec$AdType;

    invoke-virtual {v1, v4}, Lcom/google/ads/AdSenseSpec;->setAdType(Lcom/google/ads/AdSenseSpec$AdType;)Lcom/google/ads/AdSenseSpec;

    .line 102
    :goto_2
    const-string v4, "http://api.androlib.com/houseads/podkast.aspx"

    invoke-virtual {v1, v4}, Lcom/google/ads/AdSenseSpec;->setAlternateAdUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 103
    const-string v4, "#FFFFFF"

    invoke-virtual {v1, v6}, Lcom/google/ads/AdSenseSpec;->setAlternateColor(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 106
    const-string v4, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 108
    invoke-virtual {v1, p1}, Lcom/google/ads/AdSenseSpec;->setWebEquivalentUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 109
    const-string v4, "Wallpapers"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "weburlequivalent : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_3
    const-string v4, "#FFFFFF"

    invoke-virtual {v1, v6}, Lcom/google/ads/AdSenseSpec;->setColorBackground(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 115
    const-string v4, "#000000"

    invoke-virtual {v1, v4}, Lcom/google/ads/AdSenseSpec;->setColorText(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 116
    const-string v4, "#0000FF"

    invoke-virtual {v1, v9}, Lcom/google/ads/AdSenseSpec;->setColorUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 117
    const-string v4, "#FFFFFF"

    invoke-virtual {v1, v6}, Lcom/google/ads/AdSenseSpec;->setColorBorder(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 118
    const-string v4, "#0000FF"

    invoke-virtual {v1, v9}, Lcom/google/ads/AdSenseSpec;->setColorLink(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 119
    sget-object v4, Lcom/google/ads/AdSenseSpec$AdFormat;->FORMAT_320x50:Lcom/google/ads/AdSenseSpec$AdFormat;

    invoke-virtual {v1, v4}, Lcom/google/ads/AdSenseSpec;->setAdFormat(Lcom/google/ads/AdSenseSpec$AdFormat;)Lcom/google/ads/AdSenseSpec;

    .line 120
    sget-object v4, Lcom/google/ads/AdSenseSpec$ExpandDirection;->TOP:Lcom/google/ads/AdSenseSpec$ExpandDirection;

    invoke-virtual {v1, v4}, Lcom/google/ads/AdSenseSpec;->setExpandDirection(Lcom/google/ads/AdSenseSpec$ExpandDirection;)Lcom/google/ads/AdSenseSpec;

    .line 123
    sget-boolean v4, Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds;->GGADS_TESTING:Z

    invoke-virtual {v1, v4}, Lcom/google/ads/AdSenseSpec;->setAdTestEnabled(Z)Lcom/google/ads/AdSenseSpec;

    .line 129
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 130
    :catch_0
    move-exception v3

    .line 131
    .local v3, e:Ljava/lang/Exception;
    const-string v4, "Wallpapers"

    const-string v4, "GGAds setView ERROR !!!"

    invoke-static {v7, v4}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 87
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds;->GGADS_KEYWORDS:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/ads/AdSenseSpec;->setKeywords(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    goto :goto_1

    .line 100
    :cond_2
    sget-object v4, Lcom/google/ads/AdSenseSpec$AdType;->TEXT_IMAGE:Lcom/google/ads/AdSenseSpec$AdType;

    invoke-virtual {v1, v4}, Lcom/google/ads/AdSenseSpec;->setAdType(Lcom/google/ads/AdSenseSpec$AdType;)Lcom/google/ads/AdSenseSpec;

    goto :goto_2

    .line 111
    :cond_3
    const-string v4, "http://wallpapers.androlib.com/"

    invoke-virtual {v1, v4}, Lcom/google/ads/AdSenseSpec;->setWebEquivalentUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 112
    const-string v4, "Wallpapers"

    const-string v4, "GGADS_WEBEQUIVALENT_URL : http://wallpapers.androlib.com/"

    invoke-static {v7, v4}, Lcom/nix/apps/androlib/wallpapers/modCommon;->Log_d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
