.class Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView$SettingsOAuthCallback;
.super Lcom/ui/OAuth/OAuthCallback;
.source "SettingsOAuthTwitterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsOAuthCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView$SettingsOAuthCallback;->this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;

    invoke-direct {p0}, Lcom/ui/OAuth/OAuthCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public jsonReceived(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .parameter "object"

    .prologue
    .line 114
    :try_start_0
    iget-object v3, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView$SettingsOAuthCallback;->this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;

    iget-object v3, v3, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->user:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Authorized as "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "name"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v3, Ljava/net/URL;

    const-string v4, "profile_image_url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 117
    .local v1, avatarStream:Ljava/io/InputStream;
    const-string v3, "avatar"

    invoke-static {v1, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView$SettingsOAuthCallback;->this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;

    iget-object v3, v3, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #avatarStream:Ljava/io/InputStream;
    :goto_0
    invoke-super {p0, p1}, Lcom/ui/OAuth/OAuthCallback;->jsonReceived(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    return-object v3

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
