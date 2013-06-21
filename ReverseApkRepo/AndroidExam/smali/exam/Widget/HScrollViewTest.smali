.class public Lexam/Widget/HScrollViewTest;
.super Landroid/app/Activity;
.source "HScrollViewTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v1, 0x7f030068

    invoke-virtual {p0, v1}, Lexam/Widget/HScrollViewTest;->setContentView(I)V

    .line 16
    const v1, 0x7f0c0082

    invoke-virtual {p0, v1}, Lexam/Widget/HScrollViewTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 17
    .local v0, svw:Landroid/widget/HorizontalScrollView;
    new-instance v1, Lexam/Widget/HColorView;

    invoke-direct {v1, p0}, Lexam/Widget/HColorView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 18
    return-void
.end method
