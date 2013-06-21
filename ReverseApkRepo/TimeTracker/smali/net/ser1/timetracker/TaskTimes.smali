.class public Lnet/ser1/timetracker/TaskTimes;
.super Landroid/app/ListActivity;
.source "TaskTimes.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/ser1/timetracker/TaskTimes$TimesAdapter;
    }
.end annotation


# static fields
.field private static final ADD_TIME:I = 0x0

.field private static final DELETE_TIME:I = 0x2

.field private static final EDIT_ACTION_BUNDLE_KEY:Ljava/lang/String; = "edit_action"

.field private static final EDIT_TIME:I = 0x3

.field private static FONT_SIZE:I = 0x0

.field private static final MOVE_TIME:I = 0x4

.field private static final SELECTED_RANGE_END:Ljava/lang/String; = "selected_range_end"

.field private static final SELECTED_RANGE_START:Ljava/lang/String; = "selected_range_start"

.field private static final SEP:I = -0x63

.field private static final SEPFORMAT:Ljava/text/DateFormat;


# instance fields
.field private action:I

.field private adapter:Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

.field private decimalFormat:Z

.field private selectedRange:Lnet/ser1/timetracker/TimeRange;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE, MMM dd yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lnet/ser1/timetracker/TaskTimes;->SEPFORMAT:Ljava/text/DateFormat;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lnet/ser1/timetracker/TaskTimes;->FONT_SIZE:I

    return v0
.end method

