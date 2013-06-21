.class public final LcK;
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
    .line 79
    iput-object p1, p0, LcK;->a:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, LcK;->a:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->showDialog(I)V

    .line 83
    return-void
.end method
