.class public final Lck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lck;->b:Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;

    iput-object p2, p0, Lck;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 227
    packed-switch p2, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 229
    :pswitch_0
    invoke-static {}, Lcom/kms/antitheft/DataWipeFoldersStorage;->getInstance()Lcom/kms/antitheft/DataWipeFoldersStorage;

    move-result-object v1

    .line 230
    iget-object v0, p0, Lck;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;

    .line 231
    invoke-virtual {v1, v0}, Lcom/kms/antitheft/DataWipeFoldersStorage;->removeFolder(Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;)V

    .line 232
    invoke-virtual {v1}, Lcom/kms/antitheft/DataWipeFoldersStorage;->toFile()V

    .line 233
    iget-object v0, p0, Lck;->b:Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;

    invoke-static {v0}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->b(Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;)[Ldk;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Ldj;

    iget-object v1, p0, Lck;->b:Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;

    invoke-static {v1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->a(Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldj;->a(Ljava/util/List;)V

    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v0, p0, Lck;->b:Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kms/antitheft/gui/SmsCleanSettingsActivity;->showDialog(I)V

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
