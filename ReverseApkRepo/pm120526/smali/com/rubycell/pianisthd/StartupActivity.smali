.class public Lcom/rubycell/pianisthd/StartupActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/ProgressBar;

.field b:Lcom/rubycell/e/o;

.field c:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x1000

    const/16 v3, 0x400

    const/16 v2, 0x80

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/rubycell/pianisthd/StartupActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/StartupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/StartupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/StartupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/StartupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/StartupActivity;->setVolumeControlStream(I)V

    invoke-static {}, Lcom/rubycell/pianisthd/d/l;->a()V

    const-string v0, "gdx"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/StartupActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/StartupActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/StartupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/rubycell/pianisthd/StartupActivity;->a:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/StartupActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/StartupActivity;->c:Landroid/content/SharedPreferences;

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->T:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/bj;->a()V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/StartupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "adbcdbe8-f93d-4f6b-8bee-623b06b094f8"

    const-string v2, "XDVR3YR1FWl9qqIOuSHW"

    invoke-static {v0, v1, v2}, Lcom/tapjoy/av;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/av;->a()Lcom/tapjoy/av;

    const-string v0, "13d38b64-4a95-41ff-8961-53cd9ff27ca2"

    invoke-static {v0}, Lcom/tapjoy/av;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/av;->a()Lcom/tapjoy/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/av;->c()V

    :cond_0
    new-instance v0, Lcom/rubycell/e/o;

    iget-object v1, p0, Lcom/rubycell/pianisthd/StartupActivity;->c:Landroid/content/SharedPreferences;

    invoke-direct {v0, p0, v1}, Lcom/rubycell/e/o;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/StartupActivity;->b:Lcom/rubycell/e/o;

    iget-object v0, p0, Lcom/rubycell/pianisthd/StartupActivity;->b:Lcom/rubycell/e/o;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/rubycell/e/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/StartupActivity;->b:Lcom/rubycell/e/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rubycell/e/o;->cancel(Z)Z

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/StartupActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/rubycell/adcenter/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
