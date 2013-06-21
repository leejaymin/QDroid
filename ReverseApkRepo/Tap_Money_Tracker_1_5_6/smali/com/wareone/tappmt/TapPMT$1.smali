.class Lcom/wareone/tappmt/TapPMT$1;
.super Landroid/os/Handler;
.source "TapPMT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/TapPMT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/TapPMT;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$1;->this$0:Lcom/wareone/tappmt/TapPMT;

    .line 1769
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/TapPMT$1;)Lcom/wareone/tappmt/TapPMT;
    .locals 1
    .parameter

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$1;->this$0:Lcom/wareone/tappmt/TapPMT;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const v3, 0x7f09004f

    const v2, 0x7f09004e

    .line 1772
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$1;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT;->access$0(Lcom/wareone/tappmt/TapPMT;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1774
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1841
    :goto_0
    :pswitch_0
    return-void

    .line 1776
    :pswitch_1
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$1;->this$0:Lcom/wareone/tappmt/TapPMT;

    #calls: Lcom/wareone/tappmt/TapPMT;->_agreement()V
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT;->access$1(Lcom/wareone/tappmt/TapPMT;)V

    goto :goto_0

    .line 1779
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$1;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1780
    const v1, 0x7f090088

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1781
    const v1, 0x7f0900b3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1782
    new-instance v1, Lcom/wareone/tappmt/TapPMT$1$1;

    invoke-direct {v1, p0}, Lcom/wareone/tappmt/TapPMT$1$1;-><init>(Lcom/wareone/tappmt/TapPMT$1;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1793
    new-instance v1, Lcom/wareone/tappmt/TapPMT$1$2;

    invoke-direct {v1, p0}, Lcom/wareone/tappmt/TapPMT$1$2;-><init>(Lcom/wareone/tappmt/TapPMT$1;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1802
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1807
    :pswitch_3
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$1;->this$0:Lcom/wareone/tappmt/TapPMT;

    #calls: Lcom/wareone/tappmt/TapPMT;->_inputPassword()V
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT;->access$3(Lcom/wareone/tappmt/TapPMT;)V

    goto :goto_0

    .line 1810
    :pswitch_4
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$1;->this$0:Lcom/wareone/tappmt/TapPMT;

    #calls: Lcom/wareone/tappmt/TapPMT;->_doSync()V
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT;->access$4(Lcom/wareone/tappmt/TapPMT;)V

    .line 1812
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT$1;->this$0:Lcom/wareone/tappmt/TapPMT;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1813
    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1814
    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1815
    new-instance v1, Lcom/wareone/tappmt/TapPMT$1$3;

    invoke-direct {v1, p0}, Lcom/wareone/tappmt/TapPMT$1$3;-><init>(Lcom/wareone/tappmt/TapPMT$1;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1826
    new-instance v1, Lcom/wareone/tappmt/TapPMT$1$4;

    invoke-direct {v1, p0}, Lcom/wareone/tappmt/TapPMT$1$4;-><init>(Lcom/wareone/tappmt/TapPMT$1;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1835
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1838
    :pswitch_5
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$1;->this$0:Lcom/wareone/tappmt/TapPMT;

    const-string v1, "Sync Error."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1774
    nop

    :pswitch_data_0
    .packed-switch 0x17d4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
