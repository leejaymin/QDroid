.class Lcom/wareone/tappmt/Register$1;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Register;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Register;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Register;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Register$1;)Lcom/wareone/tappmt/Register;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "Register"

    .line 99
    iget-object v1, p0, Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/wareone/tappmt/Register;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 100
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_0

    .line 101
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_2

    .line 103
    :cond_0
    const-string v1, "Register"

    const-string v1, "show progress"

    invoke-static {v8, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;

    iget-object v2, p0, Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;

    iget-object v3, p0, Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;

    invoke-virtual {v3}, Lcom/wareone/tappmt/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;

    invoke-virtual {v4}, Lcom/wareone/tappmt/Register;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v7, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    #setter for: Lcom/wareone/tappmt/Register;->m_dlg:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/wareone/tappmt/Register;->access$2(Lcom/wareone/tappmt/Register;Landroid/app/ProgressDialog;)V

    .line 105
    iget-object v1, p0, Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;

    #getter for: Lcom/wareone/tappmt/Register;->m_dlg:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/wareone/tappmt/Register;->access$1(Lcom/wareone/tappmt/Register;)Landroid/app/ProgressDialog;

    move-result-object v1

    new-instance v2, Lcom/wareone/tappmt/Register$1$1;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Register$1$1;-><init>(Lcom/wareone/tappmt/Register$1;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 122
    const-string v1, "Register"

    const-string v1, "doRegister"

    invoke-static {v8, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;

    #getter for: Lcom/wareone/tappmt/Register;->m_RegisterThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/wareone/tappmt/Register;->access$4(Lcom/wareone/tappmt/Register;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/wareone/tappmt/Register$RegisterRunner;

    iget-object v4, p0, Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/wareone/tappmt/Register$RegisterRunner;-><init>(Lcom/wareone/tappmt/Register;Lcom/wareone/tappmt/Register$RegisterRunner;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/wareone/tappmt/Register;->m_RegisterThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/wareone/tappmt/Register;->access$5(Lcom/wareone/tappmt/Register;Ljava/lang/Thread;)V

    .line 125
    iget-object v1, p0, Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;

    #getter for: Lcom/wareone/tappmt/Register;->m_RegisterThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/wareone/tappmt/Register;->access$4(Lcom/wareone/tappmt/Register;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 133
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;

    #getter for: Lcom/wareone/tappmt/Register;->m_RegisterThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/wareone/tappmt/Register;->access$4(Lcom/wareone/tappmt/Register;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->run()V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/wareone/tappmt/Register$1;->this$0:Lcom/wareone/tappmt/Register;

    const v2, 0x7f0900a9

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
