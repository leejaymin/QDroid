.class public Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;
.super Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;
.source "SettingsOAuthFacebookView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView$SettingsOAuthCallback;
    }
.end annotation


# static fields
.field static callback:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView$SettingsOAuthCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f0b0047

    invoke-static {p0, v0}, Lcom/ui/OAuth/OAuthManager;->getInstance(Landroid/app/Activity;I)Lcom/ui/OAuth/OAuthManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->oAuthManager:Lcom/ui/OAuth/OAuthManager;

    .line 31
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 90
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lcom/ui/OAuth/OAuthWebView;->isVisible:Z

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public refreshView()V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->refreshView()V

    .line 64
    const-string v1, "facebookAccessToken"

    invoke-static {v1}, Lcom/ui/OAuth/OAuthManager;->getTokenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, accessToken:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->user:Landroid/widget/TextView;

    const-string v2, "Not authorized"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->token:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->secret:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->authorize:Landroid/widget/Button;

    const-string v2, "Authorize token"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->authorize:Landroid/widget/Button;

    iget-object v2, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->AUTHORIZE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 86
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->user:Landroid/widget/TextView;

    const-string v2, "Getting user info ..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->token:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Access token "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->secret:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    sget-object v1, Lcom/ui/OAuth/OAuthManager;->facebookAuth:Lcom/ui/OAuth/APIs/FacebookOAuth;

    new-instance v2, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView$SettingsOAuthCallback;

    invoke-direct {v2, p0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView$SettingsOAuthCallback;-><init>(Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;)V

    invoke-virtual {v1, v0, v2}, Lcom/ui/OAuth/APIs/FacebookOAuth;->verifyCredentials(Ljava/lang/String;Lcom/ui/OAuth/OAuthCallback;)V

    .line 80
    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->authorize:Landroid/widget/Button;

    const-string v2, "Release token"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->authorize:Landroid/widget/Button;

    iget-object v2, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setupView()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->logo:Landroid/widget/ImageView;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    iget-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->check:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 39
    new-instance v0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView$1;-><init>(Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->authorizeHandler:Landroid/view/View$OnClickListener;

    .line 56
    iget-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->check:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->checkHandler:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    iget-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->authorize:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->authorizeHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method
