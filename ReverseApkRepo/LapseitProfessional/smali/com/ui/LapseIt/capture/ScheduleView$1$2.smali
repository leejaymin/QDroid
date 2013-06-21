.class Lcom/ui/LapseIt/capture/ScheduleView$1$2;
.super Ljava/lang/Object;
.source "ScheduleView.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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

.field private final synthetic val$timeCallback:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/ScheduleView$1;Ljava/util/Calendar;Landroid/view/View;Landroid/app/TimePickerDialog$OnTimeSetListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$2;->this$1:Lcom/ui/LapseIt/capture/ScheduleView$1;

    iput-object p2, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$2;->val$calendar:Ljava/util/Calendar;

    iput-object p3, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$2;->val$v:Landroid/view/View;

    iput-object p4, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$2;->val$timeCallback:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$2;->val$calendar:Ljava/util/Calendar;

    invoke-virtual {v1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 151
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$2;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$2;->val$timeCallback:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$2;->val$calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/ui/LapseIt/capture/ScheduleView$1$2;->val$calendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 152
    .local v0, timePicker:Landroid/app/TimePickerDialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 153
    return-void
.end method
