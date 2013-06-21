.class public Lorg/theb/ssh/TouchEntropy;
.super Landroid/app/Activity;
.source "TouchEntropy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/theb/ssh/TouchEntropy$TouchView;
    }
.end annotation


# instance fields
.field protected mEntropy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lorg/theb/ssh/TouchEntropy;->mEntropy:Ljava/lang/String;

    .line 26
    new-instance v0, Lorg/theb/ssh/TouchEntropy$TouchView;

    invoke-direct {v0, p0, p0}, Lorg/theb/ssh/TouchEntropy$TouchView;-><init>(Lorg/theb/ssh/TouchEntropy;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lorg/theb/ssh/TouchEntropy;->setContentView(Landroid/view/View;)V

    .line 27
    return-void
.end method
