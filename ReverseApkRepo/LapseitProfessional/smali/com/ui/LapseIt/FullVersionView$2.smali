.class Lcom/ui/LapseIt/FullVersionView$2;
.super Ljava/lang/Object;
.source "FullVersionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/FullVersionView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/FullVersionView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/FullVersionView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/FullVersionView$2;->this$0:Lcom/ui/LapseIt/FullVersionView;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 95
    :try_start_0
    invoke-static {}, Lcom/ui/LapseIt/Main;->forAmazon()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const-string v2, "buy_pro_standard_amazon"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 97
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.amazon.com/gp/mas/dl/android?p=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 98
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/FullVersionView$2;->this$0:Lcom/ui/LapseIt/FullVersionView;

    invoke-virtual {v2, v1}, Lcom/ui/LapseIt/FullVersionView;->startActivity(Landroid/content/Intent;)V

    .line 113
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v2, "buy_pro_standard"

    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/FullVersionView$2;->this$0:Lcom/ui/LapseIt/FullVersionView;

    invoke-virtual {v2, v1}, Lcom/ui/LapseIt/FullVersionView;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 104
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://play.google.com/store/apps/details?id=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/FullVersionView$2;->this$0:Lcom/ui/LapseIt/FullVersionView;

    invoke-virtual {v2, v1}, Lcom/ui/LapseIt/FullVersionView;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 110
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/ui/LapseIt/FullVersionView$2;->this$0:Lcom/ui/LapseIt/FullVersionView;

    #calls: Lcom/ui/LapseIt/FullVersionView;->buildErrorAlert()V
    invoke-static {v2}, Lcom/ui/LapseIt/FullVersionView;->access$1(Lcom/ui/LapseIt/FullVersionView;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
