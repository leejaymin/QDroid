.class public Lorg/connectbot/util/EntropyDialog;
.super Landroid/app/Dialog;
.source "EntropyDialog.java"

# interfaces
.implements Lorg/connectbot/util/OnEntropyGatheredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "view"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, p2}, Lorg/connectbot/util/EntropyDialog;->setContentView(Landroid/view/View;)V

    .line 41
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lorg/connectbot/util/EntropyDialog;->setTitle(I)V

    .line 43
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lorg/connectbot/util/EntropyDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/connectbot/util/EntropyView;

    invoke-virtual {v0, p0}, Lorg/connectbot/util/EntropyView;->addOnEntropyGatheredListener(Lorg/connectbot/util/OnEntropyGatheredListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onEntropyGathered([B)V
    .locals 0
    .parameter "entropy"

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/connectbot/util/EntropyDialog;->dismiss()V

    .line 48
    return-void
.end method
