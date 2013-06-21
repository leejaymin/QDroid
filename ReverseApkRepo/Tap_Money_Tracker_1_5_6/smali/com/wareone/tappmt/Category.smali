.class public Lcom/wareone/tappmt/Category;
.super Landroid/app/TabActivity;
.source "Category.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/Category$CategoryExpandableListAdapter;
    }
.end annotation


# instance fields
.field private onTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 26
    new-instance v0, Lcom/wareone/tappmt/Category$1;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/Category$1;-><init>(Lcom/wareone/tappmt/Category;)V

    iput-object v0, p0, Lcom/wareone/tappmt/Category;->onTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 25
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v5, 0x7f090061

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/Category;->setTitle(I)V

    .line 50
    invoke-virtual {p0}, Lcom/wareone/tappmt/Category;->getTabHost()Landroid/widget/TabHost;

    move-result-object v4

    .line 51
    .local v4, tab_host:Landroid/widget/TabHost;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03000a

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 53
    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 54
    iget-object v5, p0, Lcom/wareone/tappmt/Category;->onTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/wareone/tappmt/Expense;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, it:Landroid/content/Intent;
    const-string v5, "TAB_EXPENSE"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 58
    .local v3, music_tab:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p0}, Lcom/wareone/tappmt/Category;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wareone/tappmt/Category;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020064

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 59
    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 60
    invoke-virtual {v4, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 62
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/wareone/tappmt/Income;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v1, it_income:Landroid/content/Intent;
    const-string v5, "TAB_INCOME"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 64
    .local v2, local_tab:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p0}, Lcom/wareone/tappmt/Category;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wareone/tappmt/Category;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020047

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 65
    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 67
    invoke-virtual {v4, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 69
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 71
    const v5, 0x7f0900c0

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 72
    return-void
.end method
