.class Lnet/ser1/timetracker/Tasks$3$1;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ser1/timetracker/Tasks$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/ser1/timetracker/Tasks$3;


# direct methods
.method constructor <init>(Lnet/ser1/timetracker/Tasks$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/ser1/timetracker/Tasks$3$1;->this$1:Lnet/ser1/timetracker/Tasks$3;

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/ser1/timetracker/Tasks$3$1;)Lnet/ser1/timetracker/Tasks$3;
    .locals 1
    .parameter

    .prologue
    .line 456
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$3$1;->this$1:Lnet/ser1/timetracker/Tasks$3;

    return-object v0
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 8
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/16 v4, 0xe

    const/16 v3, 0xd

    const/16 v2, 0xc

    const/16 v1, 0xa

    .line 460
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 461
    .local v7, start:Ljava/util/Calendar;
    const/4 v0, 0x1

    invoke-virtual {v7, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 462
    const/4 v0, 0x2

    invoke-virtual {v7, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 463
    const/4 v0, 0x5

    invoke-virtual {v7, v0, p4}, Ljava/util/Calendar;->set(II)V

    .line 464
    invoke-virtual {v7, v1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v0

    invoke-virtual {v7, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 465
    invoke-virtual {v7, v2}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v0

    invoke-virtual {v7, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 466
    invoke-virtual {v7, v3}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v0

    invoke-virtual {v7, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 467
    invoke-virtual {v7, v4}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v0

    invoke-virtual {v7, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 468
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$3$1;->this$1:Lnet/ser1/timetracker/Tasks$3;

    #getter for: Lnet/ser1/timetracker/Tasks$3;->this$0:Lnet/ser1/timetracker/Tasks;
    invoke-static {v0}, Lnet/ser1/timetracker/Tasks$3;->access$0(Lnet/ser1/timetracker/Tasks$3;)Lnet/ser1/timetracker/Tasks;

    move-result-object v0

    #getter for: Lnet/ser1/timetracker/Tasks;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lnet/ser1/timetracker/Tasks;->access$2(Lnet/ser1/timetracker/Tasks;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 469
    .local v6, ed:Landroid/content/SharedPreferences$Editor;
    const-string v0, "start_date"

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-interface {v6, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 470
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 472
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lnet/ser1/timetracker/Tasks$3$1;->this$1:Lnet/ser1/timetracker/Tasks$3;

    #getter for: Lnet/ser1/timetracker/Tasks$3;->this$0:Lnet/ser1/timetracker/Tasks;
    invoke-static {v1}, Lnet/ser1/timetracker/Tasks$3;->access$0(Lnet/ser1/timetracker/Tasks$3;)Lnet/ser1/timetracker/Tasks;

    move-result-object v1

    .line 473
    new-instance v2, Lnet/ser1/timetracker/Tasks$3$1$1;

    invoke-direct {v2, p0}, Lnet/ser1/timetracker/Tasks$3$1$1;-><init>(Lnet/ser1/timetracker/Tasks$3$1;)V

    move v3, p2

    move v4, p3

    move v5, p4

    .line 472
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 493
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 494
    return-void
.end method
