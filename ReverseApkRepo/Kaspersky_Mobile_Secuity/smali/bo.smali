.class public final Lbo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/kms/antispam/gui/AntiSpamListActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AntiSpamListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lbo;->b:Lcom/kms/antispam/gui/AntiSpamListActivity;

    iput p2, p0, Lbo;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 122
    packed-switch p2, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v0, p0, Lbo;->b:Lcom/kms/antispam/gui/AntiSpamListActivity;

    iget v1, p0, Lbo;->a:I

    invoke-static {v0, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/gui/AntiSpamListActivity;I)V

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v0, p0, Lbo;->b:Lcom/kms/antispam/gui/AntiSpamListActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->showDialog(I)V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
