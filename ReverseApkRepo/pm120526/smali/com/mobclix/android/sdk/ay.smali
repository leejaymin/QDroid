.class final Lcom/mobclix/android/sdk/ay;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/aw;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/cq;->d:Z

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v1}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/cq;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/mobclix/android/sdk/az;

    invoke-direct {v2, p0, p4}, Lcom/mobclix/android/sdk/az;-><init>(Lcom/mobclix/android/sdk/ay;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v3

    goto :goto_0
.end method

.method public final onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/cq;->d:Z

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v1}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/cq;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Confirm Navigation"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "Leave this Page"

    new-instance v2, Lcom/mobclix/android/sdk/bc;

    invoke-direct {v2, p0, p4}, Lcom/mobclix/android/sdk/bc;-><init>(Lcom/mobclix/android/sdk/ay;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Stay on this Page"

    new-instance v2, Lcom/mobclix/android/sdk/bd;

    invoke-direct {v2, p0, p4}, Lcom/mobclix/android/sdk/bd;-><init>(Lcom/mobclix/android/sdk/ay;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v3

    goto :goto_0
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/cq;->d:Z

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v1}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/cq;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/mobclix/android/sdk/ba;

    invoke-direct {v2, p0, p4}, Lcom/mobclix/android/sdk/ba;-><init>(Lcom/mobclix/android/sdk/ay;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    new-instance v2, Lcom/mobclix/android/sdk/bb;

    invoke-direct {v2, p0, p4}, Lcom/mobclix/android/sdk/bb;-><init>(Lcom/mobclix/android/sdk/ay;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v3

    goto :goto_0
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/cq;->d:Z

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz p4, :cond_1

    invoke-virtual {v2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x104000a

    new-instance v4, Lcom/mobclix/android/sdk/be;

    invoke-direct {v4, p0, p5, v2}, Lcom/mobclix/android/sdk/be;-><init>(Lcom/mobclix/android/sdk/ay;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    new-instance v3, Lcom/mobclix/android/sdk/bf;

    invoke-direct {v3, p0, p5}, Lcom/mobclix/android/sdk/bf;-><init>(Lcom/mobclix/android/sdk/ay;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v0, v5

    goto :goto_0
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    iput-object p2, v0, Lcom/mobclix/android/sdk/cq;->g:Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/cq;->d:Z

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobclix/android/sdk/cq;->a(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/cq;->f:Lcom/mobclix/android/sdk/cf;

    const-string v1, "null"

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v0, v0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mobclix/android/sdk/cq;->a(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/cq;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v0, v0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v0, v0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v0, v0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v0, v0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ar;->f(Lcom/mobclix/android/sdk/ar;)V

    sget-object v0, Lcom/mobclix/android/sdk/MobclixAdView;->n:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v1, v1, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v1, v1, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mobclix/android/sdk/cq;->a(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/ay;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobclix/android/sdk/cq;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
