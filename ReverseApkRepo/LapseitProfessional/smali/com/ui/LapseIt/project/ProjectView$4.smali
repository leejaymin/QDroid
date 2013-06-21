.class Lcom/ui/LapseIt/project/ProjectView$4;
.super Ljava/lang/Object;
.source "ProjectView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/project/ProjectView;->buildMarketRateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/ProjectView;

.field private final synthetic val$rateChoice:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/ProjectView;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/ProjectView$4;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    iput-object p2, p0, Lcom/ui/LapseIt/project/ProjectView$4;->val$rateChoice:Ljava/util/HashMap;

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 649
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView$4;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    invoke-static {v2}, Lui/utils/OrientationUtils;->unlockScreen(Landroid/app/Activity;)V

    .line 650
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->access$1()Lcom/ui/LapseIt/project/ProjectView;

    move-result-object v2

    const-string v3, "marketRated"

    const-string v4, "done"

    invoke-static {v2, v3, v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-static {}, Lcom/ui/LapseIt/Main;->isPro()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 652
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView$4;->val$rateChoice:Ljava/util/HashMap;

    const-string v3, "choice"

    const-string v4, "yespro"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string v2, "market_rate"

    iget-object v3, p0, Lcom/ui/LapseIt/project/ProjectView$4;->val$rateChoice:Ljava/util/HashMap;

    invoke-static {v2, v3}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 656
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 657
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView$4;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    invoke-virtual {v2, v1}, Lcom/ui/LapseIt/project/ProjectView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :goto_0
    return-void

    .line 658
    .end local v1           #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 659
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://play.google.com/store/apps/details?id=com.ui.LapseItPro"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 660
    .restart local v1       #i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView$4;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    invoke-virtual {v2, v1}, Lcom/ui/LapseIt/project/ProjectView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 663
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView$4;->val$rateChoice:Ljava/util/HashMap;

    const-string v3, "choice"

    const-string v4, "yeslite"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string v2, "market_rate"

    iget-object v3, p0, Lcom/ui/LapseIt/project/ProjectView$4;->val$rateChoice:Ljava/util/HashMap;

    invoke-static {v2, v3}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 667
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.ui.LapseIt"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 668
    .restart local v1       #i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView$4;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    invoke-virtual {v2, v1}, Lcom/ui/LapseIt/project/ProjectView;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 669
    .end local v1           #i:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 670
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "https://play.google.com/store/apps/details?id=com.ui.LapseIt"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 671
    .restart local v1       #i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/ui/LapseIt/project/ProjectView$4;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    invoke-virtual {v2, v1}, Lcom/ui/LapseIt/project/ProjectView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
