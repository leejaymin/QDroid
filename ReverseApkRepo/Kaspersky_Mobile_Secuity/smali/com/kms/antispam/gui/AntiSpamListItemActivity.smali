.class public Lcom/kms/antispam/gui/AntiSpamListItemActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Lcom/kms/antispam/AntiSpamItem;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:LbA;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->e:I

    .line 38
    new-instance v0, LbA;

    invoke-direct {v0, p0}, LbA;-><init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->g:LbA;

    .line 44
    return-void
.end method

.method public static synthetic a(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic c(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antispam/gui/CallListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    const-string v1, "antispam.gui.calllog.color"

    iget v2, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 284
    return-void
.end method

.method public static synthetic d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c:Lcom/kms/antispam/AntiSpamItem;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antispam/gui/ImportSMSNumberActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    const-string v1, "antispam.gui.import_sms.color"

    iget v2, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 290
    return-void
.end method

.method public static synthetic e(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->e:I

    return v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->showDialog(I)V

    .line 294
    return-void
.end method

.method public static synthetic f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d()V

    return-void
.end method

.method private g()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c:Lcom/kms/antispam/AntiSpamItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c:Lcom/kms/antispam/AntiSpamItem;

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic g(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c()V

    return-void
.end method

.method private h()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c:Lcom/kms/antispam/AntiSpamItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c:Lcom/kms/antispam/AntiSpamItem;

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic h(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/kms/antispam/AntiSpamItem;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 368
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/kms/antispam/ContactsBlocker;->a(Landroid/app/Activity;Lcom/kms/antispam/AntiSpamItem;Ljava/lang/String;Z)Z

    move-result v0

    .line 369
    if-nez v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->finish()V

    .line 371
    :cond_0
    return-void
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 354
    const-string v0, "phoneNumber"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_0

    .line 356
    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f:Ljava/lang/String;

    .line 357
    invoke-static {v0}, Lfp;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    const v1, 0x7f080290

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0b002d

    const v6, 0x7f0b0015

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f030004

    invoke-virtual {p0, v0, v4}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a(II)V

    .line 81
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 82
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "listType"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    .line 86
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "itemType"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->e:I

    .line 87
    iget v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->e:I

    packed-switch v1, :pswitch_data_0

    .line 123
    :goto_0
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    invoke-virtual {p0, v6}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 125
    iget v2, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    packed-switch v2, :pswitch_data_1

    .line 136
    :goto_1
    const v0, 0x7f0b00f9

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    .line 137
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->g:LbA;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    invoke-virtual {p0, v7}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->b:Landroid/widget/EditText;

    .line 139
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->g:LbA;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "newItem"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "listType"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "itemIndex"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kms/antispam/AntiSpamStorage;->getItem(II)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c:Lcom/kms/antispam/AntiSpamItem;

    .line 143
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c:Lcom/kms/antispam/AntiSpamItem;

    iget v0, v0, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    packed-switch v0, :pswitch_data_2

    .line 149
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_2
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lbw;

    invoke-direct {v1, p0}, Lbw;-><init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lbx;

    invoke-direct {v1, p0}, Lbx;-><init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v0, 0x7f0b00fa

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lby;

    invoke-direct {v1, p0}, Lby;-><init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    return-void

    .line 90
    :pswitch_0
    iget v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    if-ne v1, v3, :cond_0

    .line 92
    const v1, 0x7f080222

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    :goto_3
    invoke-virtual {p0, v6}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 99
    invoke-virtual {p0, v7}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 96
    :cond_0
    const v1, 0x7f080225

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 102
    :pswitch_1
    iget v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    if-ne v1, v3, :cond_1

    .line 104
    const v1, 0x7f080223

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 108
    :cond_1
    const v1, 0x7f080226

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 112
    :pswitch_2
    iget v1, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d:I

    if-ne v1, v3, :cond_2

    .line 114
    const v1, 0x7f080224

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 118
    :cond_2
    const v1, 0x7f080227

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 127
    :pswitch_3
    const v2, 0x7f0801a3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    const v0, 0x7f0801a4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 131
    :pswitch_4
    const v2, 0x7f0801a5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 132
    const v0, 0x7f0801a6

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 145
    :pswitch_5
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 152
    :cond_3
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 158
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 154
    :pswitch_6
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 125
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 143
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
    .end packed-switch

    .line 152
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 304
    const/4 v0, 0x0

    .line 305
    packed-switch p1, :pswitch_data_0

    .line 331
    :goto_0
    return-object v0

    .line 307
    :pswitch_0
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070020

    new-instance v2, Lbz;

    invoke-direct {v2, p0}, Lbz;-><init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->c(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
