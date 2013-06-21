.class Lcom/wareone/tappmt/ReminderEditor$2$1;
.super Ljava/lang/Object;
.source "ReminderEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/ReminderEditor$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/ReminderEditor$2;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/ReminderEditor$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/ReminderEditor$2$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$2;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/ReminderEditor$2$1;)Lcom/wareone/tappmt/ReminderEditor$2;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderEditor$2$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$2;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "position"

    .prologue
    const-string v4, ""

    const-string v3, "due_date"

    .line 141
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$2$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$2;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$2;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor$2;->access$0(Lcom/wareone/tappmt/ReminderEditor$2;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v1

    const v2, 0x7f0c0095

    invoke-virtual {v1, v2}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 142
    .local v9, edt:Landroid/widget/EditText;
    const-string v1, "0"

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$2$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$2;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$2;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor$2;->access$0(Lcom/wareone/tappmt/ReminderEditor$2;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v1

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "due_date"

    const-string v2, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-nez p2, :cond_0

    .line 146
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$2$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$2;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$2;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor$2;->access$0(Lcom/wareone/tappmt/ReminderEditor$2;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v1

    const v2, 0x7f0c001a

    invoke-virtual {v1, v2}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 147
    .local v6, btn:Landroid/widget/Button;
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$2$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$2;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$2;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor$2;->access$0(Lcom/wareone/tappmt/ReminderEditor$2;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v1

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_due:[Ljava/lang/String;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor;->access$3(Lcom/wareone/tappmt/ReminderEditor;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$2$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$2;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$2;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor$2;->access$0(Lcom/wareone/tappmt/ReminderEditor$2;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v1

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "due_date"

    const-string v2, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 185
    .end local v6           #btn:Landroid/widget/Button;
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 153
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 156
    .local v7, df:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$2$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$2;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$2;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor$2;->access$0(Lcom/wareone/tappmt/ReminderEditor$2;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v1

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "due_date"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 160
    .local v10, trans_date:Ljava/util/Date;
    :goto_1
    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$1()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 161
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$2$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$2;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$2;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor$2;->access$0(Lcom/wareone/tappmt/ReminderEditor$2;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v1

    .line 162
    new-instance v2, Lcom/wareone/tappmt/ReminderEditor$2$1$1;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/ReminderEditor$2$1$1;-><init>(Lcom/wareone/tappmt/ReminderEditor$2$1;)V

    .line 180
    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$1()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$1()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$1()Ljava/util/Calendar;

    move-result-object v5

    const/4 v11, 0x5

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 161
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 183
    .local v0, dlg:Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_0

    .line 157
    .end local v0           #dlg:Landroid/app/DatePickerDialog;
    .end local v10           #trans_date:Ljava/util/Date;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 158
    .local v8, e:Ljava/lang/Exception;
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .restart local v10       #trans_date:Ljava/util/Date;
    goto :goto_1
.end method
