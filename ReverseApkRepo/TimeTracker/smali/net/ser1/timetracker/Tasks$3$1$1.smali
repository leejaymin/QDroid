.class Lnet/ser1/timetracker/Tasks$3$1$1;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ser1/timetracker/Tasks$3$1;->onDateSet(Landroid/widget/DatePicker;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lnet/ser1/timetracker/Tasks$3$1;


# direct methods
.method constructor <init>(Lnet/ser1/timetracker/Tasks$3$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/ser1/timetracker/Tasks$3$1$1;->this$2:Lnet/ser1/timetracker/Tasks$3$1;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 8
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0xd

    const/16 v4, 0xc

    const/16 v3, 0xa

    const/4 v5, 0x5

    .line 477
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 478
    .local v1, end:Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 479
    const/4 v2, 0x2

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 480
    invoke-virtual {v1, v5, p4}, Ljava/util/Calendar;->set(II)V

    .line 481
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 482
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 483
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 484
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    invoke-virtual {v1, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 485
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks$3$1$1;->this$2:Lnet/ser1/timetracker/Tasks$3$1;

    #getter for: Lnet/ser1/timetracker/Tasks$3$1;->this$1:Lnet/ser1/timetracker/Tasks$3;
    invoke-static {v2}, Lnet/ser1/timetracker/Tasks$3$1;->access$0(Lnet/ser1/timetracker/Tasks$3$1;)Lnet/ser1/timetracker/Tasks$3;

    move-result-object v2

    #getter for: Lnet/ser1/timetracker/Tasks$3;->this$0:Lnet/ser1/timetracker/Tasks;
    invoke-static {v2}, Lnet/ser1/timetracker/Tasks$3;->access$0(Lnet/ser1/timetracker/Tasks$3;)Lnet/ser1/timetracker/Tasks;

    move-result-object v2

    #getter for: Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lnet/ser1/timetracker/Tasks;->access$2(Lnet/ser1/timetracker/Tasks;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 486
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "end_date"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 488
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks$3$1$1;->this$2:Lnet/ser1/timetracker/Tasks$3$1;

    #getter for: Lnet/ser1/timetracker/Tasks$3$1;->this$1:Lnet/ser1/timetracker/Tasks$3;
    invoke-static {v2}, Lnet/ser1/timetracker/Tasks$3$1;->access$0(Lnet/ser1/timetracker/Tasks$3$1;)Lnet/ser1/timetracker/Tasks$3;

    move-result-object v2

    #getter for: Lnet/ser1/timetracker/Tasks$3;->this$0:Lnet/ser1/timetracker/Tasks;
    invoke-static {v2}, Lnet/ser1/timetracker/Tasks$3;->access$0(Lnet/ser1/timetracker/Tasks$3;)Lnet/ser1/timetracker/Tasks;

    move-result-object v2

    #calls: Lnet/ser1/timetracker/Tasks;->switchView(I)V
    invoke-static {v2, v5}, Lnet/ser1/timetracker/Tasks;->access$13(Lnet/ser1/timetracker/Tasks;I)V

    .line 489
    return-void
.end method
