.class public Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;
.super Landroid/app/Activity;
.source "SettingsOAuthView.java"


# instance fields
.field protected AUTHORIZE:Ljava/lang/String;

.field protected RELEASE:Ljava/lang/String;

.field protected authorize:Landroid/widget/Button;

.field protected authorizeHandler:Landroid/view/View$OnClickListener;

.field protected avatar:Landroid/widget/ImageView;

.field protected check:Landroid/widget/CheckBox;

.field protected checkHandler:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field protected logo:Landroid/widget/ImageView;

.field protected oAuthManager:Lcom/ui/OAuth/OAuthManager;

.field protected releaseHandler:Landroid/view/View$OnClickListener;

.field protected secret:Landroid/widget/TextView;

.field protected token:Landroid/widget/TextView;

.field protected user:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const-string v0, "authorize"

    iput-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->AUTHORIZE:Ljava/lang/String;

    .line 20
    const-string v0, "release"

    iput-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->RELEASE:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->setContentView(I)V

    .line 45
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->logo:Landroid/widget/ImageView;

    .line 47
    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->user:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->avatar:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->token:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0b007c

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->secret:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->check:Landroid/widget/CheckBox;

    .line 52
    const v0, 0x7f0b007d

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->authorize:Landroid/widget/Button;

    .line 54
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->setupView()V

    .line 55
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 60
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->refreshView()V

    .line 61
    return-void
.end method

.method public refreshView()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method protected setupView()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView$1;-><init>(Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->checkHandler:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 70
    new-instance v0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView$2;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView$2;-><init>(Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->authorizeHandler:Landroid/view/View$OnClickListener;

    .line 75
    iget-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->check:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->checkHandler:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    iget-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->authorize:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->authorizeHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method
