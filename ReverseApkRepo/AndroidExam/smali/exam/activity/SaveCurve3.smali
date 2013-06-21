.class public Lexam/activity/SaveCurve3;
.super Landroid/app/Activity;
.source "SaveCurve3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/activity/SaveCurve3$MyView;,
        Lexam/activity/SaveCurve3$Vertex;
    }
.end annotation


# instance fields
.field Count:I

.field arVertex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lexam/activity/SaveCurve3$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field private vw:Lexam/activity/SaveCurve3$MyView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Count = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lexam/activity/SaveCurve3;->Count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lexam/activity/SaveCurve3;->Count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexam/activity/SaveCurve3;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v0, Lexam/activity/SaveCurve3$MyView;

    invoke-direct {v0, p0, p0}, Lexam/activity/SaveCurve3$MyView;-><init>(Lexam/activity/SaveCurve3;Landroid/content/Context;)V

    iput-object v0, p0, Lexam/activity/SaveCurve3;->vw:Lexam/activity/SaveCurve3$MyView;

    .line 20
    iget-object v0, p0, Lexam/activity/SaveCurve3;->vw:Lexam/activity/SaveCurve3$MyView;

    invoke-virtual {p0, v0}, Lexam/activity/SaveCurve3;->setContentView(Landroid/view/View;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexam/activity/SaveCurve3;->arVertex:Ljava/util/ArrayList;

    .line 23
    return-void
.end method
