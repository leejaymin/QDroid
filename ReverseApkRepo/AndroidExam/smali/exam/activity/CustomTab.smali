.class public Lexam/activity/CustomTab;
.super Landroid/app/Activity;
.source "CustomTab.java"


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field mPage1:Landroid/view/View;

.field mPage2:Landroid/view/View;

.field mPage3:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    new-instance v0, Lexam/activity/CustomTab$1;

    invoke-direct {v0, p0}, Lexam/activity/CustomTab$1;-><init>(Lexam/activity/CustomTab;)V

    iput-object v0, p0, Lexam/activity/CustomTab;->mClickListener:Landroid/view/View$OnClickListener;

    .line 9
    return-void
.end method


# virtual methods
.method ChangePage(I)V
    .locals 3
    .parameter "page"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lexam/activity/CustomTab;->mPage1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lexam/activity/CustomTab;->mPage2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lexam/activity/CustomTab;->mPage3:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    packed-switch p1, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lexam/activity/CustomTab;->mPage1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lexam/activity/CustomTab;->mPage2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 54
    :pswitch_2
    iget-object v0, p0, Lexam/activity/CustomTab;->mPage3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lexam/activity/CustomTab;->setContentView(I)V

    .line 16
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lexam/activity/CustomTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lexam/activity/CustomTab;->mPage1:Landroid/view/View;

    .line 17
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lexam/activity/CustomTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lexam/activity/CustomTab;->mPage2:Landroid/view/View;

    .line 18
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lexam/activity/CustomTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lexam/activity/CustomTab;->mPage3:Landroid/view/View;

    .line 20
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lexam/activity/CustomTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lexam/activity/CustomTab;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lexam/activity/CustomTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lexam/activity/CustomTab;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lexam/activity/CustomTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lexam/activity/CustomTab;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    return-void
.end method
