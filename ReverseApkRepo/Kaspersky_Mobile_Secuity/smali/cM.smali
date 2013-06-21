.class public final LcM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/kms/antivirus/gui/AvScanFilesActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antivirus/gui/AvScanFilesActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, LcM;->b:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    iput-object p2, p0, LcM;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, LcM;->b:Lcom/kms/antivirus/gui/AvScanFilesActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->b(Lcom/kms/antivirus/gui/AvScanFilesActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LcM;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    return-void
.end method
