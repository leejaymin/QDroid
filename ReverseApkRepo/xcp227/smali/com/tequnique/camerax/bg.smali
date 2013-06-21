.class final Lcom/tequnique/camerax/bg;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/CameraProActivity;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/tequnique/camerax/CameraProActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/tequnique/camerax/bg;->a:Lcom/tequnique/camerax/CameraProActivity;

    const v0, 0x7f030004

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/tequnique/camerax/bg;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/bg;)Lcom/tequnique/camerax/CameraProActivity;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/bg;->a:Lcom/tequnique/camerax/CameraProActivity;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/bg;->a:Lcom/tequnique/camerax/CameraProActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/bg;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tequnique/camerax/bj;

    if-eqz v0, :cond_2

    const v1, 0x7f0a001f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/tequnique/camerax/bj;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v2, 0x7f0a001e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/tequnique/camerax/bg;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-static {v3, v2, v1}, Lcom/tequnique/camerax/CameraProActivity;->a(Lcom/tequnique/camerax/CameraProActivity;Landroid/widget/ImageButton;Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/tequnique/camerax/bg;->a:Lcom/tequnique/camerax/CameraProActivity;

    invoke-virtual {v1}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, v0, Lcom/tequnique/camerax/bj;->a:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, v0, Lcom/tequnique/camerax/bj;->d:Z

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    new-instance v0, Lcom/tequnique/camerax/bh;

    invoke-direct {v0, p0, p1}, Lcom/tequnique/camerax/bh;-><init>(Lcom/tequnique/camerax/bg;I)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-object p2
.end method
