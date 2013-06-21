.class public Lcom/tapjoy/TJCVirtualGoods;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static N:Landroid/widget/ProgressBar;

.field private static O:Landroid/widget/ImageView;

.field private static P:Landroid/widget/TextView;

.field private static ag:Landroid/widget/TextView;

.field private static ah:Landroid/widget/TextView;

.field private static ak:Ljava/lang/String;

.field private static al:Ljava/lang/String;

.field private static am:Ljava/lang/String;

.field private static an:Z

.field public static b:Lcom/tapjoy/aq;

.field static c:Landroid/content/Context;

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Landroid/widget/TextView;

.field public static i:Landroid/widget/Button;

.field public static l:Z

.field public static m:Ljava/lang/String;

.field private static s:Lcom/tapjoy/ap;

.field private static t:Lcom/tapjoy/aj;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/Boolean;

.field private B:I

.field private C:Landroid/widget/ProgressBar;

.field private D:Landroid/widget/ProgressBar;

.field private E:Ljava/util/ArrayList;

.field private F:Ljava/util/ArrayList;

.field private G:Landroid/widget/TableLayout;

.field private H:Landroid/widget/TableLayout;

.field private I:Landroid/widget/Button;

.field private J:Landroid/widget/Button;

.field private K:Lcom/tapjoy/ah;

.field private L:Lcom/tapjoy/ag;

.field private M:Landroid/widget/LinearLayout;

.field private Q:Landroid/widget/Button;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/widget/Button;

.field private V:Landroid/widget/TextView;

.field private W:Landroid/widget/Button;

.field private X:Landroid/widget/TextView;

.field private Y:Landroid/widget/Button;

.field private Z:Landroid/widget/TextView;

.field a:Lcom/tapjoy/af;

.field private aa:Landroid/widget/TextView;

.field private ab:Landroid/app/Dialog;

.field private ac:Landroid/app/Dialog;

.field private ad:Landroid/app/Dialog;

.field private ae:Landroid/app/ProgressDialog;

.field private af:Landroid/app/Dialog;

.field private ai:Lcom/tapjoy/ak;

.field private aj:Lcom/tapjoy/cc;

.field j:Landroid/app/AlertDialog;

.field k:Landroid/app/AlertDialog;

