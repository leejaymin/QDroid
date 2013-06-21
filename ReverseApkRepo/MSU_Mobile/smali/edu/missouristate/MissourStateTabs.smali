.class public Ledu/missouristate/MissourStateTabs;
.super Landroid/app/TabActivity;
.source "MissourStateTabs.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/missouristate/MissourStateTabs$TabsContentFactory;
    }
.end annotation


# instance fields
.field private appSettings:Landroid/content/SharedPreferences;

.field private mTabHost:Landroid/widget/TabHost;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ledu/missouristate/MissourStateTabs;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Ledu/missouristate/MissourStateTabs;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private loadWebContent(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "BaseUrl"

    .prologue
    .line 46
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    const-string v13, "tab_news"

    const-string v12, "tab_map"

    const-string v11, "tab_goMaroon"

    .line 52
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0, v10}, Ledu/missouristate/MissourStateTabs;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Ledu/missouristate/MissourStateTabs;->appSettings:Landroid/content/SharedPreferences;

    .line 54
    const/high16 v6, 0x7f03

    invoke-virtual {p0, v6}, Ledu/missouristate/MissourStateTabs;->setContentView(I)V

    .line 55
    const/high16 v6, 0x7f05

    invoke-virtual {p0, v6}, Ledu/missouristate/MissourStateTabs;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    iput-object v6, p0, Ledu/missouristate/MissourStateTabs;->webView:Landroid/webkit/WebView;

    .line 56
    iget-object v6, p0, Ledu/missouristate/MissourStateTabs;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 57
    .local v5, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v5, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 58
    iget-object v6, p0, Ledu/missouristate/MissourStateTabs;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 59
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    move-object v3, p0

    .line 61
    .local v3, currentActivity:Landroid/app/TabActivity;
    iget-object v6, p0, Ledu/missouristate/MissourStateTabs;->webView:Landroid/webkit/WebView;

    new-instance v7, Ledu/missouristate/MissourStateTabs$1;

    invoke-direct {v7, p0, v1, v3}, Ledu/missouristate/MissourStateTabs$1;-><init>(Ledu/missouristate/MissourStateTabs;Landroid/app/AlertDialog$Builder;Landroid/app/TabActivity;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 98
    iget-object v6, p0, Ledu/missouristate/MissourStateTabs;->webView:Landroid/webkit/WebView;

    new-instance v7, Ledu/missouristate/MissourStateTabs$2;

    invoke-direct {v7, p0, v1}, Ledu/missouristate/MissourStateTabs$2;-><init>(Ledu/missouristate/MissourStateTabs;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 121
    new-instance v2, Ledu/missouristate/MissourStateTabs$TabsContentFactory;

    const/4 v6, 0x0

    invoke-direct {v2, p0, v6}, Ledu/missouristate/MissourStateTabs$TabsContentFactory;-><init>(Ledu/missouristate/MissourStateTabs;Ledu/missouristate/MissourStateTabs$TabsContentFactory;)V

    .line 123
    .local v2, contentFactory:Ledu/missouristate/MissourStateTabs$TabsContentFactory;
    invoke-virtual {p0}, Ledu/missouristate/MissourStateTabs;->getTabHost()Landroid/widget/TabHost;

    move-result-object v6

    iput-object v6, p0, Ledu/missouristate/MissourStateTabs;->mTabHost:Landroid/widget/TabHost;

    .line 125
    invoke-virtual {p0}, Ledu/missouristate/MissourStateTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 127
    .local v4, res:Landroid/content/res/Resources;
    iget-object v6, p0, Ledu/missouristate/MissourStateTabs;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Ledu/missouristate/MissourStateTabs;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "tab_news"

    invoke-virtual {v7, v13}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const-string v8, "News"

    const v9, 0x7f020003

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 128
    iget-object v6, p0, Ledu/missouristate/MissourStateTabs;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Ledu/missouristate/MissourStateTabs;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "tab_map"

    invoke-virtual {v7, v12}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const-string v8, "Map"

    const v9, 0x7f020002

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 129
    iget-object v6, p0, Ledu/missouristate/MissourStateTabs;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Ledu/missouristate/MissourStateTabs;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "tab_goMaroon"

    invoke-virtual {v7, v11}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const-string v8, "Go Maroon!"

    const v9, 0x7f020001

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 131
    iget-object v6, p0, Ledu/missouristate/MissourStateTabs;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 133
    iget-object v6, p0, Ledu/missouristate/MissourStateTabs;->appSettings:Landroid/content/SharedPreferences;

    const-string v7, "activeTab"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, activeTab:I
    invoke-virtual {p0, v0}, Ledu/missouristate/MissourStateTabs;->setDefaultTab(I)V

    .line 135
    iget-object v6, p0, Ledu/missouristate/MissourStateTabs;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 136
    packed-switch v0, :pswitch_data_0

    .line 144
    const-string v6, "tab_news"

    invoke-virtual {p0, v13}, Ledu/missouristate/MissourStateTabs;->onTabChanged(Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 138
    :pswitch_0
    const-string v6, "tab_map"

    invoke-virtual {p0, v12}, Ledu/missouristate/MissourStateTabs;->onTabChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :pswitch_1
    const-string v6, "tab_goMaroon"

    invoke-virtual {p0, v11}, Ledu/missouristate/MissourStateTabs;->onTabChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Ledu/missouristate/MissourStateTabs;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 159
    iget-object v0, p0, Ledu/missouristate/MissourStateTabs;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:resume()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 160
    invoke-super {p0}, Landroid/app/TabActivity;->onRestart()V

    .line 161
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Ledu/missouristate/MissourStateTabs;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:pause()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Ledu/missouristate/MissourStateTabs;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 153
    invoke-super {p0}, Landroid/app/TabActivity;->onStop()V

    .line 154
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "tabId"

    .prologue
    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, activeTab:I
    const-string v3, "tab_goMaroon"

    if-ne p1, v3, :cond_0

    .line 168
    const-string v0, "http://gomaroon.missouristate.edu/iphone/"

    .line 169
    .local v0, BaseUrl:Ljava/lang/String;
    const-string v0, "file:///android_asset/GoMaroonLoading.html"

    .line 170
    const/4 v1, 0x2

    .line 183
    :goto_0
    iget-object v3, p0, Ledu/missouristate/MissourStateTabs;->appSettings:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 184
    .local v2, appSettingsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "activeTab"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    iget-object v3, p0, Ledu/missouristate/MissourStateTabs;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    invoke-direct {p0, v3, v0}, Ledu/missouristate/MissourStateTabs;->loadWebContent(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 188
    return-void

    .line 172
    .end local v0           #BaseUrl:Ljava/lang/String;
    .end local v2           #appSettingsEditor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v3, "tab_map"

    if-ne p1, v3, :cond_1

    .line 173
    const-string v0, "http://search.missouristate.edu/map/mobile/?standalone=true"

    .line 174
    .restart local v0       #BaseUrl:Ljava/lang/String;
    const-string v0, "file:///android_asset/MapLoading.html"

    .line 175
    const/4 v1, 0x1

    goto :goto_0

    .line 178
    .end local v0           #BaseUrl:Ljava/lang/String;
    :cond_1
    const-string v0, "http://news.missouristate.edu/"

    .line 179
    .restart local v0       #BaseUrl:Ljava/lang/String;
    const-string v0, "file:///android_asset/NewsLoading.html"

    .line 180
    const/4 v1, 0x0

    goto :goto_0
.end method
