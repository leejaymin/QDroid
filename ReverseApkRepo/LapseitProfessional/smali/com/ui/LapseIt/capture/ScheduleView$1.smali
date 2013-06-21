.class Lcom/ui/LapseIt/capture/ScheduleView$1;
.super Ljava/lang/Object;
.source "ScheduleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/capture/ScheduleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/capture/ScheduleView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/ScheduleView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/capture/ScheduleView$1;)Lcom/ui/LapseIt/capture/ScheduleView;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ui/LapseIt/capture/ScheduleView$1;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleEnd:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/ui/LapseIt/capture/ScheduleView;->access$0(Lcom/ui/LapseIt/capture/ScheduleView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;

    #getter for: Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleStartDate:J
    invoke-static {v1}, Lcom/ui/LapseIt/capture/ScheduleView;->access$1(Lcom/ui/LapseIt/capture/ScheduleView;)J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v1, v3, v8

    if-nez v1, :cond_0

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView$1;->this$0:Lcom/ui/LapseIt/capture/ScheduleView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/capture/ScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 158
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 121
    .local v6, calendar:Ljava/util/Calendar;
    new-instance v7, Lcom/ui/LapseIt/capture/ScheduleView$1$1;

    invoke-direct {v7, p0, v6, p1}, Lcom/ui/LapseIt/capture/ScheduleView$1$1;-><init>(Lcom/ui/LapseIt/capture/ScheduleView$1;Ljava/util/Calendar;Landroid/view/View;)V

    .line 147
    .local v7, timeCallback:Landroid/app/TimePickerDialog$OnTimeSetListener;
    new-instance v2, Lcom/ui/LapseIt/capture/ScheduleView$1$2;

    invoke-direct {v2, p0, v6, p1, v7}, Lcom/ui/LapseIt/capture/ScheduleView$1$2;-><init>(Lcom/ui/LapseIt/capture/ScheduleView$1;Ljava/util/Calendar;Landroid/view/View;Landroid/app/TimePickerDialog$OnTimeSetListener;)V

    .line 156
    .local v2, dateCallback:Landroid/app/DatePickerDialog$OnDateSetListener;
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 157
    .local v0, dateDialog:Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_0
.end method
