.class Lcom/wareone/tappmt/ReminderEditor$1;
.super Ljava/lang/Object;
.source "ReminderEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/ReminderEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/ReminderEditor;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/ReminderEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/ReminderEditor$1;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/ReminderEditor$1;)Lcom/wareone/tappmt/ReminderEditor;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderEditor$1;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 77
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v6, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 80
    .local v6, df:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$1;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "begin_date"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 84
    .local v8, trans_date:Ljava/util/Date;
    :goto_0
    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$1()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 86
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$1;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    .line 87
    new-instance v2, Lcom/wareone/tappmt/ReminderEditor$1$1;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/ReminderEditor$1$1;-><init>(Lcom/wareone/tappmt/ReminderEditor$1;)V

    .line 115
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

    const/4 v9, 0x5

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 86
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 118
    .local v0, dlg:Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 120
    return-void

    .line 81
    .end local v0           #dlg:Landroid/app/DatePickerDialog;
    .end local v8           #trans_date:Ljava/util/Date;
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 82
    .local v7, e:Ljava/lang/Exception;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .restart local v8       #trans_date:Ljava/util/Date;
    goto :goto_0
.end method
