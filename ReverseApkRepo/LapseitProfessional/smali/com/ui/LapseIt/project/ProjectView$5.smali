.class Lcom/ui/LapseIt/project/ProjectView$5;
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
    iput-object p1, p0, Lcom/ui/LapseIt/project/ProjectView$5;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    iput-object p2, p0, Lcom/ui/LapseIt/project/ProjectView$5;->val$rateChoice:Ljava/util/HashMap;

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectView$5;->this$0:Lcom/ui/LapseIt/project/ProjectView;

    invoke-static {v0}, Lui/utils/OrientationUtils;->unlockScreen(Landroid/app/Activity;)V

    .line 680
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectView$5;->val$rateChoice:Ljava/util/HashMap;

    const-string v1, "choice"

    const-string v2, "later"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v0, "market_rate"

    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectView$5;->val$rateChoice:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 682
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->access$1()Lcom/ui/LapseIt/project/ProjectView;

    move-result-object v0

    const-string v1, "marketRated"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    return-void
.end method
