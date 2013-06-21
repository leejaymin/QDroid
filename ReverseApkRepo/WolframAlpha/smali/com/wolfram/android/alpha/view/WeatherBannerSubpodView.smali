.class public Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;
.super Landroid/widget/RelativeLayout;
.source "WeatherBannerSubpodView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field public banner:Lcom/wolfram/alpha/WABanner;

.field private id:I

.field public image:Lcom/wolfram/alpha/WAImage;

.field private imageView:Landroid/widget/ImageView;

.field final inflater:Lcom/wolfram/android/alpha/LayoutInflater_modified;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "com.wolfram.android.alpha.view.WeatherBannerSubpodView"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->from(Landroid/content/Context;)Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->inflater:Lcom/wolfram/android/alpha/LayoutInflater_modified;

    .line 40
    return-void
.end method

.method private gettingElements()V
    .locals 6

    .prologue
    .line 81
    const/4 v5, 0x1

    iput v5, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->id:I

    .line 82
    iget-object v5, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->banner:Lcom/wolfram/alpha/WABanner;

    invoke-interface {v5}, Lcom/wolfram/alpha/WABanner;->getContents()[Lcom/wolfram/alpha/visitor/Visitable;

    move-result-object v1

    .line 83
    .local v1, contents:[Ljava/lang/Object;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 84
    .local v4, obj:Ljava/lang/Object;
    instance-of v5, v4, Lcom/wolfram/alpha/WAImage;

    if-eqz v5, :cond_0

    .line 85
    check-cast v4, Lcom/wolfram/alpha/WAImage;

    .end local v4           #obj:Ljava/lang/Object;
    iput-object v4, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->image:Lcom/wolfram/alpha/WAImage;

    .line 83
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method


# virtual methods
.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 0

    .prologue
    .line 92
    return-object p0
.end method

.method public populate(Lcom/wolfram/alpha/WABanner;)V
    .locals 9
    .parameter "banner"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 45
    iput-object p1, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->banner:Lcom/wolfram/alpha/WABanner;

    .line 48
    invoke-direct {p0}, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->gettingElements()V

    .line 50
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->image:Lcom/wolfram/alpha/WAImage;

    if-eqz v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->image:Lcom/wolfram/alpha/WAImage;

    invoke-interface {v3}, Lcom/wolfram/alpha/WAImage;->getFile()Ljava/io/File;

    move-result-object v1

    .line 53
    .local v1, imageFile:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 54
    invoke-static {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->createBitmapFromFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 56
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->imageView:Landroid/widget/ImageView;

    .line 57
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->imageView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->id:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 58
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->id:I

    if-ne v3, v7, :cond_1

    .line 62
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 65
    :goto_0
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6, v8, v6, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 66
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v2}, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setLongClickable(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, p0}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 69
    iget v3, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->id:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->id:I

    .line 74
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #imageFile:Ljava/io/File;
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 64
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v1       #imageFile:Ljava/io/File;
    .restart local v2       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/4 v3, 0x3

    iget v4, p0, Lcom/wolfram/android/alpha/view/WeatherBannerSubpodView;->id:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method
