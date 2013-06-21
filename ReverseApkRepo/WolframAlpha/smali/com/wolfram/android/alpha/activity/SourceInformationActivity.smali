.class public Lcom/wolfram/android/alpha/activity/SourceInformationActivity;
.super Lcom/wolfram/android/alpha/activity/Activity_modified;
.source "SourceInformationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;-><init>()V

    return-void
.end method


# virtual methods
.method public clickHandler(Landroid/view/View;)V
    .locals 5
    .parameter "linkButton"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/wolfram/android/alpha/activity/WebViewActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.wolfram.android.alpha.webview.title"

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/SourceInformationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v2, "com.wolfram.android.alpha.webview.url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/activity/SourceInformationActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    .line 25
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v9, 0x7f030090

    invoke-virtual {p0, v9}, Lcom/wolfram/android/alpha/activity/SourceInformationActivity;->setContentView(I)V

    .line 29
    const v9, 0x7f0e009a

    invoke-virtual {p0, v9}, Lcom/wolfram/android/alpha/activity/SourceInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 31
    .local v1, panel:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v2

    .line 32
    .local v2, queryResult:Lcom/wolfram/alpha/WAQueryResult;
    if-nez v2, :cond_1

    .line 59
    :cond_0
    return-void

    .line 34
    :cond_1
    invoke-interface {v2}, Lcom/wolfram/alpha/WAQueryResult;->getSources()[Lcom/wolfram/alpha/WASourceInfo;

    move-result-object v5

    .line 36
    .local v5, sources:[Lcom/wolfram/alpha/WASourceInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v9, v5

    if-ge v0, v9, :cond_0

    .line 38
    aget-object v3, v5, v0

    .line 40
    .local v3, source:Lcom/wolfram/alpha/WASourceInfo;
    invoke-interface {v3}, Lcom/wolfram/alpha/WASourceInfo;->getURL()Ljava/lang/String;

    move-result-object v8

    .line 41
    .local v8, url:Ljava/lang/String;
    invoke-interface {v3}, Lcom/wolfram/alpha/WASourceInfo;->getText()Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, text:Ljava/lang/String;
    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 36
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/SourceInformationActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v9

    const v10, 0x7f03008e

    invoke-virtual {v9, v10, v11}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 48
    .local v4, sourceView:Landroid/view/View;
    const v9, 0x7f0e0098

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 50
    .local v7, textView:Landroid/widget/TextView;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    array-length v9, v5

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ge v0, v9, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/SourceInformationActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v9

    const v10, 0x7f030011

    invoke-virtual {v9, v10, v11}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method
