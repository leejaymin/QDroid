.class Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView$SettingsOAuthCallback;
.super Lcom/ui/OAuth/OAuthCallback;
.source "SettingsOAuthFacebookView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsOAuthCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView$SettingsOAuthCallback;->this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;

    invoke-direct {p0}, Lcom/ui/OAuth/OAuthCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public jsonReceived(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .parameter "object"

    .prologue
    .line 103
    :try_start_0
    iget-object v4, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView$SettingsOAuthCallback;->this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;

    iget-object v4, v4, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->user:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Authorized as "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "name"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://graph.facebook.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "username"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/picture"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, avatarURL:Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 108
    .local v1, avatarStream:Ljava/io/InputStream;
    const-string v4, "avatar"

    invoke-static {v1, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView$SettingsOAuthCallback;->this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;

    iget-object v4, v4, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthFacebookView;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #avatarStream:Ljava/io/InputStream;
    .end local v2           #avatarURL:Ljava/lang/String;
    :goto_0
    invoke-super {p0, p1}, Lcom/ui/OAuth/OAuthCallback;->jsonReceived(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    return-object v4

    .line 110
    :catch_0
    move-exception v3

    .line 111
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
