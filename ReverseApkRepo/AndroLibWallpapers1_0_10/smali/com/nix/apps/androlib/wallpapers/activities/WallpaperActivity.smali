.class public Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;
.super Landroid/app/Activity;
.source "WallpaperActivity.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# static fields
.field private static final MENU_SENDTOFRIEND:I = 0x3

.field private static final MENU_SETTINGS:I = 0x2

.field private static final MENU_SETWALLPAPER:I = 0x1


# instance fields
.field public mDialog:Landroid/app/ProgressDialog;

.field private messageHandler:Landroid/os/Handler;

.field tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 384
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$1;

    invoke-direct {v0, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$1;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;)V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->messageHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method


# virtual methods
.method public downloadWallpaper()V
    .locals 3

    .prologue
    .line 261
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 263
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 264
    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 265
    const v1, 0x7f040027

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 266
    const v1, 0x7f040028

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 267
    const v1, 0x7f040017

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$11;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$11;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 276
    const v1, 0x7f040018

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$12;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$12;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 281
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 283
    return-void
.end method

.method public getRemoteImage(Ljava/net/URL;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "aURL"

    .prologue
    .line 224
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 225
    .local v2, conn:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 226
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 227
    .local v0, bis:Ljava/io/BufferedInputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 228
    .local v1, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v1

    .line 236
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v2           #conn:Ljava/net/URLConnection;
    :goto_0
    return-object v4

    .line 230
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 232
    .local v3, e:Ljava/io/IOException;
    const v4, 0x7f040021

    invoke-static {v4}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 236
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 233
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 234
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f06002d

    const v9, 0x7f060027

    const v8, 0x7f060024

    const v7, 0x7f06001d

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->setContentView(I)V

    .line 56
    const v3, 0x7f060001

    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/ads/GoogleAdView;

    .line 58
    .local v1, adView:Lcom/google/ads/GoogleAdView;
    new-instance v3, Lcom/google/ads/AdSenseSpec;

    const-string v4, "ca-mb-app-pub-6807707624701585"

    invoke-direct {v3, v4}, Lcom/google/ads/AdSenseSpec;-><init>(Ljava/lang/String;)V

    .line 59
    const-string v4, "Magma Mobile"

    invoke-virtual {v3, v4}, Lcom/google/ads/AdSenseSpec;->setCompanyName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v3

    .line 60
    const-string v4, "AndroLib Wallpapers"

    invoke-virtual {v3, v4}, Lcom/google/ads/AdSenseSpec;->setAppName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v3

    .line 61
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Title:Ljava/lang/String;

    const-string v5, " "

    const-string v6, "+"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/ads/AdSenseSpec;->setKeywords(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v3

    .line 62
    const-string v4, "0835371735"

    invoke-virtual {v3, v4}, Lcom/google/ads/AdSenseSpec;->setChannel(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v3

    .line 63
    sget-object v4, Lcom/google/ads/AdSenseSpec$AdType;->TEXT_IMAGE:Lcom/google/ads/AdSenseSpec$AdType;

    invoke-virtual {v3, v4}, Lcom/google/ads/AdSenseSpec;->setAdType(Lcom/google/ads/AdSenseSpec$AdType;)Lcom/google/ads/AdSenseSpec;

    move-result-object v3

    .line 64
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v4

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBackground:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/ads/AdSenseSpec;->setColorBackground(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v3

    .line 65
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v4

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/ads/AdSenseSpec;->setColorText(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v3

    .line 66
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v4

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/ads/AdSenseSpec;->setColorUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v3

    .line 67
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v4

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorBorder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/ads/AdSenseSpec;->setColorBorder(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v3

    .line 68
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getInstance()Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    move-result-object v4

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->ColorLink:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/ads/AdSenseSpec;->setColorLink(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v3

    .line 70
    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Link:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/ads/AdSenseSpec;->setWebEquivalentUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v3

    .line 72
    sget-boolean v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->GGADS_TESTING:Z

    invoke-virtual {v3, v4}, Lcom/google/ads/AdSenseSpec;->setAdTestEnabled(Z)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    .line 80
    .local v0, adSenseSpec:Lcom/google/ads/AdSenseSpec;
    invoke-virtual {v1, v0}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;)V

    .line 84
    const v3, 0x7f060020

    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v3, 0x7f060021

    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v5, v5, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Description:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v3, 0x7f06001e

    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 88
    .local v2, imgNews:Landroid/widget/ImageView;
    const/high16 v3, 0x7f06

    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02000e

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    invoke-virtual {p0, v8}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Creator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p0, v9}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const v3, 0x7f06000a

    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->GlobalRating:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RatingBar;->setRating(F)V

    .line 94
    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->IsFav:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {p0, v10}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020009

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->WallpaperID:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 101
    invoke-static {}, Lcom/nix/apps/androlib/wallpapers/modCommon;->isSDKAPI4Mini()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->dm:Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->ImageMedium:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->fetchDrawableOnThread(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 108
    :goto_0
    invoke-virtual {p0, v8}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 109
    new-instance v4, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$2;

    invoke-direct {v4, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$2;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;)V

    .line 108
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p0, v9}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 117
    new-instance v4, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$3;

    invoke-direct {v4, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$3;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;)V

    .line 116
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v3, 0x7f06002a

    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 126
    new-instance v4, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$4;

    invoke-direct {v4, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$4;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;)V

    .line 125
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v3, 0x7f06002c

    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 132
    new-instance v4, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$5;

    invoke-direct {v4, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$5;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;)V

    .line 131
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v3, 0x7f06002b

    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 138
    new-instance v4, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$6;

    invoke-direct {v4, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$6;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;)V

    .line 137
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v3, 0x7f060028

    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 145
    new-instance v4, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$7;

    invoke-direct {v4, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$7;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;)V

    .line 144
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v3, 0x7f060029

    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 152
    new-instance v4, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$8;

    invoke-direct {v4, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$8;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;)V

    .line 151
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v3, 0x7f06002e

    invoke-virtual {p0, v3}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 159
    new-instance v4, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$9;

    invoke-direct {v4, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$9;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;)V

    .line 158
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-virtual {p0, v10}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 166
    new-instance v4, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;

    invoke-direct {v4, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$10;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;)V

    .line 165
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-virtual {p0, v7}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    invoke-virtual {v3, p0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 213
    invoke-virtual {p0, v7}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->UserRating:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/RatingBar;->setRating(F)V

    .line 216
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 218
    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/wallpaper/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v5, v5, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v5, v5, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->WallpaperID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 219
    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    .line 220
    return-void

    .line 105
    :cond_1
    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modCommon;->dm:Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->ImageMedium:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/nix/apps/androlib/wallpapers/adapters/DrawableManager;->fetchDrawableOnThreadSDK3(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 252
    const v0, 0x7f040025

    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020024

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 254
    const/4 v0, 0x3

    const v1, 0x7f040026

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020010

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 256
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 340
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 355
    :goto_0
    return v0

    .line 342
    :pswitch_0
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->setThisWallpaper()V

    move v0, v1

    .line 343
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 346
    goto :goto_0

    .line 348
    :pswitch_2
    invoke-virtual {p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->sendEmail()V

    move v0, v1

    .line 350
    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 7
    .parameter "ratingBar"
    .parameter "rating"
    .parameter "fromUser"

    .prologue
    const/4 v6, 0x0

    .line 362
    float-to-int v1, p2

    .line 363
    .local v1, rate:I
    if-eqz p3, :cond_0

    .line 365
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$15;

    invoke-direct {v0, p0, v1}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$15;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;I)V

    .line 366
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 370
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    new-instance v3, Ljava/lang/StringBuilder;

    float-to-int v4, p2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->UserRating:Ljava/lang/String;

    .line 371
    float-to-int v2, p2

    if-nez v2, :cond_1

    .line 373
    const v2, 0x7f04002b

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 379
    .end local v0           #mThread:Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 375
    .restart local v0       #mThread:Ljava/lang/Thread;
    :cond_1
    const v2, 0x7f04002c

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    float-to-int v5, p2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected sendEmail()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, sendIntent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.SUBJECT"

    const v2, 0x7f040022

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v1, "android.intent.extra.TEXT"

    const v2, 0x7f040023

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Title:Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v4, v4, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Description:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    sget-object v5, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v5, v5, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Link:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const v1, 0x7f040024

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->startActivity(Landroid/content/Intent;)V

    .line 248
    return-void
.end method

.method public setThisWallpaper()V
    .locals 3

    .prologue
    .line 287
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 290
    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 291
    const v1, 0x7f04002a

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 292
    const v1, 0x7f040017

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$13;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    const v1, 0x7f040018

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$14;

    invoke-direct {v2, p0}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity$14;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 318
    return-void
.end method

.method public setThisWallpaperThread()V
    .locals 4

    .prologue
    .line 322
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->messageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->messageHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    :try_start_0
    new-instance v1, Ljava/net/URL;

    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->currentWallpaper:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->ImageMax:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->getRemoteImage(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->setWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 334
    :goto_0
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->messageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->messageHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 335
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->messageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/activities/WallpaperActivity;->messageHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    return-void

    .line 325
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 327
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 328
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 330
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 331
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 332
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
