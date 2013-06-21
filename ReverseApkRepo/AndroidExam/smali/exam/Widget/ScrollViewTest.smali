.class public Lexam/Widget/ScrollViewTest;
.super Landroid/app/Activity;
.source "ScrollViewTest.java"


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
    const v1, 0x7f030080

    invoke-virtual {p0, v1}, Lexam/Widget/ScrollViewTest;->setContentView(I)V

    .line 16
    const v1, 0x7f0c0082

    invoke-virtual {p0, v1}, Lexam/Widget/ScrollViewTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 20
    .local v0, svw:Landroid/widget/ScrollView;
    new-instance v1, Lexam/Widget/ColorView;

    invoke-direct {v1, p0}, Lexam/Widget/ColorView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 21
    return-void
.end method
