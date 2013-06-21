.class public Lnet/ser1/timetracker/EditTime;
.super Landroid/app/Activity;
.source "EditTime.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final CLEAR:Ljava/lang/String; = "clear"

.field protected static final END_DATE:Ljava/lang/String; = "end-date"

.field protected static final START_DATE:Ljava/lang/String; = "start-date"


# instance fields
.field private editingRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/ser1/timetracker/EditTime;->editingRunning:Z

    .line 21
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 11

    .prologue
    const/4 v6, 0x2

    .line 80
    const v2, 0x7f070006

    invoke-virtual {p0, v2}, Lnet/ser1/timetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/DatePicker;

    .line 81
    .local v9, startDate:Landroid/widget/DatePicker;
    const v2, 0x7f070007

    invoke-virtual {p0, v2}, Lnet/ser1/timetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TimePicker;

    .line 82
    .local v10, startTime:Landroid/widget/TimePicker;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    .local v0, s:Ljava/util/Calendar;
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 84
    invoke-virtual {v9}, Landroid/widget/DatePicker;->getYear()I

    move-result v1

    invoke-virtual {v9}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v9}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v3

    .line 85
    invoke-virtual {v10}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v10}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 84
    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    .line 86
    invoke-virtual {p0}, Lnet/ser1/timetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "start-date"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 88
    iget-boolean v2, p0, Lnet/ser1/timetracker/EditTime;->editingRunning:Z

    if-nez v2, :cond_1

    .line 89
    const v2, 0x7f07000c

    invoke-virtual {p0, v2}, Lnet/ser1/timetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/DatePicker;

    .line 90
    .local v7, endDate:Landroid/widget/DatePicker;
    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Lnet/ser1/timetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TimePicker;

    .line 91
    .local v8, endTime:Landroid/widget/TimePicker;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 92
    .local v1, e:Ljava/util/Calendar;
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 93
    invoke-virtual {v7}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v7}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {v7}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    .line 94
    invoke-virtual {v8}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v8}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 93
    invoke-virtual/range {v1 .. v6}, Ljava/util/Calendar;->set(IIIII)V

    .line 95
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 96
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lnet/ser1/timetracker/EditTime;->showDialog(I)V

    .line 104
    .end local v1           #e:Ljava/util/Calendar;
    .end local v7           #endDate:Landroid/widget/DatePicker;
    .end local v8           #endTime:Landroid/widget/TimePicker;
    :goto_0
    return-void

    .line 99
    .restart local v1       #e:Ljava/util/Calendar;
    .restart local v7       #endDate:Landroid/widget/DatePicker;
    .restart local v8       #endTime:Landroid/widget/TimePicker;
    :cond_0
    invoke-virtual {p0}, Lnet/ser1/timetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "end-date"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 102
    .end local v1           #e:Ljava/util/Calendar;
    .end local v7           #endDate:Landroid/widget/DatePicker;
    .end local v8           #endTime:Landroid/widget/TimePicker;
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0}, Lnet/ser1/timetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lnet/ser1/timetracker/EditTime;->setResult(ILandroid/content/Intent;)V

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0}, Lnet/ser1/timetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/ser1/timetracker/EditTime;->setResult(ILandroid/content/Intent;)V

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lnet/ser1/timetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "end-date"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 32
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/EditTime;->setContentView(I)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/ser1/timetracker/EditTime;->editingRunning:Z

    .line 37
    :goto_0
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void

    .line 35
    :cond_0
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/EditTime;->setContentView(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 108
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 110
    const v1, 0x108008a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 112
    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 108
    return-object v0
.end method

.method protected onResume()V
    .locals 14

    .prologue
    const/16 v13, 0xc

    const/16 v12, 0xb

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 43
    const v6, 0x7f070006

    invoke-virtual {p0, v6}, Lnet/ser1/timetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/DatePicker;

    .line 44
    .local v4, startDate:Landroid/widget/DatePicker;
    const v6, 0x7f070007

    invoke-virtual {p0, v6}, Lnet/ser1/timetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TimePicker;

    .line 46
    .local v5, startTime:Landroid/widget/TimePicker;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 47
    .local v3, sd:Ljava/util/Calendar;
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 48
    invoke-virtual {p0}, Lnet/ser1/timetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "clear"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 49
    invoke-virtual {p0}, Lnet/ser1/timetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "start-date"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 51
    :cond_0
    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 52
    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 51
    invoke-virtual {v4, v6, v7, v8}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 53
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 54
    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 56
    iget-boolean v6, p0, Lnet/ser1/timetracker/EditTime;->editingRunning:Z

    if-nez v6, :cond_1

    .line 57
    const v6, 0x7f07000c

    invoke-virtual {p0, v6}, Lnet/ser1/timetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    .line 58
    .local v1, endDate:Landroid/widget/DatePicker;
    const v6, 0x7f07000d

    invoke-virtual {p0, v6}, Lnet/ser1/timetracker/EditTime;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TimePicker;

    .line 59
    .local v2, endTime:Landroid/widget/TimePicker;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 60
    .local v0, ed:Ljava/util/Calendar;
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 61
    invoke-virtual {p0}, Lnet/ser1/timetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "clear"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 62
    move-object v0, v3

    .line 66
    :goto_0
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 67
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 66
    invoke-virtual {v1, v6, v7, v8}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 68
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 69
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 71
    .end local v0           #ed:Ljava/util/Calendar;
    .end local v1           #endDate:Landroid/widget/DatePicker;
    .end local v2           #endTime:Landroid/widget/TimePicker;
    :cond_1
    return-void

    .line 64
    .restart local v0       #ed:Ljava/util/Calendar;
    .restart local v1       #endDate:Landroid/widget/DatePicker;
    .restart local v2       #endTime:Landroid/widget/TimePicker;
    :cond_2
    invoke-virtual {p0}, Lnet/ser1/timetracker/EditTime;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "end-date"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method
