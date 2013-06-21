.class final Lcom/samsungapps/plasma/d;
.super Lcom/samsungapps/plasma/h;


# static fields
.field private static final B:I = 0x1e

.field private static final C:I = 0x140

.field private static final D:I = 0xa

.field private static final E:Ljava/lang/String; = "http://hub-odc.samsungapps.com/ods.as"

.field private static final F:I = 0x64

.field private static final G:I = 0x65

.field private static final H:I = 0x66

.field private static final I:Ljava/lang/String; = "LastCountryUrl"

.field private static final J:Ljava/lang/String; = "LastCountryCode"

.field private static final K:Ljava/lang/String; = "LastMcc"

.field private static final L:Ljava/lang/String; = "LastMnc"

.field private static final M:Ljava/lang/String; = "LastCsc"

.field private static final N:Ljava/lang/String; = "LastQa"

.field private static final O:Ljava/lang/String; = "LastCurrencyUnitPrecedes"

.field private static final P:Ljava/lang/String; = "LastCurrencyUnitHasPenny"

.field static a:Z = false

.field static b:Z = false

.field protected static final c:I = 0x8fc

.field protected static final d:I = 0x1773

.field protected static final e:I = 0x1775

.field protected static final f:I = 0x1777


# instance fields
.field private A:Lcom/samsungapps/plasma/g;

.field private g:Landroid/content/Context;

.field private h:Lcom/samsungapps/plasma/b;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Date;

.field private k:Lcom/samsungapps/plasma/l;

.field private l:Lcom/samsungapps/plasma/e;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsungapps/plasma/h;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/app/Dialog;

.field private u:Landroid/content/SharedPreferences;

.field private v:Z

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsungapps/plasma/d;->a:Z

    sput-boolean v0, Lcom/samsungapps/plasma/d;->b:Z

    return-void
.end method

