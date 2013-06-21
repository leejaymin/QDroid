.class public final LdQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/KMSMain;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/gui/KMSMain;)V
    .locals 1
    .parameter

    .prologue
    .line 870
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LdQ;-><init>(Lcom/kms/gui/KMSMain;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/gui/KMSMain;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 870
    iput-object p1, p0, LdQ;->a:Lcom/kms/gui/KMSMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 875
    packed-switch p2, :pswitch_data_0

    .line 892
    :goto_0
    return-void

    .line 880
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LdQ;->a:Lcom/kms/gui/KMSMain;

    const-class v2, Lcom/kms/antivirus/gui/AvScanFilesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 881
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 883
    const-string v1, "SCAN_MODE"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 885
    :cond_0
    iget-object v1, p0, LdQ;->a:Lcom/kms/gui/KMSMain;

    invoke-virtual {v1, v0}, Lcom/kms/gui/KMSMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 890
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LdQ;->a:Lcom/kms/gui/KMSMain;

    const-class v2, Lcom/kms/antivirus/gui/AvSelectFolderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 891
    iget-object v1, p0, LdQ;->a:Lcom/kms/gui/KMSMain;

    invoke-virtual {v1, v0}, Lcom/kms/gui/KMSMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 875
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
