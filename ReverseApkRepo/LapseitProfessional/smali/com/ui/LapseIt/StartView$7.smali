.class Lcom/ui/LapseIt/StartView$7;
.super Ljava/lang/Object;
.source "StartView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/StartView;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/StartView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/StartView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/StartView$7;->this$0:Lcom/ui/LapseIt/StartView;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 370
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 372
    invoke-static {}, Lcom/ui/LapseIt/Main;->forAmazon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    const-string v2, "buy_pro_tutorial_amazon"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 374
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.amazon.com/gp/mas/dl/android?p=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 375
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/StartView$7;->this$0:Lcom/ui/LapseIt/StartView;

    invoke-virtual {v2, v1}, Lcom/ui/LapseIt/StartView;->startActivity(Landroid/content/Intent;)V

    .line 386
    :goto_0
    const-string v2, "tutorial_after_yes"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 387
    return-void

    .line 377
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "buy_pro_tutorial"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 379
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 380
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/StartView$7;->this$0:Lcom/ui/LapseIt/StartView;

    invoke-virtual {v2, v1}, Lcom/ui/LapseIt/StartView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://play.google.com/store/apps/details?id=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 383
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/StartView$7;->this$0:Lcom/ui/LapseIt/StartView;

    invoke-virtual {v2, v1}, Lcom/ui/LapseIt/StartView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
