.class Lcom/wareone/tappmt/ReportSetting$1$1;
.super Ljava/lang/Object;
.source "ReportSetting.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/ReportSetting$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/ReportSetting$1;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/ReportSetting$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/ReportSetting$1$1;->this$1:Lcom/wareone/tappmt/ReportSetting$1;

    .line 53
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
    .line 59
    sget-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 60
    .local v0, curDate:Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 62
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, df:Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/wareone/tappmt/ReportSetting$1$1;->this$1:Lcom/wareone/tappmt/ReportSetting$1;

    #getter for: Lcom/wareone/tappmt/ReportSetting$1;->this$0:Lcom/wareone/tappmt/ReportSetting;
    invoke-static {v3}, Lcom/wareone/tappmt/ReportSetting$1;->access$0(Lcom/wareone/tappmt/ReportSetting$1;)Lcom/wareone/tappmt/ReportSetting;

    move-result-object v3

    const v4, 0x7f0c00a1

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/ReportSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 64
    .local v2, edtFrom:Landroid/widget/EditText;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v3, p0, Lcom/wareone/tappmt/ReportSetting$1$1;->this$1:Lcom/wareone/tappmt/ReportSetting$1;

    #getter for: Lcom/wareone/tappmt/ReportSetting$1;->this$0:Lcom/wareone/tappmt/ReportSetting;
    invoke-static {v3}, Lcom/wareone/tappmt/ReportSetting$1;->access$0(Lcom/wareone/tappmt/ReportSetting$1;)Lcom/wareone/tappmt/ReportSetting;

    move-result-object v3

    #getter for: Lcom/wareone/tappmt/ReportSetting;->m_range:[Ljava/lang/String;
    invoke-static {v3}, Lcom/wareone/tappmt/ReportSetting;->access$0(Lcom/wareone/tappmt/ReportSetting;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 68
    return-void
.end method
