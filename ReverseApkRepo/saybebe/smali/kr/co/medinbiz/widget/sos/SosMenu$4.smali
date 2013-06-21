.class Lkr/co/medinbiz/widget/sos/SosMenu$4;
.super Landroid/os/CountDownTimer;
.source "SosMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/sos/SosMenu;->gpsTimeOutStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/sos/SosMenu;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/sos/SosMenu;JJ)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$4;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    .line 138
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/sos/SosMenu$4;)Lkr/co/medinbiz/widget/sos/SosMenu;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu$4;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    return-object v0
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 147
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$4;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    #getter for: Lkr/co/medinbiz/widget/sos/SosMenu;->add:Landroid/widget/TextView;
    invoke-static {v1}, Lkr/co/medinbiz/widget/sos/SosMenu;->access$6(Lkr/co/medinbiz/widget/sos/SosMenu;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$4;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    #getter for: Lkr/co/medinbiz/widget/sos/SosMenu;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lkr/co/medinbiz/widget/sos/SosMenu;->access$0(Lkr/co/medinbiz/widget/sos/SosMenu;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 149
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$4;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    iget-object v1, v1, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$4;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    iget-object v1, v1, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    .line 151
    sget v2, Lkr/co/medinbiz/R$string;->message_gps_fail_retry:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 157
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$4;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    iget-object v1, v1, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->retry:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    new-instance v2, Lkr/co/medinbiz/widget/sos/SosMenu$4$1;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/sos/SosMenu$4$1;-><init>(Lkr/co/medinbiz/widget/sos/SosMenu$4;)V

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$4;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    iget-object v1, v1, Lkr/co/medinbiz/widget/sos/SosMenu;->mContext:Landroid/content/Context;

    sget v2, Lkr/co/medinbiz/R$string;->exit:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    new-instance v2, Lkr/co/medinbiz/widget/sos/SosMenu$4$2;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/sos/SosMenu$4$2;-><init>(Lkr/co/medinbiz/widget/sos/SosMenu$4;)V

    .line 176
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 189
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .parameter "millisUntilFinished"

    .prologue
    .line 141
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu$4;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    #getter for: Lkr/co/medinbiz/widget/sos/SosMenu;->add:Landroid/widget/TextView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/sos/SosMenu;->access$6(Lkr/co/medinbiz/widget/sos/SosMenu;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/sos/SosMenu$4;->cancel()V

    .line 144
    :cond_0
    return-void
.end method
