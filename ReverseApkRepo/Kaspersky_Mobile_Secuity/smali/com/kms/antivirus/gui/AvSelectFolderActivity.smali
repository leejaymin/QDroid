.class public Lcom/kms/antivirus/gui/AvSelectFolderActivity;
.super Lcom/kms/gui/SelectFolderActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/kms/gui/SelectFolderActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    const-string v0, "com.kms.AvScanFilesActivity.nosdcard"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antivirus/gui/AvScanFilesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    iget-object v1, p0, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->a:Ljava/lang/String;

    .line 26
    :cond_0
    if-nez p1, :cond_3

    .line 28
    iget-boolean v1, p0, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->c:Z

    if-eqz v1, :cond_2

    .line 30
    const-string v1, "SCAN_PATH"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void

    .line 34
    :cond_2
    const-string v1, "SCAN_PATH"

    iget-object v2, p0, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object v1, p0, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->a(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_3
    iget-boolean v1, p0, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->c:Z

    if-nez v1, :cond_4

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 40
    :cond_4
    iget-boolean v1, p0, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->c:Z

    if-eqz v1, :cond_5

    .line 42
    const-string v1, "SCAN_PATH"

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    if-ne p1, v3, :cond_1

    .line 45
    const-string v1, "com.kms.AvScanFilesActivity.nosdcard"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 50
    :cond_5
    const-string v1, "SCAN_PATH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->a(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_6
    const-string v1, "SCAN_PATH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/kms/antivirus/gui/AvSelectFolderActivity;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f060011

    return v0
.end method

.method protected final d()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f020082

    return v0
.end method
