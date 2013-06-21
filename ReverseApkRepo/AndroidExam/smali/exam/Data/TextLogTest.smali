.class public Lexam/Data/TextLogTest;
.super Landroid/app/Activity;
.source "TextLogTest.java"


# instance fields
.field mLinear:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
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
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lexam/Data/TextLogTest;->setContentView(I)V

    .line 17
    invoke-static {p0}, Lexam/Data/TextLog;->init(Landroid/content/Context;)V

    .line 19
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lexam/Data/TextLogTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lexam/Data/TextLogTest;->mLinear:Landroid/widget/LinearLayout;

    .line 20
    iget-object v0, p0, Lexam/Data/TextLogTest;->mLinear:Landroid/widget/LinearLayout;

    new-instance v1, Lexam/Data/TextLogTest$1;

    invoke-direct {v1, p0}, Lexam/Data/TextLogTest$1;-><init>(Lexam/Data/TextLogTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 41
    invoke-static {p1}, Lexam/Data/TextLog;->addMenu(Landroid/view/Menu;)V

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 46
    invoke-static {p1}, Lexam/Data/TextLog;->execMenu(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
