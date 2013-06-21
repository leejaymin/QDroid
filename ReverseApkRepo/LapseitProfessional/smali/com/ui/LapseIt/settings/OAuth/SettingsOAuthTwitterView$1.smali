.class Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView$1;
.super Ljava/lang/Object;
.source "SettingsOAuthTwitterView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView$1;->this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView$1;->this$0:Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;

    invoke-virtual {v0}, Lcom/ui/LapseIt/settings/OAuth/SettingsOAuthTwitterView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tweetAfterUpload"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
