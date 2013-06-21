.class public Lexam/Draw/Reflection2;
.super Landroid/app/Activity;
.source "Reflection2.java"


# instance fields
.field vw:Lexam/Draw/SurfView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    new-instance v0, Lexam/Draw/SurfView;

    invoke-direct {v0, p0}, Lexam/Draw/SurfView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lexam/Draw/Reflection2;->vw:Lexam/Draw/SurfView;

    .line 78
    iget-object v0, p0, Lexam/Draw/Reflection2;->vw:Lexam/Draw/SurfView;

    invoke-virtual {p0, v0}, Lexam/Draw/Reflection2;->setContentView(Landroid/view/View;)V

    .line 79
    return-void
.end method
