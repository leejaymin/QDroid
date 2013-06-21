.class public Lexam/Input/FreeLine;
.super Landroid/app/Activity;
.source "FreeLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/Input/FreeLine$MyView;,
        Lexam/Input/FreeLine$Vertex;
    }
.end annotation


# instance fields
.field arVertex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lexam/Input/FreeLine$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field private vw:Lexam/Input/FreeLine$MyView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    new-instance v0, Lexam/Input/FreeLine$MyView;

    invoke-direct {v0, p0, p0}, Lexam/Input/FreeLine$MyView;-><init>(Lexam/Input/FreeLine;Landroid/content/Context;)V

    iput-object v0, p0, Lexam/Input/FreeLine;->vw:Lexam/Input/FreeLine$MyView;

    .line 18
    iget-object v0, p0, Lexam/Input/FreeLine;->vw:Lexam/Input/FreeLine$MyView;

    invoke-virtual {p0, v0}, Lexam/Input/FreeLine;->setContentView(Landroid/view/View;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexam/Input/FreeLine;->arVertex:Ljava/util/ArrayList;

    .line 21
    return-void
.end method
