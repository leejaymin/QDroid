.class public Lcom/jellybus/fx/Activity_Main_Manual;
.super Landroid/app/Activity;
.source "Activity_Main_Manual.java"


# instance fields
.field private final Advance:I

.field private final Basic:I

.field private final FX:I

.field private advance_listener:Landroid/view/View$OnClickListener;

.field private basic_listener:Landroid/view/View$OnClickListener;

.field private country:Ljava/lang/String;

.field private current_menu:I

.field private fx_listener:Landroid/view/View$OnClickListener;

.field private manual_advance:Landroid/widget/ImageView;

.field private manual_basic:Landroid/widget/ImageView;

.field private manual_fx:Landroid/widget/ImageView;

.field private manual_webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    iput v1, p0, Lcom/jellybus/fx/Activity_Main_Manual;->Basic:I

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->FX:I

    .line 24
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->Advance:I

    .line 25
    iput v1, p0, Lcom/jellybus/fx/Activity_Main_Manual;->current_menu:I

    .line 91
    new-instance v0, Lcom/jellybus/fx/Activity_Main_Manual$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main_Manual$1;-><init>(Lcom/jellybus/fx/Activity_Main_Manual;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->basic_listener:Landroid/view/View$OnClickListener;

    .line 104
    new-instance v0, Lcom/jellybus/fx/Activity_Main_Manual$2;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main_Manual$2;-><init>(Lcom/jellybus/fx/Activity_Main_Manual;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->fx_listener:Landroid/view/View$OnClickListener;

    .line 117
    new-instance v0, Lcom/jellybus/fx/Activity_Main_Manual$3;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main_Manual$3;-><init>(Lcom/jellybus/fx/Activity_Main_Manual;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->advance_listener:Landroid/view/View$OnClickListener;

    .line 11
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_Main_Manual;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->current_menu:I

    return v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_Main_Manual;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main_Manual;->clearWebView()V

    return-void
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_Main_Manual;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main_Manual;->setOffMenu()V

    return-void
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_Main_Manual;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_basic:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_Main_Manual;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main_Manual;->loadBasic()V

    return-void
.end method

.method static synthetic access$5(Lcom/jellybus/fx/Activity_Main_Manual;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_fx:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/jellybus/fx/Activity_Main_Manual;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main_Manual;->loadFX()V

    return-void
.end method

.method static synthetic access$7(Lcom/jellybus/fx/Activity_Main_Manual;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_advance:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/jellybus/fx/Activity_Main_Manual;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main_Manual;->loadAdvance()V

    return-void
.end method

.method private clearWebView()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 133
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_webview:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 134
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 135
    return-void
.end method

.method private loadAdvance()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->country:Ljava/lang/String;

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_webview:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/ad_kr.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 87
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->current_menu:I

    .line 88
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->country:Ljava/lang/String;

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_webview:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/ad_jp.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_webview:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/ad_en.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadBasic()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->country:Ljava/lang/String;

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_webview:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/basic_kr.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 65
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->current_menu:I

    .line 66
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->country:Ljava/lang/String;

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_webview:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/basic_jp.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_webview:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/basic_en.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadFX()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->country:Ljava/lang/String;

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_webview:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/fx_kr.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 76
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->current_menu:I

    .line 77
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->country:Ljava/lang/String;

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_webview:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/fx_jp.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_webview:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/fx_en.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setOffMenu()V
    .locals 2

    .prologue
    const v1, 0x7f020124

    .line 52
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_basic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 53
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_fx:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 54
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_advance:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 55
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main_Manual;->clearWebView()V

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Main_Manual;->startActivity(Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main_Manual;->finish()V

    .line 146
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Main_Manual;->overridePendingTransition(II)V

    .line 147
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Main_Manual;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main_Manual;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 34
    const v0, 0x7f0600ec

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Main_Manual;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_webview:Landroid/webkit/WebView;

    .line 35
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_webview:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 37
    const v0, 0x7f0600ed

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Main_Manual;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_basic:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f0600ee

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Main_Manual;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_fx:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f0600ef

    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Main_Manual;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_advance:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main_Manual;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->country:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main_Manual;->loadBasic()V

    .line 45
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_basic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main_Manual;->basic_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_fx:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main_Manual;->fx_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual;->manual_advance:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main_Manual;->advance_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method
