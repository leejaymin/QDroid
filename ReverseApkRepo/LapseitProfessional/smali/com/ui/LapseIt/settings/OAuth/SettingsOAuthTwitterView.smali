.class public Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;
.super Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;
.source "SettingsOAuthTwitterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView$SettingsOAuthCallback;
    }
.end annotation


# static fields
.field static callback:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView$SettingsOAuthCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0b0047

    invoke-static {p0, v0}, Lcom/ui/OAuth/OAuthManager;->getInstance(Landroid/app/Activity;I)Lcom/ui/OAuth/OAuthManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->oAuthManager:Lcom/ui/OAuth/OAuthManager;

    .line 34
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 100
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-boolean v0, Lcom/ui/OAuth/OAuthWebView;->isVisible:Z

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "trace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deh  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/ui/OAuth/OAuthWebView;->isVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public refreshView()V
    .locals 6

    .prologue
    .line 71
    invoke-super {p0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthView;->refreshView()V

    .line 73
    const-string v3, "twitterAuthToken"

    invoke-static {v3}, Lcom/ui/OAuth/OAuthManager;->getTokenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, authToken:Ljava/lang/String;
    const-string v3, "twitterAuthTokenSecret"

    invoke-static {v3}, Lcom/ui/OAuth/OAuthManager;->getTokenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, authTokenSecret:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 77
    :cond_0
    iget-object v3, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->user:Landroid/widget/TextView;

    const-string v4, "Not authorized"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v3, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->token:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v3, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->secret:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v3, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->authorize:Landroid/widget/Button;

    const-string v4, "Authorize token"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v3, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->authorize:Landroid/widget/Button;

    iget-object v4, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->AUTHORIZE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tweetAfterUpload"

    invoke-static {v3, v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 95
    .local v2, tweetAfterUpload:Z
    iget-object v3, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->check:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    return-void

    .line 84
    .end local v2           #tweetAfterUpload:Z
    :cond_1
    iget-object v3, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->user:Landroid/widget/TextView;

    const-string v4, "Getting user info ..."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v3, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->token:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OAuth token "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v3, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->secret:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OAuth token secret "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    sget-object v3, Lcom/ui/OAuth/OAuthManager;->twitterAuth:Lcom/ui/OAuth/APIs/TwitterOAuth;

    new-instance v4, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView$SettingsOAuthCallback;

    invoke-direct {v4, p0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView$SettingsOAuthCallback;-><init>(Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;)V

    invoke-virtual {v3, v0, v1, v4}, Lcom/ui/OAuth/APIs/TwitterOAuth;->verifyCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/ui/OAuth/OAuthCallback;)V

    .line 90
    iget-object v3, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->authorize:Landroid/widget/Button;

    const-string v4, "Release token"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v3, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->authorize:Landroid/widget/Button;

    iget-object v4, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setupView()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->logo:Landroid/widget/ImageView;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    new-instance v0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView$1;-><init>(Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->checkHandler:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 47
    new-instance v0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView$2;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView$2;-><init>(Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->authorizeHandler:Landroid/view/View$OnClickListener;

    .line 65
    iget-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->check:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->checkHandler:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    iget-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->authorize:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->authorizeHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method
