.class public Lmagmamobile/view/SplashView;
.super Landroid/widget/LinearLayout;
.source "SplashView.java"


# instance fields
.field private image:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lmagmamobile/view/SplashView;->setBackgroundColor(I)V

    .line 27
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmagmamobile/view/SplashView;->image:Landroid/widget/ImageView;

    .line 28
    iget-object v0, p0, Lmagmamobile/view/SplashView;->image:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lmagmamobile/view/SplashView;->loadImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    iget-object v0, p0, Lmagmamobile/view/SplashView;->image:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lmagmamobile/view/SplashView;->addView(Landroid/view/View;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lmagmamobile/view/SplashView;->setBackgroundColor(I)V

    .line 19
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmagmamobile/view/SplashView;->image:Landroid/widget/ImageView;

    .line 20
    iget-object v0, p0, Lmagmamobile/view/SplashView;->image:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lmagmamobile/view/SplashView;->loadImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object v0, p0, Lmagmamobile/view/SplashView;->image:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lmagmamobile/view/SplashView;->addView(Landroid/view/View;)V

    .line 22
    return-void
.end method

.method private loadImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "context"

    .prologue
    .line 34
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "logo.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 35
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 39
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v2

    .line 37
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 38
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    const/4 v2, 0x0

    goto :goto_0
.end method
