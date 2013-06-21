.class Lcom/madvil/ms/MusicToPhoneActivity$23;
.super Landroid/os/Handler;
.source "MusicToPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity;->updateXmlChart(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madvil/ms/MusicToPhoneActivity;


# direct methods
.method constructor <init>(Lcom/madvil/ms/MusicToPhoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$23;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 985
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 991
    :try_start_0
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$23;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->chartProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/madvil/ms/MusicToPhoneActivity;->access$30(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 992
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$23;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity$23;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->currentChartFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/madvil/ms/MusicToPhoneActivity;->access$31(Lcom/madvil/ms/MusicToPhoneActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/madvil/ms/MusicToPhoneActivity;->refreshChartListView(Ljava/lang/String;)V

    .line 994
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$23;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v1, v1, Lcom/madvil/ms/MusicToPhoneActivity;->chartsAdapter:Lcom/madvil/core/ChartAdapter;

    invoke-virtual {v1}, Lcom/madvil/core/ChartAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 995
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$23;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 996
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "Chart is currently unavailable"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 997
    const-string v1, "ok"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 998
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 1001
    :catch_0
    move-exception v1

    goto :goto_0
.end method
