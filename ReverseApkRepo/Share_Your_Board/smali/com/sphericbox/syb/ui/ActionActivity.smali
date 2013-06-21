.class public Lcom/sphericbox/syb/ui/ActionActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/Set;

.field private f:Ljava/lang/Runnable;

.field protected final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->handler:Landroid/os/Handler;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->c:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->d:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected varargs addContextActions([Lcom/sphericbox/syb/ui/b;)V
    .locals 4
    .parameter

    .prologue
    .line 65
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 66
    iget-object v3, p0, Lcom/sphericbox/syb/ui/ActionActivity;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method protected varargs addMenuActions([Lcom/sphericbox/syb/ui/b;)V
    .locals 4
    .parameter

    .prologue
    .line 59
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 60
    iget-object v3, p0, Lcom/sphericbox/syb/ui/ActionActivity;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method protected clearActions()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    return-void
.end method

.method public dismissDialog(Landroid/app/Dialog;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 29
    iget-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 30
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 38
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/ui/b;

    .line 42
    invoke-virtual {v0}, Lcom/sphericbox/syb/ui/b;->release()V

    goto :goto_1

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    iget-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/ui/b;

    .line 47
    invoke-virtual {v0}, Lcom/sphericbox/syb/ui/b;->release()V

    goto :goto_2

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->f:Ljava/lang/Runnable;

    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 52
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sphericbox/syb/ui/ActionActivity;->runDefaultAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/ui/b;

    .line 111
    invoke-virtual {v0}, Lcom/sphericbox/syb/ui/b;->getId()I

    move-result v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/sphericbox/syb/ui/b;->run()V

    .line 113
    const/4 v0, 0x1

    .line 116
    :goto_1
    return v0

    .line 109
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 116
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 93
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    move v2, v5

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sphericbox/syb/ui/b;

    .line 97
    invoke-virtual {v0}, Lcom/sphericbox/syb/ui/b;->getId()I

    move-result v3

    invoke-virtual {v0}, Lcom/sphericbox/syb/ui/b;->s()I

    move-result v4

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 101
    invoke-virtual {v0}, Lcom/sphericbox/syb/ui/b;->t()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 102
    invoke-virtual {v0}, Lcom/sphericbox/syb/ui/b;->isEnabled()Z

    move-result v0

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 95
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 104
    :cond_0
    return v1
.end method

.method protected runDefaultAction(I)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-static {p1}, Lcom/sphericbox/syb/ui/e;->e(I)Z

    move-result v0

    return v0
.end method

.method protected setDefaultAction(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sphericbox/syb/ui/ActionActivity;->f:Ljava/lang/Runnable;

    .line 76
    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sphericbox/syb/ui/ActionActivity;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 24
    return-void
.end method
