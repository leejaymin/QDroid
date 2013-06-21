.class Lcom/ui/LapseIt/project/ProjectView$3;
.super Ljava/lang/Object;
.source "ProjectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/project/ProjectView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/ProjectView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/ProjectView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/ProjectView$3;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 241
    invoke-static {}, Lcom/ui/LapseIt/Main;->forAmazon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    const-string v2, "buy_pro_project_ads_amazon"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 243
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.amazon.com/gp/mas/dl/android?p=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 244
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView$3;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    invoke-virtual {v2, v1}, Lcom/ui/LapseIt/project/ProjectView;->startActivity(Landroid/content/Intent;)V

    .line 255
    :goto_0
    return-void

    .line 246
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "buy_pro_project_ads"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 248
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 249
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView$3;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    invoke-virtual {v2, v1}, Lcom/ui/LapseIt/project/ProjectView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://play.google.com/store/apps/details?id=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 252
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView$3;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    invoke-virtual {v2, v1}, Lcom/ui/LapseIt/project/ProjectView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
