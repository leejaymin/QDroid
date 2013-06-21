.class public Lccc71/pmw/lib/pmw_terminal;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# instance fields
.field private a:Lccc71/pmw/b/h;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:F

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/CheckBox;

.field private m:Ljava/util/ArrayList;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnClickListener;

.field private p:Landroid/view/View$OnClickListener;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/view/View$OnLongClickListener;

.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->m:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Lccc71/pmw/lib/pc;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/pc;-><init>(Lccc71/pmw/lib/pmw_terminal;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->n:Landroid/view/View$OnClickListener;

    .line 168
    new-instance v0, Lccc71/pmw/lib/pd;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/pd;-><init>(Lccc71/pmw/lib/pmw_terminal;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->o:Landroid/view/View$OnClickListener;

    .line 203
    new-instance v0, Lccc71/pmw/lib/pf;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/pf;-><init>(Lccc71/pmw/lib/pmw_terminal;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->p:Landroid/view/View$OnClickListener;

    .line 223
    new-instance v0, Lccc71/pmw/lib/pg;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/pg;-><init>(Lccc71/pmw/lib/pmw_terminal;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->q:Landroid/view/View$OnClickListener;

    .line 281
    new-instance v0, Lccc71/pmw/lib/ph;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ph;-><init>(Lccc71/pmw/lib/pmw_terminal;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->r:Landroid/view/View$OnClickListener;

    .line 364
    new-instance v0, Lccc71/pmw/lib/pi;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/pi;-><init>(Lccc71/pmw/lib/pmw_terminal;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->s:Landroid/view/View$OnLongClickListener;

    .line 378
    new-instance v0, Lccc71/pmw/lib/pj;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/pj;-><init>(Lccc71/pmw/lib/pmw_terminal;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->t:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_terminal;Lccc71/pmw/b/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lccc71/pmw/lib/pmw_terminal;->a:Lccc71/pmw/b/h;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_terminal;Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v8, -0x2

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 323
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget v0, p0, Lccc71/pmw/lib/pmw_terminal;->f:F

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x2060ff60

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lccc71/pmw/lib/pmw_terminal;->k:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " (su)"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->s:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget v1, Lccc71/pmw/lib/c;->aS:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v1, v7, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lccc71/pmw/lib/pmw_terminal;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->b:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->c:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->d:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void

    :cond_0
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget v0, p0, Lccc71/pmw/lib/pmw_terminal;->f:F

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0, v7, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->s:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_terminal;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_terminal;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 378
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->t:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->l:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->b:Landroid/widget/Button;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 300
    sget v0, Lccc71/pmw/lib/e;->bw:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_terminal;->setContentView(I)V

    .line 302
    sget v0, Lccc71/pmw/lib/d;->ae:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_terminal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->b:Landroid/widget/Button;

    .line 303
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->b:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_terminal;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    sget v0, Lccc71/pmw/lib/d;->af:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_terminal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->c:Landroid/widget/Button;

    .line 306
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->c:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_terminal;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    sget v0, Lccc71/pmw/lib/d;->t:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_terminal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->d:Landroid/widget/Button;

    .line 309
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->d:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_terminal;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    sget v0, Lccc71/pmw/lib/d;->ah:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_terminal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->e:Landroid/widget/Button;

    .line 312
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->e:Landroid/widget/Button;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_terminal;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lccc71/pmw/lib/pmw_terminal;->f:F

    .line 316
    sget v0, Lccc71/pmw/lib/d;->fB:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_terminal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->j:Landroid/widget/LinearLayout;

    .line 317
    sget v0, Lccc71/pmw/lib/d;->iK:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_terminal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->k:Landroid/widget/EditText;

    .line 318
    sget v0, Lccc71/pmw/lib/d;->aG:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_terminal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->l:Landroid/widget/CheckBox;

    .line 319
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->l:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 321
    :cond_0
    return-void
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic i(Lccc71/pmw/lib/pmw_terminal;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic j(Lccc71/pmw/lib/pmw_terminal;)Lccc71/pmw/b/h;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->a:Lccc71/pmw/b/h;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lccc71/pmw/lib/c;->aH:I

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lccc71/pmw/lib/g;->br:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_terminal;->e()V

    .line 71
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 150
    iget-object v1, p0, Lccc71/pmw/lib/pmw_terminal;->k:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccc71/pmw/lib/pmw_terminal;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 152
    iget-object v1, p0, Lccc71/pmw/lib/pmw_terminal;->k:Landroid/widget/EditText;

    iget-object v2, p0, Lccc71/pmw/lib/pmw_terminal;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    const-string v0, "process_monitor_widget"

    const-string v1, "pmw_terminal - onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_terminal;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_terminal;->e()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-super {p0, p1, p2, p3}, Lccc71/pmw/lib/pmw_activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 133
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lccc71/pmw/lib/d;->t:I

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 137
    const/4 v0, -0x1

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_terminal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccc71/pmw/lib/g;->er:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 145
    :cond_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 142
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v3, v1, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 141
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    const-string v0, "process_monitor_widget"

    const-string v1, "pmw_terminal - onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 92
    iput-object v2, p0, Lccc71/pmw/lib/pmw_terminal;->a:Lccc71/pmw/b/h;

    .line 93
    iput-object v2, p0, Lccc71/pmw/lib/pmw_terminal;->b:Landroid/widget/Button;

    .line 94
    iput-object v2, p0, Lccc71/pmw/lib/pmw_terminal;->c:Landroid/widget/Button;

    .line 95
    iput-object v2, p0, Lccc71/pmw/lib/pmw_terminal;->d:Landroid/widget/Button;

    .line 96
    iput-object v2, p0, Lccc71/pmw/lib/pmw_terminal;->e:Landroid/widget/Button;

    .line 97
    iput-object v2, p0, Lccc71/pmw/lib/pmw_terminal;->j:Landroid/widget/LinearLayout;

    .line 98
    iput-object v2, p0, Lccc71/pmw/lib/pmw_terminal;->k:Landroid/widget/EditText;

    .line 99
    iput-object v2, p0, Lccc71/pmw/lib/pmw_terminal;->l:Landroid/widget/CheckBox;

    .line 101
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 102
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 107
    const-string v0, "process_monitor_widget"

    const-string v1, "pmw_terminal - onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v0, 0x14

    if-le v3, v0, :cond_1

    add-int/lit8 v0, v3, -0x14

    :goto_0
    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_terminal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lccc71/pmw/lib/g;->aJ:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lccc71/utils/android/y;->a()Lccc71/utils/android/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/android/y;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 112
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->a:Lccc71/pmw/b/h;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->a:Lccc71/pmw/b/h;

    invoke-virtual {v0}, Lccc71/pmw/b/h;->a()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->a:Lccc71/pmw/b/h;

    .line 117
    :cond_0
    return-void

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/pmw_terminal;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 122
    const-string v0, "process_monitor_widget"

    const-string v1, "pmw_terminal - onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onResume()V

    .line 125
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_terminal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lccc71/pmw/lib/g;->aJ:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    .line 126
    return-void

    .line 125
    :cond_0
    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lccc71/pmw/lib/pmw_terminal;->m:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lccc71/pmw/lib/pmw_terminal;->m:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
