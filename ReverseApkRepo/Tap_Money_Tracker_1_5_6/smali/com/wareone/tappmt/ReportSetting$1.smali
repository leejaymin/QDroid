.class Lcom/wareone/tappmt/ReportSetting$1;
.super Ljava/lang/Object;
.source "ReportSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/ReportSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/ReportSetting;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/ReportSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/ReportSetting$1;->this$0:Lcom/wareone/tappmt/ReportSetting;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/ReportSetting$1;)Lcom/wareone/tappmt/ReportSetting;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wareone/tappmt/ReportSetting$1;->this$0:Lcom/wareone/tappmt/ReportSetting;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 42
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 43
    .local v6, curDate:Ljava/util/Calendar;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 46
    .local v7, df:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v1, p0, Lcom/wareone/tappmt/ReportSetting$1;->this$0:Lcom/wareone/tappmt/ReportSetting;

    #getter for: Lcom/wareone/tappmt/ReportSetting;->m_range:[Ljava/lang/String;
    invoke-static {v1}, Lcom/wareone/tappmt/ReportSetting;->access$0(Lcom/wareone/tappmt/ReportSetting;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 50
    .local v8, during_date:Ljava/util/Date;
    :goto_0
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 52
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/wareone/tappmt/ReportSetting$1;->this$0:Lcom/wareone/tappmt/ReportSetting;

    .line 53
    new-instance v2, Lcom/wareone/tappmt/ReportSetting$1$1;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/ReportSetting$1$1;-><init>(Lcom/wareone/tappmt/ReportSetting$1;)V

    .line 70
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 52
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 73
    .local v0, dlg:Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 75
    return-void

    .line 47
    .end local v0           #dlg:Landroid/app/DatePickerDialog;
    .end local v8           #during_date:Ljava/util/Date;
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 48
    .local v9, e:Ljava/lang/Exception;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .restart local v8       #during_date:Ljava/util/Date;
    goto :goto_0
.end method
