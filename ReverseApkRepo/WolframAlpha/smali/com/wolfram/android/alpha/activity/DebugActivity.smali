.class public Lcom/wolfram/android/alpha/activity/DebugActivity;
.super Lcom/wolfram/android/alpha/activity/Activity_modified;
.source "DebugActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;-><init>()V

    return-void
.end method


# virtual methods
.method public onCopyButtonClick(Landroid/view/View;)V
    .locals 12
    .parameter "copyButton"

    .prologue
    .line 78
    const v9, 0x7f0e0016

    invoke-virtual {p0, v9}, Lcom/wolfram/android/alpha/activity/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    .local v0, appInfoView:Landroid/widget/TextView;
    const v9, 0x7f0e0017

    invoke-virtual {p0, v9}, Lcom/wolfram/android/alpha/activity/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 80
    .local v3, deviceInfoView:Landroid/widget/TextView;
    const v9, 0x7f0e0018

    invoke-virtual {p0, v9}, Lcom/wolfram/android/alpha/activity/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 81
    .local v7, urlView:Landroid/widget/TextView;
    const v9, 0x7f0e0019

    invoke-virtual {p0, v9}, Lcom/wolfram/android/alpha/activity/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 83
    .local v8, xmlView:Landroid/widget/TextView;
    const-string v9, "clipboard"

    invoke-virtual {p0, v9}, Lcom/wolfram/android/alpha/activity/DebugActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 84
    .local v1, clipboard:Landroid/text/ClipboardManager;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const-string v5, "Information copied to clipboard"

    .line 93
    .local v5, msg:Ljava/lang/String;
    new-instance v9, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    invoke-direct {v9, p0}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v5}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v9

    const-string v10, "OK"

    new-instance v11, Lcom/wolfram/android/alpha/activity/DebugActivity$1;

    invoke-direct {v11, p0}, Lcom/wolfram/android/alpha/activity/DebugActivity$1;-><init>(Lcom/wolfram/android/alpha/activity/DebugActivity;)V

    invoke-virtual {v9, v10, v11}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v2

    .line 97
    .local v2, customBuilder:Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    invoke-virtual {v2}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->create()Lcom/wolfram/android/alpha/view/CustomDialog;

    move-result-object v4

    .line 98
    .local v4, dialog:Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 99
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v8, 0x7f030016

    invoke-virtual {p0, v8}, Lcom/wolfram/android/alpha/activity/DebugActivity;->setContentView(I)V

    .line 35
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    .line 36
    .local v0, app:Lcom/wolfram/android/alpha/WolframAlphaApplication;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 37
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/DebugActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 40
    const v8, 0x7f0e0016

    invoke-virtual {p0, v8}, Lcom/wolfram/android/alpha/activity/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 41
    .local v1, appInfoView:Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 42
    .local v4, pi:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/DebugActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.wolfram.android.alpha"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, LjQaa7YP/GLtqH7G;->Osaa35GMvWmleJ6PA(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 43
    :goto_0
    if-eqz v4, :cond_0

    .line 44
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App version:     "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, text:Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .end local v5           #text:Ljava/lang/String;
    :cond_0
    const v8, 0x7f0e0017

    invoke-virtual {p0, v8}, Lcom/wolfram/android/alpha/activity/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    .local v2, deviceInfoView:Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Android version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Manufacturer:    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Model:           "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Device:          "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Product:         "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Display density: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Display height:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Display width:   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 58
    .restart local v5       #text:Ljava/lang/String;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v8, 0x7f0e0018

    invoke-virtual {p0, v8}, Lcom/wolfram/android/alpha/activity/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 61
    .local v6, urlView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getDebugQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getWAEngine()Lcom/wolfram/alpha/WAEngine;

    move-result-object v8

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getDebugQuery()Lcom/wolfram/alpha/WAQuery;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/wolfram/alpha/WAEngine;->toURL(Lcom/wolfram/alpha/WAQuery;)Ljava/lang/String;

    move-result-object v5

    .line 65
    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v8, 0x7f0e0019

    invoke-virtual {p0, v8}, Lcom/wolfram/android/alpha/activity/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 68
    .local v7, xmlView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getDebugQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 69
    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getDebugQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v8

    invoke-interface {v8}, Lcom/wolfram/alpha/WAQueryResult;->getXML()Ljava/lang/String;

    move-result-object v5

    .line 72
    :goto_2
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void

    .line 64
    .end local v7           #xmlView:Landroid/widget/TextView;
    :cond_1
    const-string v5, "no query available"

    goto :goto_1

    .line 71
    .restart local v7       #xmlView:Landroid/widget/TextView;
    :cond_2
    const-string v5, "no XML available"

    goto :goto_2

    .line 42
    .end local v2           #deviceInfoView:Landroid/widget/TextView;
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #urlView:Landroid/widget/TextView;
    .end local v7           #xmlView:Landroid/widget/TextView;
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method
