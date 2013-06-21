.class Lcom/ui/LapseIt/capture/ScheduleView$1$1;
.super Ljava/lang/Object;
.source "ScheduleView.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/capture/ScheduleView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/capture/ScheduleView$1;

.field private final synthetic val$calendar:Ljava/util/Calendar;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/ScheduleView$1;Ljava/util/Calendar;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->this$1:Lcom/ui/LapseIt/capture/ScheduleView$1;

    iput-object p2, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->val$calendar:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->val$v:Landroid/view/View;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v5, 0x0

    .line 124
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->val$calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 125
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->val$calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 126
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->val$calendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 127
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->val$calendar:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 129
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->val$calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, formatedDate:Ljava/lang/String;
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->val$v:Landroid/view/View;

    iget-object v2, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->this$1:Lcom/ui/LapseIt/capture/ScheduleView$1;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView$1;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;
    invoke-static {v2}, Lcom/ui/LapseIt/capture/ScheduleView$1;->access$0(Lcom/ui/LapseIt/capture/ScheduleView$1;)Lcom/ui/LapseIt/capture/ScheduleView;

    move-result-object v2

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleStart:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/ui/LapseIt/capture/ScheduleView;->access$2(Lcom/ui/LapseIt/capture/ScheduleView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 132
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->this$1:Lcom/ui/LapseIt/capture/ScheduleView$1;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView$1;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;
    invoke-static {v1}, Lcom/ui/LapseIt/capture/ScheduleView$1;->access$0(Lcom/ui/LapseIt/capture/ScheduleView$1;)Lcom/ui/LapseIt/capture/ScheduleView;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->val$calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    #setter for: Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleStartDate:J
    invoke-static {v1, v2, v3}, Lcom/ui/LapseIt/capture/ScheduleView;->access$3(Lcom/ui/LapseIt/capture/ScheduleView;J)V

    .line 143
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->val$v:Landroid/view/View;

    const v2, 0x7f0b006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_1
    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->val$v:Landroid/view/View;

    iget-object v2, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->this$1:Lcom/ui/LapseIt/capture/ScheduleView$1;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView$1;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;
    invoke-static {v2}, Lcom/ui/LapseIt/capture/ScheduleView$1;->access$0(Lcom/ui/LapseIt/capture/ScheduleView$1;)Lcom/ui/LapseIt/capture/ScheduleView;

    move-result-object v2

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleEnd:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/ui/LapseIt/capture/ScheduleView;->access$0(Lcom/ui/LapseIt/capture/ScheduleView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 134
    const-string v1, "trace"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->this$1:Lcom/ui/LapseIt/capture/ScheduleView$1;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView$1;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;
    invoke-static {v3}, Lcom/ui/LapseIt/capture/ScheduleView$1;->access$0(Lcom/ui/LapseIt/capture/ScheduleView$1;)Lcom/ui/LapseIt/capture/ScheduleView;

    move-result-object v3

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleStartDate:J
    invoke-static {v3}, Lcom/ui/LapseIt/capture/ScheduleView;->access$1(Lcom/ui/LapseIt/capture/ScheduleView;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->val$calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->this$1:Lcom/ui/LapseIt/capture/ScheduleView$1;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView$1;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;
    invoke-static {v1}, Lcom/ui/LapseIt/capture/ScheduleView$1;->access$0(Lcom/ui/LapseIt/capture/ScheduleView$1;)Lcom/ui/LapseIt/capture/ScheduleView;

    move-result-object v1

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleStartDate:J
    invoke-static {v1}, Lcom/ui/LapseIt/capture/ScheduleView;->access$1(Lcom/ui/LapseIt/capture/ScheduleView;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->val$calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->this$1:Lcom/ui/LapseIt/capture/ScheduleView$1;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView$1;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;
    invoke-static {v2}, Lcom/ui/LapseIt/capture/ScheduleView$1;->access$0(Lcom/ui/LapseIt/capture/ScheduleView$1;)Lcom/ui/LapseIt/capture/ScheduleView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/ScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->this$1:Lcom/ui/LapseIt/capture/ScheduleView$1;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView$1;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;
    invoke-static {v1}, Lcom/ui/LapseIt/capture/ScheduleView$1;->access$0(Lcom/ui/LapseIt/capture/ScheduleView$1;)Lcom/ui/LapseIt/capture/ScheduleView;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$1;->val$calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    #setter for: Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleEndDate:J
    invoke-static {v1, v2, v3}, Lcom/ui/LapseIt/capture/ScheduleView;->access$4(Lcom/ui/LapseIt/capture/ScheduleView;J)V

    goto/16 :goto_0
.end method
