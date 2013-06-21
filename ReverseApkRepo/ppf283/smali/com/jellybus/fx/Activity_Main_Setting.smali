.class public Lcom/jellybus/fx/Activity_Main_Setting;
.super Landroid/app/Activity;
.source "Activity_Main_Setting.java"


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private current_folder:I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private list_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private menu_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private network:Z

.field private pref:Landroid/content/SharedPreferences;

.field private setting_listview:Landroid/widget/ListView;

.field private setting_webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/jellybus/fx/Activity_Main_Setting;->current_folder:I

    .line 94
    new-instance v0, Lcom/jellybus/fx/Activity_Main_Setting$1;

    invoke-direct {v0, p0}, Lcom/jellybus/fx/Activity_Main_Setting$1;-><init>(Lcom/jellybus/fx/Activity_Main_Setting;)V

    iput-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting;->list_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx/Activity_Main_Setting;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main_Setting;->folderDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/jellybus/fx/Activity_Main_Setting;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/jellybus/fx/Activity_Main_Setting;->network:Z

    return v0
.end method

.method static synthetic access$2(Lcom/jellybus/fx/Activity_Main_Setting;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main_Setting;->clearWebView()V

    return-void
.end method

.method static synthetic access$3(Lcom/jellybus/fx/Activity_Main_Setting;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jellybus/fx/Activity_Main_Setting;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/jellybus/fx/Activity_Main_Setting;->current_folder:I

    return-void
.end method

.method static synthetic access$5(Lcom/jellybus/fx/Activity_Main_Setting;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private clearWebView()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 150
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 151
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 152
    return-void
.end method

.method private folderDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 156
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PicsPlay Pro"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Camera"

    aput-object v2, v0, v1

    .line 157
    .local v0, items:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    const v2, 0x7f05005d

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_Main_Setting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 159
    iget v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->current_folder:I

    new-instance v3, Lcom/jellybus/fx/Activity_Main_Setting$2;

    invoke-direct {v3, p0}, Lcom/jellybus/fx/Activity_Main_Setting$2;-><init>(Lcom/jellybus/fx/Activity_Main_Setting;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 157
    return-object v1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    .line 203
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main_Setting;->clearWebView()V

    .line 192
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/jellybus/fx/Activity_Main_Setting;->clearWebView()V

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, intent_main:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jellybus/fx/Activity_Main_Setting;->startActivity(Landroid/content/Intent;)V

    .line 199
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main_Setting;->finish()V

    .line 200
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/jellybus/fx/Activity_Main_Setting;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v2, 0x7f03000e

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_Main_Setting;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/jellybus/fx/Activity_Main_Setting;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 48
    const v2, 0x7f0600f0

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_Main_Setting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_listview:Landroid/widget/ListView;

    .line 50
    const v2, 0x7f0600f1

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_Main_Setting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;

    .line 51
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 52
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 53
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_webview:Landroid/webkit/WebView;

    const/16 v3, 0x46

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 56
    sget v1, Lcom/jellybus/fx_sub/PictureController;->market:I

    .line 60
    .local v1, market:I
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/jellybus/fx/Activity_Main_Setting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 61
    .local v0, connect:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_0

    .line 62
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_3

    .line 64
    :cond_0
    iput-boolean v4, p0, Lcom/jellybus/fx/Activity_Main_Setting;->network:Z

    .line 71
    :goto_0
    const-string v2, "pref"

    invoke-virtual {p0, v2, v5}, Lcom/jellybus/fx/Activity_Main_Setting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->pref:Landroid/content/SharedPreferences;

    .line 72
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->editor:Landroid/content/SharedPreferences$Editor;

    .line 73
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->pref:Landroid/content/SharedPreferences;

    const-string v3, "isFxFolder"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 74
    iput v5, p0, Lcom/jellybus/fx/Activity_Main_Setting;->current_folder:I

    .line 78
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->menu_list:Ljava/util/ArrayList;

    .line 79
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->menu_list:Ljava/util/ArrayList;

    const v3, 0x7f05005d

    invoke-virtual {p0, v3}, Lcom/jellybus/fx/Activity_Main_Setting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->menu_list:Ljava/util/ArrayList;

    const v3, 0x7f05005e

    invoke-virtual {p0, v3}, Lcom/jellybus/fx/Activity_Main_Setting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->menu_list:Ljava/util/ArrayList;

    const v3, 0x7f05005f

    invoke-virtual {p0, v3}, Lcom/jellybus/fx/Activity_Main_Setting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->menu_list:Ljava/util/ArrayList;

    const v3, 0x7f050060

    invoke-virtual {p0, v3}, Lcom/jellybus/fx/Activity_Main_Setting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    if-eqz v1, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->menu_list:Ljava/util/ArrayList;

    const v3, 0x7f050061

    invoke-virtual {p0, v3}, Lcom/jellybus/fx/Activity_Main_Setting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_2
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Main_Setting;->menu_list:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->adapter:Landroid/widget/ArrayAdapter;

    .line 89
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_listview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Main_Setting;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Main_Setting;->setting_listview:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Main_Setting;->list_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    return-void

    .line 67
    :cond_3
    iput-boolean v5, p0, Lcom/jellybus/fx/Activity_Main_Setting;->network:Z

    goto/16 :goto_0

    .line 76
    :cond_4
    iput v4, p0, Lcom/jellybus/fx/Activity_Main_Setting;->current_folder:I

    goto :goto_1
.end method
