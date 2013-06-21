.class Lcom/wareone/tappmt/ReportSetting$5;
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
    iput-object p1, p0, Lcom/wareone/tappmt/ReportSetting$5;->this$0:Lcom/wareone/tappmt/ReportSetting;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 167
    iget-object v3, p0, Lcom/wareone/tappmt/ReportSetting$5;->this$0:Lcom/wareone/tappmt/ReportSetting;

    const v4, 0x7f0c00a1

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/ReportSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 168
    .local v0, edtFrom:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/wareone/tappmt/ReportSetting$5;->this$0:Lcom/wareone/tappmt/ReportSetting;

    #getter for: Lcom/wareone/tappmt/ReportSetting;->m_range:[Ljava/lang/String;
    invoke-static {v3}, Lcom/wareone/tappmt/ReportSetting;->access$0(Lcom/wareone/tappmt/ReportSetting;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 169
    iget-object v3, p0, Lcom/wareone/tappmt/ReportSetting$5;->this$0:Lcom/wareone/tappmt/ReportSetting;

    const v4, 0x7f0c00a3

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/ReportSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 170
    .local v1, edtTo:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/wareone/tappmt/ReportSetting$5;->this$0:Lcom/wareone/tappmt/ReportSetting;

    #getter for: Lcom/wareone/tappmt/ReportSetting;->m_range:[Ljava/lang/String;
    invoke-static {v3}, Lcom/wareone/tappmt/ReportSetting;->access$0(Lcom/wareone/tappmt/ReportSetting;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, it:Landroid/content/Intent;
    iget-object v3, p0, Lcom/wareone/tappmt/ReportSetting$5;->this$0:Lcom/wareone/tappmt/ReportSetting;

    #getter for: Lcom/wareone/tappmt/ReportSetting;->m_type_index:I
    invoke-static {v3}, Lcom/wareone/tappmt/ReportSetting;->access$3(Lcom/wareone/tappmt/ReportSetting;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 185
    :goto_0
    const-string v3, "RANGE"

    iget-object v4, p0, Lcom/wareone/tappmt/ReportSetting$5;->this$0:Lcom/wareone/tappmt/ReportSetting;

    #getter for: Lcom/wareone/tappmt/ReportSetting;->m_range:[Ljava/lang/String;
    invoke-static {v4}, Lcom/wareone/tappmt/ReportSetting;->access$0(Lcom/wareone/tappmt/ReportSetting;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v3, "TYPE"

    iget-object v4, p0, Lcom/wareone/tappmt/ReportSetting$5;->this$0:Lcom/wareone/tappmt/ReportSetting;

    #getter for: Lcom/wareone/tappmt/ReportSetting;->m_type_index:I
    invoke-static {v4}, Lcom/wareone/tappmt/ReportSetting;->access$3(Lcom/wareone/tappmt/ReportSetting;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v3, "GROUPBY"

    iget-object v4, p0, Lcom/wareone/tappmt/ReportSetting$5;->this$0:Lcom/wareone/tappmt/ReportSetting;

    #getter for: Lcom/wareone/tappmt/ReportSetting;->m_group_index:I
    invoke-static {v4}, Lcom/wareone/tappmt/ReportSetting;->access$4(Lcom/wareone/tappmt/ReportSetting;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    iget-object v3, p0, Lcom/wareone/tappmt/ReportSetting$5;->this$0:Lcom/wareone/tappmt/ReportSetting;

    invoke-virtual {v3, v2}, Lcom/wareone/tappmt/ReportSetting;->startActivity(Landroid/content/Intent;)V

    .line 189
    iget-object v3, p0, Lcom/wareone/tappmt/ReportSetting$5;->this$0:Lcom/wareone/tappmt/ReportSetting;

    invoke-virtual {v3}, Lcom/wareone/tappmt/ReportSetting;->finish()V

    .line 190
    return-void

    .line 176
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    .end local v2           #it:Landroid/content/Intent;
    iget-object v3, p0, Lcom/wareone/tappmt/ReportSetting$5;->this$0:Lcom/wareone/tappmt/ReportSetting;

    const-class v4, Lcom/wareone/tappmt/Reports;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .restart local v2       #it:Landroid/content/Intent;
    goto :goto_0

    .line 179
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    .end local v2           #it:Landroid/content/Intent;
    iget-object v3, p0, Lcom/wareone/tappmt/ReportSetting$5;->this$0:Lcom/wareone/tappmt/ReportSetting;

    const-class v4, Lcom/wareone/tappmt/BudgetReport;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .restart local v2       #it:Landroid/content/Intent;
    goto :goto_0

    .line 182
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    .end local v2           #it:Landroid/content/Intent;
    iget-object v3, p0, Lcom/wareone/tappmt/ReportSetting$5;->this$0:Lcom/wareone/tappmt/ReportSetting;

    const-class v4, Lcom/wareone/tappmt/Chart;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2       #it:Landroid/content/Intent;
    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
