.class Lcom/wareone/tappmt/ReportSetting$6;
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
    iput-object p1, p0, Lcom/wareone/tappmt/ReportSetting$6;->this$0:Lcom/wareone/tappmt/ReportSetting;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wareone/tappmt/ReportSetting$6;->this$0:Lcom/wareone/tappmt/ReportSetting;

    const-class v2, Lcom/wareone/tappmt/Reports;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v0, it:Landroid/content/Intent;
    const-string v1, "RANGE"

    iget-object v2, p0, Lcom/wareone/tappmt/ReportSetting$6;->this$0:Lcom/wareone/tappmt/ReportSetting;

    #getter for: Lcom/wareone/tappmt/ReportSetting;->m_range:[Ljava/lang/String;
    invoke-static {v2}, Lcom/wareone/tappmt/ReportSetting;->access$0(Lcom/wareone/tappmt/ReportSetting;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/wareone/tappmt/ReportSetting$6;->this$0:Lcom/wareone/tappmt/ReportSetting;

    invoke-virtual {v1, v0}, Lcom/wareone/tappmt/ReportSetting;->startActivity(Landroid/content/Intent;)V

    .line 201
    iget-object v1, p0, Lcom/wareone/tappmt/ReportSetting$6;->this$0:Lcom/wareone/tappmt/ReportSetting;

    invoke-virtual {v1}, Lcom/wareone/tappmt/ReportSetting;->finish()V

    .line 202
    return-void
.end method
