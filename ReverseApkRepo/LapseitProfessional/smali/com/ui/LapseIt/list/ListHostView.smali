.class public Lcom/ui/LapseIt/list/ListHostView;
.super Landroid/app/TabActivity;
.source "ListHostView.java"


# static fields
.field public static tabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private addTab(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter "extras"
    .parameter "title"
    .parameter "iconId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 75
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03000a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 76
    .local v2, indicatorView:Landroid/widget/RelativeLayout;
    const v5, 0x7f0b001e

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 77
    .local v0, indicatorImage:Landroid/widget/ImageView;
    const v5, 0x7f0b001f

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    .local v1, indicatorTitle:Landroid/widget/TextView;
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    sget-object v5, Lcom/ui/LapseIt/list/ListHostView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, p3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 83
    invoke-virtual {v5, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 84
    invoke-virtual {v5, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 85
    .local v4, spec:Landroid/widget/TabHost$TabSpec;
    sget-object v5, Lcom/ui/LapseIt/list/ListHostView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 43
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListHostView;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 44
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListHostView;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 46
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/list/ListHostView;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListHostView;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    sput-object v1, Lcom/ui/LapseIt/list/ListHostView;->tabHost:Landroid/widget/TabHost;

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, extras:Landroid/os/Bundle;
    const-class v1, Lcom/ui/LapseIt/list/ListView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02003f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/ui/LapseIt/list/ListHostView;->addTab(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 53
    const-class v1, Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/list/ListHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020041

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/ui/LapseIt/list/ListHostView;->addTab(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 55
    sget-object v1, Lcom/ui/LapseIt/list/ListHostView;->tabHost:Landroid/widget/TabHost;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 56
    sget-object v1, Lcom/ui/LapseIt/list/ListHostView;->tabHost:Landroid/widget/TabHost;

    new-instance v2, Lcom/ui/LapseIt/list/ListHostView$1;

    invoke-direct {v2, p0}, Lcom/ui/LapseIt/list/ListHostView$1;-><init>(Lcom/ui/LapseIt/list/ListHostView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 62
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/TabActivity;->onStart()V

    .line 34
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/TabActivity;->onStop()V

    .line 68
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 69
    return-void
.end method
