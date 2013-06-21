.class public Lorg/ale/krasha/SuperNotCalled;
.super Landroid/app/Activity;
.source "SuperNotCalled.java"


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
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lorg/ale/krasha/SuperNotCalled;->setContentView(I)V

    .line 14
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/ale/krasha/SuperNotCalled;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .local v0, thissa:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/ale/krasha/SuperNotCalled;->startActivity(Landroid/content/Intent;)V

    .line 20
    return-void
.end method
