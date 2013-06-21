.class public Lexam/Input/HandleEvent;
.super Landroid/app/Activity;
.source "HandleEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/Input/HandleEvent$MyView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    new-instance v0, Lexam/Input/HandleEvent$MyView;

    invoke-direct {v0, p0, p0}, Lexam/Input/HandleEvent$MyView;-><init>(Lexam/Input/HandleEvent;Landroid/content/Context;)V

    .line 14
    .local v0, vw:Landroid/view/View;
    invoke-virtual {p0, v0}, Lexam/Input/HandleEvent;->setContentView(Landroid/view/View;)V

    .line 15
    return-void
.end method
