.class public Lexam/Input/MenuCheck;
.super Landroid/app/Activity;
.source "MenuCheck.java"


# instance fields
.field mBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lexam/Input/MenuCheck;->setContentView(I)V

    .line 16
    const v0, 0x7f0c0039

    invoke-virtual {p0, v0}, Lexam/Input/MenuCheck;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lexam/Input/MenuCheck;->mBtn:Landroid/widget/Button;

    .line 17
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 20
    invoke-virtual {p0}, Lexam/Input/MenuCheck;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 21
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 23
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 66
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 50
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lexam/Input/MenuCheck;->mBtn:Landroid/widget/Button;

    const/high16 v2, 0x41a0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v1, p0, Lexam/Input/MenuCheck;->mBtn:Landroid/widget/Button;

    const/high16 v2, 0x4220

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextSize(F)V

    goto :goto_0

    .line 57
    :pswitch_2
    iget-object v1, p0, Lexam/Input/MenuCheck;->mBtn:Landroid/widget/Button;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 60
    :pswitch_3
    iget-object v1, p0, Lexam/Input/MenuCheck;->mBtn:Landroid/widget/Button;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 63
    :pswitch_4
    iget-object v1, p0, Lexam/Input/MenuCheck;->mBtn:Landroid/widget/Button;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x7f0c00ab
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const v4, 0x7f0c00ab

    const/4 v3, 0x1

    .line 27
    iget-object v1, p0, Lexam/Input/MenuCheck;->mBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTextSize()F

    move-result v1

    const/high16 v2, 0x4220

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 28
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 33
    :goto_0
    iget-object v1, p0, Lexam/Input/MenuCheck;->mBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 35
    .local v0, color:I
    const/high16 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 36
    const v1, 0x7f0c00ad

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 38
    :cond_0
    const v1, -0xff0100

    if-ne v0, v1, :cond_1

    .line 39
    const v1, 0x7f0c00ae

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 41
    :cond_1
    const v1, -0xffff01

    if-ne v0, v1, :cond_2

    .line 42
    const v1, 0x7f0c00af

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 44
    :cond_2
    return v3

    .line 30
    .end local v0           #color:I
    :cond_3
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
