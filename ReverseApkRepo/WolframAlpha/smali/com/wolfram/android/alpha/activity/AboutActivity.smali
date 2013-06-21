.class public Lcom/wolfram/android/alpha/activity/AboutActivity;
.super Lcom/wolfram/android/alpha/activity/Activity_modified;
.source "AboutActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;
    }
.end annotation


# static fields
.field private static final ABOUTAPP_BUTTON:Ljava/lang/Integer;

.field private static final ABOUT_BUTTON:Ljava/lang/Integer;

.field private static final RECOMMEND_ANDROID_MARKET_BUTTON:Ljava/lang/Integer;

.field private static final RECOMMEND_EMAIL_BUTTON:Ljava/lang/Integer;

.field private static final TERMS_BUTTON:Ljava/lang/Integer;

.field private static final TIPS_BUTTON:Ljava/lang/Integer;

.field private static final VIDEO_BUTTON:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/activity/AboutActivity;->ABOUT_BUTTON:Ljava/lang/Integer;

    .line 43
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/activity/AboutActivity;->VIDEO_BUTTON:Ljava/lang/Integer;

    .line 44
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/activity/AboutActivity;->TIPS_BUTTON:Ljava/lang/Integer;

    .line 45
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/activity/AboutActivity;->RECOMMEND_ANDROID_MARKET_BUTTON:Ljava/lang/Integer;

    .line 46
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/activity/AboutActivity;->RECOMMEND_EMAIL_BUTTON:Ljava/lang/Integer;

    .line 47
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/activity/AboutActivity;->TERMS_BUTTON:Ljava/lang/Integer;

    .line 48
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/activity/AboutActivity;->ABOUTAPP_BUTTON:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;-><init>()V

    .line 127
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/wolfram/android/alpha/activity/AboutActivity;->ABOUT_BUTTON:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/wolfram/android/alpha/activity/AboutActivity;->VIDEO_BUTTON:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/wolfram/android/alpha/activity/AboutActivity;->TIPS_BUTTON:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/wolfram/android/alpha/activity/AboutActivity;->RECOMMEND_ANDROID_MARKET_BUTTON:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/wolfram/android/alpha/activity/AboutActivity;->RECOMMEND_EMAIL_BUTTON:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/wolfram/android/alpha/activity/AboutActivity;->TERMS_BUTTON:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/activity/AboutActivity;->setContentView(I)V

    .line 57
    const/high16 v1, 0x7f0e

    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/activity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 58
    .local v0, aboutListView:Landroid/widget/ListView;
    new-instance v1, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;

    invoke-direct {v1, p0}, Lcom/wolfram/android/alpha/activity/AboutActivity$AboutAdapter;-><init>(Lcom/wolfram/android/alpha/activity/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .parameter
    .parameter "aboutButton"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 68
    .local v5, viewType:Ljava/lang/Integer;
    sget-object v6, Lcom/wolfram/android/alpha/activity/AboutActivity;->ABOUT_BUTTON:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 69
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/wolfram/android/alpha/activity/WebViewActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "com.wolfram.android.alpha.webview.title"

    check-cast p2, Landroid/widget/TextView;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 72
    const-string v6, "com.wolfram.android.alpha.webview.url"

    new-instance v7, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v8, 0x7f0c007f

    invoke-virtual {v7, v8}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v3}, Lcom/wolfram/android/alpha/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 74
    .restart local p2
    :cond_1
    sget-object v6, Lcom/wolfram/android/alpha/activity/AboutActivity;->VIDEO_BUTTON:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 75
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/wolfram/android/alpha/activity/VideoActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "com.wolfram.android.alpha.video_url"

    new-instance v7, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v8, 0x7f0c007e

    invoke-virtual {v7, v8}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v3}, Lcom/wolfram/android/alpha/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 78
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    sget-object v6, Lcom/wolfram/android/alpha/activity/AboutActivity;->TIPS_BUTTON:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 79
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/wolfram/android/alpha/activity/WebViewActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "com.wolfram.android.alpha.webview.title"

    check-cast p2, Landroid/widget/TextView;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 82
    const-string v6, "com.wolfram.android.alpha.webview.res"

    const/high16 v7, 0x7f06

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v3}, Lcom/wolfram/android/alpha/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    .end local v3           #intent:Landroid/content/Intent;
    .restart local p2
    :cond_3
    sget-object v6, Lcom/wolfram/android/alpha/activity/AboutActivity;->RECOMMEND_ANDROID_MARKET_BUTTON:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 85
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isOnline()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 86
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 87
    .local v4, marketIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/wolfram/android/alpha/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 89
    .end local v4           #marketIntent:Landroid/content/Intent;
    :cond_4
    new-instance v6, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    invoke-direct {v6, p0}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "Please connect to internet and try again."

    invoke-virtual {v6, v7}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v6

    const-string v7, "OK"

    new-instance v8, Lcom/wolfram/android/alpha/activity/AboutActivity$1;

    invoke-direct {v8, p0}, Lcom/wolfram/android/alpha/activity/AboutActivity$1;-><init>(Lcom/wolfram/android/alpha/activity/AboutActivity;)V

    invoke-virtual {v6, v7, v8}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v6

    const-string v7, "No Internet Connection"

    invoke-virtual {v6, v7}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v0

    .line 97
    .local v0, customBuilder:Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    invoke-virtual {v0}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->create()Lcom/wolfram/android/alpha/view/CustomDialog;

    move-result-object v1

    .line 98
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 100
    .end local v0           #customBuilder:Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    .end local v1           #dialog:Landroid/app/Dialog;
    :cond_5
    sget-object v6, Lcom/wolfram/android/alpha/activity/AboutActivity;->RECOMMEND_EMAIL_BUTTON:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 101
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v2, emailIntent:Landroid/content/Intent;
    const-string v6, "plain/text"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v6, "android.intent.extra.SUBJECT"

    const-string v7, "Check out the Wolfram|Alpha App"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v6, "android.intent.extra.TEXT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "I\'m using the Wolfram|Alpha App for Android right now, and it\'s great!\n\nCheck it out on\n\nGoogle Play: \n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v9, 0x7f0c0068

    invoke-virtual {v8, v9}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Amazon Appstore for Android: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v9, 0x7f0c0069

    invoke-virtual {v8, v9}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "NOOK Store: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v9, 0x7f0c006a

    invoke-virtual {v8, v9}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 111
    .end local v2           #emailIntent:Landroid/content/Intent;
    :cond_6
    sget-object v6, Lcom/wolfram/android/alpha/activity/AboutActivity;->TERMS_BUTTON:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 112
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/wolfram/android/alpha/activity/WebViewActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "com.wolfram.android.alpha.webview.title"

    check-cast p2, Landroid/widget/TextView;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 115
    const-string v6, "com.wolfram.android.alpha.webview.url"

    new-instance v7, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v8, 0x7f0c007d

    invoke-virtual {v7, v8}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v3}, Lcom/wolfram/android/alpha/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 117
    .end local v3           #intent:Landroid/content/Intent;
    .restart local p2
    :cond_7
    sget-object v6, Lcom/wolfram/android/alpha/activity/AboutActivity;->ABOUTAPP_BUTTON:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_0
.end method
