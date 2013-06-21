.class public final Lcom/inisoft/mediaplayer/et;
.super Landroid/app/Dialog;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f0b0059

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void

    :cond_1
    const v0, 0x7f0b0058

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/inisoft/mediaplayer/et;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/inisoft/mediaplayer/et;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnKeyListener;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnKeyListener;)Lcom/inisoft/mediaplayer/et;
    .locals 6

    const/4 v2, 0x0

    const/4 v5, -0x2

    new-instance v1, Lcom/inisoft/mediaplayer/et;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/et;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/inisoft/mediaplayer/et;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/et;->setCancelable(Z)V

    invoke-virtual {v1, v2}, Lcom/inisoft/mediaplayer/et;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    if-nez p2, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/inisoft/mediaplayer/PlayerActivity;

    new-instance p2, Lcom/inisoft/mediaplayer/eu;

    invoke-direct {p2, v0}, Lcom/inisoft/mediaplayer/eu;-><init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    :cond_0
    invoke-virtual {v1, p2}, Lcom/inisoft/mediaplayer/et;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v3}, Lcom/inisoft/mediaplayer/et;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/et;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Lcom/inisoft/mediaplayer/et;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method
