.class final Lccc71/pmw/lib/ps;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:[[I

.field final synthetic b:Lccc71/pmw/lib/pmw_voltage_table;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_voltage_table;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    .line 151
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    new-instance v1, Lccc71/pmw/a/ah;

    invoke-direct {v1}, Lccc71/pmw/a/ah;-><init>()V

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;Lccc71/pmw/a/ah;)V

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;)Lccc71/pmw/a/ah;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccc71/pmw/a/ah;->a(Z)[[I

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->b(Lccc71/pmw/lib/pmw_voltage_table;[[I)V

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;)Lccc71/pmw/a/ah;

    move-result-object v1

    invoke-virtual {v1}, Lccc71/pmw/a/ah;->f()[I

    move-result-object v1

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;[I)V

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;)Lccc71/pmw/a/ah;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-virtual {v0, v1}, Lccc71/pmw/a/ah;->d(Landroid/content/Context;)[[I

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/ps;->a:[[I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 13
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_voltage_table;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_14

    sget-boolean v0, Lccc71/pmw/a/ah;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/g;->eu:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-static {}, Lccc71/pmw/a/ah;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->bn:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->bp:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lccc71/pmw/lib/g;->fx:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->bo:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sget v1, Lccc71/pmw/a/ah;->b:I

    new-array v2, v1, [Ljava/lang/String;

    sget v3, Lccc71/pmw/a/ah;->b:I

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_3

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    const v4, 0x1090008

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_voltage_table;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->fx:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->j(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :goto_1
    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->kq:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v2

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v1

    array-length v3, v1

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    new-array v4, v3, [Landroid/widget/Button;

    invoke-static {v1, v4}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;[Landroid/widget/Button;)V

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    iget-object v4, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;)Lccc71/pmw/a/ah;

    move-result-object v4

    invoke-virtual {v4}, Lccc71/pmw/a/ah;->s()[[I

    move-result-object v4

    invoke-static {v1, v4}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;[[I)V

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    new-array v4, v3, [Landroid/widget/SeekBar;

    invoke-static {v1, v4}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;[Landroid/widget/SeekBar;)V

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    const v4, 0x7fffffff

    invoke-static {v1, v4}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;I)V

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    const/high16 v4, -0x8000

    invoke-static {v1, v4}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;I)V

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v3, :cond_6

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->k(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v1

    const/16 v4, 0x2710

    if-le v1, v4, :cond_9

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;Z)V

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->k(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v4

    const v5, 0x30d40

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;I)V

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->l(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v4

    const v5, 0x30d40

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;I)V

    :goto_3
    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    const/4 v1, 0x0

    :goto_4
    if-lt v1, v3, :cond_a

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v0}, Lccc71/pmw/a/ah;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->ab:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {}, Lccc71/pmw/a/ah;->n()Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lccc71/pmw/lib/g;->bE:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->u(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->b(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_voltage_table;->o(Lccc71/pmw/lib/pmw_voltage_table;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->D:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->v(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->v:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->w(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->n:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->x(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->af:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->y(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->I:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->z(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CPU"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lccc71/pmw/a/ah;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->bn:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->bp:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lccc71/pmw/lib/g;->fu:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->bo:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Min"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Max"

    aput-object v3, v1, v2

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    const v4, 0x1090008

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_voltage_table;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->fx:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->j(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->bn:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    iget-object v4, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_voltage_table;->k(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v4

    iget-object v5, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v5

    aget-object v5, v5, v1

    iget-object v6, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v6

    aget v5, v5, v6

    if-le v4, v5, :cond_7

    iget-object v4, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    iget-object v5, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v5

    aget-object v5, v5, v1

    iget-object v6, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v6

    aget v5, v5, v6

    invoke-static {v4, v5}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;I)V

    :cond_7
    iget-object v4, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v4}, Lccc71/pmw/lib/pmw_voltage_table;->l(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v4

    iget-object v5, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v5

    aget-object v5, v5, v1

    iget-object v6, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v6

    aget v5, v5, v6

    if-ge v4, v5, :cond_8

    iget-object v4, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    iget-object v5, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v5

    aget-object v5, v5, v1

    iget-object v6, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v6}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v6

    aget v5, v5, v6

    invoke-static {v4, v5}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;I)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lccc71/pmw/lib/pmw_voltage_table;->a(Lccc71/pmw/lib/pmw_voltage_table;Z)V

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->k(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v4

    add-int/lit16 v4, v4, -0xc8

    invoke-static {v1, v4}, Lccc71/pmw/lib/pmw_voltage_table;->e(Lccc71/pmw/lib/pmw_voltage_table;I)V

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->l(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v4

    add-int/lit16 v4, v4, 0xc8

    invoke-static {v1, v4}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;I)V

    goto/16 :goto_3

    :cond_a
    new-instance v4, Landroid/widget/TableRow;

    iget-object v5, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-direct {v4, v5}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_voltage_table;->m(Lccc71/pmw/lib/pmw_voltage_table;)[I

    move-result-object v8

    array-length v8, v8

    iget-object v9, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v9

    array-length v9, v9

    if-ne v8, v9, :cond_10

    iget-object v8, p0, Lccc71/pmw/lib/ps;->a:[[I

    if-eqz v8, :cond_f

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_voltage_table;->m(Lccc71/pmw/lib/pmw_voltage_table;)[I

    move-result-object v9

    aget v9, v9, v1

    invoke-static {v9}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lccc71/pmw/lib/ps;->a:[[I

    aget-object v9, v9, v1

    iget-object v10, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v10}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v10

    aget v9, v9, v10

    invoke-static {v9}, Lccc71/utils/ag;->d(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v8, 0x4000

    sub-float v8, v2, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/high16 v11, 0x3f80

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-boolean v7, Lccc71/pmw/b/h;->c:Z

    if-eqz v7, :cond_b

    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setId(I)V

    sget v8, Lccc71/pmw/lib/c;->T:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_voltage_table;->n(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    new-instance v7, Landroid/widget/SeekBar;

    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-direct {v7, v8}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v1}, Landroid/widget/SeekBar;->setId(I)V

    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_voltage_table;->o(Lccc71/pmw/lib/pmw_voltage_table;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    const/16 v9, 0x30d4

    invoke-static {v8, v9}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;I)V

    :goto_8
    sget-boolean v8, Lccc71/pmw/b/h;->c:Z

    if-nez v8, :cond_c

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_c
    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_voltage_table;->l(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v8

    iget-object v9, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_voltage_table;->k(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    iget-object v9, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v9

    aget-object v9, v9, v1

    iget-object v10, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v10}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v10

    aget v9, v9, v10

    invoke-static {v8, v9}, Lccc71/pmw/lib/pmw_voltage_table;->h(Lccc71/pmw/lib/pmw_voltage_table;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_voltage_table;->i(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_voltage_table;->p(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_voltage_table;->q(Lccc71/pmw/lib/pmw_voltage_table;)[Landroid/widget/SeekBar;

    move-result-object v8

    aput-object v7, v8, v1

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/high16 v11, 0x3f80

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v7, Lccc71/pmw/b/h;->c:Z

    if-eqz v7, :cond_d

    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setId(I)V

    sget v8, Lccc71/pmw/lib/c;->X:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_voltage_table;->r(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/high16 v10, 0x3f80

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/16 v11, 0xa

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/Button;

    iget-object v7, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-direct {v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setId(I)V

    iget-object v7, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v7}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v7

    aget-object v7, v7, v1

    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_voltage_table;->f(Lccc71/pmw/lib/pmw_voltage_table;)I

    move-result v8

    aget v7, v7, v8

    invoke-static {v7}, Lccc71/utils/ag;->d(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x4000

    sub-float v7, v2, v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setGravity(I)V

    iget-object v7, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v7}, Lccc71/pmw/lib/pmw_voltage_table;->s(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v7}, Lccc71/pmw/lib/pmw_voltage_table;->t(Lccc71/pmw/lib/pmw_voltage_table;)[Landroid/widget/Button;

    move-result-object v7

    aput-object v6, v7, v1

    sget-boolean v7, Lccc71/pmw/b/h;->c:Z

    if-nez v7, :cond_e

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_e
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v4, v1}, Lccc71/pmw/lib/pmw_voltage_table;->b(Lccc71/pmw/lib/pmw_voltage_table;I)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_f
    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_voltage_table;->m(Lccc71/pmw/lib/pmw_voltage_table;)[I

    move-result-object v8

    aget v8, v8, v1

    invoke-static {v8}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_10
    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;)[[I

    move-result-object v8

    aget-object v8, v8, v1

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-static {v8}, Lccc71/utils/ag;->c(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_11
    iget-object v8, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    const/16 v9, 0x19

    invoke-static {v8, v9}, Lccc71/pmw/lib/pmw_voltage_table;->g(Lccc71/pmw/lib/pmw_voltage_table;I)V

    goto/16 :goto_8

    :cond_12
    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->ab:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, Lccc71/pmw/lib/g;->bF:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->d(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    :cond_13
    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->D:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->v(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v3, Lccc71/pmw/lib/g;->ca:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_voltage_table;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/d;->v:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_voltage_table;->w(Lccc71/pmw/lib/pmw_voltage_table;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v3, Lccc71/pmw/lib/g;->ca:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_voltage_table;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_14
    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v1, Lccc71/pmw/lib/e;->bx:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_voltage_table;->setContentView(I)V

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v1

    iget-object v0, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    sget v2, Lccc71/pmw/lib/d;->kq:I

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_voltage_table;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lccc71/pmw/lib/ps;->b:Lccc71/pmw/lib/pmw_voltage_table;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v3, Lccc71/pmw/lib/g;->cn:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x4160

    add-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x14

    const/16 v5, 0x14

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6
.end method
