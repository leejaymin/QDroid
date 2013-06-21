.class Lnet/ser1/timetracker/Tasks$TaskView;
.super Landroid/widget/LinearLayout;
.source "Tasks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ser1/timetracker/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskView"
.end annotation


# instance fields
.field private checkMark:Landroid/widget/ImageView;

.field private taskName:Landroid/widget/TextView;

.field final synthetic this$0:Lnet/ser1/timetracker/Tasks;

.field private total:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lnet/ser1/timetracker/Tasks;Landroid/content/Context;Lnet/ser1/timetracker/Task;)V
    .locals 7
    .parameter
    .parameter "context"
    .parameter "t"

    .prologue
    const/16 v1, 0xa

    const/4 v6, 0x0

    const/4 v3, 0x5

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 761
    iput-object p1, p0, Lnet/ser1/timetracker/Tasks$TaskView;->this$0:Lnet/ser1/timetracker/Tasks;

    .line 735
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 736
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/Tasks$TaskView;->setOrientation(I)V

    .line 737
    invoke-virtual {p0, v3, v1, v3, v1}, Lnet/ser1/timetracker/Tasks$TaskView;->setPadding(IIII)V

    .line 739
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->taskName:Landroid/widget/TextView;

    .line 740
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->taskName:Landroid/widget/TextView;

    invoke-static {}, Lnet/ser1/timetracker/Tasks;->access$0()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 741
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->taskName:Landroid/widget/TextView;

    invoke-virtual {p3}, Lnet/ser1/timetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->taskName:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 743
    const/high16 v2, 0x3f80

    invoke-direct {v1, v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 742
    invoke-virtual {p0, v0, v1}, Lnet/ser1/timetracker/Tasks$TaskView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 745
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->checkMark:Landroid/widget/ImageView;

    .line 746
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->checkMark:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 747
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->checkMark:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->checkMark:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 749
    invoke-direct {v1, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 748
    invoke-virtual {p0, v0, v1}, Lnet/ser1/timetracker/Tasks$TaskView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->total:Landroid/widget/TextView;

    .line 752
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->total:Landroid/widget/TextView;

    invoke-static {}, Lnet/ser1/timetracker/Tasks;->access$0()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 753
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->total:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 754
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->total:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 755
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->total:Landroid/widget/TextView;

    #getter for: Lnet/ser1/timetracker/Tasks;->decimalFormat:Z
    invoke-static {p1}, Lnet/ser1/timetracker/Tasks;->access$1(Lnet/ser1/timetracker/Tasks;)Z

    move-result v1

    invoke-virtual {p3}, Lnet/ser1/timetracker/Task;->getTotal()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lnet/ser1/timetracker/Tasks;->formatTotal(ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->total:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 757
    invoke-direct {v1, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 756
    invoke-virtual {p0, v0, v1}, Lnet/ser1/timetracker/Tasks$TaskView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 759
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/Tasks$TaskView;->setGravity(I)V

    .line 760
    invoke-direct {p0, p3}, Lnet/ser1/timetracker/Tasks$TaskView;->markupSelectedTask(Lnet/ser1/timetracker/Task;)V

    return-void
.end method

.method private markupSelectedTask(Lnet/ser1/timetracker/Task;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 772
    invoke-virtual {p1}, Lnet/ser1/timetracker/Task;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->checkMark:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 777
    :goto_0
    return-void

    .line 775
    :cond_0
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->checkMark:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public setTask(Lnet/ser1/timetracker/Task;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 764
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->taskName:Landroid/widget/TextView;

    invoke-static {}, Lnet/ser1/timetracker/Tasks;->access$0()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 765
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->total:Landroid/widget/TextView;

    invoke-static {}, Lnet/ser1/timetracker/Tasks;->access$0()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 766
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->taskName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lnet/ser1/timetracker/Task;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskView;->total:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/ser1/timetracker/Tasks$TaskView;->this$0:Lnet/ser1/timetracker/Tasks;

    #getter for: Lnet/ser1/timetracker/Tasks;->decimalFormat:Z
    invoke-static {v1}, Lnet/ser1/timetracker/Tasks;->access$1(Lnet/ser1/timetracker/Tasks;)Z

    move-result v1

    invoke-virtual {p1}, Lnet/ser1/timetracker/Task;->getTotal()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lnet/ser1/timetracker/Tasks;->formatTotal(ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    invoke-direct {p0, p1}, Lnet/ser1/timetracker/Tasks$TaskView;->markupSelectedTask(Lnet/ser1/timetracker/Task;)V

    .line 769
    return-void
.end method
