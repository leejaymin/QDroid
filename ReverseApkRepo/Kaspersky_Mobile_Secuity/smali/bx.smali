.class public final Lbx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f080290

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 171
    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "newItem"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    new-instance v0, Lcom/kms/antispam/AntiSpamItem;

    iget-object v1, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "listType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/kms/antispam/AntiSpamItem;-><init>(I)V

    .line 173
    iget-object v1, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfp;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v2, v6}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    const-string v1, "-2"

    iput-object v1, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    .line 181
    :goto_0
    iget-object v1, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->b(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "itemType"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    .line 183
    iget v1, v0, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    packed-switch v1, :pswitch_data_0

    .line 193
    iget-object v1, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 194
    iget v1, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    .line 198
    :cond_0
    :goto_1
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kms/antispam/AntiSpamStorage;->create(Lcom/kms/antispam/AntiSpamItem;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 256
    :goto_2
    :pswitch_0
    return-void

    .line 179
    :cond_1
    iput-object v1, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v1, v0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 186
    iget v1, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    .line 188
    :cond_2
    iget-object v1, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 189
    iget v1, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    goto :goto_1

    .line 201
    :pswitch_2
    iget-object v1, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a(Lcom/kms/antispam/AntiSpamItem;Ljava/lang/String;)V

    goto :goto_2

    .line 204
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    const-class v3, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    iget-object v2, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 206
    const-string v2, "phoneNumber"

    iget-object v3, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v2, v0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 208
    const-string v2, "text"

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    :cond_3
    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v0, v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->startActivity(Landroid/content/Intent;)V

    .line 211
    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->finish()V

    goto :goto_2

    .line 215
    :cond_4
    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v1

    iget-object v1, v1, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    .line 217
    iget-object v2, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->c(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfp;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v2, v6}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 219
    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    const-string v2, "-2"

    iput-object v2, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    .line 224
    :goto_3
    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget-object v2, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->b(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iput v5, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    .line 226
    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "itemType"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 236
    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 237
    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget v2, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    .line 240
    :cond_5
    :goto_4
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    iget-object v2, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v2

    iget v2, v2, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    iget-object v3, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v3}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "itemIndex"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v4}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/kms/antispam/AntiSpamStorage;->update(IILcom/kms/antispam/AntiSpamItem;)I

    move-result v0

    packed-switch v0, :pswitch_data_3

    :pswitch_4
    goto/16 :goto_2

    .line 242
    :pswitch_5
    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    iget-object v2, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->a(Lcom/kms/antispam/AntiSpamItem;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 222
    :cond_6
    iget-object v2, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v2

    iput-object v0, v2, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    goto/16 :goto_3

    .line 228
    :pswitch_6
    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 229
    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget v2, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    .line 231
    :cond_7
    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget-object v0, v0, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 232
    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v0

    iget v2, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    goto/16 :goto_4

    .line 245
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    const-class v2, Lcom/kms/antispam/gui/AntiSpamItemAlreadyExistsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    iget-object v1, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 247
    const-string v1, "phoneNumber"

    iget-object v2, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v2

    iget-object v2, v2, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v1, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v1}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v1

    iget-object v1, v1, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 249
    const-string v1, "text"

    iget-object v2, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->d(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v2

    iget-object v2, v2, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    :cond_8
    iget-object v1, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v1, v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    iget-object v0, p0, Lbx;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-virtual {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->finish()V

    goto/16 :goto_2

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch

    .line 198
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 226
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch

    .line 240
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method
