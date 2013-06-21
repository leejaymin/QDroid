.class public final Lafzkl/development/mColorPicker/a;
.super Landroid/app/AlertDialog;

# interfaces
.implements Lafzkl/development/mColorPicker/views/a;


# instance fields
.field private a:Lafzkl/development/mColorPicker/views/ColorPickerView;

.field private b:Lafzkl/development/mColorPicker/views/ColorPanelView;

.field private c:Lafzkl/development/mColorPicker/views/ColorPanelView;

.field private d:Lafzkl/development/mColorPicker/views/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-virtual {p0}, Lafzkl/development/mColorPicker/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lafzkl/development/mColorPicker/a;->setView(Landroid/view/View;)V

    const-string v0, "Pick a Color"

    invoke-virtual {p0, v0}, Lafzkl/development/mColorPicker/a;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f050027

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lafzkl/development/mColorPicker/views/ColorPickerView;

    iput-object v0, p0, Lafzkl/development/mColorPicker/a;->a:Lafzkl/development/mColorPicker/views/ColorPickerView;

    const v0, 0x7f050028

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lafzkl/development/mColorPicker/views/ColorPanelView;

    iput-object v0, p0, Lafzkl/development/mColorPicker/a;->b:Lafzkl/development/mColorPicker/views/ColorPanelView;

    const v0, 0x7f050029

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lafzkl/development/mColorPicker/views/ColorPanelView;

    iput-object v0, p0, Lafzkl/development/mColorPicker/a;->c:Lafzkl/development/mColorPicker/views/ColorPanelView;

    iget-object v0, p0, Lafzkl/development/mColorPicker/a;->b:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lafzkl/development/mColorPicker/a;->a:Lafzkl/development/mColorPicker/views/ColorPickerView;

    invoke-virtual {v1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->b()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lafzkl/development/mColorPicker/a;->a:Lafzkl/development/mColorPicker/views/ColorPickerView;

    invoke-virtual {v2}, Lafzkl/development/mColorPicker/views/ColorPickerView;->b()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/a;->a:Lafzkl/development/mColorPicker/views/ColorPickerView;

    invoke-virtual {v0, p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->a(Lafzkl/development/mColorPicker/views/a;)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/a;->b:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v0, p2}, Lafzkl/development/mColorPicker/views/ColorPanelView;->a(I)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/a;->a:Lafzkl/development/mColorPicker/views/ColorPickerView;

    invoke-virtual {v0, p2}, Lafzkl/development/mColorPicker/views/ColorPickerView;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lafzkl/development/mColorPicker/a;->a:Lafzkl/development/mColorPicker/views/ColorPickerView;

    invoke-virtual {v0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->a()I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lafzkl/development/mColorPicker/a;->c:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v0, p1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->a(I)V

    iget-object v0, p0, Lafzkl/development/mColorPicker/a;->d:Lafzkl/development/mColorPicker/views/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafzkl/development/mColorPicker/a;->d:Lafzkl/development/mColorPicker/views/a;

    invoke-interface {v0, p1}, Lafzkl/development/mColorPicker/views/a;->a(I)V

    :cond_0
    return-void
.end method
