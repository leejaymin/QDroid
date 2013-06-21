.class public Lexam/activity/SaveCurve;
.super Landroid/app/Activity;
.source "SaveCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/activity/SaveCurve$MyView;,
        Lexam/activity/SaveCurve$Vertex;
    }
.end annotation


# instance fields
.field arVertex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lexam/activity/SaveCurve$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field private vw:Lexam/activity/SaveCurve$MyView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v0, Lexam/activity/SaveCurve$MyView;

    invoke-direct {v0, p0, p0}, Lexam/activity/SaveCurve$MyView;-><init>(Lexam/activity/SaveCurve;Landroid/content/Context;)V

    iput-object v0, p0, Lexam/activity/SaveCurve;->vw:Lexam/activity/SaveCurve$MyView;

    .line 20
    iget-object v0, p0, Lexam/activity/SaveCurve;->vw:Lexam/activity/SaveCurve$MyView;

    invoke-virtual {p0, v0}, Lexam/activity/SaveCurve;->setContentView(Landroid/view/View;)V

    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexam/activity/SaveCurve;->arVertex:Ljava/util/ArrayList;

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v0, "Curve"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lexam/activity/SaveCurve;->arVertex:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 30
    const-string v0, "Curve"

    iget-object v1, p0, Lexam/activity/SaveCurve;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 31
    return-void
.end method
