.class Lcom/ui/LapseIt/settings/SettingsDetailsView$1$1;
.super Ljava/lang/Object;
.source "SettingsDetailsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/settings/SettingsDetailsView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/settings/SettingsDetailsView$1;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/settings/SettingsDetailsView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$1$1;->this$1:Lcom/ui/LapseIt/settings/SettingsDetailsView$1;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 383
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 384
    packed-switch p2, :pswitch_data_0

    .line 401
    :goto_0
    :pswitch_0
    return-void

    .line 387
    :pswitch_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "market://details?id=com.ui.LapseItPro"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 388
    .local v2, intentbuy:Landroid/content/Intent;
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$1$1;->this$1:Lcom/ui/LapseIt/settings/SettingsDetailsView$1;

    #getter for: Lcom/ui/LapseIt/settings/SettingsDetailsView$1;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;
    invoke-static {v3}, Lcom/ui/LapseIt/settings/SettingsDetailsView$1;->access$0(Lcom/ui/LapseIt/settings/SettingsDetailsView$1;)Lcom/ui/LapseIt/settings/SettingsDetailsView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    .end local v2           #intentbuy:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "https://play.google.com/store/apps/details?id=com.ui.LapseItPro"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 391
    .restart local v2       #intentbuy:Landroid/content/Intent;
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$1$1;->this$1:Lcom/ui/LapseIt/settings/SettingsDetailsView$1;

    #getter for: Lcom/ui/LapseIt/settings/SettingsDetailsView$1;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;
    invoke-static {v3}, Lcom/ui/LapseIt/settings/SettingsDetailsView$1;->access$0(Lcom/ui/LapseIt/settings/SettingsDetailsView$1;)Lcom/ui/LapseIt/settings/SettingsDetailsView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 396
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #intentbuy:Landroid/content/Intent;
    :pswitch_2
    const-string v3, "front_camera_ads"

    invoke-static {v3}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 397
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$1$1;->this$1:Lcom/ui/LapseIt/settings/SettingsDetailsView$1;

    #getter for: Lcom/ui/LapseIt/settings/SettingsDetailsView$1;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;
    invoke-static {v3}, Lcom/ui/LapseIt/settings/SettingsDetailsView$1;->access$0(Lcom/ui/LapseIt/settings/SettingsDetailsView$1;)Lcom/ui/LapseIt/settings/SettingsDetailsView;

    move-result-object v3

    const-class v4, Lcom/ui/LapseIt/ProVersionView;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$1$1;->this$1:Lcom/ui/LapseIt/settings/SettingsDetailsView$1;

    #getter for: Lcom/ui/LapseIt/settings/SettingsDetailsView$1;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;
    invoke-static {v3}, Lcom/ui/LapseIt/settings/SettingsDetailsView$1;->access$0(Lcom/ui/LapseIt/settings/SettingsDetailsView$1;)Lcom/ui/LapseIt/settings/SettingsDetailsView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
