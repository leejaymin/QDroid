.class final Limoblife/startupmanager/d;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Limoblife/startupmanager/BootList;


# direct methods
.method public constructor <init>(Limoblife/startupmanager/BootList;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/d;->a:Limoblife/startupmanager/BootList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/d;->a:Limoblife/startupmanager/BootList;

    iget-object v0, v0, Limoblife/startupmanager/BootList;->bootItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/16 v4, 0x1e

    const/4 v2, 0x6

    const/4 v3, 0x0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/startupmanager/d;->a:Limoblife/startupmanager/BootList;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, p0, Limoblife/startupmanager/d;->a:Limoblife/startupmanager/BootList;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Limoblife/startupmanager/d;->a:Limoblife/startupmanager/BootList;

    iget-object v0, v0, Limoblife/startupmanager/BootList;->bootItem:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/c;

    iget-object v0, v0, Limoblife/startupmanager/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v0, p0, Limoblife/startupmanager/d;->a:Limoblife/startupmanager/BootList;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    invoke-virtual {v2, v0, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Limoblife/startupmanager/d;->a:Limoblife/startupmanager/BootList;

    iget-object v0, v0, Limoblife/startupmanager/BootList;->bootItem:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/c;

    iget-object v0, v0, Limoblife/startupmanager/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x4190

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    const-string v0, "#a8e7ef"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v5, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Limoblife/startupmanager/d;->a:Limoblife/startupmanager/BootList;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v2, Limoblife/startupmanager/R$drawable;->arrows:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-virtual {v1, v0, v4, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-object v1
.end method
