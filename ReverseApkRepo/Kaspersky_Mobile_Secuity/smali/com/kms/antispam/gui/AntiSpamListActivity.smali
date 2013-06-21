.class public Lcom/kms/antispam/gui/AntiSpamListActivity;
.super Lcom/kms/gui/KMSBaseListActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:I

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseListActivity;-><init>()V

    .line 36
    return-void
.end method

.method public static synthetic a(Lcom/kms/antispam/gui/AntiSpamListActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    return v0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 163
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    iget v1, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/kms/antispam/AntiSpamStorage;->getItem(II)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    .line 164
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v1

    iget v2, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    invoke-virtual {v1, v2, p1}, Lcom/kms/antispam/AntiSpamStorage;->delete(II)I

    .line 165
    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->b()V

    .line 166
    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/AntiSpamItem;)V

    .line 167
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 116
    const-string v1, "-2"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamItem;

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 117
    if-eqz v2, :cond_0

    .line 119
    new-instance v0, Lbo;

    invoke-direct {v0, p0, p2}, Lbo;-><init>(Lcom/kms/antispam/gui/AntiSpamListActivity;I)V

    .line 156
    :goto_0
    new-instance v3, Les;

    invoke-direct {v3, p0}, Les;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    const v1, 0x7f080191

    :goto_1
    invoke-virtual {v3, v1}, Les;->a(I)Les;

    move-result-object v3

    if-eqz v2, :cond_2

    const v1, 0x7f070014

    :goto_2
    invoke-virtual {v3, v1, v0}, Les;->c(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    const v2, 0x7f08019e

    invoke-virtual {v1, v2, v0}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->b()Ler;

    .line 160
    return-void

    .line 134
    :cond_0
    new-instance v0, Lbp;

    invoke-direct {v0, p0, p1, p2}, Lbp;-><init>(Lcom/kms/antispam/gui/AntiSpamListActivity;Landroid/view/View;I)V

    goto :goto_0

    .line 156
    :cond_1
    const v1, 0x7f080190

    goto :goto_1

    :cond_2
    const v1, 0x7f070013

    goto :goto_2
.end method

.method public static synthetic a(Lcom/kms/antispam/gui/AntiSpamListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/kms/antispam/gui/AntiSpamListActivity;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic b(Lcom/kms/antispam/gui/AntiSpamListActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->b:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    iget v2, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    invoke-virtual {v0, v2}, Lcom/kms/antispam/AntiSpamStorage;->getCount(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 290
    :goto_0
    const v2, 0x7f0b0033

    invoke-virtual {p0, v2}, Lcom/kms/antispam/gui/AntiSpamListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->onContentChanged()V

    .line 292
    return-void

    :cond_0
    move v0, v1

    .line 289
    goto :goto_0

    .line 290
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public static synthetic c(Lcom/kms/antispam/gui/AntiSpamListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/kms/antispam/AntiSpamItem;)V
    .locals 2
    .parameter

    .prologue
    .line 295
    iget v0, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 296
    invoke-static {p0, p1}, Lcom/kms/antispam/ContactsBlocker;->a(Landroid/app/Activity;Lcom/kms/antispam/AntiSpamItem;)V

    .line 298
    :cond_0
    return-void
.end method

.method protected final c_()I
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    const v0, 0x7f060008

    .line 226
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f06000b

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 262
    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    const-string v1, "newItem"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    const-string v1, "listType"

    iget v2, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    packed-switch p2, :pswitch_data_0

    .line 277
    :goto_0
    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->startActivity(Landroid/content/Intent;)V

    .line 279
    :cond_0
    return-void

    .line 268
    :pswitch_0
    const-string v1, "itemType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 271
    :pswitch_1
    const-string v1, "itemType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 274
    :pswitch_2
    const-string v1, "itemType"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "listType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    .line 174
    const v0, 0x7f030006

    const v1, 0x7f0b002e

    invoke-virtual {p0, v0, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(II)V

    .line 175
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->b:Landroid/view/LayoutInflater;

    .line 177
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 178
    const v1, 0x7f0b000e

    invoke-virtual {p0, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 179
    new-instance v2, Lbq;

    invoke-direct {v2, p0}, Lbq;-><init>(Lcom/kms/antispam/gui/AntiSpamListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v2, 0x7f0b0034

    invoke-virtual {p0, v2}, Lcom/kms/antispam/gui/AntiSpamListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 187
    iget v3, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    packed-switch v3, :pswitch_data_0

    .line 199
    :goto_0
    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    .line 201
    new-instance v1, Lbr;

    invoke-direct {v1, p0}, Lbr;-><init>(Lcom/kms/antispam/gui/AntiSpamListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :cond_0
    new-instance v0, Lbt;

    invoke-direct {v0, p0}, Lbt;-><init>(Lcom/kms/antispam/gui/AntiSpamListActivity;)V

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    return-void

    .line 189
    :pswitch_0
    const v3, 0x7f080191

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 190
    const v0, 0x7f080193

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 191
    const v0, 0x7f0802c6

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 194
    :pswitch_1
    const v3, 0x7f080190

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 195
    const v0, 0x7f080192

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 196
    const v0, 0x7f0802c7

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 231
    packed-switch p1, :pswitch_data_0

    .line 257
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 233
    :pswitch_0
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    if-ne v0, v2, :cond_0

    const v0, 0x7f0801a0

    :goto_1
    invoke-virtual {v1, v0}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f070012

    invoke-virtual {v0, v1, p0}, Les;->c(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f08019e

    invoke-virtual {v0, v1, p0}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0801a1

    goto :goto_1

    .line 241
    :pswitch_1
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/kms/antispam/gui/AntiSpamListActivity;->a:I

    if-ne v0, v2, :cond_1

    const v0, 0x7f080191

    :goto_2
    invoke-virtual {v1, v0}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f0801a7

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    const v1, 0x7f0801a8

    new-instance v2, Lbs;

    invoke-direct {v2, p0}, Lbs;-><init>(Lcom/kms/antispam/gui/AntiSpamListActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f0801a9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f080190

    goto :goto_2

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 283
    invoke-super {p0}, Lcom/kms/gui/KMSBaseListActivity;->onResume()V

    .line 284
    invoke-direct {p0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->b()V

    .line 285
    return-void
.end method
