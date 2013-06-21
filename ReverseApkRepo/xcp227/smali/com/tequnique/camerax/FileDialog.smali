.class public Lcom/tequnique/camerax/FileDialog;
.super Landroid/app/ListActivity;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/util/ArrayList;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/view/inputmethod/InputMethodManager;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/io/File;

.field private n:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/FileDialog;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/tequnique/camerax/FileDialog;->b:Ljava/util/List;

    const-string v0, "/"

    iput-object v0, p0, Lcom/tequnique/camerax/FileDialog;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tequnique/camerax/FileDialog;->l:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/FileDialog;->n:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/FileDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->l:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/tequnique/camerax/FileDialog;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->n:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tequnique/camerax/FileDialog;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f05012f

    invoke-virtual {p0, v2}, Lcom/tequnique/camerax/FileDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/tequnique/camerax/FileDialog;->l:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/FileDialog;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/FileDialog;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/FileDialog;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/tequnique/camerax/FileDialog;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tequnique/camerax/FileDialog;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/tequnique/camerax/FileDialog;->c:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tequnique/camerax/FileDialog;->c:Ljava/lang/String;

    const v3, 0x7f02007a

    invoke-direct {p0, v2, v3}, Lcom/tequnique/camerax/FileDialog;->a(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/tequnique/camerax/FileDialog;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/tequnique/camerax/FileDialog;->c:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tequnique/camerax/FileDialog;->a:Ljava/util/List;

    const-string v3, "../"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "../"

    const v3, 0x7f02007a

    invoke-direct {p0, v2, v3}, Lcom/tequnique/camerax/FileDialog;->a(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/tequnique/camerax/FileDialog;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/FileDialog;->k:Ljava/lang/String;

    :cond_0
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    array-length v4, v1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v4, :cond_3

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->a:Ljava/util/List;

    const-string v1, ""

    invoke-virtual {v8, v1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->a:Ljava/util/List;

    const-string v1, ""

    invoke-virtual {v9, v1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->b:Ljava/util/List;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->b:Ljava/util/List;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/tequnique/camerax/FileDialog;->e:Ljava/util/ArrayList;

    const v3, 0x7f030001

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "key"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "image"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const-string v1, ""

    invoke-virtual {v8, v1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, ""

    invoke-virtual {v9, v1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/FileDialog;->setListAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/tequnique/camerax/FileDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_0

    :cond_3
    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v10, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v3, 0x7f02007a

    invoke-direct {p0, v1, v3}, Lcom/tequnique/camerax/FileDialog;->a(Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v3, 0x7f020079

    invoke-direct {p0, v1, v3}, Lcom/tequnique/camerax/FileDialog;->a(Ljava/lang/String;I)V

    goto :goto_3

    :array_0
    .array-data 0x4
        0x8t 0x0t 0xat 0x7ft
        0x7t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "image"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tequnique/camerax/FileDialog;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tequnique/camerax/FileDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tequnique/camerax/FileDialog;->setResult(ILandroid/content/Intent;)V

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/FileDialog;->setContentView(I)V

    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/FileDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tequnique/camerax/FileDialog;->d:Landroid/widget/TextView;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/FileDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/tequnique/camerax/FileDialog;->j:Landroid/view/inputmethod/InputMethodManager;

    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/FileDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tequnique/camerax/FileDialog;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->f:Landroid/widget/Button;

    new-instance v1, Lcom/tequnique/camerax/bl;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/bl;-><init>(Lcom/tequnique/camerax/FileDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/FileDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tequnique/camerax/FileDialog;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/FileDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tequnique/camerax/FileDialog;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/FileDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tequnique/camerax/FileDialog;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->g:Landroid/widget/Button;

    new-instance v1, Lcom/tequnique/camerax/bm;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/bm;-><init>(Lcom/tequnique/camerax/FileDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/tequnique/camerax/FileDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "START_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/FileDialog;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/FileDialog;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/tequnique/camerax/FileDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/FileDialog;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v2, 0x1

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->n:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tequnique/camerax/FileDialog;->l:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/FileDialog;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020078

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f050130

    invoke-virtual {p0, v2}, Lcom/tequnique/camerax/FileDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/tequnique/camerax/bn;

    invoke-direct {v2, p0}, Lcom/tequnique/camerax/bn;-><init>(Lcom/tequnique/camerax/FileDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/tequnique/camerax/FileDialog;->m:Ljava/io/File;

    invoke-virtual {p2, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/tequnique/camerax/FileDialog;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
