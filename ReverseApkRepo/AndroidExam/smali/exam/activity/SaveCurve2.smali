.class public Lexam/activity/SaveCurve2;
.super Landroid/app/Activity;
.source "SaveCurve2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/activity/SaveCurve2$MyView;
    }
.end annotation


# instance fields
.field Count:I

.field arVertex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lexam/activity/Vertex;",
            ">;"
        }
    .end annotation
.end field

.field private vw:Lexam/activity/SaveCurve2$MyView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Lexam/activity/SaveCurve2$MyView;

    invoke-direct {v0, p0, p0}, Lexam/activity/SaveCurve2$MyView;-><init>(Lexam/activity/SaveCurve2;Landroid/content/Context;)V

    iput-object v0, p0, Lexam/activity/SaveCurve2;->vw:Lexam/activity/SaveCurve2$MyView;

    .line 55
    iget-object v0, p0, Lexam/activity/SaveCurve2;->vw:Lexam/activity/SaveCurve2$MyView;

    invoke-virtual {p0, v0}, Lexam/activity/SaveCurve2;->setContentView(Landroid/view/View;)V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexam/activity/SaveCurve2;->arVertex:Ljava/util/ArrayList;

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v0, "Curve"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lexam/activity/SaveCurve2;->arVertex:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 65
    const-string v0, "Curve"

    iget-object v1, p0, Lexam/activity/SaveCurve2;->arVertex:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 66
    return-void
.end method
