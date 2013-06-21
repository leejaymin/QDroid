.class public Lcom/tequnique/camerax/SettingsViewSaveActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/tequnique/camerax/bo;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->b:Landroid/widget/Button;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->c:Landroid/widget/Button;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->d:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->e:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->f:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->g:Landroid/widget/Button;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->h:Landroid/widget/Button;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->i:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->j:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/SettingsViewSaveActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/tequnique/camerax/SettingsViewSaveActivity;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tequnique/camerax/FileDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "START_PATH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/tequnique/camerax/SettingsViewSaveActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic b(Lcom/tequnique/camerax/SettingsViewSaveActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/tequnique/camerax/SettingsViewSaveActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/tequnique/camerax/SettingsViewSaveActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->j:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    :try_start_0
    const-string v0, "RESULT_PATH"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewSaveActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/tequnique/camerax/bo;->a(Landroid/content/Context;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    const/16 v1, 0x8

    iput v1, v0, Lcom/tequnique/camerax/bo;->aY:I

    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->b:Landroid/widget/Button;

    const v0, 0x7f0a0050

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->c:Landroid/widget/Button;

    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f0a004f

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f0a0051

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->f:Landroid/widget/CheckBox;

    const v0, 0x7f0a0054

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->g:Landroid/widget/Button;

    const v0, 0x7f0a0056

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->h:Landroid/widget/Button;

    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->i:Landroid/widget/EditText;

    const v0, 0x7f0a0055

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/SettingsViewSaveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->j:Landroid/widget/EditText;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v1, v1, Lcom/tequnique/camerax/bo;->X:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v1, v1, Lcom/tequnique/camerax/bo;->aa:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v1, v1, Lcom/tequnique/camerax/bo;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v1, v1, Lcom/tequnique/camerax/bo;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->f:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    iget-boolean v1, v1, Lcom/tequnique/camerax/bo;->Z:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v1, v1, Lcom/tequnique/camerax/bo;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v1, v1, Lcom/tequnique/camerax/bo;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/tequnique/camerax/bx;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/bx;-><init>(Lcom/tequnique/camerax/SettingsViewSaveActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/tequnique/camerax/by;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/by;-><init>(Lcom/tequnique/camerax/SettingsViewSaveActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/tequnique/camerax/bz;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/bz;-><init>(Lcom/tequnique/camerax/SettingsViewSaveActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->h:Landroid/widget/Button;

    new-instance v1, Lcom/tequnique/camerax/cc;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/cc;-><init>(Lcom/tequnique/camerax/SettingsViewSaveActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v1, "/"

    iput-object v1, v0, Lcom/tequnique/camerax/bo;->X:Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    const-string v1, "/"

    iput-object v1, v0, Lcom/tequnique/camerax/bo;->aa:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tequnique/camerax/bo;->X:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tequnique/camerax/bo;->Y:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/tequnique/camerax/bo;->Z:Z

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tequnique/camerax/bo;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    iget-object v1, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tequnique/camerax/bo;->ab:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/SettingsViewSaveActivity;->a:Lcom/tequnique/camerax/bo;

    invoke-virtual {v0, p0}, Lcom/tequnique/camerax/bo;->b(Landroid/content/Context;)V

    return-void
.end method