.field n:[F

.field o:[F

.field p:[F

.field q:[F

.field private r:Lcom/tapjoy/h;

.field private w:Landroid/widget/TabHost;

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->b:Lcom/tapjoy/aq;

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->s:Lcom/tapjoy/ap;

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->t:Lcom/tapjoy/aj;

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->c:Landroid/content/Context;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->d:Z

    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->e:Z

    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->f:Z

    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->g:Z

    sput-object v2, Lcom/tapjoy/TJCVirtualGoods;->ak:Ljava/lang/String;

    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->an:Z

    sput-boolean v1, Lcom/tapjoy/TJCVirtualGoods;->l:Z

    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TJCVirtualGoods;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/tapjoy/af;

    invoke-direct {v0}, Lcom/tapjoy/af;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->a:Lcom/tapjoy/af;

    iput-boolean v3, p0, Lcom/tapjoy/TJCVirtualGoods;->z:Z

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->A:Ljava/lang/Boolean;

    iput v3, p0, Lcom/tapjoy/TJCVirtualGoods;->B:I

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->E:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->K:Lcom/tapjoy/ah;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->L:Lcom/tapjoy/ag;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->R:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->S:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->T:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->U:Landroid/widget/Button;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->V:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->W:Landroid/widget/Button;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->X:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->Y:Landroid/widget/Button;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->Z:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->aa:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->ai:Lcom/tapjoy/ak;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->aj:Lcom/tapjoy/cc;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->j:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->k:Landroid/app/AlertDialog;

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->n:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->p:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->q:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x20t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static a(IIII)I
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0xff

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, p2

    and-int/lit16 v2, p0, 0xff

    add-int/2addr v2, p3

    if-gez v0, :cond_0

    move v0, v4

    :cond_0
    if-gez v1, :cond_1

    move v1, v4

    :cond_1
    if-gez v2, :cond_2

    move v2, v4

    :cond_2
    if-le v0, v3, :cond_3

    move v0, v3

    :cond_3
    if-le v1, v3, :cond_4

    move v1, v3

    :cond_4
    if-le v2, v3, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;
    .locals 6

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    const/16 v2, 0x64

    new-array v2, v2, [I

    array-length v3, v2

    sub-int/2addr v0, p1

    sub-int/2addr v1, p1

    sub-int/2addr p0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-gez p0, :cond_2

    const/4 p0, 0x0

    :cond_2
    add-int/2addr p1, p2

    div-int/2addr p1, v3

    if-gtz p1, :cond_3

    const/4 p1, 0x1

    :cond_3
    const/4 p2, 0x0

    move v5, p2

    move p2, v1

    move v1, p0

    move p0, v5

    :goto_0
    if-lt p0, v3, :cond_6

    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-eqz p5, :cond_4

    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :cond_4
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1, p0, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p1, p6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    const/4 p0, 0x0

    cmpl-float p0, p3, p0

    if-lez p0, :cond_5

    float-to-int p0, p3

    invoke-virtual {p1, p0, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_5
    const/high16 p0, 0x4248

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    return-object p1

    :cond_6
    add-int/2addr v0, p1

    add-int/2addr p2, p1

    add-int/2addr v1, p1

    const/16 v4, 0xff

    if-le v0, v4, :cond_7

    const/16 v0, 0xff

    :cond_7
    const/16 v4, 0xff

    if-le p2, v4, :cond_8

    const/16 p2, 0xff

    :cond_8
    const/16 v4, 0xff

    if-le v1, v4, :cond_9

    const/16 v1, 0xff

    :cond_9
    const/16 v4, 0xff

    invoke-static {v4, v0, p2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/tapjoy/cc;ILandroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "tapjoy_virtualgoods_purchaseitems_row"

    const-string v3, "layout"

    sget-object v4, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p3, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setId(I)V

    move-object v0, p3

    check-cast v0, Landroid/view/View$OnClickListener;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "tapjoy_tablerowstates"

    const-string v4, "drawable"

    sget-object v5, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "vg_row_index"

    const-string v4, "id"

    sget-object v5, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "vg_row_item_icon"

    const-string v4, "id"

    sget-object v5, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/tapjoy/cc;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "vg_row_name"

    const-string v4, "id"

    sget-object v5, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tapjoy/cc;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "vg_row_type"

    const-string v4, "id"

    sget-object v5, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tapjoy/cc;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "vg_row_attribute"

    const-string v4, "id"

    sget-object v5, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tapjoy/cc;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tapjoy/cc;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/cd;

    invoke-virtual {v2}, Lcom/tapjoy/cd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tapjoy/cc;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/cd;

    invoke-virtual {v2}, Lcom/tapjoy/cd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "vg_row_points_text"

    const-string v4, "id"

    sget-object v5, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tapjoy/cc;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/cc;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/tapjoy/cc;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v6

    aput-object p1, v3, v7

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->a:Lcom/tapjoy/af;

    new-instance v4, Lcom/tapjoy/ai;

    invoke-direct {v4, p0, v6}, Lcom/tapjoy/ai;-><init>(Lcom/tapjoy/TJCVirtualGoods;B)V

    invoke-virtual {v2, v4, v3}, Lcom/tapjoy/af;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->E:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(I)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->N:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Downloading... "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCVirtualGoods;I)V
    .locals 5

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->H:Landroid/widget/TableLayout;

    const-string v1, "MorePurchasedItemsButton"

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->H:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->J:Landroid/widget/Button;

    :cond_0
    if-lez p1, :cond_1

    const/16 v0, 0x19

    if-le p1, v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->J:Landroid/widget/Button;

    const-string v1, "Show 25 more..."

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->H:Landroid/widget/TableLayout;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->J:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->A:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->A:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->H:Landroid/widget/TableLayout;

    iget v3, p0, Lcom/tapjoy/TJCVirtualGoods;->y:I

    iget v4, p0, Lcom/tapjoy/TJCVirtualGoods;->B:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/h;->a(Ljava/util/List;Landroid/widget/TableLayout;I)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->J:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Show "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " more..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V
    .locals 11

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->G:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->removeAllViews()V

    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->ag:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->ag:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    move v5, p1

    :goto_1
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v5, v1, :cond_2

    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->f()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/cc;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "tapjoy_virtualgoods_row"

    const-string v4, "layout"

    sget-object v6, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setId(I)V

    move-object v0, p2

    check-cast v0, Landroid/view/View$OnClickListener;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "tapjoy_tablerowstates"

    const-string v6, "drawable"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "vg_row_index"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "vg_row_item_icon"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/tapjoy/cc;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "vg_row_name"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tapjoy/cc;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "vg_row_type"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tapjoy/cc;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "vg_row_attribute"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tapjoy/cc;->g()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tapjoy/cc;->g()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/cd;

    invoke-virtual {v4}, Lcom/tapjoy/cd;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ": "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/tapjoy/cc;->g()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/cd;

    invoke-virtual {v4}, Lcom/tapjoy/cd;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "vg_row_points_text"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tapjoy/cc;->c()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setSelected(Z)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "tapjoy_gradientline"

    const-string v6, "drawable"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/cc;

    invoke-virtual {v1}, Lcom/tapjoy/cc;->o()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->G:Landroid/widget/TableLayout;

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->G:Landroid/widget/TableLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/tapjoy/cc;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/tapjoy/cc;->i()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v8

    aput-object v1, v4, v10

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->a:Lcom/tapjoy/af;

    new-instance v6, Lcom/tapjoy/ai;

    invoke-direct {v6, p0, v8}, Lcom/tapjoy/ai;-><init>(Lcom/tapjoy/TJCVirtualGoods;B)V

    invoke-virtual {v3, v6, v4}, Lcom/tapjoy/af;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->af:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->K:Lcom/tapjoy/ah;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/cc;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->aj:Lcom/tapjoy/cc;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->A:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/String;Lcom/tapjoy/cc;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/tapjoy/w;

    invoke-direct {v2, p0, p2}, Lcom/tapjoy/w;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/cc;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/x;

    invoke-direct {v1, p0, p2}, Lcom/tapjoy/x;-><init>(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/cc;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->ad:Landroid/app/Dialog;

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->ad:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Virtual Goods"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showItemDownloadedDialog: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/tapjoy/ap;)V
    .locals 0

    sput-object p0, Lcom/tapjoy/TJCVirtualGoods;->s:Lcom/tapjoy/ap;

    return-void
.end method

.method private a(Lcom/tapjoy/cc;II)V
    .locals 11

    const/16 v10, 0xa

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    const-string v0, "Virtual Goods"

    const-string v1, "********************"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Virtual Goods"

    const-string v1, "showItemDetail"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "vg_detail_item_icon"

    const-string v2, "id"

    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/tapjoy/cc;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/cc;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "vg_detail_item_name_text"

    const-string v2, "id"

    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tapjoy/cc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "vg_detail_item_type_text"

    const-string v2, "id"

    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tapjoy/cc;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "vg_detail_points_text"

    const-string v2, "id"

    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tapjoy/cc;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "vg_detail_currency_text"

    const-string v2, "id"

    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ScrollLayout"

    const-string v2, "id"

    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p1}, Lcom/tapjoy/cc;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "virtual_goods_details_text_color"

    const-string v5, "color"

    sget-object v6, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move v4, v7

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v4, v1, :cond_3

    invoke-virtual {p1}, Lcom/tapjoy/cc;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/tapjoy/cc;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "Description:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v7, v7, v7, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/tapjoy/cc;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tapjoy/cc;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tapjoy/cc;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->aj:Lcom/tapjoy/cc;

    packed-switch p2, :pswitch_data_0

    :goto_2
    :pswitch_0
    iput-boolean v9, p0, Lcom/tapjoy/TJCVirtualGoods;->z:Z

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/cc;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/tapjoy/cc;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v7

    aput-object p1, v1, v9

    goto/16 :goto_0

    :cond_3
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/cd;

    invoke-virtual {v1}, Lcom/tapjoy/cd;->a()Ljava/lang/String;

    move-result-object v1

    const-string v6, "quantity"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/tapjoy/TJCVirtualGoods;->h:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/cc;->h()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v7, v7, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_1

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/cd;

    invoke-virtual {v1}, Lcom/tapjoy/cd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v7, v7, v7, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :pswitch_1
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->Q:Landroid/widget/Button;

    new-instance v3, Lcom/tapjoy/t;

    invoke-direct {v3, p0, v0, v1}, Lcom/tapjoy/t;-><init>(Lcom/tapjoy/TJCVirtualGoods;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->Q:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->Q:Landroid/widget/Button;

    const-string v1, "Get this item"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->i:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->Q:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v1

    const-string v0, "Virtual Goods"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "virtualGoodsToDownload size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    iget-object v3, v3, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    iget-object v0, v0, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    iget-object v0, v0, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/n;

    const-string v2, "Virtual Goods"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "showing detail view of an download in progress... "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tapjoy/cc;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/tapjoy/n;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/n;)V

    :goto_4
    sput-object v1, Lcom/tapjoy/TJCVirtualGoods;->m:Ljava/lang/String;

    sput-boolean v9, Lcom/tapjoy/TJCVirtualGoods;->l:Z

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    invoke-virtual {v0, p3}, Lcom/tapjoy/h;->a(I)V

    goto/16 :goto_2

    :cond_6
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    const-string v2, "Download Completed"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->i:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/tapjoy/n;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget v0, p0, Lcom/tapjoy/n;->g:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Downloading... "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/n;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->N:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/tapjoy/n;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->i:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    const-string v1, "Download Pending"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->i:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    const-string v1, "Download Completed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->i:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    const-string v1, "Download Failed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_4
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    const-string v1, "Download Failed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->i:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0xa -> :sswitch_2
        0x14 -> :sswitch_2
        0x29 -> :sswitch_3
        0x2a -> :sswitch_3
        0x2b -> :sswitch_4
        0x2c -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic b(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->C:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static b()Lcom/tapjoy/ap;
    .locals 1

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->s:Lcom/tapjoy/ap;

    return-object v0
.end method

.method static synthetic b(Lcom/tapjoy/TJCVirtualGoods;ILandroid/content/Context;)V
    .locals 6

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->H:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Virtual Goods"

    const-string v1, "No items to display"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->ah:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->ah:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move v1, p1

    :goto_1
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget v1, Lcom/tapjoy/cc;->a:I

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->G:Landroid/widget/TableLayout;

    const-string v2, "MoreStoreItemsButton"

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->G:Landroid/widget/TableLayout;

    invoke-virtual {v2, v0}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->I:Landroid/widget/Button;

    :cond_2
    if-lez v1, :cond_3

    const/16 v0, 0x19

    if-le v1, v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->I:Landroid/widget/Button;

    const-string v1, "Show 25 more..."

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->G:Landroid/widget/TableLayout;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->I:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    :cond_3
    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->f()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->H:Landroid/widget/TableLayout;

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/cc;

    invoke-direct {p0, v0, v1, p2}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/cc;ILandroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "tapjoy_gradientline"

    const-string v4, "drawable"

    sget-object v5, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->H:Landroid/widget/TableLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->I:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Show "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " more..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->ac:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic b(Lcom/tapjoy/TJCVirtualGoods;Lcom/tapjoy/cc;)V
    .locals 13

    const-wide/16 v6, 0x400

    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v1, "Virtual Goods"

    const-string v2, "--------------------"

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Virtual Goods"

    const-string v2, "SUCCESSFUL PURCHASE"

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v1, v1

    const-string v3, "File System"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FREE INTERNAL MEMORY: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long/2addr v1, v6

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-long v1, v1

    const-string v3, "File System"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FREE EXTERNAL MEMORY: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long/2addr v1, v6

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v10

    :goto_0
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_4

    sput-boolean v11, Lcom/tapjoy/TJCVirtualGoods;->l:Z

    invoke-virtual {p1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TJCVirtualGoods;->m:Ljava/lang/String;

    sput-boolean v11, Lcom/tapjoy/TJCVirtualGoods;->an:Z

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    invoke-virtual {p1}, Lcom/tapjoy/cc;->n()V

    new-instance v3, Lcom/tapjoy/n;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v1}, Lcom/tapjoy/n;-><init>(Lcom/tapjoy/h;)V

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    iget-object v1, v1, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    iget-object v1, v1, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/tapjoy/TJCVirtualGoods;->B:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tapjoy/TJCVirtualGoods;->B:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->H:Landroid/widget/TableLayout;

    const-string v2, "MorePurchasedItemsButton"

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->H:Landroid/widget/TableLayout;

    invoke-virtual {v2, v1}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    :cond_0
    move-object v2, v1

    :goto_1
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    iget-object v1, v1, Lcom/tapjoy/h;->c:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    iget-object v4, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    iput-object v4, v1, Lcom/tapjoy/h;->c:Ljava/util/ArrayList;

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->ah:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/cc;

    invoke-virtual {v1}, Lcom/tapjoy/cc;->h()I

    move-result v5

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/cc;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v1, v6}, Lcom/tapjoy/cc;->b(I)V

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->h:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "quantity: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, v4, p0}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/cc;ILandroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->H:Landroid/widget/TableLayout;

    invoke-virtual {v1, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "tapjoy_gradientline"

    const-string v8, "drawable"

    sget-object v9, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v6, p0, Lcom/tapjoy/TJCVirtualGoods;->H:Landroid/widget/TableLayout;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1, v7}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/tapjoy/TJCVirtualGoods;->H:Landroid/widget/TableLayout;

    move-object v0, v2

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    invoke-virtual {v6, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    :cond_2
    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "vg_row_index"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "vg_row_progress_bar"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v3, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->Q:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->N:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "vg_row_download_status_text"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    const-string v2, "Download Pending"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "vg_row_retry_button"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v3, Lcom/tapjoy/n;->c:Landroid/widget/Button;

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "vg_row_error_icon"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/tapjoy/n;->d:Landroid/widget/ImageView;

    iget-object v1, v3, Lcom/tapjoy/n;->c:Landroid/widget/Button;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    iget-object v2, v2, Lcom/tapjoy/h;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v3, Lcom/tapjoy/n;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    iget-object v2, v2, Lcom/tapjoy/h;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    invoke-virtual {v1, v4}, Lcom/tapjoy/h;->a(I)V

    invoke-static {v3}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/n;)V

    new-array v1, v11, [Lcom/tapjoy/cc;

    aput-object p1, v1, v10

    invoke-static {v3, v1}, Lcom/tapjoy/h;->a(Landroid/os/AsyncTask;[Lcom/tapjoy/cc;)Z

    :cond_3
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->ad:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :goto_2
    return-void

    :cond_4
    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/cc;

    invoke-virtual {v1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/tapjoy/cc;->h()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Lcom/tapjoy/cc;->b(I)V

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "quantity: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "Virtual Goods"

    const-string v2, "ALREADY DOWNLOADED... updating quantity only"

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/TJCVirtualGoods;->Q:Landroid/widget/Button;

    invoke-virtual {v1, v12}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    const-string v2, "Download Completed"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    :cond_6
    move-object v2, v1

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/tapjoy/TJCVirtualGoods;)I
    .locals 1

    iget v0, p0, Lcom/tapjoy/TJCVirtualGoods;->x:I

    return v0
.end method

.method static synthetic c()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->ag:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/TJCVirtualGoods;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJCVirtualGoods;->ab:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic d(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->I:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->ah:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 1

    new-instance v0, Lcom/tapjoy/y;

    invoke-direct {v0, p0}, Lcom/tapjoy/y;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f(Lcom/tapjoy/TJCVirtualGoods;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    return-object v0
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lcom/tapjoy/ar;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJCVirtualGoods;->ak:Ljava/lang/String;

    invoke-static {}, Lcom/tapjoy/ar;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-static {}, Lcom/tapjoy/ar;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJCVirtualGoods;->al:Ljava/lang/String;

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->S:Landroid/widget/TextView;

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->aa:Landroid/widget/TextView;

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->T:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->al:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->V:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->al:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->X:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->al:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->U:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->U:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get more "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for FREE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->W:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->W:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get more "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for FREE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->Y:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->Y:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get more "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for FREE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method static synthetic g(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->D:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private g()V
    .locals 3

    const-string v0, "Virtual Goods"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Showing offers (userID = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->ak:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "USER_ID"

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "URL_PARAMS"

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic h(Lcom/tapjoy/TJCVirtualGoods;)I
    .locals 1

    iget v0, p0, Lcom/tapjoy/TJCVirtualGoods;->y:I

    return v0
.end method

.method static synthetic i(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->J:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic j(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TableLayout;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->H:Landroid/widget/TableLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/h;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    return-object v0
.end method

.method static synthetic l(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 1

    new-instance v0, Lcom/tapjoy/ad;

    invoke-direct {v0, p0}, Lcom/tapjoy/ad;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCVirtualGoods;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic m(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->af:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic n(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->ae:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic o(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "Virtual Goods"

    const-string v1, "callGetPurchasedVGItems"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tapjoy/ak;

    invoke-direct {v0, p0, v2}, Lcom/tapjoy/ak;-><init>(Lcom/tapjoy/TJCVirtualGoods;B)V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->ai:Lcom/tapjoy/ak;

    const-string v0, "Virtual Goods"

    const-string v1, "Processing your request..."

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, ""

    const-string v1, "Processing your request ..."

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->ae:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v0, "Virtual Goods"

    const-string v1, "getPurchasedVGItems..."

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->ai:Lcom/tapjoy/ak;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/tapjoy/cc;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tapjoy/TJCVirtualGoods;->aj:Lcom/tapjoy/cc;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tapjoy/ak;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Virtual Goods"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Virtual Goods"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->ae:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->aj:Lcom/tapjoy/cc;

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->aj:Lcom/tapjoy/cc;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Service is unreachable.\nDo you want to try again?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/tapjoy/ab;

    invoke-direct {v2, p0}, Lcom/tapjoy/ab;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Retry"

    new-instance v2, Lcom/tapjoy/ac;

    invoke-direct {v2, p0}, Lcom/tapjoy/ac;-><init>(Lcom/tapjoy/TJCVirtualGoods;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->af:Landroid/app/Dialog;

    :try_start_2
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->af:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->af:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static synthetic p(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->ab:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic q(Lcom/tapjoy/TJCVirtualGoods;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->ac:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic r(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->g()V

    return-void
.end method

.method static synthetic s(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->f()V

    return-void
.end method

.method static synthetic t(Lcom/tapjoy/TJCVirtualGoods;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TJCVirtualGoods;->x:I

    return-void
.end method

.method static synthetic u(Lcom/tapjoy/TJCVirtualGoods;)Landroid/widget/TableLayout;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->G:Landroid/widget/TableLayout;

    return-object v0
.end method

.method static synthetic v(Lcom/tapjoy/TJCVirtualGoods;)Lcom/tapjoy/ah;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->K:Lcom/tapjoy/ah;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->U:Landroid/widget/Button;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->W:Landroid/widget/Button;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->Y:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    :cond_1
    sput-boolean v5, Lcom/tapjoy/TJCVirtualGoods;->e:Z

    sput-boolean v5, Lcom/tapjoy/TJCVirtualGoods;->f:Z

    sput-boolean v4, Lcom/tapjoy/TJCVirtualGoods;->d:Z

    invoke-direct {p0}, Lcom/tapjoy/TJCVirtualGoods;->g()V

    :cond_2
    :goto_1
    return-void

    :pswitch_1
    const-string v0, "Virtual Goods"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "storeItemArray.size(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->E:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/tapjoy/TJCVirtualGoods;->z:Z

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->w:Landroid/widget/TabHost;

    invoke-virtual {v0, v6}, Landroid/widget/TabHost;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "vg_row_index"

    const-string v2, "id"

    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "Virtual Goods"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onClick index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/cc;

    invoke-direct {p0, v0, v4, v1}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/cc;II)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "Virtual Goods"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchasedItemArray.size(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "vg_row_index"

    const-string v2, "id"

    sget-object v3, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "Virtual Goods"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onClick index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iput-boolean v5, p0, Lcom/tapjoy/TJCVirtualGoods;->z:Z

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->w:Landroid/widget/TabHost;

    invoke-virtual {v0, v6}, Landroid/widget/TabHost;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/cc;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2, v1}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/cc;II)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->I:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->I:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget v0, p0, Lcom/tapjoy/TJCVirtualGoods;->x:I

    add-int/lit8 v0, v0, 0x19

    iput v0, p0, Lcom/tapjoy/TJCVirtualGoods;->x:I

    new-instance v0, Lcom/tapjoy/ah;

    invoke-direct {v0, p0, v4}, Lcom/tapjoy/ah;-><init>(Lcom/tapjoy/TJCVirtualGoods;B)V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->K:Lcom/tapjoy/ah;

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->K:Lcom/tapjoy/ah;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/ah;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->J:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->J:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget v0, p0, Lcom/tapjoy/TJCVirtualGoods;->y:I

    add-int/lit8 v0, v0, 0x19

    iput v0, p0, Lcom/tapjoy/TJCVirtualGoods;->y:I

    new-instance v0, Lcom/tapjoy/ag;

    invoke-direct {v0, p0, v4}, Lcom/tapjoy/ag;-><init>(Lcom/tapjoy/TJCVirtualGoods;B)V

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->L:Lcom/tapjoy/ag;

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->L:Lcom/tapjoy/ag;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/ag;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 46

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setFlags(II)V

    const-string v4, "Virtual Goods"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    sput-object p0, Lcom/tapjoy/TJCVirtualGoods;->c:Landroid/content/Context;

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    if-eqz v5, :cond_3

    const-string v6, "URL_PARAMS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "URL_PARAMS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/tapjoy/TJCVirtualGoods;->u:Ljava/lang/String;

    :cond_0
    const-string v6, "my_items_tab"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v4, "my_items_tab"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move/from16 v20, v4

    :goto_0
    if-eqz p1, :cond_1

    const-string v4, "Virtual Goods"

    const-string v5, "*** Loading saved data from bundle ***"

    invoke-static {v4, v5}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "bundle_url_params"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TJCVirtualGoods;->u:Ljava/lang/String;

    :cond_1
    const-string v4, "Virtual Goods"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "urlParams: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/tapjoy/TJCVirtualGoods;->u:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/tapjoy/h;

    sget-object v5, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    new-instance v4, Lcom/tapjoy/aq;

    const-string v5, "https://ws.tapjoyads.com/"

    sget-object v6, Lcom/tapjoy/TJCVirtualGoods;->u:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/tapjoy/aq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/tapjoy/TJCVirtualGoods;->b:Lcom/tapjoy/aq;

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tapjoy/TJCVirtualGoods;->z:Z

    invoke-static {}, Lcom/tapjoy/ar;->c()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TJCVirtualGoods;->ak:Ljava/lang/String;

    invoke-static {}, Lcom/tapjoy/ar;->b()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-static {}, Lcom/tapjoy/ar;->a()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TJCVirtualGoods;->al:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->E:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "tapjoy_virtualgoods"

    const-string v6, "layout"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->setContentView(I)V

    sget-object v4, Lcom/tapjoy/TJCVirtualGoods;->c:Landroid/content/Context;

    const-string v5, "tjcPrefrences"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "tapjoyPrimaryColor"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    const-string v4, "Virtual Goods"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "baseColor: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x10

    const/16 v5, -0x10

    const/16 v6, -0x10

    move/from16 v0, v21

    move v1, v4

    move v2, v5

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->a(IIII)I

    move-result v16

    const/16 v4, -0x40

    const/16 v5, -0x40

    const/16 v6, -0x40

    move/from16 v0, v21

    move v1, v4

    move v2, v5

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->a(IIII)I

    move-result v4

    const/16 v5, 0x40

    const/16 v6, 0x40

    const/16 v7, 0x40

    move/from16 v0, v21

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->a(IIII)I

    move-result v22

    const/16 v5, -0x50

    const/16 v6, -0x50

    const/16 v7, -0x50

    move/from16 v0, v21

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TJCVirtualGoods;->a(IIII)I

    move-result v8

    const/16 v5, 0x30

    const/16 v6, 0x50

    const/high16 v7, 0x3f80

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->p:[F

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v17

    const/16 v10, 0x30

    const/16 v11, 0x50

    const/high16 v12, 0x3f80

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->p:[F

    move-object v15, v0

    move/from16 v9, v16

    move v13, v8

    invoke-static/range {v9 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v18

    const/16 v5, 0x30

    const/16 v6, 0x50

    const/high16 v7, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->p:[F

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v19

    const/16 v5, 0x30

    const/16 v6, 0x50

    const/high16 v7, 0x3f80

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->q:[F

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v23

    const/16 v10, 0x30

    const/16 v11, 0x50

    const/high16 v12, 0x3f80

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->q:[F

    move-object v15, v0

    move/from16 v9, v16

    move v13, v8

    invoke-static/range {v9 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v24

    const/16 v5, 0x30

    const/16 v6, 0x50

    const/high16 v7, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->q:[F

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v25

    const/16 v5, 0x30

    const/16 v6, 0x50

    const/high16 v7, 0x3f80

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v26

    const/16 v10, 0x30

    const/16 v11, 0x50

    const/high16 v12, 0x3f80

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v15, v0

    move/from16 v9, v16

    move v13, v8

    invoke-static/range {v9 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v27

    const/16 v5, 0x30

    const/16 v6, 0x50

    const/high16 v7, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v28

    const/16 v5, 0x30

    const/16 v6, 0x50

    const/high16 v7, 0x3f80

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v29

    const/16 v10, 0x30

    const/16 v11, 0x50

    const/high16 v12, 0x3f80

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v15, v0

    move/from16 v9, v16

    move v13, v8

    invoke-static/range {v9 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v30

    const/16 v5, 0x30

    const/16 v6, 0x50

    const/high16 v7, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v31

    const/16 v5, 0x30

    const/16 v6, 0x50

    const/high16 v7, 0x3f80

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v32

    const/16 v10, 0x30

    const/16 v11, 0x50

    const/high16 v12, 0x3f80

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v15, v0

    move/from16 v9, v16

    move v13, v8

    invoke-static/range {v9 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v33

    const/16 v5, 0x30

    const/16 v6, 0x50

    const/high16 v7, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v34

    const/16 v5, 0x30

    const/16 v6, 0x50

    const/high16 v7, 0x3f80

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v35

    const/16 v10, 0x30

    const/16 v11, 0x50

    const/high16 v12, 0x3f80

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v15, v0

    move/from16 v9, v16

    move v13, v8

    invoke-static/range {v9 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v36

    const/16 v5, 0x30

    const/16 v6, 0x50

    const/high16 v7, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v37

    const/16 v5, 0x30

    const/16 v6, 0x50

    const/high16 v7, 0x3f80

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v38

    const/16 v10, 0x30

    const/16 v11, 0x50

    const/high16 v12, 0x3f80

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v15, v0

    move/from16 v9, v16

    move v13, v8

    invoke-static/range {v9 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    const/16 v5, 0x30

    const/16 v6, 0x50

    const/high16 v7, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    new-instance v39, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v40, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v40 .. v40}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v41, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v41 .. v41}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v42, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v42 .. v42}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v43, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v43 .. v43}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v44, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v44 .. v44}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v45, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v45 .. v45}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v7, 0x10100a7

    aput v7, v5, v6

    move-object/from16 v0, v39

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object/from16 v0, v39

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    move-object/from16 v0, v39

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v7, 0x10100a7

    aput v7, v5, v6

    move-object/from16 v0, v40

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    move-object/from16 v0, v40

    move-object v1, v5

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_3

    move-object/from16 v0, v40

    move-object v1, v5

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v7, 0x10100a7

    aput v7, v5, v6

    move-object/from16 v0, v41

    move-object v1, v5

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_4

    move-object/from16 v0, v41

    move-object v1, v5

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_5

    move-object/from16 v0, v41

    move-object v1, v5

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v7, 0x10100a7

    aput v7, v5, v6

    move-object/from16 v0, v42

    move-object v1, v5

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_6

    move-object/from16 v0, v42

    move-object v1, v5

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_7

    move-object/from16 v0, v42

    move-object v1, v5

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v7, 0x10100a7

    aput v7, v5, v6

    move-object/from16 v0, v43

    move-object v1, v5

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_8

    move-object/from16 v0, v43

    move-object v1, v5

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_9

    move-object/from16 v0, v43

    move-object v1, v5

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v7, 0x10100a7

    aput v7, v5, v6

    move-object/from16 v0, v44

    move-object v1, v5

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_a

    move-object/from16 v0, v44

    move-object v1, v5

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_b

    move-object/from16 v0, v44

    move-object v1, v5

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v7, 0x10100a7

    aput v7, v5, v6

    move-object/from16 v0, v45

    move-object v1, v5

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_c

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_d

    move-object/from16 v0, v45

    move-object v1, v5

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "vg_background"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "vg_store_footer"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "vg_item_footer"

    const-string v7, "id"

    sget-object v9, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "vg_detail_header"

    const-string v9, "id"

    sget-object v10, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v6, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "vg_detail_info"

    const-string v9, "id"

    sget-object v10, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v6, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "vg_detail_desc"

    const-string v9, "id"

    sget-object v10, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v6, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/widget/ScrollView;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "vg_detail_footer"

    const-string v9, "id"

    sget-object v10, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v6, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v10, 0x20

    const/16 v11, 0x20

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->n:[F

    move-object v15, v0

    move/from16 v9, v21

    invoke-static/range {v9 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v10, 0x20

    const/16 v11, 0x20

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->n:[F

    move-object v15, v0

    move/from16 v9, v21

    invoke-static/range {v9 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v10, 0x20

    const/16 v11, 0x20

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->n:[F

    move-object v15, v0

    move/from16 v9, v21

    invoke-static/range {v9 .. v15}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v5, 0x20

    const/4 v6, 0x4

    const/high16 v7, 0x4000

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v10, v0

    move/from16 v4, v22

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v5, 0x20

    const/4 v6, 0x4

    const/high16 v7, 0x4000

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v10, v0

    move/from16 v4, v22

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v5, 0x20

    const/4 v6, 0x4

    const/high16 v7, 0x4000

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v10, v0

    move/from16 v4, v22

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v5, 0x20

    const/4 v6, 0x4

    const/high16 v7, 0x4000

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->o:[F

    move-object v10, v0

    move/from16 v4, v22

    invoke-static/range {v4 .. v10}, Lcom/tapjoy/TJCVirtualGoods;->a(IIIFIZ[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "VGTabHost"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->w:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->w:Landroid/widget/TabHost;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->w:Landroid/widget/TabHost;

    move-object v4, v0

    const-string v5, "tab1"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "Store"

    const-string v7, "id"

    sget-object v8, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    new-instance v5, Landroid/widget/Button;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v6, "Available Items"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/16 v8, 0x8

    const/16 v9, 0x8

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/Button;->setPadding(IIII)V

    move-object v0, v5

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v6, 0x4000

    const/high16 v7, 0x4000

    const/high16 v8, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "vg_shadow_color"

    const-string v11, "color"

    sget-object v12, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->w:Landroid/widget/TabHost;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->w:Landroid/widget/TabHost;

    move-object v4, v0

    const-string v5, "tab3"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "YourItem"

    const-string v7, "id"

    sget-object v8, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    new-instance v5, Landroid/widget/Button;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v6, "My Items"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/16 v8, 0x8

    const/16 v9, 0x8

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/Button;->setPadding(IIII)V

    move-object v0, v5

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v6, 0x4000

    const/high16 v7, 0x4000

    const/high16 v8, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "vg_shadow_color"

    const-string v11, "color"

    sget-object v12, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->w:Landroid/widget/TabHost;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "StoreProgress"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->C:Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "YourItemProgress"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->D:Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "StoreTable"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->G:Landroid/widget/TableLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "YourItemTable"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->H:Landroid/widget/TableLayout;

    new-instance v4, Landroid/app/Dialog;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->ab:Landroid/app/Dialog;

    new-instance v4, Landroid/app/Dialog;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->ac:Landroid/app/Dialog;

    new-instance v4, Landroid/app/Dialog;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->ad:Landroid/app/Dialog;

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "ItemDetail"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->M:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->M:Landroid/widget/LinearLayout;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "storeHeaderLeftTitle"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->R:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->R:Landroid/widget/TextView;

    move-object v4, v0

    const-string v5, "Item"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "vg_detail_error_icon"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sput-object p1, Lcom/tapjoy/TJCVirtualGoods;->O:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "myItemsHeaderLeftTitle"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->Z:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->Z:Landroid/widget/TextView;

    move-object v4, v0

    const-string v5, "Item"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "storeHeaderRightTitle"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->S:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->S:Landroid/widget/TextView;

    move-object v4, v0

    sget-object v5, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "myItemsHeaderRightTitle"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->aa:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->aa:Landroid/widget/TextView;

    move-object v4, v0

    sget-object v5, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "VGFooterLeft"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->T:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->T:Landroid/widget/TextView;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Your "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tapjoy/TJCVirtualGoods;->al:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "VGYourItemFooterLeft"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->V:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->V:Landroid/widget/TextView;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Your "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tapjoy/TJCVirtualGoods;->al:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "VGDetailFooterLeft"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->X:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->X:Landroid/widget/TextView;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Your "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tapjoy/TJCVirtualGoods;->al:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "VGGetMoreBtn"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->U:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->U:Landroid/widget/Button;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Get more "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for FREE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->U:Landroid/widget/Button;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->U:Landroid/widget/Button;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "VGYourItemGetMoreBtn"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->W:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->W:Landroid/widget/Button;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Get more "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for FREE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->W:Landroid/widget/Button;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->W:Landroid/widget/Button;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "VGDetailGetMoreBtn"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->Y:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->Y:Landroid/widget/Button;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Get more "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/tapjoy/TJCVirtualGoods;->am:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for FREE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->Y:Landroid/widget/Button;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->Y:Landroid/widget/Button;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "vg_detail_action_button"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->Q:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->Q:Landroid/widget/Button;

    move-object v4, v0

    const-string v5, "Get this item"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->Q:Landroid/widget/Button;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "RetryDetailBtn"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sput-object p1, Lcom/tapjoy/TJCVirtualGoods;->i:Landroid/widget/Button;

    const-string v4, "Retry"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/tapjoy/TJCVirtualGoods;->i:Landroid/widget/Button;

    move-object v0, v4

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v4, Lcom/tapjoy/TJCVirtualGoods;->i:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    move-object v5, v0

    iget-object v5, v5, Lcom/tapjoy/h;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/Button;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->I:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->I:Landroid/widget/Button;

    move-object v4, v0

    const-string v5, "MoreStoreItemsButton"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->I:Landroid/widget/Button;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/Button;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->J:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->J:Landroid/widget/Button;

    move-object v4, v0

    const-string v5, "MorePurchasedItemsButton"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->J:Landroid/widget/Button;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "StoreNoDataText"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sput-object p1, Lcom/tapjoy/TJCVirtualGoods;->ag:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "YourItemNoDataText"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sput-object p1, Lcom/tapjoy/TJCVirtualGoods;->ah:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->w:Landroid/widget/TabHost;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "StoreLayout"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollContainer(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "vg_detail_download_status_text"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sput-object p1, Lcom/tapjoy/TJCVirtualGoods;->P:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TJCVirtualGoods;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "vg_detail_progress_bar"

    const-string v6, "id"

    sget-object v7, Lcom/tapjoy/TJCVirtualGoods;->v:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCVirtualGoods;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    sput-object p1, Lcom/tapjoy/TJCVirtualGoods;->N:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->E:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods;->x:I

    new-instance v4, Lcom/tapjoy/ah;

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/ah;-><init>(Lcom/tapjoy/TJCVirtualGoods;B)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->K:Lcom/tapjoy/ah;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->K:Lcom/tapjoy/ah;

    move-object v4, v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/tapjoy/ah;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TJCVirtualGoods;->y:I

    new-instance v4, Lcom/tapjoy/ag;

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/ag;-><init>(Lcom/tapjoy/TJCVirtualGoods;B)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TJCVirtualGoods;->L:Lcom/tapjoy/ag;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->L:Lcom/tapjoy/ag;

    move-object v4, v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/tapjoy/ag;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->w:Landroid/widget/TabHost;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TJCVirtualGoods;->F:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/tapjoy/h;->a(Ljava/util/ArrayList;)V

    return-void

    :cond_3
    move/from16 v20, v4

    goto/16 :goto_0

    nop

    :array_0
    .array-data 0x4
        0x64t 0xfft 0xfet 0xfet
        0x5ft 0xfft 0xfet 0xfet
    .end array-data

    :array_1
    .array-data 0x4
        0x64t 0xfft 0xfet 0xfet
        0xa1t 0x0t 0x1t 0x1t
    .end array-data

    :array_2
    .array-data 0x4
        0x64t 0xfft 0xfet 0xfet
        0x5ft 0xfft 0xfet 0xfet
    .end array-data

    :array_3
    .array-data 0x4
        0x64t 0xfft 0xfet 0xfet
        0xa1t 0x0t 0x1t 0x1t
    .end array-data

    :array_4
    .array-data 0x4
        0x64t 0xfft 0xfet 0xfet
        0x5ft 0xfft 0xfet 0xfet
    .end array-data

    :array_5
    .array-data 0x4
        0x64t 0xfft 0xfet 0xfet
        0xa1t 0x0t 0x1t 0x1t
    .end array-data

    :array_6
    .array-data 0x4
        0x64t 0xfft 0xfet 0xfet
        0x5ft 0xfft 0xfet 0xfet
    .end array-data

    :array_7
    .array-data 0x4
        0x64t 0xfft 0xfet 0xfet
        0xa1t 0x0t 0x1t 0x1t
    .end array-data

    :array_8
    .array-data 0x4
        0x64t 0xfft 0xfet 0xfet
        0x5ft 0xfft 0xfet 0xfet
    .end array-data

    :array_9
    .array-data 0x4
        0x64t 0xfft 0xfet 0xfet
        0xa1t 0x0t 0x1t 0x1t
    .end array-data

    :array_a
    .array-data 0x4
        0x64t 0xfft 0xfet 0xfet
        0x5ft 0xfft 0xfet 0xfet
    .end array-data

    :array_b
    .array-data 0x4
        0x64t 0xfft 0xfet 0xfet
        0xa1t 0x0t 0x1t 0x1t
    .end array-data

    :array_c
    .array-data 0x4
        0x64t 0xfft 0xfet 0xfet
        0x5ft 0xfft 0xfet 0xfet
    .end array-data

    :array_d
    .array-data 0x4
        0x64t 0xfft 0xfet 0xfet
        0xa1t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "ExtendedFocusListener"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    iget-boolean v0, p0, Lcom/tapjoy/TJCVirtualGoods;->z:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->w:Landroid/widget/TabHost;

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->setVisibility(I)V

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->M:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->an:Z

    if-eqz v0, :cond_0

    sput-boolean v4, Lcom/tapjoy/TJCVirtualGoods;->an:Z

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->w:Landroid/widget/TabHost;

    invoke-virtual {v0, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_0
    iput-boolean v4, p0, Lcom/tapjoy/TJCVirtualGoods;->z:Z

    sput-boolean v4, Lcom/tapjoy/TJCVirtualGoods;->l:Z

    :goto_0
    move v0, v5

    :goto_1
    return v0

    :cond_1
    sput-boolean v4, Lcom/tapjoy/TJCVirtualGoods;->d:Z

    move v1, v4

    :goto_2
    sget-object v0, Lcom/tapjoy/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    sget-object v0, Lcom/tapjoy/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/tapjoy/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sput v4, Lcom/tapjoy/cc;->a:I

    sput v4, Lcom/tapjoy/cc;->b:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->A:Ljava/lang/Boolean;

    sput-boolean v4, Lcom/tapjoy/TJCVirtualGoods;->an:Z

    iput v4, p0, Lcom/tapjoy/TJCVirtualGoods;->B:I

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->K:Lcom/tapjoy/ah;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->K:Lcom/tapjoy/ah;

    invoke-virtual {v0}, Lcom/tapjoy/ah;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->K:Lcom/tapjoy/ah;

    invoke-virtual {v0, v5}, Lcom/tapjoy/ah;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->L:Lcom/tapjoy/ag;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->L:Lcom/tapjoy/ag;

    invoke-virtual {v0}, Lcom/tapjoy/ag;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->L:Lcom/tapjoy/ag;

    invoke-virtual {v0, v5}, Lcom/tapjoy/ag;->cancel(Z)Z

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/TJCVirtualGoods;->r:Lcom/tapjoy/h;

    invoke-virtual {v0}, Lcom/tapjoy/h;->b()V

    invoke-virtual {p0}, Lcom/tapjoy/TJCVirtualGoods;->finish()V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/tapjoy/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/n;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/tapjoy/n;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_5

    invoke-virtual {v0, v5}, Lcom/tapjoy/n;->cancel(Z)Z

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->t:Lcom/tapjoy/aj;

    if-eqz v0, :cond_0

    const-string v0, "ExtendedFocusListener"

    const-string v1, "On Pause"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->d:Z

    return-void

    :cond_1
    const-string v0, "ExtendedFocusListener"

    const-string v1, "On Pause Not called"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->d:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->f:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->g:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/tapjoy/TJCVirtualGoods;->t:Lcom/tapjoy/aj;

    if-eqz v0, :cond_0

    const-string v0, "ExtendedFocusListener"

    const-string v1, "On Resume"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->d:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TJCVirtualGoods;->f:Z

    return-void

    :cond_1
    const-string v0, "ExtendedFocusListener"

    const-string v1, "On Resume Not Called"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "Virtual Goods"

    const-string v1, "*** onSaveInstanceState ***"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bundle_url_params"

    sget-object v1, Lcom/tapjoy/TJCVirtualGoods;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
