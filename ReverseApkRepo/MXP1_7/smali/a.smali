.class public La;
.super Landroid/app/AlertDialog;

# interfaces
.implements Lc;


# instance fields
.field private ㅼ꽑嫄:Lc;

.field private 癤욱븳援:Lafzkl/development/mColorPicker/views/ColorPickerView;

.field private 궗:Lafzkl/development/mColorPicker/views/ColorPanelView;

.field private 먯꽌:Lafzkl/development/mColorPicker/views/ColorPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, La;->궗(I)V

    return-void
.end method

.method private 궗(I)V
    .locals 2

    invoke-virtual {p0}, La;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-direct {p0, p1}, La;->먯꽌(I)V

    return-void
.end method

.method private 먯꽌(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, La;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lha;->dialog_color_picker:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, La;->setView(Landroid/view/View;)V

    sget v0, Lgz;->color_picker_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lafzkl/development/mColorPicker/views/ColorPickerView;

    iput-object v0, p0, La;->癤욱븳援:Lafzkl/development/mColorPicker/views/ColorPickerView;

    sget v0, Lgz;->old_color_panel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lafzkl/development/mColorPicker/views/ColorPanelView;

    iput-object v0, p0, La;->궗:Lafzkl/development/mColorPicker/views/ColorPanelView;

    sget v0, Lgz;->new_color_panel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lafzkl/development/mColorPicker/views/ColorPanelView;

    iput-object v0, p0, La;->먯꽌:Lafzkl/development/mColorPicker/views/ColorPanelView;

    iget-object v0, p0, La;->궗:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, La;->癤욱븳援:Lafzkl/development/mColorPicker/views/ColorPickerView;

    invoke-virtual {v1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getDrawingOffset()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, La;->癤욱븳援:Lafzkl/development/mColorPicker/views/ColorPickerView;

    invoke-virtual {v2}, Lafzkl/development/mColorPicker/views/ColorPickerView;->getDrawingOffset()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, La;->癤욱븳援:Lafzkl/development/mColorPicker/views/ColorPickerView;

    invoke-virtual {v0, p0}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setOnColorChangedListener(Lc;)V

    iget-object v0, p0, La;->궗:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v0, p1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setColor(I)V

    iget-object v0, p0, La;->癤욱븳援:Lafzkl/development/mColorPicker/views/ColorPickerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setColor(IZ)V

    iget-object v0, p0, La;->癤욱븳援:Lafzkl/development/mColorPicker/views/ColorPickerView;

    sget v1, Lhb;->alphaSliderText:I

    invoke-virtual {v0, v1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setAlphaSliderText(I)V

    return-void
.end method


# virtual methods
.method public 癤욱븳援(I)V
    .locals 1

    iget-object v0, p0, La;->먯꽌:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v0, p1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setColor(I)V

    iget-object v0, p0, La;->ㅼ꽑嫄:Lc;

    if-eqz v0, :cond_0

    iget-object v0, p0, La;->ㅼ꽑嫄:Lc;

    invoke-interface {v0, p1}, Lc;->癤욱븳援(I)V

    :cond_0
    return-void
.end method

.method public final 癤욱븳援(Lc;)V
    .locals 0

    iput-object p1, p0, La;->ㅼ꽑嫄:Lc;

    return-void
.end method

.method public 癤욱븳援(Z)V
    .locals 1

    iget-object v0, p0, La;->癤욱븳援:Lafzkl/development/mColorPicker/views/ColorPickerView;

    invoke-virtual {v0, p1}, Lafzkl/development/mColorPicker/views/ColorPickerView;->setAlphaSliderVisible(Z)V

    return-void
.end method
