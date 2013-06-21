.class public Lexam/Draw/Reflection;
.super Landroid/app/Activity;
.source "Reflection.java"


# instance fields
.field vw:Lexam/Draw/MyView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    new-instance v0, Lexam/Draw/MyView;

    invoke-direct {v0, p0}, Lexam/Draw/MyView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lexam/Draw/Reflection;->vw:Lexam/Draw/MyView;

    .line 76
    iget-object v0, p0, Lexam/Draw/Reflection;->vw:Lexam/Draw/MyView;

    invoke-virtual {p0, v0}, Lexam/Draw/Reflection;->setContentView(Landroid/view/View;)V

    .line 77
    return-void
.end method
