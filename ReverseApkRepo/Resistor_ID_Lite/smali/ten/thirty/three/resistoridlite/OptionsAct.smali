.class public Lten/thirty/three/resistoridlite/OptionsAct;
.super Landroid/app/Activity;
.source "OptionsAct.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field chkDim:Landroid/widget/CheckBox;

.field chkLock:Landroid/widget/CheckBox;

.field chkSaveRes:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 41
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lten/thirty/three/resistoridlite/OptionsAct;->setContentView(I)V

    .line 25
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lten/thirty/three/resistoridlite/OptionsAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lten/thirty/three/resistoridlite/OptionsAct;->chkDim:Landroid/widget/CheckBox;

    .line 26
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lten/thirty/three/resistoridlite/OptionsAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lten/thirty/three/resistoridlite/OptionsAct;->chkLock:Landroid/widget/CheckBox;

    .line 27
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lten/thirty/three/resistoridlite/OptionsAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lten/thirty/three/resistoridlite/OptionsAct;->chkSaveRes:Landroid/widget/CheckBox;

    .line 29
    iget-object v0, p0, Lten/thirty/three/resistoridlite/OptionsAct;->chkDim:Landroid/widget/CheckBox;

    sget-boolean v1, Lten/thirty/three/resistoridlite/ResistorId;->OPT_DIM:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 30
    iget-object v0, p0, Lten/thirty/three/resistoridlite/OptionsAct;->chkLock:Landroid/widget/CheckBox;

    sget-boolean v1, Lten/thirty/three/resistoridlite/ResistorId;->OPT_LOCK:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 31
    iget-object v0, p0, Lten/thirty/three/resistoridlite/OptionsAct;->chkSaveRes:Landroid/widget/CheckBox;

    sget-boolean v1, Lten/thirty/three/resistoridlite/ResistorId;->OPT_SAVERES:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 35
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 70
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/OptionsAct;->finish()V

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 47
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 49
    const/4 v0, -0x1

    .line 50
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.RIDReverse"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "option_dim"

    iget-object v3, p0, Lten/thirty/three/resistoridlite/OptionsAct;->chkDim:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "option_lock"

    iget-object v3, p0, Lten/thirty/three/resistoridlite/OptionsAct;->chkLock:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 51
    const-string v2, "option_saveres"

    iget-object v3, p0, Lten/thirty/three/resistoridlite/OptionsAct;->chkSaveRes:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 49
    invoke-virtual {p0, v0, v1}, Lten/thirty/three/resistoridlite/OptionsAct;->setResult(ILandroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lten/thirty/three/resistoridlite/OptionsAct;->finish()V

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 65
    return-void
.end method
