.class public Lcom/google/devtools/simple/runtime/components/android/HVArrangement;
.super Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;
.source "HVArrangement.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;
.implements Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private final context:Landroid/app/Activity;

.field private final orientation:I

.field private final viewLayout:Lcom/google/devtools/simple/runtime/components/android/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;I)V
    .locals 4
    .parameter "container"
    .parameter "orientation"

    .prologue
    const/16 v3, 0x64

    .line 37
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    .line 38
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/HVArrangement;->context:Landroid/app/Activity;

    .line 40
    iput p2, p0, Lcom/google/devtools/simple/runtime/components/android/HVArrangement;->orientation:I

    .line 41
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/LinearLayout;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/HVArrangement;->context:Landroid/app/Activity;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/HVArrangement;->viewLayout:Lcom/google/devtools/simple/runtime/components/android/LinearLayout;

    .line 45
    invoke-interface {p1, p0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    .line 46
    return-void
.end method


# virtual methods
.method public $add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/HVArrangement;->viewLayout:Lcom/google/devtools/simple/runtime/components/android/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/LinearLayout;->add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    .line 63
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/HVArrangement;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/devtools/simple/runtime/components/android/Form;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/HVArrangement;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/HVArrangement;->viewLayout:Lcom/google/devtools/simple/runtime/components/android/LinearLayout;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public setChildHeight(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;I)V
    .locals 1
    .parameter "component"
    .parameter "height"

    .prologue
    .line 76
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/HVArrangement;->orientation:I

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/devtools/simple/runtime/components/android/util/ViewUtil;->setChildHeightForHorizontalLayout(Landroid/view/View;I)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/devtools/simple/runtime/components/android/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setChildWidth(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;I)V
    .locals 1
    .parameter "component"
    .parameter "width"

    .prologue
    .line 67
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/HVArrangement;->orientation:I

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/devtools/simple/runtime/components/android/util/ViewUtil;->setChildWidthForHorizontalLayout(Landroid/view/View;I)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/devtools/simple/runtime/components/android/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    goto :goto_0
.end method
