.class Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView$1;
.super Ljava/lang/Object;
.source "SettingsOAuthFacebookView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView$1;->this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView$1;->this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;

    iget-object v2, v2, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->AUTHORIZE:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView$1;->this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;

    iget-object v1, v1, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->oAuthManager:Lcom/ui/OAuth/OAuthManager;

    sget-object v2, Lcom/ui/OAuth/OAuthManager$APIs;->FACEBOOK:Lcom/ui/OAuth/OAuthManager$APIs;

    invoke-virtual {v1, v2}, Lcom/ui/OAuth/OAuthManager;->requestAuth(Lcom/ui/OAuth/OAuthManager$APIs;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    const-string v1, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView$1;->this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;

    iget-object v2, v2, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->RELEASE:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    .line 50
    const-string v1, "facebookAccessToken"

    invoke-static {v1}, Lcom/ui/OAuth/OAuthManager;->removeTokenValue(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView$1;->this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->refreshView()V

    goto :goto_0
.end method
