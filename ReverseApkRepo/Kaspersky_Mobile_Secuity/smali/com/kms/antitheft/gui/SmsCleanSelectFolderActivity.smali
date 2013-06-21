.class public Lcom/kms/antitheft/gui/SmsCleanSelectFolderActivity;
.super Lcom/kms/gui/SelectFolderActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/kms/gui/SelectFolderActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 12
    invoke-static {}, Lcom/kms/antitheft/DataWipeFoldersStorage;->getInstance()Lcom/kms/antitheft/DataWipeFoldersStorage;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/kms/antitheft/gui/SmsCleanSelectFolderActivity;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14
    const-string v1, ""

    iput-object v1, p0, Lcom/kms/antitheft/gui/SmsCleanSelectFolderActivity;->a:Ljava/lang/String;

    .line 15
    :cond_0
    if-nez p1, :cond_2

    .line 17
    iget-boolean v1, p0, Lcom/kms/antitheft/gui/SmsCleanSelectFolderActivity;->c:Z

    if-eqz v1, :cond_1

    .line 19
    new-instance v1, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;

    const-string v2, "/"

    invoke-direct {v1, v4, v2}, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kms/antitheft/DataWipeFoldersStorage;->addFolder(Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;)V

    .line 41
    :goto_0
    invoke-virtual {v0}, Lcom/kms/antitheft/DataWipeFoldersStorage;->toFile()V

    .line 42
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/SmsCleanSelectFolderActivity;->finish()V

    .line 43
    return-void

    .line 23
    :cond_1
    new-instance v1, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;

    iget-object v2, p0, Lcom/kms/antitheft/gui/SmsCleanSelectFolderActivity;->a:Ljava/lang/String;

    invoke-direct {v1, v4, v2}, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kms/antitheft/DataWipeFoldersStorage;->addFolder(Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;)V

    goto :goto_0

    .line 26
    :cond_2
    iget-boolean v1, p0, Lcom/kms/antitheft/gui/SmsCleanSelectFolderActivity;->c:Z

    if-nez v1, :cond_3

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/kms/antitheft/gui/SmsCleanSelectFolderActivity;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 28
    :cond_3
    iget-boolean v1, p0, Lcom/kms/antitheft/gui/SmsCleanSelectFolderActivity;->c:Z

    if-eqz v1, :cond_4

    .line 30
    new-instance v1, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/kms/antitheft/gui/SmsCleanSelectFolderActivity;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kms/antitheft/DataWipeFoldersStorage;->addFolder(Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;)V

    goto :goto_0

    .line 34
    :cond_4
    new-instance v1, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kms/antitheft/gui/SmsCleanSelectFolderActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/kms/antitheft/gui/SmsCleanSelectFolderActivity;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kms/antitheft/DataWipeFoldersStorage;->addFolder(Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;)V

    goto :goto_0

    .line 39
    :cond_5
    new-instance v1, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kms/antitheft/gui/SmsCleanSelectFolderActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/kms/antitheft/gui/SmsCleanSelectFolderActivity;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kms/antitheft/DataWipeFoldersStorage;->addFolder(Lcom/kms/antitheft/DataWipeFoldersStorage$DataWipeFolder;)V

    goto :goto_0
.end method

.method protected final b()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f060026

    return v0
.end method

.method protected final d()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 63
    const v0, 0x7f020077

    return v0
.end method
