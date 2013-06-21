.class Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;
.super Ljava/lang/Object;
.source "TQuickSetup.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TQuickSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TStartScanFolder"
.end annotation


# instance fields
.field private ScanProgressDialog:Landroid/app/ProgressDialog;

.field private ScanReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TQuickSetup;


# direct methods
.method private constructor <init>(Lcom/rookiestudio/perfectviewer/TQuickSetup;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->this$0:Lcom/rookiestudio/perfectviewer/TQuickSetup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/rookiestudio/perfectviewer/TQuickSetup;Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;-><init>(Lcom/rookiestudio/perfectviewer/TQuickSetup;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 7
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    const/4 v6, 0x0

    .line 154
    packed-switch p1, :pswitch_data_0

    .line 188
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 156
    :pswitch_1
    const-string v3, "size"

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 157
    .local v2, size:I
    const-string v3, "filename"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, FileName:Ljava/lang/String;
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 160
    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    .line 161
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v5, 0x7f0a00d0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 164
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 165
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 166
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 167
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 168
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 173
    .end local v1           #FileName:Ljava/lang/String;
    .end local v2           #size:I
    :pswitch_2
    :try_start_0
    const-string v3, "completed"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 174
    .local v0, Completed:I
    const-string v3, "filename"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .restart local v1       #FileName:Ljava/lang/String;
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 177
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v0           #Completed:I
    .end local v1           #FileName:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 183
    :pswitch_3
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public run()V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Lcom/rookiestudio/baseclass/TResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/rookiestudio/baseclass/TResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;

    .line 148
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;

    invoke-virtual {v0, p0}, Lcom/rookiestudio/baseclass/TResultReceiver;->setReceiver(Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;)V

    .line 149
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanFolder(Lcom/rookiestudio/baseclass/TResultReceiver;Landroid/content/Context;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;->ScanProgressDialog:Landroid/app/ProgressDialog;

    .line 150
    return-void
.end method
