.class public Lexam/Widget/RadioTest;
.super Landroid/app/Activity;
.source "RadioTest.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mTogBtn:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0c0090

    if-ne v0, v1, :cond_0

    .line 43
    if-eqz p2, :cond_1

    .line 44
    iget-object v0, p0, Lexam/Widget/RadioTest;->mTogBtn:Landroid/widget/ToggleButton;

    const/high16 v1, 0x4220

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextSize(F)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lexam/Widget/RadioTest;->mTogBtn:Landroid/widget/ToggleButton;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextSize(F)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v0

    const v1, 0x7f0c0091

    if-ne v0, v1, :cond_0

    .line 27
    packed-switch p2, :pswitch_data_0

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lexam/Widget/RadioTest;->mTogBtn:Landroid/widget/ToggleButton;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0

    .line 32
    :pswitch_1
    iget-object v0, p0, Lexam/Widget/RadioTest;->mTogBtn:Landroid/widget/ToggleButton;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0

    .line 35
    :pswitch_2
    iget-object v0, p0, Lexam/Widget/RadioTest;->mTogBtn:Landroid/widget/ToggleButton;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0092
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v2, 0x7f03007b

    invoke-virtual {p0, v2}, Lexam/Widget/RadioTest;->setContentView(I)V

    .line 16
    const v2, 0x7f0c0095

    invoke-virtual {p0, v2}, Lexam/Widget/RadioTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lexam/Widget/RadioTest;->mTogBtn:Landroid/widget/ToggleButton;

    .line 18
    const v2, 0x7f0c0091

    invoke-virtual {p0, v2}, Lexam/Widget/RadioTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 19
    .local v0, ColGroup:Landroid/widget/RadioGroup;
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 21
    const v2, 0x7f0c0090

    invoke-virtual {p0, v2}, Lexam/Widget/RadioTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 22
    .local v1, chkBig:Landroid/widget/CheckBox;
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 23
    return-void
.end method
