.class public Lexam/Input/LogTest;
.super Landroid/app/Activity;
.source "LogTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LogTest"


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Lexam/Input/LogTest$1;

    invoke-direct {v0, p0}, Lexam/Input/LogTest$1;-><init>(Lexam/Input/LogTest;)V

    iput-object v0, p0, Lexam/Input/LogTest;->mClickListener:Landroid/view/View$OnClickListener;

    .line 11
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lexam/Input/LogTest;->setContentView(I)V

    .line 18
    const-string v0, "LogTest"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lexam/Input/LogTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Input/LogTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lexam/Input/LogTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Input/LogTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 26
    const-string v0, "LogTest"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method
