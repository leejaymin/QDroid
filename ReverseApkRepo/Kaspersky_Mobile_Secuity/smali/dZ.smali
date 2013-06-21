.class public final LdZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/SelectFolderActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/gui/SelectFolderActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LdZ;-><init>(Lcom/kms/gui/SelectFolderActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/gui/SelectFolderActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0121

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0120

    if-ne v0, v1, :cond_5

    .line 359
    :cond_0
    iget-object v0, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->b(Lcom/kms/gui/SelectFolderActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-object v1, v1, Lcom/kms/gui/SelectFolderActivity;->a:Ljava/lang/String;

    iget-object v2, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-object v2, v2, Lcom/kms/gui/SelectFolderActivity;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    iput-boolean v3, v0, Lcom/kms/gui/SelectFolderActivity;->c:Z

    .line 422
    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 423
    iget-object v0, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v0}, Lcom/kms/gui/SelectFolderActivity;->e(Lcom/kms/gui/SelectFolderActivity;)Lea;

    move-result-object v0

    invoke-virtual {v0}, Lea;->notifyDataSetChanged()V

    .line 424
    :cond_1
    :goto_1
    return-void

    .line 365
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-object v1, v1, Lcom/kms/gui/SelectFolderActivity;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 367
    if-nez v0, :cond_3

    .line 369
    iget-object v0, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    iput-boolean v3, v0, Lcom/kms/gui/SelectFolderActivity;->c:Z

    goto :goto_0

    .line 373
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 375
    iget-object v1, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_4
    iget-object v1, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0122

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0123

    if-ne v0, v1, :cond_7

    .line 387
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 388
    iget-object v1, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v1, v0}, Lcom/kms/gui/SelectFolderActivity;->a(I)V

    goto :goto_0

    .line 392
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 393
    iget-object v1, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-boolean v1, v1, Lcom/kms/gui/SelectFolderActivity;->c:Z

    if-eqz v1, :cond_8

    .line 395
    packed-switch v0, :pswitch_data_0

    .line 401
    iget-object v1, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-static {v3}, Lcom/kms/gui/SelectFolderActivity;->b(Lcom/kms/gui/SelectFolderActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;Ljava/lang/String;)V

    .line 403
    :goto_2
    iget-object v0, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    iput-boolean v4, v0, Lcom/kms/gui/SelectFolderActivity;->c:Z

    goto/16 :goto_0

    .line 398
    :pswitch_0
    iget-object v0, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    const-string v1, "/"

    invoke-static {v0, v1}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;Ljava/lang/String;)V

    goto :goto_2

    .line 407
    :cond_8
    if-eqz v0, :cond_1

    .line 409
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-object v2, v2, Lcom/kms/gui/SelectFolderActivity;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 411
    iget-object v1, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-object v3, v3, Lcom/kms/gui/SelectFolderActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Lcom/kms/gui/SelectFolderActivity;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kms/gui/SelectFolderActivity;->a(Lcom/kms/gui/SelectFolderActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 415
    :cond_9
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    const-class v3, Lcom/kms/antivirus/gui/AvScanFilesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    const-string v2, "SCAN_PATH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    iget-object v4, v4, Lcom/kms/gui/SelectFolderActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Lcom/kms/gui/SelectFolderActivity;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    iget-object v0, p0, LdZ;->a:Lcom/kms/gui/SelectFolderActivity;

    invoke-virtual {v0, v1}, Lcom/kms/gui/SelectFolderActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 395
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
