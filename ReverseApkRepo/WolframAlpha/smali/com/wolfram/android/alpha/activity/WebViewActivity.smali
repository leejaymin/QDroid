.class public Lcom/wolfram/android/alpha/activity/WebViewActivity;
.super Lcom/wolfram/android/alpha/activity/Activity_modified;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wolfram/android/alpha/activity/WebViewActivity$WAWebViewClient;
    }
.end annotation


# static fields
.field public static final DATA_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.webview.data"

.field public static final RES_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.webview.res"

.field public static final TITLE_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.webview.title"

.field public static final URL_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.webview.url"


# instance fields
.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;-><init>()V

    .line 128
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super/range {p0 .. p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->requestFeature(I)Z

    .line 49
    const v15, 0x7f0300b2

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WebViewActivity;->setContentView(I)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 55
    .local v5, b:Landroid/os/Bundle;
    const-string v15, "com.wolfram.android.alpha.webview.title"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 56
    .local v11, title:Ljava/lang/String;
    const-string v15, "com.wolfram.android.alpha.webview.url"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 57
    .local v13, url:Ljava/lang/String;
    const-string v15, "com.wolfram.android.alpha.webview.res"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 58
    .local v9, resID:I
    const-string v15, "com.wolfram.android.alpha.webview.data"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, html:Ljava/lang/String;
    const v15, 0x7f0e00be

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/webkit/WebView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wolfram/android/alpha/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 64
    const v15, 0x7f0e0004

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 65
    .local v12, titleView:Landroid/widget/TextView;
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v14

    .line 68
    .local v14, webSettings:Landroid/webkit/WebSettings;
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 69
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 70
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 71
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 72
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getUserAgent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    move-object v15, v0

    new-instance v16, Lcom/wolfram/android/alpha/activity/WebViewActivity$WAWebViewClient;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/WebViewActivity$WAWebViewClient;-><init>(Lcom/wolfram/android/alpha/activity/WebViewActivity;Lcom/wolfram/android/alpha/activity/WebViewActivity$1;)V

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 75
    move-object/from16 v4, p0

    .line 76
    .local v4, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    move-object v15, v0

    new-instance v16, Lcom/wolfram/android/alpha/activity/WebViewActivity$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/wolfram/android/alpha/activity/WebViewActivity$1;-><init>(Lcom/wolfram/android/alpha/activity/WebViewActivity;Landroid/app/Activity;)V

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 84
    if-eqz v13, :cond_1

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    move-object v15, v0

    invoke-virtual {v15, v13}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    if-eqz v9, :cond_5

    .line 87
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v10, sb:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 90
    .local v7, rdr:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 91
    .end local v7           #rdr:Ljava/io/BufferedReader;
    .local v8, rdr:Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->ready()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 92
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 93
    :catch_0
    move-exception v15

    move-object v7, v8

    .line 96
    .end local v8           #rdr:Ljava/io/BufferedReader;
    .restart local v7       #rdr:Ljava/io/BufferedReader;
    :goto_2
    if-eqz v7, :cond_2

    .line 97
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 99
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    move-object v15, v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "text/html"

    const-string v18, "UTF-8"

    invoke-virtual/range {v15 .. v18}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v7           #rdr:Ljava/io/BufferedReader;
    .restart local v8       #rdr:Ljava/io/BufferedReader;
    :cond_3
    if-eqz v8, :cond_6

    .line 97
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v7, v8

    .end local v8           #rdr:Ljava/io/BufferedReader;
    .restart local v7       #rdr:Ljava/io/BufferedReader;
    goto :goto_3

    .end local v7           #rdr:Ljava/io/BufferedReader;
    .restart local v8       #rdr:Ljava/io/BufferedReader;
    :catch_1
    move-exception v15

    move-object v7, v8

    .end local v8           #rdr:Ljava/io/BufferedReader;
    .restart local v7       #rdr:Ljava/io/BufferedReader;
    goto :goto_3

    .line 96
    :catchall_0
    move-exception v15

    :goto_4
    if-eqz v7, :cond_4

    .line 97
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_5
    throw v15

    .line 100
    .end local v7           #rdr:Ljava/io/BufferedReader;
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :cond_5
    if-eqz v6, :cond_0

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wolfram/android/alpha/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    move-object v15, v0

    const-string v16, "text/html"

    const-string v17, "utf-8"

    move-object v0, v15

    move-object v1, v6

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .restart local v7       #rdr:Ljava/io/BufferedReader;
    .restart local v10       #sb:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v15

    goto :goto_3

    :catch_3
    move-exception v16

    goto :goto_5

    .line 96
    .end local v7           #rdr:Ljava/io/BufferedReader;
    .restart local v8       #rdr:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v15

    move-object v7, v8

    .end local v8           #rdr:Ljava/io/BufferedReader;
    .restart local v7       #rdr:Ljava/io/BufferedReader;
    goto :goto_4

    .line 93
    :catch_4
    move-exception v15

    goto :goto_2

    .end local v7           #rdr:Ljava/io/BufferedReader;
    .restart local v8       #rdr:Ljava/io/BufferedReader;
    :cond_6
    move-object v7, v8

    .end local v8           #rdr:Ljava/io/BufferedReader;
    .restart local v7       #rdr:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onDestroy()V

    .line 111
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 112
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 113
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 120
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
