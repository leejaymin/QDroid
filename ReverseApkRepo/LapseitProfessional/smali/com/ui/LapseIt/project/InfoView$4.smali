.class Lcom/ui/LapseIt/project/InfoView$4;
.super Ljava/lang/Object;
.source "InfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/project/InfoView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/InfoView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/InfoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/InfoView$4;->this$0:Lcom/ui/LapseIt/project/InfoView;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 85
    invoke-static {}, Lcom/ui/LapseIt/Main;->forAmazon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const-string v2, "buy_pro_info_ads_amazon"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.amazon.com/gp/mas/dl/android?p=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 88
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/project/InfoView$4;->this$0:Lcom/ui/LapseIt/project/InfoView;

    invoke-virtual {v2, v1}, Lcom/ui/LapseIt/project/InfoView;->startActivity(Landroid/content/Intent;)V

    .line 100
    :goto_0
    return-void

    .line 90
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "buy_pro_info_ads"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 92
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/project/InfoView$4;->this$0:Lcom/ui/LapseIt/project/InfoView;

    invoke-virtual {v2, v1}, Lcom/ui/LapseIt/project/InfoView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://play.google.com/store/apps/details?id=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/project/InfoView$4;->this$0:Lcom/ui/LapseIt/project/InfoView;

    invoke-virtual {v2, v1}, Lcom/ui/LapseIt/project/InfoView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
