.class Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup$1;->this$0:Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup$1;->this$0:Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/AchievementPopup;->hide()V

    const/4 v0, 0x0

    return v0
.end method
