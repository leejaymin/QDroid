.class Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;
.super Landroid/widget/LinearLayout;
.source "TaskTimes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/ser1/timetracker/TaskTimes$TimesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeView"
.end annotation


# instance fields
.field private dateRange:Landroid/widget/TextView;

.field final synthetic this$1:Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

.field private total:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lnet/ser1/timetracker/TaskTimes$TimesAdapter;Landroid/content/Context;Lnet/ser1/timetracker/TimeRange;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "t"

    .prologue
    const/16 v1, 0xa

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x5

    .line 408
    iput-object p1, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->this$1:Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

    .line 391
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->setOrientation(I)V

    .line 393
    invoke-virtual {p0, v3, v1, v3, v1}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->setPadding(IIII)V

    .line 395
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->dateRange:Landroid/widget/TextView;

    .line 396
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->dateRange:Landroid/widget/TextView;

    invoke-static {}, Lnet/ser1/timetracker/TaskTimes;->access$0()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 397
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->dateRange:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 398
    const/high16 v2, 0x3f80

    invoke-direct {v1, v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 397
    invoke-virtual {p0, v0, v1}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->total:Landroid/widget/TextView;

    .line 401
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->total:Landroid/widget/TextView;

    invoke-static {}, Lnet/ser1/timetracker/TaskTimes;->access$0()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 402
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->total:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 403
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->total:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 404
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->total:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 405
    const/4 v2, 0x0

    invoke-direct {v1, v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 404
    invoke-virtual {p0, v0, v1}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    invoke-virtual {p0, p3}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->setTimeRange(Lnet/ser1/timetracker/TimeRange;)V

    return-void
.end method


# virtual methods
.method public setTimeRange(Lnet/ser1/timetracker/TimeRange;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 411
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->dateRange:Landroid/widget/TextView;

    invoke-virtual {p1}, Lnet/ser1/timetracker/TimeRange;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->total:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter$TimeView;->this$1:Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

    #getter for: Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->this$0:Lnet/ser1/timetracker/TaskTimes;
    invoke-static {v1}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->access$1(Lnet/ser1/timetracker/TaskTimes$TimesAdapter;)Lnet/ser1/timetracker/TaskTimes;

    move-result-object v1

    #getter for: Lnet/ser1/timetracker/TaskTimes;->decimalFormat:Z
    invoke-static {v1}, Lnet/ser1/timetracker/TaskTimes;->access$1(Lnet/ser1/timetracker/TaskTimes;)Z

    move-result v1

    invoke-virtual {p1}, Lnet/ser1/timetracker/TimeRange;->getTotal()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lnet/ser1/timetracker/Tasks;->formatTotal(ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    return-void
.end method
