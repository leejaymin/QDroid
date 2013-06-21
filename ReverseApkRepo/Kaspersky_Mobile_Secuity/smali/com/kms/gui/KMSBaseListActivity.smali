.class public abstract Lcom/kms/gui/KMSBaseListActivity;
.super Landroid/app/ListActivity;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/kms/gui/KMSBaseListActivity;->a:I

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseListActivity;->c_()I

    move-result v0

    invoke-static {p0, v0}, Ldb;->a(Landroid/app/Activity;I)V

    .line 168
    return-void
.end method


# virtual methods
.method protected final a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 31
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 33
    invoke-virtual {v0, v2}, Landroid/view/Window;->setFormat(I)V

    .line 34
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/kms/gui/KMSBaseListActivity;->setContentView(I)V

    .line 37
    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p0, p2}, Lcom/kms/gui/KMSBaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseListActivity;->b()V

    .line 43
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseListActivity;->c_()I

    move-result v0

    if-nez v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 47
    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 2
    .parameter

    .prologue
    .line 152
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 153
    iget-boolean v0, v0, Lgd;->e:Z

    .line 155
    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    monitor-enter p0

    .line 160
    :try_start_0
    iput p1, p0, Lcom/kms/gui/KMSBaseListActivity;->a:I

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    const/16 v0, 0xf3

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSBaseListActivity;->showDialog(I)V

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract c_()I
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter

    .prologue
    .line 135
    packed-switch p1, :pswitch_data_0

    .line 146
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 138
    :pswitch_0
    const/4 v0, 0x0

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget v1, p0, Lcom/kms/gui/KMSBaseListActivity;->a:I

    if-eqz v1, :cond_0

    .line 141
    new-instance v0, Ldt;

    iget v1, p0, Lcom/kms/gui/KMSBaseListActivity;->a:I

    invoke-direct {v0, p0, v1}, Ldt;-><init>(Landroid/content/Context;I)V

    .line 143
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    :pswitch_data_0
    .packed-switch 0xf3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseListActivity;->c_()I

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 109
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 110
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 124
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string v1, "com.kms.gui.helpid"

    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseListActivity;->c_()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSBaseListActivity;->startActivity(Landroid/content/Intent;)V

    .line 127
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x7f0b0144
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 55
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->r()V

    .line 58
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 59
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 65
    invoke-static {p0}, Lfp;->d(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 68
    invoke-static {}, LfS;->a()LfS;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, LfS;->a(I)LfV;

    move-result-object v1

    check-cast v1, Lgd;

    .line 72
    iget-boolean v1, v1, Lgd;->b:Z

    .line 74
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/kms/gui/KMSBaseListActivity;->finish()V

    .line 78
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->d(Z)V

    .line 79
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->t()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    instance-of v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    const-string v1, "com.kms.gui.entercodemode"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string v1, "com.kms.gui.entercodenonext"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSBaseListActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    :cond_1
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 96
    return-void
.end method
