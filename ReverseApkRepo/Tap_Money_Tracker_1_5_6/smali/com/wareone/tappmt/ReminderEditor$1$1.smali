.class Lcom/wareone/tappmt/ReminderEditor$1$1;
.super Ljava/lang/Object;
.source "ReminderEditor.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/ReminderEditor$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/ReminderEditor$1;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/ReminderEditor$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/ReminderEditor$1$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$1;

    .line 87
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
    const/4 v7, 0x1

    .line 94
    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$1()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 95
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$1$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$1;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$1;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor$1;->access$0(Lcom/wareone/tappmt/ReminderEditor$1;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v3

    const v4, 0x7f0c0018

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 98
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, df:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 100
    .local v2, today:Ljava/util/Calendar;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 102
    :try_start_0
    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$1()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$1$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$1;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$1;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor$1;->access$0(Lcom/wareone/tappmt/ReminderEditor$1;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v3

    iget-object v4, p0, Lcom/wareone/tappmt/ReminderEditor$1$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$1;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$1;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v4}, Lcom/wareone/tappmt/ReminderEditor$1;->access$0(Lcom/wareone/tappmt/ReminderEditor$1;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wareone/tappmt/ReminderEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 113
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$1()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wareone/tappmt/ReminderEditor$1$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$1;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$1;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v4}, Lcom/wareone/tappmt/ReminderEditor$1;->access$0(Lcom/wareone/tappmt/ReminderEditor$1;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v4

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_week_day:[Ljava/lang/String;
    invoke-static {v4}, Lcom/wareone/tappmt/ReminderEditor;->access$2(Lcom/wareone/tappmt/ReminderEditor;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$1()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int/2addr v5, v7

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$1$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$1;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$1;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor$1;->access$0(Lcom/wareone/tappmt/ReminderEditor$1;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v3

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "begin_date"

    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$1()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$1$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$1;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$1;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor$1;->access$0(Lcom/wareone/tappmt/ReminderEditor$1;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v3

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "next_date"

    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$1()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v3

    goto :goto_0
.end method
