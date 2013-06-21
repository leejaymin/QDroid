.class public Lorg/tf/HelpActivity;
.super Lorg/tf/ui/ActivityBase;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PAGE_ABOUT:I = 0x4

.field private static final PAGE_GET_SONGS:I = 0x2

.field private static final PAGE_HOW_TO_PLAY:I = 0x1

.field private static final PAGE_MISC:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/tf/ui/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 69
    :pswitch_0
    invoke-virtual {p0, v1, v1}, Lorg/tf/HelpActivity;->flipToPage(IZ)V

    goto :goto_0

    .line 72
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/tf/HelpActivity;->flipToPage(IZ)V

    goto :goto_0

    .line 75
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/tf/HelpActivity;->flipToPage(IZ)V

    goto :goto_0

    .line 78
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tf/HelpActivity;->flipToPage(IZ)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x7f0c001a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lorg/tf/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lorg/tf/HelpActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0, p1}, Lorg/tf/HelpActivity;->usePageFlipper(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lorg/tf/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v0, 0x7f0c001b

    invoke-virtual {p0, v0}, Lorg/tf/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lorg/tf/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lorg/tf/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lorg/tf/ui/ActivityBase;->onResume()V

    .line 50
    invoke-virtual {p0}, Lorg/tf/HelpActivity;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const v0, 0x7f0c0019

    invoke-static {p0, v0}, Lorg/tf/ui/UIHelpers;->animateHeadAndBody(Landroid/app/Activity;I)V

    .line 53
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lorg/tf/ui/ActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method
