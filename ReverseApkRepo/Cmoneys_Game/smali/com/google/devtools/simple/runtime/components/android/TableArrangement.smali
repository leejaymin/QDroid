.class public Lcom/google/devtools/simple/runtime/components/android/TableArrangement;
.super Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;
.source "TableArrangement.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;
.implements Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->ARRANGEMENTS:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "<p>A formatting element in which to place components that should be displayed in tabular form.</p>"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private final context:Landroid/app/Activity;

.field private final viewLayout:Lcom/google/devtools/simple/runtime/components/android/TableLayout;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 3
    .parameter "container"

    .prologue
    const/4 v2, 0x2

    .line 40
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;-><init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V

    .line 41
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TableArrangement;->context:Landroid/app/Activity;

    .line 43
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/TableLayout;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/TableArrangement;->context:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, v2}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TableArrangement;->viewLayout:Lcom/google/devtools/simple/runtime/components/android/TableLayout;

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
    .line 112
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TableArrangement;->viewLayout:Lcom/google/devtools/simple/runtime/components/android/TableLayout;

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    .line 113
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TableArrangement;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/devtools/simple/runtime/components/android/Form;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TableArrangement;->container:Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;

    invoke-interface {v0}, Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;->$form()Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v0

    return-object v0
.end method

.method public Columns()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TableArrangement;->viewLayout:Lcom/google/devtools/simple/runtime/components/android/TableLayout;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->getNumColumns()I

    move-result v0

    return v0
.end method

.method public Columns(I)V
    .locals 1
    .parameter "numColumns"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TableArrangement;->viewLayout:Lcom/google/devtools/simple/runtime/components/android/TableLayout;

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->setNumColumns(I)V

    .line 74
    return-void
.end method

.method public Initialize()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public Rows()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TableArrangement;->viewLayout:Lcom/google/devtools/simple/runtime/components/android/TableLayout;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->getNumRows()I

    move-result v0

    return v0
.end method

.method public Rows(I)V
    .locals 1
    .parameter "numRows"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TableArrangement;->viewLayout:Lcom/google/devtools/simple/runtime/components/android/TableLayout;

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->setNumRows(I)V

    .line 96
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TableArrangement;->viewLayout:Lcom/google/devtools/simple/runtime/components/android/TableLayout;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/TableLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public setChildHeight(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;I)V
    .locals 1
    .parameter "component"
    .parameter "height"

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/devtools/simple/runtime/components/android/util/ViewUtil;->setChildHeightForTableLayout(Landroid/view/View;I)V

    .line 123
    return-void
.end method

.method public setChildWidth(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;I)V
    .locals 1
    .parameter "component"
    .parameter "width"

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/devtools/simple/runtime/components/android/util/ViewUtil;->setChildWidthForTableLayout(Landroid/view/View;I)V

    .line 118
    return-void
.end method
