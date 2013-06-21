.class public final Lbz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lbz;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 312
    packed-switch p2, :pswitch_data_0

    .line 325
    :goto_0
    return-void

    .line 314
    :pswitch_0
    iget-object v0, p0, Lbz;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->g(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    .line 315
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 319
    :pswitch_1
    iget-object v0, p0, Lbz;->a:Lcom/kms/antispam/gui/AntiSpamListItemActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListItemActivity;->f(Lcom/kms/antispam/gui/AntiSpamListItemActivity;)V

    .line 320
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
