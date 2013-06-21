.class public Lcom/rubycell/pianisthd/InstrumentActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Ljava/util/ArrayList;

.field c:Landroid/content/SharedPreferences;

.field d:Landroid/content/SharedPreferences$Editor;

.field e:Landroid/widget/ImageButton;

.field f:Landroid/widget/ImageButton;

.field g:Landroid/widget/ImageButton;

.field h:I

.field i:Landroid/widget/GridView;

.field j:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->ac:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rubycell/pianisthd/d/m;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->f:Landroid/widget/ImageButton;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->g:Landroid/widget/ImageButton;

    const v1, 0x7f02011c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->i:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->j:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    invoke-static {}, Lcom/rubycell/pianisthd/d/m;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Your SD card is unmounted. Default sound files were loaded"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->g:Landroid/widget/ImageButton;

    const v1, 0x7f02011d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->f:Landroid/widget/ImageButton;

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->j:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->i:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v3, 0x1000

    const/16 v2, 0x400

    const/16 v1, 0x80

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/rubycell/pianisthd/InstrumentActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/InstrumentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/InstrumentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/InstrumentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/InstrumentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setFormat(I)V

    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/InstrumentActivity;->setContentView(I)V

    const v0, 0x7f0a0054

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->f:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->f:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/z;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/z;-><init>(Lcom/rubycell/pianisthd/InstrumentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->g:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/aa;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/aa;-><init>(Lcom/rubycell/pianisthd/InstrumentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/InstrumentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "target"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->h:I

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->d:Landroid/content/SharedPreferences$Editor;

    const v0, 0x7f0a0055

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->i:Landroid/widget/GridView;

    const v0, 0x7f0a0056

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->j:Landroid/widget/GridView;

    const v0, 0x7f0a0052

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/InstrumentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->e:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->e:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/ab;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/ab;-><init>(Lcom/rubycell/pianisthd/InstrumentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const v2, 0x7f0200ee

    invoke-direct {v1, v5, v2, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x74

    const v3, 0x7f0200e6

    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x76

    const v3, 0x7f0200e2

    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x28

    const v3, 0x7f0200f5

    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x20

    const v3, 0x7f0200de

    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x72

    const v3, 0x7f0200ea

    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x11

    const v3, 0x7f0200ec

    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x18

    const v3, 0x7f0200e4

    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x40

    const v3, 0x7f0200f0

    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x16

    const v3, 0x7f0200e8

    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x70

    const v3, 0x7f0200e0

    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x38

    const v3, 0x7f0200f3

    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->i:Landroid/widget/GridView;

    new-instance v1, Lcom/rubycell/pianisthd/a/a;

    iget-object v2, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->a:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v5}, Lcom/rubycell/pianisthd/a/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected onResume()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/InstrumentActivity;->a()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const v2, 0x7f0200ee

    iget-object v3, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v4, "0_HQ"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v4, "0"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v6

    :goto_0
    invoke-direct {v1, v6, v2, v3}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x74

    const v3, 0x7f0200e6

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "116_HQ"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "116"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    :goto_1
    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x76

    const v3, 0x7f0200e2

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "118_HQ"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "118"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v6

    :goto_2
    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x28

    const v3, 0x7f0200f5

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "40_HQ"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "40"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v6

    :goto_3
    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x20

    const v3, 0x7f0200de

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "32_HQ"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "32"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v6

    :goto_4
    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x72

    const v3, 0x7f0200ea

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "114_HQ"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "114"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v6

    :goto_5
    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x11

    const v3, 0x7f0200ec

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "17_HQ"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "17"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v6

    :goto_6
    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x18

    const v3, 0x7f0200e4

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "24_HQ"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "24"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v6

    :goto_7
    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x40

    const v3, 0x7f0200f0

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "64_HQ"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "64"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v6

    :goto_8
    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x16

    const v3, 0x7f0200e8

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "22_HQ"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "22"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v6

    :goto_9
    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x70

    const v3, 0x7f0200e0

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "112_HQ"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "112"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_a

    move v4, v6

    :goto_a
    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/rubycell/pianisthd/c/b;

    const/16 v2, 0x38

    const v3, 0x7f0200f3

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "56_HQ"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    const-string v5, "56"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_b

    move v4, v6

    :goto_b
    invoke-direct {v1, v2, v3, v4}, Lcom/rubycell/pianisthd/c/b;-><init>(IIZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->j:Landroid/widget/GridView;

    new-instance v1, Lcom/rubycell/pianisthd/a/a;

    iget-object v2, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v7}, Lcom/rubycell/pianisthd/a/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->i:Landroid/widget/GridView;

    new-instance v1, Lcom/rubycell/pianisthd/b/f;

    iget-object v2, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->a:Ljava/util/ArrayList;

    iget v3, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->h:I

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->d:Landroid/content/SharedPreferences$Editor;

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/rubycell/pianisthd/b/f;-><init>(Ljava/util/ArrayList;Landroid/content/Context;ILandroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->j:Landroid/widget/GridView;

    new-instance v1, Lcom/rubycell/pianisthd/b/c;

    iget-object v2, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->b:Ljava/util/ArrayList;

    iget v3, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->h:I

    iget-object v4, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/rubycell/pianisthd/b/c;-><init>(Ljava/util/ArrayList;Landroid/content/Context;ILandroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_0
    move v3, v7

    goto/16 :goto_0

    :cond_1
    move v4, v7

    goto/16 :goto_1

    :cond_2
    move v4, v7

    goto/16 :goto_2

    :cond_3
    move v4, v7

    goto/16 :goto_3

    :cond_4
    move v4, v7

    goto/16 :goto_4

    :cond_5
    move v4, v7

    goto/16 :goto_5

    :cond_6
    move v4, v7

    goto/16 :goto_6

    :cond_7
    move v4, v7

    goto/16 :goto_7

    :cond_8
    move v4, v7

    goto/16 :goto_8

    :cond_9
    move v4, v7

    goto/16 :goto_9

    :cond_a
    move v4, v7

    goto :goto_a

    :cond_b
    move v4, v7

    goto :goto_b
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->T:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rubycell/pianisthd/d/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/av;->a()Lcom/tapjoy/av;

    move-result-object v0

    new-instance v1, Lcom/rubycell/pianisthd/b/b;

    iget-object v2, p0, Lcom/rubycell/pianisthd/InstrumentActivity;->c:Landroid/content/SharedPreferences;

    invoke-direct {v1, p0, v2}, Lcom/rubycell/pianisthd/b/b;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Lcom/tapjoy/av;->b(Lcom/tapjoy/ap;)V

    :cond_0
    return-void
.end method
