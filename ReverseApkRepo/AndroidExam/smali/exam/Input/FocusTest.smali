.class public Lexam/Input/FocusTest;
.super Landroid/app/Activity;
.source "FocusTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 9
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lexam/Input/FocusTest;->setContentView(I)V

    .line 11
    return-void
.end method
