.class Lcom/wareone/tappmt/ReminderEditor$2$1$1;
.super Ljava/lang/Object;
.source "ReminderEditor.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/ReminderEditor$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/wareone/tappmt/ReminderEditor$2$1;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/ReminderEditor$2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/ReminderEditor$2$1$1;->this$2:Lcom/wareone/tappmt/ReminderEditor$2$1;

    .line 162
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
    .line 169
    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$1()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 170
    iget-object v2, p0, Lcom/wareone/tappmt/ReminderEditor$2$1$1;->this$2:Lcom/wareone/tappmt/ReminderEditor$2$1;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$2$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$2;
    invoke-static {v2}, Lcom/wareone/tappmt/ReminderEditor$2$1;->access$0(Lcom/wareone/tappmt/ReminderEditor$2$1;)Lcom/wareone/tappmt/ReminderEditor$2;

    move-result-object v2

    #getter for: Lcom/wareone/tappmt/ReminderEditor$2;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v2}, Lcom/wareone/tappmt/ReminderEditor$2;->access$0(Lcom/wareone/tappmt/ReminderEditor$2;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v2

    const v3, 0x7f0c001a

    invoke-virtual {v2, v3}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 173
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, df:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$1()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wareone/tappmt/ReminderEditor$2$1$1;->this$2:Lcom/wareone/tappmt/ReminderEditor$2$1;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$2$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$2;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor$2$1;->access$0(Lcom/wareone/tappmt/ReminderEditor$2$1;)Lcom/wareone/tappmt/ReminderEditor$2;

    move-result-object v3

    #getter for: Lcom/wareone/tappmt/ReminderEditor$2;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor$2;->access$0(Lcom/wareone/tappmt/ReminderEditor$2;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v3

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_week_day:[Ljava/lang/String;
    invoke-static {v3}, Lcom/wareone/tappmt/ReminderEditor;->access$2(Lcom/wareone/tappmt/ReminderEditor;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$1()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v2, p0, Lcom/wareone/tappmt/ReminderEditor$2$1$1;->this$2:Lcom/wareone/tappmt/ReminderEditor$2$1;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$2$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$2;
    invoke-static {v2}, Lcom/wareone/tappmt/ReminderEditor$2$1;->access$0(Lcom/wareone/tappmt/ReminderEditor$2$1;)Lcom/wareone/tappmt/ReminderEditor$2;

    move-result-object v2

    #getter for: Lcom/wareone/tappmt/ReminderEditor$2;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v2}, Lcom/wareone/tappmt/ReminderEditor$2;->access$0(Lcom/wareone/tappmt/ReminderEditor$2;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v2

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "due_date"

    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$1()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method
