.class Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup$3;->this$0:Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "AchievementPopup"

    const-string v1, "Adding popup"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup$3;->this$0:Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_parent:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->access$200(Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup$3;->this$0:Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_popup:Lcom/chillingo/crystal/ui/skinning/SkinnedView;
    invoke-static {v1}, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->access$000(Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;)Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup$3;->this$0:Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->_alignBottom:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v2}, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->access$100(Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