.method static synthetic access$1(Lnet/ser1/timetracker/TaskTimes;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lnet/ser1/timetracker/TaskTimes;->decimalFormat:Z

    return v0
.end method

.method static synthetic access$2()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lnet/ser1/timetracker/TaskTimes;->SEPFORMAT:Ljava/text/DateFormat;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "intent"

    .prologue
    .line 535
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 536
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "start-date"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 537
    .local v1, sd:J
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "end-date"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 538
    .local v3, ed:J
    packed-switch p1, :pswitch_data_0

    .line 548
    .end local v1           #sd:J
    .end local v3           #ed:J
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lnet/ser1/timetracker/TaskTimes;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 549
    return-void

    .line 540
    .restart local v1       #sd:J
    .restart local v3       #ed:J
    :pswitch_1
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes;->adapter:Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->addTimeRange(JJ)V

    goto :goto_0

    .line 543
    :pswitch_2
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes;->adapter:Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

    .line 544
    invoke-virtual {p0}, Lnet/ser1/timetracker/TaskTimes;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "task_id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lnet/ser1/timetracker/TaskTimes;->selectedRange:Lnet/ser1/timetracker/TimeRange;

    .line 543
    invoke-virtual/range {v0 .. v6}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->updateTimeRange(JJILnet/ser1/timetracker/TimeRange;)V

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 172
    iget v0, p0, Lnet/ser1/timetracker/TaskTimes;->action:I

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    :pswitch_0
    if-eqz p0, :cond_0

    .line 183
    invoke-virtual {p0}, Lnet/ser1/timetracker/TaskTimes;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 184
    :cond_0
    return-void

    .line 174
    :pswitch_1
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes;->adapter:Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

    iget-object v1, p0, Lnet/ser1/timetracker/TaskTimes;->selectedRange:Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {v0, v1}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->deleteTimeRange(Lnet/ser1/timetracker/TimeRange;)V

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes;->adapter:Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

    iget-object v1, p0, Lnet/ser1/timetracker/TaskTimes;->selectedRange:Lnet/ser1/timetracker/TimeRange;

    #calls: Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->assignTimeToTaskAt(Lnet/ser1/timetracker/TimeRange;I)V
    invoke-static {v0, v1, p2}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->access$0(Lnet/ser1/timetracker/TaskTimes$TimesAdapter;Lnet/ser1/timetracker/TimeRange;I)V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 150
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-object v3, p0, Lnet/ser1/timetracker/TaskTimes;->adapter:Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

    iget-wide v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/ser1/timetracker/TimeRange;

    iput-object v3, p0, Lnet/ser1/timetracker/TaskTimes;->selectedRange:Lnet/ser1/timetracker/TimeRange;

    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 152
    .local v0, id:I
    iput v0, p0, Lnet/ser1/timetracker/TaskTimes;->action:I

    .line 153
    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 155
    :pswitch_0
    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/TaskTimes;->showDialog(I)V

    goto :goto_0

    .line 158
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lnet/ser1/timetracker/EditTime;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "start-date"

    iget-object v4, p0, Lnet/ser1/timetracker/TaskTimes;->selectedRange:Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {v4}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 160
    const-string v3, "end-date"

    iget-object v4, p0, Lnet/ser1/timetracker/TaskTimes;->selectedRange:Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {v4}, Lnet/ser1/timetracker/TimeRange;->getEnd()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v2, v0}, Lnet/ser1/timetracker/TaskTimes;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 164
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/TaskTimes;->showDialog(I)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const-string v4, "task_id"

    const-string v3, "start"

    const-string v9, "selected_range_start"

    const-string v8, "edit_action"

    .line 68
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const-string v0, "timetracker.pref"

    invoke-virtual {p0, v0, v2}, Lnet/ser1/timetracker/TaskTimes;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 70
    .local v7, preferences:Landroid/content/SharedPreferences;
    const-string v0, "font-size"

    const/16 v1, 0x10

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lnet/ser1/timetracker/TaskTimes;->FONT_SIZE:I

    .line 71
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes;->adapter:Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

    invoke-direct {v0, p0, p0}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;-><init>(Lnet/ser1/timetracker/TaskTimes;Landroid/content/Context;)V

    iput-object v0, p0, Lnet/ser1/timetracker/TaskTimes;->adapter:Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

    .line 73
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes;->adapter:Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/TaskTimes;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    :cond_0
    const-string v0, "time_display"

    invoke-interface {v7, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnet/ser1/timetracker/TaskTimes;->decimalFormat:Z

    .line 76
    invoke-virtual {p0}, Lnet/ser1/timetracker/TaskTimes;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/ser1/timetracker/TaskTimes;->registerForContextMenu(Landroid/view/View;)V

    .line 77
    invoke-virtual {p0}, Lnet/ser1/timetracker/TaskTimes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 78
    .local v6, extras:Landroid/os/Bundle;
    const-string v0, "start"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes;->adapter:Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

    const-string v1, "task_id"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 80
    const-string v2, "start"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 81
    const-string v4, "end"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 79
    invoke-virtual/range {v0 .. v5}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->loadTimes(IJJ)V

    .line 86
    :goto_0
    if-eqz p1, :cond_2

    .line 87
    const-string v0, "edit_action"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string v0, "edit_action"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/ser1/timetracker/TaskTimes;->action:I

    .line 90
    :cond_1
    const-string v0, "selected_range_start"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    new-instance v0, Lnet/ser1/timetracker/TimeRange;

    .line 92
    const-string v1, "selected_range_start"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 93
    const-string v3, "selected_range_end"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/ser1/timetracker/TimeRange;-><init>(JJ)V

    .line 91
    iput-object v0, p0, Lnet/ser1/timetracker/TaskTimes;->selectedRange:Lnet/ser1/timetracker/TimeRange;

    .line 97
    :cond_2
    return-void

    .line 83
    :cond_3
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes;->adapter:Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

    const-string v1, "task_id"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->loadTimes(I)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 141
    const-string v0, "Time menu"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 142
    const/4 v0, 0x3

    const-string v1, "Edit Time"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 143
    const/4 v0, 0x2

    const-string v1, "Delete Time"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 144
    const/4 v0, 0x4

    const-string v1, "Move Time"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 145
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 188
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v0, v2

    .line 204
    :goto_0
    return-object v0

    .line 190
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 192
    const v1, 0x108008a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 193
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 194
    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 195
    const v1, 0x7f060007

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 196
    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 198
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    iget-object v1, p0, Lnet/ser1/timetracker/TaskTimes;->adapter:Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

    invoke-virtual {v1}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->getTaskNames()Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/AlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 123
    const v0, 0x7f06000f

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 553
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 555
    invoke-virtual {p0}, Lnet/ser1/timetracker/TaskTimes;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/ser1/timetracker/TimeRange;

    iput-object v1, p0, Lnet/ser1/timetracker/TaskTimes;->selectedRange:Lnet/ser1/timetracker/TimeRange;

    .line 556
    iget-object v1, p0, Lnet/ser1/timetracker/TaskTimes;->selectedRange:Lnet/ser1/timetracker/TimeRange;

    if-eqz v1, :cond_0

    .line 557
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/ser1/timetracker/EditTime;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 558
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "start-date"

    iget-object v2, p0, Lnet/ser1/timetracker/TaskTimes;->selectedRange:Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {v2}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 559
    const-string v1, "end-date"

    iget-object v2, p0, Lnet/ser1/timetracker/TaskTimes;->selectedRange:Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {v2}, Lnet/ser1/timetracker/TimeRange;->getEnd()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 560
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lnet/ser1/timetracker/TaskTimes;->startActivityForResult(Landroid/content/Intent;I)V

    .line 562
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "i"

    .prologue
    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 130
    .local v0, id:I
    if-nez v0, :cond_0

    .line 131
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnet/ser1/timetracker/EditTime;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "clear"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v1, v0}, Lnet/ser1/timetracker/TaskTimes;->startActivityForResult(Landroid/content/Intent;I)V

    .line 135
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "d"

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 210
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 117
    invoke-virtual {p0}, Lnet/ser1/timetracker/TaskTimes;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 118
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 101
    const-string v0, "edit_action"

    iget v1, p0, Lnet/ser1/timetracker/TaskTimes;->action:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes;->selectedRange:Lnet/ser1/timetracker/TimeRange;

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "selected_range_start"

    iget-object v1, p0, Lnet/ser1/timetracker/TaskTimes;->selectedRange:Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {v1}, Lnet/ser1/timetracker/TimeRange;->getStart()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 104
    const-string v0, "selected_range_end"

    iget-object v1, p0, Lnet/ser1/timetracker/TaskTimes;->selectedRange:Lnet/ser1/timetracker/TimeRange;

    invoke-virtual {v1}, Lnet/ser1/timetracker/TimeRange;->getEnd()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 106
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lnet/ser1/timetracker/TaskTimes;->adapter:Lnet/ser1/timetracker/TaskTimes$TimesAdapter;

    invoke-virtual {v0}, Lnet/ser1/timetracker/TaskTimes$TimesAdapter;->close()V

    .line 111
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 112
    return-void
.end method
