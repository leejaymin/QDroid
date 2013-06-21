.class public Ljiqqa/recipe/QMenu;
.super Ljava/lang/Object;
.source "QMenu.java"


# instance fields
.field qa:Ljiqqa/recipe/QuickAction;


# direct methods
.method public constructor <init>(Ljiqqa/recipe/QuickAction;)V
    .locals 0
    .parameter "abc"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Ljiqqa/recipe/QMenu;->qa:Ljiqqa/recipe/QuickAction;

    .line 9
    return-void
.end method


# virtual methods
.method public getMyQA()Ljiqqa/recipe/QuickAction;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Ljiqqa/recipe/QMenu;->qa:Ljiqqa/recipe/QuickAction;

    return-object v0
.end method
