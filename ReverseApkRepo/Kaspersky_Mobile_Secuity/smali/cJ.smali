.class public final LcJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antivirus/gui/AvScanFilesActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antivirus/gui/AvScanFilesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, LcJ;->a:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    invoke-static {}, LcA;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, LcA;->k()V

    .line 67
    iget-object v0, p0, LcJ;->a:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->a(Lcom/kms/antivirus/gui/AvScanFilesActivity;Z)V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {}, LcA;->i()V

    .line 72
    iget-object v0, p0, LcJ;->a:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->a(Lcom/kms/antivirus/gui/AvScanFilesActivity;Z)V

    goto :goto_0
.end method