.method constructor <init>(Lcom/samsungapps/plasma/e;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsungapps/plasma/h;-><init>()V

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->g:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->j:Ljava/util/Date;

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->k:Lcom/samsungapps/plasma/l;

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->l:Lcom/samsungapps/plasma/e;

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->m:Ljava/lang/String;

    iput v2, p0, Lcom/samsungapps/plasma/d;->n:I

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->o:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->p:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->q:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->r:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->s:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->t:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->u:Landroid/content/SharedPreferences;

    iput-boolean v1, p0, Lcom/samsungapps/plasma/d;->v:Z

    iput v2, p0, Lcom/samsungapps/plasma/d;->w:I

    iput-boolean v1, p0, Lcom/samsungapps/plasma/d;->x:Z

    iput-boolean v1, p0, Lcom/samsungapps/plasma/d;->y:Z

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->A:Lcom/samsungapps/plasma/g;

    const-string v0, "Motor is starting up."

    invoke-static {v0}, Lcom/samsungapps/plasma/a;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsungapps/plasma/d;->l:Lcom/samsungapps/plasma/e;

    iput-object p2, p0, Lcom/samsungapps/plasma/d;->m:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsungapps/plasma/d;->g:Landroid/content/Context;

    new-instance v0, Lcom/samsungapps/plasma/b;

    iget-object v1, p0, Lcom/samsungapps/plasma/d;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsungapps/plasma/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->g:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->u:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/samsungapps/plasma/d;->f()V

    invoke-direct {p0}, Lcom/samsungapps/plasma/d;->e()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->o:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->p:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->q:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->r:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->s:Ljava/util/HashMap;

    return-void
.end method

.method private a(ILjava/util/ArrayList;)Landroid/app/Dialog;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsungapps/plasma/g;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v5, 0x1

    const/16 v6, 0xa

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->t:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->t:Landroid/app/Dialog;

    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsungapps/plasma/d;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    const-string v1, "IDS_SAPPS_BODY_PAYMENT_METHOD"

    invoke-static {v1}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsungapps/plasma/d;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v2, 0x140

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v2, v8, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v3, Landroid/widget/ExpandableListView;

    iget-object v4, p0, Lcom/samsungapps/plasma/d;->g:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/ExpandableListView;->setChoiceMode(I)V

    invoke-virtual {v3, v9}, Landroid/widget/ExpandableListView;->setFocusable(Z)V

    invoke-virtual {v3, v9}, Landroid/widget/ExpandableListView;->setCacheColorHint(I)V

    invoke-virtual {v3, v5}, Landroid/widget/ExpandableListView;->setVerticalFadingEdgeEnabled(Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lcom/samsungapps/plasma/d$2;

    invoke-direct {v4, p0, v3, p2}, Lcom/samsungapps/plasma/d$2;-><init>(Lcom/samsungapps/plasma/d;Landroid/widget/ExpandableListView;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    new-instance v4, Lcom/samsungapps/plasma/d$3;

    invoke-direct {v4, p0, p2}, Lcom/samsungapps/plasma/d$3;-><init>(Lcom/samsungapps/plasma/d;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsungapps/plasma/d;->g:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, "IDS_SAPPS_POP_NO_VALID_PAYMENT_METHODS"

    invoke-static {v5}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v5, v8, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v5, 0x41a0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/samsungapps/plasma/d$4;

    invoke-direct {v1, p0, p2}, Lcom/samsungapps/plasma/d$4;-><init>(Lcom/samsungapps/plasma/d;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    new-instance v1, Lcom/samsungapps/plasma/d$5;

    invoke-direct {v1, p0, p1}, Lcom/samsungapps/plasma/d$5;-><init>(Lcom/samsungapps/plasma/d;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v1, Lcom/samsungapps/plasma/d$6;

    invoke-direct {v1, p0}, Lcom/samsungapps/plasma/d$6;-><init>(Lcom/samsungapps/plasma/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method

.method static synthetic a(Lcom/samsungapps/plasma/d;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/d;->t:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/samsungapps/plasma/d;)Lcom/samsungapps/plasma/g;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->A:Lcom/samsungapps/plasma/g;

    return-object v0
.end method

.method static synthetic a(Lcom/samsungapps/plasma/d;Lcom/samsungapps/plasma/g;)Lcom/samsungapps/plasma/g;
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/d;->A:Lcom/samsungapps/plasma/g;

    return-object p1
.end method

.method private a(II)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->t:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v2, p0, Lcom/samsungapps/plasma/d;->t:Landroid/app/Dialog;

    :cond_0
    iget-object v0, p0, Lcom/samsungapps/plasma/d;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsungapps/plasma/d;->l:Lcom/samsungapps/plasma/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->l:Lcom/samsungapps/plasma/e;

    invoke-virtual {v0, p1, p2, v2}, Lcom/samsungapps/plasma/e;->a(IILjava/util/ArrayList;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsungapps/plasma/d;->l:Lcom/samsungapps/plasma/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->l:Lcom/samsungapps/plasma/e;

    invoke-virtual {v0, p1, p2, v2}, Lcom/samsungapps/plasma/e;->b(IILjava/util/ArrayList;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsungapps/plasma/d;->r:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->l:Lcom/samsungapps/plasma/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->l:Lcom/samsungapps/plasma/e;

    invoke-virtual {v0, p1, p2, v2}, Lcom/samsungapps/plasma/e;->a(IILcom/samsungapps/plasma/PurchasedItemInformation;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsungapps/plasma/d;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsungapps/plasma/d;->a(II)V

    return-void
.end method

.method static synthetic b(Lcom/samsungapps/plasma/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsungapps/plasma/d;->y:Z

    return v0
.end method

.method private c(ILcom/samsungapps/plasma/m;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsungapps/plasma/m;->d()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    if-lez v2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/samsungapps/plasma/d;->d()V

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->k:Lcom/samsungapps/plasma/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->k:Lcom/samsungapps/plasma/l;

    invoke-virtual {p0, p1, v0, p0, v3}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->k:Lcom/samsungapps/plasma/l;

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_4

    const-string v1, "countryURL"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsungapps/plasma/d;->i:Ljava/lang/String;

    const-string v1, "countryCode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsungapps/plasma/d;->z:Ljava/lang/String;

    const-string v1, "currencyUnitPrecedes"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsungapps/plasma/i;->b(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_5

    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/samsungapps/plasma/d;->x:Z

    const-string v1, "currencyUnitHasPenny"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsungapps/plasma/i;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_6

    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lcom/samsungapps/plasma/d;->y:Z

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_3
.end method

.method private c(I)Z
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Lcom/samsungapps/plasma/l;

    invoke-direct {v1}, Lcom/samsungapps/plasma/l;-><init>()V

    const/16 v0, 0x8fc

    invoke-virtual {v1, v0}, Lcom/samsungapps/plasma/l;->b(I)V

    const-string v0, "countrySearchEx"

    invoke-virtual {v1, v0}, Lcom/samsungapps/plasma/l;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    invoke-virtual {v4}, Lcom/samsungapps/plasma/b;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/samsungapps/plasma/d;->b:Z

    if-eqz v3, :cond_0

    const-string v0, "000"

    :cond_0
    const-string v3, "latestCountryCode"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "whoAmI"

    const-string v3, "odc"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/samsungapps/plasma/l;->a(Ljava/util/HashMap;)V

    const-string v0, "http://hub-odc.samsungapps.com/ods.as"

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->i:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, p0, v5}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;Z)Z

    move-result v0

    return v0
.end method

.method private c(III)Z
    .locals 4

    new-instance v0, Lcom/samsungapps/plasma/l;

    invoke-direct {v0}, Lcom/samsungapps/plasma/l;-><init>()V

    const/16 v1, 0x1775

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->b(I)V

    const-string v1, "getItemList"

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "guid"

    iget-object v3, p0, Lcom/samsungapps/plasma/d;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "imei"

    iget-object v3, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    invoke-virtual {v3}, Lcom/samsungapps/plasma/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "startNum"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "endNum"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "resultCode"

    iget v3, p0, Lcom/samsungapps/plasma/d;->w:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/util/HashMap;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p0, v1}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;Z)Z

    move-result v0

    return v0
.end method

.method private c(ILjava/lang/String;)Z
    .locals 4

    new-instance v0, Lcom/samsungapps/plasma/l;

    invoke-direct {v0}, Lcom/samsungapps/plasma/l;-><init>()V

    const/16 v1, 0x1777

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->b(I)V

    const-string v1, "getPaymentMethodSearch"

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "itemID"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "itemGroupID"

    iget-object v3, p0, Lcom/samsungapps/plasma/d;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mode"

    iget v3, p0, Lcom/samsungapps/plasma/d;->w:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/util/HashMap;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p0, v1}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/samsungapps/plasma/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsungapps/plasma/d;->x:Z

    return v0
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->u:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    invoke-virtual {v0}, Lcom/samsungapps/plasma/b;->b()I

    move-result v0

    iget-object v1, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    invoke-virtual {v1}, Lcom/samsungapps/plasma/b;->c()I

    move-result v1

    iget-object v2, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    invoke-virtual {v2}, Lcom/samsungapps/plasma/b;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungapps/plasma/d;->u:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LastMcc"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "LastMnc"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "LastCsc"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "LastCountryUrl"

    iget-object v1, p0, Lcom/samsungapps/plasma/d;->i:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "LastCountryCode"

    iget-object v1, p0, Lcom/samsungapps/plasma/d;->z:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "LastQa"

    sget-boolean v1, Lcom/samsungapps/plasma/d;->b:Z

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "LastCurrencyUnitPrecedes"

    iget-boolean v1, p0, Lcom/samsungapps/plasma/d;->x:Z

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "LastCurrencyUnitHasPenny"

    iget-boolean v1, p0, Lcom/samsungapps/plasma/d;->y:Z

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private d(ILcom/samsungapps/plasma/m;)V
    .locals 9

    const/4 v3, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsungapps/plasma/m;->d()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    new-instance v6, Lcom/samsungapps/plasma/ItemInformation;

    invoke-direct {v6}, Lcom/samsungapps/plasma/ItemInformation;-><init>()V

    const-string v1, "currencyUnit"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/ItemInformation;->setCurrencyUnit(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsungapps/plasma/d;->x:Z

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/ItemInformation;->setCurrencyUnitPrecedes(Z)V

    iget-boolean v1, p0, Lcom/samsungapps/plasma/d;->y:Z

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/ItemInformation;->setCurrencyUnitHasPenny(Z)V

    const-string v1, "itemDesc"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/ItemInformation;->setItemDescription(Ljava/lang/String;)V

    const-string v1, "itemID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/ItemInformation;->setItemId(Ljava/lang/String;)V

    const-string v1, "itemName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/ItemInformation;->setItemName(Ljava/lang/String;)V

    const-string v1, "itemPrice"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsungapps/plasma/i;->a(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/samsungapps/plasma/ItemInformation;->setItemPrice(D)V

    const-string v1, "itemDownloadUrl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsungapps/plasma/i;->c(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/ItemInformation;->setItemDownloadUrl(Ljava/net/URL;)V

    const-string v1, "itemImageUrl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsungapps/plasma/i;->c(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/ItemInformation;->setItemImageUrl(Ljava/net/URL;)V

    const-string v1, "reserved1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/ItemInformation;->setReserved1(Ljava/lang/String;)V

    const-string v1, "reserved2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/samsungapps/plasma/ItemInformation;->setReserved2(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsungapps/plasma/d;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->l:Lcom/samsungapps/plasma/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->l:Lcom/samsungapps/plasma/e;

    invoke-virtual {v0, p1, v3, v5}, Lcom/samsungapps/plasma/e;->a(IILjava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private d(III)Z
    .locals 4

    new-instance v0, Lcom/samsungapps/plasma/l;

    invoke-direct {v0}, Lcom/samsungapps/plasma/l;-><init>()V

    const/16 v1, 0x1773

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->b(I)V

    const-string v1, "getItemsInbox"

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "guid"

    iget-object v3, p0, Lcom/samsungapps/plasma/d;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "imei"

    iget-object v3, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    invoke-virtual {v3}, Lcom/samsungapps/plasma/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "startNum"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "endNum"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "resultCode"

    iget v3, p0, Lcom/samsungapps/plasma/d;->w:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/samsungapps/plasma/l;->a(Ljava/util/HashMap;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p0, v1}, Lcom/samsungapps/plasma/d;->a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;Z)Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->u:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->u:Landroid/content/SharedPreferences;

    const-string v1, "LastMcc"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsungapps/plasma/d;->u:Landroid/content/SharedPreferences;

    const-string v2, "LastMnc"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/samsungapps/plasma/d;->u:Landroid/content/SharedPreferences;

    const-string v3, "LastCsc"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsungapps/plasma/d;->u:Landroid/content/SharedPreferences;

    const-string v4, "LastQa"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, p0, Lcom/samsungapps/plasma/d;->u:Landroid/content/SharedPreferences;

    const-string v5, "LastCountryCode"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsungapps/plasma/d;->z:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    invoke-virtual {v4}, Lcom/samsungapps/plasma/b;->b()I

    move-result v4

    iget-object v5, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    invoke-virtual {v5}, Lcom/samsungapps/plasma/b;->c()I

    move-result v5

    iget-object v6, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    invoke-virtual {v6}, Lcom/samsungapps/plasma/b;->d()Ljava/lang/String;

    move-result-object v6

    if-ne v0, v4, :cond_2

    if-ne v1, v5, :cond_2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsungapps/plasma/d;->b:Z

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->z:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsungapps/plasma/d;->u:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastCountryUrl"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    iget-object v0, p0, Lcom/samsungapps/plasma/d;->u:Landroid/content/SharedPreferences;

    const-string v1, "LastCountryUrl"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->u:Landroid/content/SharedPreferences;

    const-string v1, "LastCurrencyUnitPrecedes"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsungapps/plasma/d;->x:Z

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->u:Landroid/content/SharedPreferences;

    const-string v1, "LastCurrencyUnitHasPenny"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsungapps/plasma/d;->y:Z

    goto/16 :goto_0
.end method

.method private e(ILcom/samsungapps/plasma/m;)V
    .locals 9

    const/4 v3, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsungapps/plasma/m;->d()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    new-instance v6, Lcom/samsungapps/plasma/PurchasedItemInformation;

    invoke-direct {v6}, Lcom/samsungapps/plasma/PurchasedItemInformation;-><init>()V

    const-string v1, "currencyUnit"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setCurrencyUnit(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsungapps/plasma/d;->x:Z

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setCurrencyUnitPrecedes(Z)V

    iget-boolean v1, p0, Lcom/samsungapps/plasma/d;->y:Z

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setCurrencyUnitHasPenny(Z)V

    const-string v1, "itemDesc"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setItemDescription(Ljava/lang/String;)V

    const-string v1, "itemID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setItemId(Ljava/lang/String;)V

    const-string v1, "itemName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setItemName(Ljava/lang/String;)V

    const-string v1, "itemPrice"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsungapps/plasma/i;->a(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setItemPrice(D)V

    const-string v1, "itemDownloadUrl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsungapps/plasma/i;->c(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setItemDownloadUrl(Ljava/net/URL;)V

    const-string v1, "itemImageUrl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsungapps/plasma/i;->c(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setItemImageUrl(Ljava/net/URL;)V

    const-string v1, "reserved1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setReserved1(Ljava/lang/String;)V

    const-string v1, "reserved2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setReserved2(Ljava/lang/String;)V

    const-string v1, "purchaseDate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsungapps/plasma/i;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setPurchaseDate(Ljava/util/Date;)V

    const-string v1, "paymentID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setPaymentId(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsungapps/plasma/d;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->l:Lcom/samsungapps/plasma/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->l:Lcom/samsungapps/plasma/e;

    invoke-virtual {v0, p1, v3, v5}, Lcom/samsungapps/plasma/e;->b(IILjava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private f()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/go_to_andromeda.test"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v2, Lcom/samsungapps/plasma/d;->b:Z

    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/saconfig.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/samsungapps/plasma/d;->a:Z

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "C9"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    invoke-virtual {v3, v2}, Lcom/samsungapps/plasma/b;->a(Ljava/lang/String;)V

    :cond_3
    const-string v2, "C10"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsungapps/plasma/i;->b(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    iget-object v3, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    invoke-virtual {v3, v2}, Lcom/samsungapps/plasma/b;->a(I)V

    :cond_4
    const-string v2, "C11"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsungapps/plasma/i;->b(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5

    iget-object v3, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    invoke-virtual {v3, v2}, Lcom/samsungapps/plasma/b;->b(I)V

    :cond_5
    const-string v2, "C13"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    invoke-virtual {v3, v2}, Lcom/samsungapps/plasma/b;->b(Ljava/lang/String;)V

    :cond_6
    const-string v2, "C12"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/b;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :cond_7
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_5
    invoke-static {v0}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_8

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_8
    :goto_4
    throw v0

    :catch_5
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private f(ILcom/samsungapps/plasma/m;)V
    .locals 8

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsungapps/plasma/m;->d()Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    const-string v1, "paymentMethod"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "PaymentMethod"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsungapps/plasma/g;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    move-object v4, v2

    :goto_3
    if-eqz v4, :cond_1

    invoke-virtual {v4, p0}, Lcom/samsungapps/plasma/g;->a(Lcom/samsungapps/plasma/d;)V

    iget-object v2, p0, Lcom/samsungapps/plasma/d;->g:Landroid/content/Context;

    invoke-virtual {v4, v2}, Lcom/samsungapps/plasma/g;->a(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lcom/samsungapps/plasma/g;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsungapps/plasma/d;->m:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/samsungapps/plasma/g;->h(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/samsungapps/plasma/g;->b(I)V

    iget-object v1, p0, Lcom/samsungapps/plasma/d;->r:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/samsungapps/plasma/g;->g(Ljava/lang/String;)V

    const-string v1, "Company"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/samsungapps/plasma/g;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsungapps/plasma/d;->z:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/samsungapps/plasma/g;->e(Ljava/lang/String;)V

    const-string v1, "itemPrice"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/samsungapps/plasma/i;->a(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lcom/samsungapps/plasma/g;->a(D)V

    const-string v1, "currencyUnit"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/samsungapps/plasma/g;->c(Ljava/lang/String;)V

    const-string v1, "paymentTypeId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/samsungapps/plasma/g;->d(Ljava/lang/String;)V

    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/samsungapps/plasma/g;->f(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-static {v2}, Lcom/samsungapps/plasma/a;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_2
    invoke-direct {p0, p1, v6}, Lcom/samsungapps/plasma/d;->a(ILjava/util/ArrayList;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->t:Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_3
    move-object v2, v4

    goto/16 :goto_2
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/d;->w:I

    return v0
.end method

.method a(Ljava/lang/String;Landroid/view/View;)Landroid/app/Dialog;
    .locals 6

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/16 v3, 0xa

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/samsungapps/plasma/d;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/samsungapps/plasma/d;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/ScrollView;->setPadding(IIII)V

    const/16 v2, 0x140

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setMinimumWidth(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method protected a(I)V
    .locals 1

    const/16 v0, 0xc8

    invoke-direct {p0, p1, v0}, Lcom/samsungapps/plasma/d;->a(II)V

    return-void
.end method

.method protected a(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsungapps/plasma/d;->a(II)V

    return-void
.end method

.method protected a(ILcom/samsungapps/plasma/m;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsungapps/plasma/m;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/samsungapps/plasma/d;->c(ILcom/samsungapps/plasma/m;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1, p2}, Lcom/samsungapps/plasma/d;->d(ILcom/samsungapps/plasma/m;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/samsungapps/plasma/d;->e(ILcom/samsungapps/plasma/m;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1, p2}, Lcom/samsungapps/plasma/d;->f(ILcom/samsungapps/plasma/m;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8fc -> :sswitch_0
        0x1773 -> :sswitch_2
        0x1775 -> :sswitch_1
        0x1777 -> :sswitch_3
    .end sparse-switch
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsungapps/plasma/d;->v:Z

    return-void
.end method

.method a(III)Z
    .locals 3

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsungapps/plasma/d;->c(III)Z

    move-result v0

    return v0
.end method

.method a(ILcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/h;Z)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/samsungapps/plasma/d;->i:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/samsungapps/plasma/l;->c()I

    move-result v2

    const/16 v3, 0x8fc

    if-eq v2, v3, :cond_2

    iput-object p2, p0, Lcom/samsungapps/plasma/d;->k:Lcom/samsungapps/plasma/l;

    invoke-direct {p0, p1}, Lcom/samsungapps/plasma/d;->c(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/samsungapps/plasma/d;->n:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/samsungapps/plasma/d;->n:I

    invoke-virtual {p2, v2}, Lcom/samsungapps/plasma/l;->a(I)V

    iget-object v3, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    invoke-static {p2, v3}, Lcom/samsungapps/plasma/k;->a(Lcom/samsungapps/plasma/l;Lcom/samsungapps/plasma/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-boolean v0, p0, Lcom/samsungapps/plasma/d;->v:Z

    if-eqz v0, :cond_3

    if-nez p4, :cond_3

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->g:Landroid/content/Context;

    const-string v4, ""

    const-string v5, "IDS_SAPPS_BODY_WAITING_ING"

    invoke-static {v5}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v4, p0, Lcom/samsungapps/plasma/d;->s:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/samsungapps/plasma/d;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsungapps/plasma/l;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "^http[s]?://"

    const-string v5, "https://"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v4, Lcom/samsungapps/plasma/f;

    new-instance v5, Lcom/samsungapps/plasma/d$1;

    invoke-direct {v5, p0}, Lcom/samsungapps/plasma/d$1;-><init>(Lcom/samsungapps/plasma/d;)V

    invoke-direct {v4, v5}, Lcom/samsungapps/plasma/f;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v4, v2}, Lcom/samsungapps/plasma/f;->a(I)V

    invoke-virtual {v4, v0}, Lcom/samsungapps/plasma/f;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/samsungapps/plasma/f;->b(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsungapps/plasma/f;->start()V

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->o:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->p:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto/16 :goto_0
.end method

.method a(ILjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->r:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/samsungapps/plasma/d;->c(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method b(ILjava/lang/String;)Landroid/app/Dialog;
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->g:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    packed-switch p1, :pswitch_data_0

    const-string v0, "IDS_SAPPS_BODY_ERROR"

    invoke-static {v0}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const-string v2, "IDS_SAPPS_BODY_OTHER_ERROR"

    invoke-static {v2}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "IDS_SAPPS_BODY_INFORMATION"

    invoke-static {v0}, Lcom/samsungapps/plasma/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method b()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->j:Ljava/util/Date;

    return-object v0
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/d;->w:I

    return-void
.end method

.method b(IILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->p:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsungapps/plasma/h;

    iget-object v1, p0, Lcom/samsungapps/plasma/d;->s:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    packed-switch p2, :pswitch_data_0

    invoke-virtual {v0, v2}, Lcom/samsungapps/plasma/h;->a(I)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p3}, Lcom/samsungapps/plasma/k;->a(Ljava/lang/String;)Lcom/samsungapps/plasma/m;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsungapps/plasma/m;->h()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2, v1}, Lcom/samsungapps/plasma/h;->a(ILcom/samsungapps/plasma/m;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsungapps/plasma/m;->i()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsungapps/plasma/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsungapps/plasma/h;->a(IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Lcom/samsungapps/plasma/h;->a(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method b(ILcom/samsungapps/plasma/m;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsungapps/plasma/d;->t:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v2, p0, Lcom/samsungapps/plasma/d;->t:Landroid/app/Dialog;

    :cond_2
    invoke-virtual {p2}, Lcom/samsungapps/plasma/m;->d()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    if-lez v3, :cond_4

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/samsungapps/plasma/d;->j:Ljava/util/Date;

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->r:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->l:Lcom/samsungapps/plasma/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->l:Lcom/samsungapps/plasma/e;

    invoke-virtual {v0, p1, v4, v2}, Lcom/samsungapps/plasma/e;->a(IILcom/samsungapps/plasma/PurchasedItemInformation;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_5

    new-instance v2, Lcom/samsungapps/plasma/PurchasedItemInformation;

    invoke-direct {v2}, Lcom/samsungapps/plasma/PurchasedItemInformation;-><init>()V

    const-string v0, "currencyUnit"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setCurrencyUnit(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsungapps/plasma/d;->x:Z

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setCurrencyUnitPrecedes(Z)V

    iget-boolean v0, p0, Lcom/samsungapps/plasma/d;->y:Z

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setCurrencyUnitHasPenny(Z)V

    const-string v0, "itemDesc"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setItemDescription(Ljava/lang/String;)V

    const-string v0, "itemID"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setItemId(Ljava/lang/String;)V

    const-string v0, "itemName"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setItemName(Ljava/lang/String;)V

    const-string v0, "itemPrice"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsungapps/plasma/i;->a(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setItemPrice(D)V

    const-string v0, "itemDownloadUrl"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsungapps/plasma/i;->c(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setItemDownloadUrl(Ljava/net/URL;)V

    const-string v0, "itemImageUrl"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsungapps/plasma/i;->c(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setItemImageUrl(Ljava/net/URL;)V

    const-string v0, "reserved1"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setReserved1(Ljava/lang/String;)V

    const-string v0, "reserved2"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setReserved2(Ljava/lang/String;)V

    const-string v0, "purchaseDate"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsungapps/plasma/i;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setPurchaseDate(Ljava/util/Date;)V

    const-string v0, "paymentID"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsungapps/plasma/PurchasedItemInformation;->setPaymentId(Ljava/lang/String;)V

    :cond_5
    move-object v0, v2

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v2, v0

    goto/16 :goto_1
.end method

.method b(III)Z
    .locals 3

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsungapps/plasma/d;->d(III)Z

    move-result v0

    return v0
.end method

.method c()Lcom/samsungapps/plasma/b;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/d;->h:Lcom/samsungapps/plasma/b;

    return-object v0
.end method
