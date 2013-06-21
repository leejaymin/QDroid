.class public abstract Lcom/sphericbox/syb/ui/f;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private final br:Landroid/widget/Button;

.field private final bs:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0, p2}, Lcom/sphericbox/syb/ui/f;->setTitle(I)V

    .line 21
    invoke-virtual {p0, p3}, Lcom/sphericbox/syb/ui/f;->setContentView(I)V

    .line 22
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/ui/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sphericbox/syb/ui/f;->bs:Landroid/widget/Button;

    .line 23
    iget-object v0, p0, Lcom/sphericbox/syb/ui/f;->bs:Landroid/widget/Button;

    new-instance v1, Lcom/sphericbox/syb/ui/d;

    invoke-direct {v1, p0}, Lcom/sphericbox/syb/ui/d;-><init>(Lcom/sphericbox/syb/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/ui/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sphericbox/syb/ui/f;->br:Landroid/widget/Button;

    .line 30
    iget-object v0, p0, Lcom/sphericbox/syb/ui/f;->br:Landroid/widget/Button;

    new-instance v1, Lcom/sphericbox/syb/ui/c;

    invoke-direct {v1, p0}, Lcom/sphericbox/syb/ui/c;-><init>(Lcom/sphericbox/syb/ui/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/ui/f;->setCancelable(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract m()V
.end method

.method protected abstract onCancel()V
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-static {p1}, Lcom/sphericbox/syb/ui/e;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/sphericbox/syb/ui/f;->m()V

    move v0, v1

    .line 53
    :goto_0
    return v0

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/sphericbox/syb/ui/e;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/sphericbox/syb/ui/f;->onCancel()V

    move v0, v1

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 41
    iget-object v0, p0, Lcom/sphericbox/syb/ui/f;->br:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 42
    return-void
.end method
