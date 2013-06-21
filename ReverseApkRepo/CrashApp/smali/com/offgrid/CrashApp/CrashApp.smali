.class public Lcom/offgrid/CrashApp/CrashApp;
.super Landroid/app/Activity;
.source "CrashApp.java"


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
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 13
    .local v1, tv:Landroid/widget/TextView;
    const-string v2, "Crashing! ..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0, v1}, Lcom/offgrid/CrashApp/CrashApp;->setContentView(Landroid/view/View;)V

    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    return-void
.end method
