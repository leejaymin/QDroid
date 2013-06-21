.class final Limoblife/startupmanager/av;
.super Landroid/widget/BaseAdapter;


# instance fields
.field public a:[Landroid/view/View;

.field final synthetic b:Limoblife/startupmanager/ZCustomizeActivity;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Limoblife/startupmanager/ZCustomizeActivity;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Limoblife/startupmanager/av;->b:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Limoblife/startupmanager/av;->c:Ljava/util/List;

    iget-object v0, p0, Limoblife/startupmanager/av;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Limoblife/startupmanager/av;->a:[Landroid/view/View;

    return-void
.end method

.method static synthetic a(Limoblife/startupmanager/av;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/av;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Limoblife/startupmanager/av;)Limoblife/startupmanager/ZCustomizeActivity;
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/av;->b:Limoblife/startupmanager/ZCustomizeActivity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Limoblife/startupmanager/av;->a:[Landroid/view/View;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Limoblife/startupmanager/av;->b:Limoblife/startupmanager/ZCustomizeActivity;

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Limoblife/startupmanager/ZCustomizeActivity;->access$0(Limoblife/startupmanager/ZCustomizeActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Limoblife/startupmanager/MyActivity;->deleteItem:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Limoblife/startupmanager/av;->a:[Landroid/view/View;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/startupmanager/av;->a:[Landroid/view/View;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/ba;

    const-string v3, "w"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v0, Limoblife/startupmanager/ba;->c:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Limoblife/startupmanager/ba;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Limoblife/startupmanager/av;->b:Limoblife/startupmanager/ZCustomizeActivity;

    iget-object v0, p0, Limoblife/startupmanager/av;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/au;

    iget-object v0, v0, Limoblife/startupmanager/au;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Limoblife/startupmanager/ZCustomizeActivity;->deleteCustomizeList(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/av;->a:[Landroid/view/View;

    array-length v0, v0

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
    .locals 4

    iget-object v0, p0, Limoblife/startupmanager/av;->a:[Landroid/view/View;

    iget-object v1, p0, Limoblife/startupmanager/av;->b:Limoblife/startupmanager/ZCustomizeActivity;

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->layoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Limoblife/startupmanager/ZCustomizeActivity;->access$1(Limoblife/startupmanager/ZCustomizeActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Limoblife/startupmanager/R$layout;->aa:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, p1

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Limoblife/startupmanager/av;->a:[Landroid/view/View;

    aget-object v0, v0, p1

    sget v1, Limoblife/startupmanager/R$drawable;->bg1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    new-instance v1, Limoblife/startupmanager/ba;

    invoke-direct {v1, p0}, Limoblife/startupmanager/ba;-><init>(Limoblife/startupmanager/av;)V

    iget-object v0, p0, Limoblife/startupmanager/av;->a:[Landroid/view/View;

    aget-object v0, v0, p1

    sget v2, Limoblife/startupmanager/R$id;->icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Limoblife/startupmanager/ba;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Limoblife/startupmanager/av;->a:[Landroid/view/View;

    aget-object v0, v0, p1

    sget v2, Limoblife/startupmanager/R$id;->text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/startupmanager/ba;->b:Landroid/widget/TextView;

    iget-object v2, v1, Limoblife/startupmanager/ba;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Limoblife/startupmanager/av;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/au;

    iget-object v0, v0, Limoblife/startupmanager/au;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Limoblife/startupmanager/ba;->b:Landroid/widget/TextView;

    iget-object v0, p0, Limoblife/startupmanager/av;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/au;

    iget-object v0, v0, Limoblife/startupmanager/au;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Limoblife/startupmanager/ba;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Limoblife/startupmanager/av;->a:[Landroid/view/View;

    aget-object v0, v0, p1

    sget v2, Limoblife/startupmanager/R$id;->check:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Limoblife/startupmanager/ba;->c:Landroid/widget/CheckBox;

    iget-object v2, v1, Limoblife/startupmanager/ba;->c:Landroid/widget/CheckBox;

    iget-object v0, p0, Limoblife/startupmanager/av;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/startupmanager/au;

    iget-boolean v0, v0, Limoblife/startupmanager/au;->d:Z

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, v1, Limoblife/startupmanager/ba;->c:Landroid/widget/CheckBox;

    new-instance v2, Limoblife/startupmanager/aw;

    invoke-direct {v2, p0, p1, v1}, Limoblife/startupmanager/aw;-><init>(Limoblife/startupmanager/av;ILimoblife/startupmanager/ba;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Limoblife/startupmanager/av;->a:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Limoblife/startupmanager/av;->a:[Landroid/view/View;

    aget-object v0, v0, p1

    new-instance v1, Limoblife/startupmanager/ax;

    invoke-direct {v1, p0, p1}, Limoblife/startupmanager/ax;-><init>(Limoblife/startupmanager/av;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Limoblife/startupmanager/av;->a:[Landroid/view/View;

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    iget-object v0, p0, Limoblife/startupmanager/av;->a:[Landroid/view/View;

    aget-object v0, v0, p1

    sget v1, Limoblife/startupmanager/R$drawable;->bg2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method
