.class public final Lbp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:I

.field private synthetic c:Lcom/kms/antispam/gui/AntiSpamListActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AntiSpamListActivity;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lbp;->c:Lcom/kms/antispam/gui/AntiSpamListActivity;

    iput-object p2, p0, Lbp;->a:Landroid/view/View;

    iput p3, p0, Lbp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 137
    packed-switch p2, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 139
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lbp;->c:Lcom/kms/antispam/gui/AntiSpamListActivity;

    const-class v2, Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    const-string v0, "listType"

    iget-object v2, p0, Lbp;->c:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-static {v2}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/gui/AntiSpamListActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string v2, "itemType"

    iget-object v0, p0, Lbp;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamItem;

    iget v0, v0, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v0, "itemIndex"

    iget v2, p0, Lbp;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lbp;->c:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-virtual {v0, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lbp;->c:Lcom/kms/antispam/gui/AntiSpamListActivity;

    iget v1, p0, Lbp;->b:I

    invoke-static {v0, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/gui/AntiSpamListActivity;I)V

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v0, p0, Lbp;->c:Lcom/kms/antispam/gui/AntiSpamListActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->showDialog(I)V

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
