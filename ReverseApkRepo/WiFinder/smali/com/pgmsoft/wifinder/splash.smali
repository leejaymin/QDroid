.class public Lcom/pgmsoft/wifinder/splash;
.super Landroid/app/Activity;
.source "splash.java"


# instance fields
.field private final SPLASH_DISPLAY_LENGHT:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 11
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/pgmsoft/wifinder/splash;->SPLASH_DISPLAY_LENGHT:I

    .line 10
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pgmsoft/wifinder/splash;->requestWindowFeature(I)Z

    .line 23
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/pgmsoft/wifinder/splash;->requestWindowFeature(I)Z

    .line 25
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/pgmsoft/wifinder/splash;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/pgmsoft/wifinder/splash;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/pgmsoft/wifinder/splash$1;

    invoke-direct {v1, p0}, Lcom/pgmsoft/wifinder/splash$1;-><init>(Lcom/pgmsoft/wifinder/splash;)V

    .line 34
    const-wide/16 v2, 0xbb8

    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method
