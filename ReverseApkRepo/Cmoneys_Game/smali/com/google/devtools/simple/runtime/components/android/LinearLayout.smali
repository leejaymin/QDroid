.class public final Lcom/google/devtools/simple/runtime/components/android/LinearLayout;
.super Ljava/lang/Object;
.source "LinearLayout.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/Layout;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private final layoutManager:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "orientation"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/devtools/simple/runtime/components/android/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    .line 31
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .parameter "context"
    .parameter "orientation"
    .parameter "preferredEmptyWidth"
    .parameter "preferredEmptyHeight"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LinearLayout - preferredEmptyWidth and preferredEmptyHeight must be either both null or both not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/LinearLayout$1;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/devtools/simple/runtime/components/android/LinearLayout$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/LinearLayout;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    .line 94
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    if-nez p2, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 97
    return-void

    .line 94
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V
    .locals 5
    .parameter "component"

    .prologue
    const/4 v4, -0x2

    .line 106
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    return-void
.end method

.method public getLayoutManager()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    return-object v0
.end method
