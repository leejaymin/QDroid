.class public Lcom/wareone/tappmt/ReportList;
.super Landroid/app/ListActivity;
.source "ReportList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/ReportList$SettingAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private curDate:Ljava/util/Calendar;

.field private m_data:[Ljava/lang/String;

.field private m_icons:[I

.field private m_range:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/wareone/tappmt/ReportList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/ReportList;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/wareone/tappmt/ReportList;->m_icons:[I

    .line 247
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wareone/tappmt/ReportList;->m_range:[Ljava/lang/String;

    .line 30
    return-void

    .line 32
    :array_0
    .array-data 0x4
        0x87t 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/ReportList;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/wareone/tappmt/ReportList;->m_data:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/ReportList;)[I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wareone/tappmt/ReportList;->m_icons:[I

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const v0, 0x7f090071

    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/ReportList;->setTitle(I)V

    .line 139
    invoke-virtual {p0}, Lcom/wareone/tappmt/ReportList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 141
    invoke-virtual {p0}, Lcom/wareone/tappmt/ReportList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wareone/tappmt/ReportList;->m_data:[Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/wareone/tappmt/ReportList$SettingAdapter;

    invoke-direct {v0, p0, p0}, Lcom/wareone/tappmt/ReportList$SettingAdapter;-><init>(Lcom/wareone/tappmt/ReportList;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/wareone/tappmt/ReportList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 170
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, df:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/wareone/tappmt/ReportList;->curDate:Ljava/util/Calendar;

    .line 172
    iget-object v2, p0, Lcom/wareone/tappmt/ReportList;->curDate:Ljava/util/Calendar;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 173
    iget-object v2, p0, Lcom/wareone/tappmt/ReportList;->curDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 174
    iget-object v2, p0, Lcom/wareone/tappmt/ReportList;->m_range:[Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wareone/tappmt/ReportList;->curDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 175
    iget-object v2, p0, Lcom/wareone/tappmt/ReportList;->curDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/wareone/tappmt/ReportList;->curDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 176
    iget-object v2, p0, Lcom/wareone/tappmt/ReportList;->m_range:[Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/wareone/tappmt/ReportList;->curDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, intent:Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 240
    :goto_0
    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/ReportList;->startActivity(Landroid/content/Intent;)V

    .line 243
    :cond_0
    return-void

    .line 182
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v2, Lcom/wareone/tappmt/Reports;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "RANGE"

    iget-object v3, p0, Lcom/wareone/tappmt/ReportList;->m_range:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v2, "TYPE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 187
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v2, Lcom/wareone/tappmt/BudgetReport;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "RANGE"

    iget-object v3, p0, Lcom/wareone/tappmt/ReportList;->m_range:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 191
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v2, Lcom/wareone/tappmt/Reports;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "RANGE"

    iget-object v3, p0, Lcom/wareone/tappmt/ReportList;->m_range:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v2, "TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const-string v2, "GROUPBY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 197
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v2, Lcom/wareone/tappmt/Reports;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "RANGE"

    iget-object v3, p0, Lcom/wareone/tappmt/ReportList;->m_range:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v2, "TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v2, "GROUPBY"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 203
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v2, Lcom/wareone/tappmt/Reports;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "RANGE"

    iget-object v3, p0, Lcom/wareone/tappmt/ReportList;->m_range:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v2, "TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string v2, "GROUPBY"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 209
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v2, Lcom/wareone/tappmt/Reports;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "RANGE"

    iget-object v3, p0, Lcom/wareone/tappmt/ReportList;->m_range:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v2, "TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-string v2, "GROUPBY"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 215
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v2, Lcom/wareone/tappmt/Chart;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "RANGE"

    iget-object v3, p0, Lcom/wareone/tappmt/ReportList;->m_range:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v2, "TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const-string v2, "GROUPBY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 221
    :pswitch_7
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v2, Lcom/wareone/tappmt/Chart;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "RANGE"

    iget-object v3, p0, Lcom/wareone/tappmt/ReportList;->m_range:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v2, "TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string v2, "GROUPBY"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 227
    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v2, Lcom/wareone/tappmt/Chart;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "RANGE"

    iget-object v3, p0, Lcom/wareone/tappmt/ReportList;->m_range:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v2, "TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const-string v2, "GROUPBY"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 233
    :pswitch_9
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-class v2, Lcom/wareone/tappmt/Chart;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "RANGE"

    iget-object v3, p0, Lcom/wareone/tappmt/ReportList;->m_range:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v2, "TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    const-string v2, "GROUPBY"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
