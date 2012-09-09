.class public Ladverteffect/rappername/SplashScreen;
.super Landroid/app/Activity;
.source "SplashScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x400

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Ladverteffect/rappername/SplashScreen;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Ladverteffect/rappername/SplashScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 24
    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Ladverteffect/rappername/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 26
    .local v1, bmImage:Landroid/widget/ImageView;
    invoke-virtual {p0}, Ladverteffect/rappername/SplashScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020003

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 27
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 29
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Ladverteffect/rappername/SplashScreen$1;

    invoke-direct {v3, p0}, Ladverteffect/rappername/SplashScreen$1;-><init>(Ladverteffect/rappername/SplashScreen;)V

    .line 36
    const-wide/16 v4, 0x7d0

    .line 29
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    return-void
.end method
