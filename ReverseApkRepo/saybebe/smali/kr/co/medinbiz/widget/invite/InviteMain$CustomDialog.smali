.class public Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;
.super Landroid/app/Dialog;
.source "InviteMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/invite/InviteMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomDialog"
.end annotation


# instance fields
.field private dismissBtn:Landroid/widget/Button;

.field private messageByte:Landroid/widget/TextView;

.field private messgaeText:Landroid/widget/EditText;

.field private phone:Ljava/lang/String;

.field private sendBtn:Landroid/widget/Button;

.field final synthetic this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkr/co/medinbiz/widget/invite/InviteMain;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "title"
    .parameter "aPhone"

    .prologue
    .line 432
    iput-object p1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    .line 433
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 434
    iput-object p3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->title:Ljava/lang/String;

    .line 435
    iput-object p4, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->phone:Ljava/lang/String;

    .line 436
    return-void
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->phone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;)Lkr/co/medinbiz/widget/invite/InviteMain;
    .locals 1
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 515
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 520
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x2e

    if-le v0, v1, :cond_0

    .line 521
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->sendBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->sendBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->messgaeText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 463
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->dismissBtn:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 464
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->dismiss()V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->sendBtn:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 466
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, hh:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 470
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;

    invoke-direct {v2, p0, v0}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog$1;-><init>(Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 503
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 504
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->dismiss()V

    goto :goto_0

    .line 506
    :cond_2
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$4(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\uba54\uc138\uc9c0\ub97c \uc785\ub825\ud574 \uc8fc\uc138\uc694."

    .line 507
    const/4 v3, 0x0

    .line 506
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 507
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "$savedInstanceState"

    .prologue
    .line 440
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 441
    sget v1, Lkr/co/medinbiz/R$layout;->custom_dialog:I

    invoke-virtual {p0, v1}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->setContentView(I)V

    .line 442
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->title:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 444
    sget v1, Lkr/co/medinbiz/R$id;->messgae_txt:I

    invoke-virtual {p0, v1}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->messgaeText:Landroid/widget/EditText;

    .line 445
    sget v1, Lkr/co/medinbiz/R$id;->dismiss_btn:I

    invoke-virtual {p0, v1}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->dismissBtn:Landroid/widget/Button;

    .line 446
    sget v1, Lkr/co/medinbiz/R$id;->send_btn:I

    invoke-virtual {p0, v1}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->sendBtn:Landroid/widget/Button;

    .line 447
    sget v1, Lkr/co/medinbiz/R$id;->message_byte:I

    invoke-virtual {p0, v1}, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->messageByte:Landroid/widget/TextView;

    .line 448
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->dismissBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->sendBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->messgaeText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 452
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lkr/co/medinbiz/util/ByteLengthFilter;

    .line 453
    const/16 v3, 0x2d

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Lkr/co/medinbiz/util/ByteLengthFilter;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    .line 454
    .local v0, filters:[Landroid/text/InputFilter;
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->messgaeText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 455
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 530
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$CustomDialog;->messageByte:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/45byte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    return-void
.end method
