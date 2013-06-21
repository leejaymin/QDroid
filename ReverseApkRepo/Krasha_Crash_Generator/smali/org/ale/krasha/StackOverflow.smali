.class public Lorg/ale/krasha/StackOverflow;
.super Landroid/app/Activity;
.source "StackOverflow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static endless()V
    .locals 0

    .prologue
    .line 22
    invoke-static {}, Lorg/ale/krasha/StackOverflow;->endless()V

    .line 23
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lorg/ale/krasha/StackOverflow;->setContentView(I)V

    .line 14
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 18
    invoke-static {}, Lorg/ale/krasha/StackOverflow;->endless()V

    .line 19
    return-void
.end method
