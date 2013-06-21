.class public Lcom/kms/gui/KMSHelpActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/gui/KMSHelpActivity;->a:Z

    return-void
.end method


# virtual methods
.method protected final a_()Z
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/kms/gui/KMSHelpActivity;->b:I

    const v1, 0x7f060015

    if-ne v0, v1, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x400

    const/4 v4, -0x1

    .line 43
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSHelpActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/kms/gui/KMSHelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 48
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 50
    iget-boolean v0, v0, Lgd;->b:Z

    .line 52
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/kms/gui/KMSHelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 57
    :cond_0
    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 58
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 59
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/kms/gui/KMSHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 62
    iput v4, p0, Lcom/kms/gui/KMSHelpActivity;->b:I

    .line 63
    if-eqz v2, :cond_1

    .line 65
    const-string v3, "com.kms.gui.helpid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/kms/gui/KMSHelpActivity;->b:I

    .line 67
    :cond_1
    iget v2, p0, Lcom/kms/gui/KMSHelpActivity;->b:I

    if-ne v2, v4, :cond_2

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "KMSHelpActivity - help id does not set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    iget v2, p0, Lcom/kms/gui/KMSHelpActivity;->b:I

    invoke-static {v2, p0}, Lfp;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 72
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 78
    .line 79
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 80
    const-class v2, Lgd;

    monitor-enter v2

    .line 81
    :try_start_0
    iget-boolean v0, v0, Lgd;->b:Z

    .line 82
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 87
    iput-boolean v1, p0, Lcom/kms/gui/KMSHelpActivity;->a:Z

    .line 88
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 92
    :goto_0
    return v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected declared-synchronized onPause()V
    .locals 2

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onPause()V

    .line 100
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 101
    const-class v1, Lgd;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    :try_start_1
    iget-boolean v0, v0, Lgd;->b:Z

    .line 103
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    if-nez v0, :cond_0

    .line 110
    :goto_0
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 107
    :cond_0
    :try_start_3
    iget-boolean v0, p0, Lcom/kms/gui/KMSHelpActivity;->a:Z

    if-nez v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/kms/gui/KMSHelpActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->q()V

    .line 109
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/gui/KMSHelpActivity;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method
