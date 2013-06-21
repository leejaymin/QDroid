.class public final LgK;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;


# direct methods
.method public constructor <init>(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, LgK;->a:Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 43
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, LgK;->a:Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->setResult(I)V

    .line 39
    iget-object v0, p0, LgK;->a:Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;

    invoke-virtual {v0}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->finish()V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
