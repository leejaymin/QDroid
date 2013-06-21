.class public Lcom/wareone/tappmt/Accounts;
.super Landroid/app/TabActivity;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/Accounts$AccountAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/wareone/tappmt/Accounts;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/Accounts;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 98
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/wareone/tappmt/Accounts;->getTabHost()Landroid/widget/TabHost;

    move-result-object v4

    .line 108
    .local v4, tab_host:Landroid/widget/TabHost;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03000a

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 110
    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/wareone/tappmt/Asset;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v1, it_asset:Landroid/content/Intent;
    const-string v5, "TAB_ASSET"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 115
    .local v0, asset_tab:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p0}, Lcom/wareone/tappmt/Accounts;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wareone/tappmt/Accounts;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020034

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 117
    invoke-virtual {v4, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 119
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/wareone/tappmt/Liability;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v2, it_liability:Landroid/content/Intent;
    const-string v5, "TAB_LIABILIRY"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 121
    .local v3, liability_tab:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p0}, Lcom/wareone/tappmt/Accounts;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wareone/tappmt/Accounts;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02004d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 122
    invoke-virtual {v3, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 124
    invoke-virtual {v4, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 126
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 128
    const v5, 0x7f0900c0

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 129
    return-void
.end method
