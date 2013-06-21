.class public Limoblife/startupmanager/ZCustomizeActivity$ViewItem;
.super Landroid/widget/BaseAdapter;


# instance fields
.field public scr:Ljava/util/List;

.field final synthetic this$0:Limoblife/startupmanager/ZCustomizeActivity;


# direct methods
.method public constructor <init>(Limoblife/startupmanager/ZCustomizeActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->this$0:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p3, p0, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->scr:Ljava/util/List;

    return-void
.end method

.method static synthetic access$0(Limoblife/startupmanager/ZCustomizeActivity$ViewItem;)Limoblife/startupmanager/ZCustomizeActivity;
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->this$0:Limoblife/startupmanager/ZCustomizeActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->scr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/16 v5, 0x10

    const-wide/high16 v9, 0x403e

    const-wide/high16 v7, 0x3fe0

    const/4 v2, 0x6

    const/4 v4, 0x0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->this$0:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->this$0:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->scr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/au;

    iget-object v0, v0, Limoblife/startupmanager/au;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->this$0:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->scr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/au;

    iget-object v0, v0, Limoblife/startupmanager/au;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x4170

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, 0x5

    invoke-virtual {v3, v0, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v0, -0x100

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Landroid/widget/CheckBox;

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->this$0:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-direct {v4, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->scr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/au;

    iget-boolean v0, v0, Limoblife/startupmanager/au;->d:Z

    if-eqz v0, :cond_0

    sget v0, Limoblife/startupmanager/R$drawable;->checkbox_on:I

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    :goto_0
    new-instance v0, Limoblife/startupmanager/bb;

    invoke-direct {v0, p0, p1, v4}, Limoblife/startupmanager/bb;-><init>(Limoblife/startupmanager/ZCustomizeActivity$ViewItem;ILandroid/widget/CheckBox;)V

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->this$0:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-virtual {v0}, Limoblife/startupmanager/ZCustomizeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v5, v0

    add-double/2addr v5, v7

    mul-double/2addr v5, v9

    double-to-int v0, v5

    iget-object v5, p0, Limoblife/startupmanager/ZCustomizeActivity$ViewItem;->this$0:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-virtual {v5}, Limoblife/startupmanager/ZCustomizeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    float-to-double v5, v5

    add-double/2addr v5, v7

    mul-double/2addr v5, v9

    double-to-int v5, v5

    invoke-virtual {v1, v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v5, -0x1

    const/high16 v6, 0x3f80

    invoke-direct {v0, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_0
    sget v0, Limoblife/startupmanager/R$drawable;->checkbox_off:I

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_0
.end method
