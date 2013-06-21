.class public final Lcom/paypal/android/MEP/b/a;
.super Lcom/paypal/android/c/j;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/paypal/android/b/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/paypal/android/MEP/b/a$1;,
        Lcom/paypal/android/MEP/b/a$a;,
        Lcom/paypal/android/MEP/b/a$b;
    }
.end annotation


# static fields
.field private static s:Z


# instance fields
.field e:Ljava/lang/String;

.field f:Z

.field g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Hashtable;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/paypal/android/MEP/b/a;

.field private i:Landroid/graphics/drawable/GradientDrawable;

.field private j:Landroid/graphics/drawable/GradientDrawable;

.field private k:Lcom/paypal/android/MEP/b/a$a;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Lcom/paypal/android/c/e;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/paypal/android/MEP/a/a;

.field private q:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:I

.field private u:Z

.field private v:Lcom/paypal/android/MEP/b/a$b;

.field private w:Landroid/view/View$OnClickListener;

.field private x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/paypal/android/MEP/b/a;->s:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/paypal/android/MEP/b/a$a;Lcom/paypal/android/MEP/a/a;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x2

    const/4 v2, 0x0

    const/4 v5, -0x1

    invoke-direct {p0, p1}, Lcom/paypal/android/c/j;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->h:Lcom/paypal/android/MEP/b/a;

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->m:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->n:Lcom/paypal/android/c/e;

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->o:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->p:Lcom/paypal/android/MEP/a/a;

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->q:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->r:Ljava/util/Vector;

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->e:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/paypal/android/MEP/b/a;->f:Z

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    iput v7, p0, Lcom/paypal/android/MEP/b/a;->t:I

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->v:Lcom/paypal/android/MEP/b/a$b;

    new-instance v0, Lcom/paypal/android/MEP/b/c;

    invoke-direct {v0, p0}, Lcom/paypal/android/MEP/b/c;-><init>(Lcom/paypal/android/MEP/b/a;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->w:Landroid/view/View$OnClickListener;

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->x:Ljava/lang/String;

    invoke-virtual {p0, p0}, Lcom/paypal/android/MEP/b/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p3, p0, Lcom/paypal/android/MEP/b/a;->p:Lcom/paypal/android/MEP/a/a;

    iput-object p0, p0, Lcom/paypal/android/MEP/b/a;->h:Lcom/paypal/android/MEP/b/a;

    iput-object p2, p0, Lcom/paypal/android/MEP/b/a;->k:Lcom/paypal/android/MEP/b/a$a;

    const v0, -0xff0001

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v7}, Lcom/paypal/android/MEP/b/a;->a(Landroid/widget/LinearLayout$LayoutParams;I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v8}, Lcom/paypal/android/MEP/b/a;->a(Landroid/widget/LinearLayout$LayoutParams;I)V

    const v0, -0x170e06

    const v1, -0x302111

    invoke-static {v5, v0, v1}, Lcom/paypal/android/a/c;->a(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->i:Landroid/graphics/drawable/GradientDrawable;

    const v0, -0x422d16

    const v1, -0x302111

    invoke-static {v5, v0, v1}, Lcom/paypal/android/a/c;->a(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->j:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setGravity(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    const/4 v1, 0x2

    const v2, -0x99999a

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->c(Landroid/graphics/drawable/Drawable;)V

    const v0, 0xa3b8

    const/16 v1, 0x1d0

    invoke-static {v0, v1}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->a(Landroid/graphics/drawable/Drawable;)V

    const v0, 0xd6ab

    const/16 v1, 0x1ae

    invoke-static {v0, v1}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->b(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1, v5, v6}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->a(Landroid/view/View;)V

    invoke-static {p1, v5, v6}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget-object v2, Lcom/paypal/android/a/i$a;->a:Lcom/paypal/android/a/i$a;

    invoke-static {v2, p1}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/MEP/b/a;->k:Lcom/paypal/android/MEP/b/a$a;

    sget-object v4, Lcom/paypal/android/MEP/b/a$a;->a:Lcom/paypal/android/MEP/b/a$a;

    if-ne v3, v4, :cond_0

    const-string v3, "ANDROID_FundingLabel"

    invoke-static {v3}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/a;->c:Lcom/paypal/android/c/c;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v5, v6}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/MEP/b/a;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->m:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v1}, Lcom/paypal/android/MEP/b/a;->a(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v5, v6}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/MEP/b/a;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->l:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {p1, v5, v6}, Lcom/paypal/android/a/c;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget-object v2, Lcom/paypal/android/a/i$a;->c:Lcom/paypal/android/a/i$a;

    invoke-static {v2, p1}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/a;->o:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/a;->o:Landroid/widget/TextView;

    const v3, -0xcc9967

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/a;->o:Landroid/widget/TextView;

    const-string v3, "ANDROID_getting_information"

    invoke-static {v3}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/a;->o:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/a;->o:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/a;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/paypal/android/c/e;

    invoke-direct {v2, p1}, Lcom/paypal/android/c/e;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->n:Lcom/paypal/android/c/e;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/a;->n:Lcom/paypal/android/c/e;

    invoke-virtual {v2, v8}, Lcom/paypal/android/c/e;->setGravity(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/a;->l:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/paypal/android/MEP/b/a;->n:Lcom/paypal/android/c/e;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/b/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->l:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sput-boolean v7, Lcom/paypal/android/MEP/b/a;->s:Z

    return-void

    :cond_0
    iget-object v3, p0, Lcom/paypal/android/MEP/b/a;->k:Lcom/paypal/android/MEP/b/a$a;

    sget-object v4, Lcom/paypal/android/MEP/b/a$a;->b:Lcom/paypal/android/MEP/b/a$a;

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_Fee"

    invoke-static {v4}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->get_paymentType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_Mailing_address"

    invoke-static {v4}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_ship_to"

    invoke-static {v4}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    nop

    :array_0
    .array-data 0x4
        0x66t 0x66t 0x66t 0xfft
        0xcat 0xcat 0xcat 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;I)Lcom/paypal/android/c/a;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x2

    new-instance v0, Lcom/paypal/android/c/a;

    invoke-direct {v0, p1}, Lcom/paypal/android/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/paypal/android/c/a;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f00

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/a;->setGravity(I)V

    const/4 v1, 0x0

    const v2, 0x10e2f

    const/16 v3, 0x3a1

    invoke-static {v2, v3}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    const v1, 0x199c5

    const/16 v2, 0x359

    invoke-static {v1, v2}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/paypal/android/c/a;->setDrawableForState(ILandroid/graphics/drawable/Drawable;)V

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/a;->setTextColor(I)V

    invoke-virtual {v0, v4}, Lcom/paypal/android/c/a;->setFocusable(Z)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->k:Lcom/paypal/android/MEP/b/a$a;

    sget-object v2, Lcom/paypal/android/MEP/b/a$a;->a:Lcom/paypal/android/MEP/b/a$a;

    if-ne v1, v2, :cond_1

    const/high16 v1, 0x7f00

    or-int/2addr v1, p3

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/a;->setId(I)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->k:Lcom/paypal/android/MEP/b/a$a;

    sget-object v2, Lcom/paypal/android/MEP/b/a$a;->b:Lcom/paypal/android/MEP/b/a$a;

    if-ne v1, v2, :cond_2

    const/high16 v1, 0x7e00

    or-int/2addr v1, p3

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/a;->setId(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->k:Lcom/paypal/android/MEP/b/a$a;

    sget-object v2, Lcom/paypal/android/MEP/b/a$a;->c:Lcom/paypal/android/MEP/b/a$a;

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x7d00

    or-int/2addr v1, p3

    invoke-virtual {v0, v1}, Lcom/paypal/android/c/a;->setId(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/paypal/android/MEP/b/a;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->r:Ljava/util/Vector;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 11

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_server()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    move-object v5, v0

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->k:Lcom/paypal/android/MEP/b/a$a;

    sget-object v1, Lcom/paypal/android/MEP/b/a$a;->a:Lcom/paypal/android/MEP/b/a$a;

    if-ne v0, v1, :cond_a

    const-string v0, "FundsUsedVector"

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x0

    move v6, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v6, v1, :cond_8

    invoke-virtual {v0, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    new-instance v7, Lcom/paypal/android/c/d;

    sget-object v2, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    sget-object v3, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    invoke-direct {v7, p1, v2, v3}, Lcom/paypal/android/c/d;-><init>(Landroid/content/Context;Lcom/paypal/android/a/i$a;Lcom/paypal/android/a/i$a;)V

    const-string v2, "Type"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Amount"

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->get_server()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const-string v3, "PricingDetails"

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    const-string v4, "Fee"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v9, "FeeBearer"

    invoke-virtual {v3, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_4

    :cond_0
    const/4 v9, 0x1

    :goto_2
    const-string v10, "ApplyFeeToSender"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v9, :cond_1

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v8, v3

    :cond_1
    const-string v3, "currencyID"

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Last4"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v9, "balance"

    invoke-virtual {v2, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_balance"

    invoke-static {v4}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "CurrencyCode"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/b/a;->a(Z)V

    :cond_2
    :goto_3
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1, v3}, Lcom/paypal/android/a/e;->a(FLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/paypal/android/c/d;->b(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    invoke-virtual {v0}, Lcom/paypal/android/a/a;->d()Ljava/util/Hashtable;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_5
    const-string v1, "bank"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANDROID_bank"

    invoke-static {v2}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v1, "card"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANDROID_card"

    invoke-static {v2}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    const-string v0, "CurrencyConversionVector"

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    const-string v0, "CurrencyFrom"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ExchangeRate"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v1, 0x49742400

    div-float/2addr v0, v1

    new-instance v1, Lcom/paypal/android/c/d;

    sget-object v2, Lcom/paypal/android/a/i$a;->c:Lcom/paypal/android/a/i$a;

    sget-object v3, Lcom/paypal/android/a/i$a;->c:Lcom/paypal/android/a/i$a;

    invoke-direct {v1, p1, v2, v3}, Lcom/paypal/android/c/d;-><init>(Landroid/content/Context;Lcom/paypal/android/a/i$a;Lcom/paypal/android/a/i$a;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CurrencyFrom"

    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "CurrencyTo"

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/paypal/android/c/d;->b(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_9
    :goto_4
    return-void

    :cond_a
    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->k:Lcom/paypal/android/MEP/b/a$a;

    sget-object v1, Lcom/paypal/android/MEP/b/a$a;->b:Lcom/paypal/android/MEP/b/a$a;

    if-ne v0, v1, :cond_d

    const-string v0, "PricingDetails"

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    const-string v1, "Fee"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "FeecurrencyID"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "FeeBearer"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    new-instance v3, Lcom/paypal/android/c/d;

    sget-object v4, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    sget-object v5, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    invoke-direct {v3, p1, v4, v5}, Lcom/paypal/android/c/d;-><init>(Landroid/content/Context;Lcom/paypal/android/a/i$a;Lcom/paypal/android/a/i$a;)V

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_c

    const-string v4, "ApplyFeeToReceiver"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "ANDROID_recipient_pays"

    invoke-static {v0}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    :goto_5
    invoke-static {v1, v2}, Lcom/paypal/android/a/e;->a(FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/paypal/android/c/d;->b(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->a(Z)V

    goto :goto_4

    :cond_b
    const-string v0, "ANDROID_I_pay"

    invoke-static {v0}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    const-string v0, "ANDROID_Free"

    invoke-static {v0}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->k:Lcom/paypal/android/MEP/b/a$a;

    sget-object v1, Lcom/paypal/android/MEP/b/a$a;->c:Lcom/paypal/android/MEP/b/a$a;

    if-ne v0, v1, :cond_9

    const-string v0, "AddressArray"

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    const-string v0, "Name"

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Street1"

    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Street2"

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "CityName"

    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "StateOrProvince"

    invoke-virtual {p0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "PostalCode"

    invoke-virtual {p0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v5, Lcom/paypal/android/c/d;

    sget-object v6, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    sget-object v7, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    invoke-direct {v5, p1, v6, v7}, Lcom/paypal/android/c/d;-><init>(Landroid/content/Context;Lcom/paypal/android/a/i$a;Lcom/paypal/android/a/i$a;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_12

    :cond_11
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    :cond_12
    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_15

    :cond_14
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    :cond_15
    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_16
    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_17

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/paypal/android/c/d;->a(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4
.end method

.method static synthetic b(Lcom/paypal/android/MEP/b/a;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->q:Ljava/util/Vector;

    return-object v0
.end method

.method private b(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->n:Lcom/paypal/android/c/e;

    invoke-virtual {v0}, Lcom/paypal/android/c/e;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->n:Lcom/paypal/android/c/e;

    invoke-virtual {v0}, Lcom/paypal/android/c/e;->b()V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/paypal/android/MEP/b/a;)Lcom/paypal/android/MEP/b/a;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->h:Lcom/paypal/android/MEP/b/a;

    return-object v0
.end method

.method private static f()I
    .locals 2

    const v0, 0x10e2f

    const/16 v1, 0x3a1

    invoke-static {v0, v1}, Lcom/paypal/android/a/b;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-boolean v0, Lcom/paypal/android/MEP/b/a;->s:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/paypal/android/MEP/b/a;->t:I

    if-ne p1, v4, :cond_5

    sget-object v0, Lcom/paypal/android/MEP/b/a$1;->a:[I

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->k:Lcom/paypal/android/MEP/b/a$a;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sput-boolean v4, Lcom/paypal/android/MEP/b/a;->s:Z

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->o:Landroid/widget/TextView;

    const-string v1, "ANDROID_getting_information"

    invoke-static {v1}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v4}, Lcom/paypal/android/MEP/b/a;->b(Z)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_server()I

    move-result v0

    if-ne v0, v6, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, v2}, Lcom/paypal/android/MEP/b/a;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/paypal/android/b/a;->a()Lcom/paypal/android/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/paypal/android/b/a;->b(Lcom/paypal/android/b/a$b;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->e()V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    invoke-virtual {v0}, Lcom/paypal/android/a/a;->d()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "PricingDetails"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    const-string v1, "FeeBearer"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_choose_who_pays_the_fee"

    invoke-static {v3}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/b/a;->c(Landroid/view/View;)V

    const-string v1, "ApplyFeeToReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ANDROID_I_pay"

    invoke-static {v1}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v5}, Lcom/paypal/android/MEP/b/a;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/paypal/android/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/c/a;->getId()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->c(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/paypal/android/c/a;->setNextFocusUpId(I)V

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setNextFocusDownId(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->v:Lcom/paypal/android/MEP/b/a$b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->v:Lcom/paypal/android/MEP/b/a$b;

    invoke-interface {v1, p0, v0}, Lcom/paypal/android/MEP/b/a$b;->a(Lcom/paypal/android/MEP/b/a;I)V

    :cond_2
    invoke-super {p0, p1}, Lcom/paypal/android/c/j;->a(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ANDROID_recipient_pays"

    invoke-static {v1}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcom/paypal/android/MEP/b/a;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/paypal/android/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/c/a;->getId()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->c(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/paypal/android/c/a;->setNextFocusUpId(I)V

    move v0, v1

    goto :goto_1

    :pswitch_2
    sput-boolean v4, Lcom/paypal/android/MEP/b/a;->s:Z

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->o:Landroid/widget/TextView;

    const-string v1, "ANDROID_getting_information"

    invoke-static {v1}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v4}, Lcom/paypal/android/MEP/b/a;->b(Z)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_server()I

    move-result v0

    if-ne v0, v6, :cond_4

    const/4 v0, 0x7

    invoke-virtual {p0, v0, v2}, Lcom/paypal/android/MEP/b/a;->a(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/paypal/android/b/a;->a()Lcom/paypal/android/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/paypal/android/b/a;->c(Lcom/paypal/android/b/a$b;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->e()V

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    invoke-super {p0, p1}, Lcom/paypal/android/c/j;->a(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 12

    const/4 v2, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, ""

    const-string v0, "Last4"

    sput-boolean v9, Lcom/paypal/android/MEP/b/a;->s:Z

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_server()I

    move-result v0

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    invoke-virtual {v0}, Lcom/paypal/android/a/a;->d()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->k:Lcom/paypal/android/MEP/b/a$a;

    sget-object v1, Lcom/paypal/android/MEP/b/a$a;->c:Lcom/paypal/android/MEP/b/a$a;

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->dynamicAmountCalculationEnabled()Z

    move-result v0

    if-ne v0, v10, :cond_4

    iget-boolean v0, p0, Lcom/paypal/android/MEP/b/a;->u:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_server()I

    move-result v0

    if-eq v0, v2, :cond_4

    new-instance v1, Lcom/paypal/android/MEP/MEPAddress;

    invoke-direct {v1}, Lcom/paypal/android/MEP/MEPAddress;-><init>()V

    check-cast p2, Ljava/util/Hashtable;

    const-string v0, "AddressArray"

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    const-string v2, "Street1"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Street2"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "CityName"

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "StateOrProvince"

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "PostalCode"

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "Country"

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "CountryName"

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/MEPAddress;->setStreet1(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/paypal/android/MEP/MEPAddress;->setStreet2(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/paypal/android/MEP/MEPAddress;->setCity(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/paypal/android/MEP/MEPAddress;->setState(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/paypal/android/MEP/MEPAddress;->setPostalcode(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/paypal/android/MEP/MEPAddress;->setCountry(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/paypal/android/MEP/MEPAddress;->setCountrycode(Ljava/lang/String;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalPayment;

    move-result-object v5

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getDelegate()Lcom/paypal/android/MEP/PayPalPaymentDelegate;

    move-result-object v0

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPalPayment;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPalPayment;->getAmount()F

    move-result v3

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPalPayment;->getTax()F

    move-result v4

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPalPayment;->getShipping()F

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/paypal/android/MEP/PayPalPaymentDelegate;->AdjustAmounts(Lcom/paypal/android/MEP/MEPAddress;Ljava/lang/String;FFF)Lcom/paypal/android/MEP/MEPAmounts;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalPayment;

    move-result-object v1

    invoke-virtual {v0}, Lcom/paypal/android/MEP/MEPAmounts;->getPaymentAmount()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setAmount(F)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/MEPAmounts;->getTax()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setTax(F)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/MEPAmounts;->getShipping()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/MEP/PayPalPayment;->setShipping(F)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/MEPAmounts;->getCurrency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/paypal/android/MEP/PayPalPayment;->setCurrency(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getAmount()F

    move-result v0

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getTax()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getShipping()F

    move-result v2

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getRecipient()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v2, v10

    :goto_1
    const-string v3, ""

    if-nez v2, :cond_e

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getRecipient()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/paypal/android/a/e;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    sget-object v4, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v5, "RecipientType"

    if-eqz v2, :cond_2

    const-string v2, "Email"

    :goto_3
    invoke-virtual {v4, v5, v2}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v4, "PaymentCurrencyID"

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v4, "PaymentAmount"

    invoke-virtual {v2, v4, v0}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v2, "Note"

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getItemDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v2, "RecipientAddress"

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalPayment;->getRecipient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v1, "RecipientCountryCode"

    invoke-virtual {v0, v1, v3}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v1, "ShareHomeAddress"

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->get_shippingEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "1"

    :goto_4
    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v1, "delegate"

    invoke-virtual {v0, v1, p0}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/a;->a(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/paypal/android/MEP/b/a;->u:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_1
    move v2, v9

    goto :goto_1

    :cond_2
    const-string v2, "Phone"

    goto :goto_3

    :cond_3
    const-string v2, "0"

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/a;->a(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/paypal/android/MEP/b/a;->f:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/MEP/b/a;->f:Z

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_server()I

    move-result v0

    if-eq v0, v2, :cond_a

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    check-cast p2, Ljava/util/Hashtable;

    const-string v0, "IVRPrimaryFundingSources"

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    move v3, v9

    :goto_5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v3, v1, :cond_8

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    const-string v2, "Type"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANDROID_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "balance"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v2, "CurrencyCode"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6
    const-string v4, "label"

    invoke-virtual {v1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    :cond_6
    const-string v5, "bank"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v2, "Last4"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_7
    const-string v5, "card"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v2, "Last4"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_8
    const-string v0, "IVRBackupFundingSources"

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    const-string v1, "InternalID"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->e:Ljava/lang/String;

    :cond_9
    :goto_7
    invoke-static {}, Lcom/paypal/android/MEP/a/e;->b()V

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    new-instance v1, Ljava/util/Hashtable;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    const-string v2, "CurrencyCode"

    const-string v3, "USD"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Type"

    const-string v3, "bank"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Last4"

    const-string v3, "6414"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "BackupRequired"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Subtype"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "InternalID"

    const-string v3, "120001"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Method"

    const-string v3, "iach"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "label"

    const-string v3, "Bank x6414"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    goto :goto_7

    :pswitch_4
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_server()I

    move-result v0

    if-eq v0, v2, :cond_b

    check-cast p2, Ljava/util/Hashtable;

    const-string v0, "IVRAddresses"

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    move v0, v9

    :goto_8
    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    const-string v2, "AddressStatus"

    const-string v3, "Confirmed"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "StateOrProvince"

    const-string v3, "AE"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AddressID"

    const-string v3, "271107"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CityName"

    const-string v3, "APO"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Street2"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Street1"

    const-string v3, "8895114 Elizabeth Court"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CountryName"

    const-string v3, "United States"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Country"

    const-string v3, "US"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PostalCode"

    const-string v3, "09815"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    :cond_c
    invoke-static {}, Lcom/paypal/android/MEP/a/e;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_d
    move-object v2, v4

    goto/16 :goto_6

    :cond_e
    move-object v3, v11

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lcom/paypal/android/MEP/b/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/b/a;->v:Lcom/paypal/android/MEP/b/a$b;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/paypal/android/MEP/b/a;->x:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/paypal/android/MEP/b/a;->s:Z

    invoke-static {}, Lcom/paypal/android/MEP/a/e;->b()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final b()Lcom/paypal/android/MEP/b/a$a;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->k:Lcom/paypal/android/MEP/b/a$a;

    return-object v0
.end method

.method public final c()V
    .locals 19

    const/16 v17, 0x1

    const/16 v16, -0x2

    const/4 v9, 0x0

    const-string v10, ":"

    const-string v18, " "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->x:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->p:Lcom/paypal/android/MEP/a/a;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->x:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/paypal/android/MEP/a/a;->a(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/paypal/android/MEP/b/a;->x:Ljava/lang/String;

    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lcom/paypal/android/MEP/b/a;->b(Z)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/paypal/android/MEP/b/a;->f:Z

    move v4, v0

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->k:Lcom/paypal/android/MEP/b/a$a;

    move-object v4, v0

    sget-object v5, Lcom/paypal/android/MEP/b/a$a;->a:Lcom/paypal/android/MEP/b/a$a;

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->k:Lcom/paypal/android/MEP/b/a$a;

    move-object v4, v0

    sget-object v4, Lcom/paypal/android/MEP/b/a$a;->b:Lcom/paypal/android/MEP/b/a$a;

    :cond_1
    const-string v4, "ANDROID_updating_information"

    invoke-static {v4}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->o:Landroid/widget/TextView;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/paypal/android/MEP/b/a;->b(Z)V

    :cond_2
    :goto_0
    :pswitch_0
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    move-object v4, v0

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lcom/paypal/android/MEP/b/a;->b(Z)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-super {v0, v1}, Lcom/paypal/android/c/j;->a(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/MEP/b/a;->e()V

    sget-object v4, Lcom/paypal/android/MEP/b/a$1;->a:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->k:Lcom/paypal/android/MEP/b/a$a;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/paypal/android/MEP/b/a$a;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->get_server()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    sget-object v4, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    const-string v5, "FundsUsedVector"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    move-object v5, v4

    :goto_1
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    move v7, v9

    :goto_2
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v7, v4, :cond_5

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    const-string v8, "InternalID"

    invoke-virtual {v4, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    invoke-virtual {v4}, Lcom/paypal/android/a/a;->d()Ljava/util/Hashtable;

    move-result-object v4

    const-string v5, "FundsUsedVector"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    move-object v5, v4

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/MEP/b/a;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object v0, v4

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANDROID_change_funding"

    invoke-static {v5}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_6

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/b/a;->c(Landroid/view/View;)V

    :cond_6
    move v8, v9

    move v10, v9

    move v11, v9

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v8, v4, :cond_8

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    const-string v5, "InternalID"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/MEP/b/a;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v5, "label"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v5

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/paypal/android/MEP/b/a;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/paypal/android/c/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/paypal/android/c/a;->getId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->r:Ljava/util/Vector;

    move-object v13, v0

    const-string v14, "InternalID"

    invoke-virtual {v4, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/b/a;->c(Landroid/view/View;)V

    if-nez v9, :cond_14

    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/b/a;->setNextFocusDownId(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v4, v17

    :goto_4
    add-int/lit8 v5, v11, 0x1

    move v9, v5

    move v5, v12

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move v10, v5

    move v11, v9

    move v9, v4

    goto :goto_3

    :catch_0
    move-exception v4

    :cond_7
    move v4, v9

    move v5, v10

    move v9, v11

    goto :goto_5

    :cond_8
    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->v:Lcom/paypal/android/MEP/b/a$b;

    move-object v4, v0

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->v:Lcom/paypal/android/MEP/b/a$b;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v10

    invoke-interface {v0, v1, v2}, Lcom/paypal/android/MEP/b/a$b;->a(Lcom/paypal/android/MEP/b/a;I)V

    :cond_9
    if-nez v11, :cond_2

    const-string v4, " "

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/paypal/android/MEP/b/a;->f()I

    move-result v5

    move-object v0, v4

    move v1, v5

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/paypal/android/MEP/PayPal;->get_server()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    sget-object v4, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    const-string v5, "AddressArray"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    :goto_6
    invoke-virtual {v4, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    const-string v5, "AddressID"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/paypal/android/a/i$a;->b:Lcom/paypal/android/a/i$a;

    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/MEP/b/a;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/paypal/android/a/i;->a(Lcom/paypal/android/a/i$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v11

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->get_paymentType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANDROID_change_mailing_address_to"

    invoke-static {v6}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    const/4 v5, -0x1

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_a

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/b/a;->c(Landroid/view/View;)V

    :cond_a
    move v12, v9

    move v13, v9

    move v14, v9

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v12, v5, :cond_11

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Hashtable;

    move-object v8, v0

    const-string v5, "Street1"

    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    const-string v5, "Street2"

    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    const-string v5, "CityName"

    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "StateOrProvince"

    invoke-virtual {v8, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "PostalCode"

    invoke-virtual {v8, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_e

    const-string v9, "\n"

    :goto_9
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_f

    const-string v10, "\n"

    :goto_a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_b

    const-string v6, "AddressID"

    invoke-virtual {v8, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/MEP/b/a;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v5

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/paypal/android/MEP/b/a;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/paypal/android/c/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/paypal/android/c/a;->getId()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->q:Ljava/util/Vector;

    move-object v9, v0

    const-string v5, "AddressID"

    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/b/a;->c(Landroid/view/View;)V

    if-nez v13, :cond_13

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/b/a;->setNextFocusDownId(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v5, v17

    :goto_b
    add-int/lit8 v6, v14, 0x1

    :goto_c
    add-int/lit8 v7, v12, 0x1

    move v12, v7

    move v13, v5

    move v14, v6

    goto/16 :goto_8

    :cond_c
    sget-object v4, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    invoke-virtual {v4}, Lcom/paypal/android/a/a;->d()Ljava/util/Hashtable;

    move-result-object v4

    const-string v5, "AddressArray"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    goto/16 :goto_6

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANDROID_change_shipping_to"

    invoke-static {v6}, Lcom/paypal/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_e
    :try_start_2
    const-string v9, ""

    goto/16 :goto_9

    :cond_f
    const-string v10, ""
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_a

    :catch_1
    move-exception v5

    :cond_10
    move v5, v13

    move v6, v14

    goto :goto_c

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_12

    new-instance v4, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/paypal/android/MEP/b/a;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumWidth(I)V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumHeight(I)V

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/b/a;->c(Landroid/view/View;)V

    :cond_12
    if-nez v14, :cond_2

    const-string v4, " "

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/paypal/android/MEP/b/a;->f()I

    move-result v5

    move-object v0, v4

    move v1, v5

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_13
    move v5, v13

    goto/16 :goto_b

    :cond_14
    move v4, v9

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 5

    const/4 v3, 0x6

    const/4 v2, 0x0

    const-string v4, "delegate"

    sget-object v0, Lcom/paypal/android/MEP/b/a$1;->a:[I

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->k:Lcom/paypal/android/MEP/b/a$a;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v1, "delegate"

    invoke-virtual {v0, v4, p0}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/paypal/android/MEP/b/a;->f:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/paypal/android/MEP/b/a;->f:Z

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    invoke-virtual {v0, v3}, Lcom/paypal/android/a/a;->a(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/a;->a(I)V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/paypal/android/MEP/b/a;->f:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/paypal/android/MEP/b/a;->f:Z

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v1, "delegate"

    invoke-virtual {v0, v4, p0}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    invoke-virtual {v0, v3}, Lcom/paypal/android/a/a;->a(I)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v1, "delegate"

    invoke-virtual {v0, v4, p0}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/paypal/android/MEP/b/a;->f:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/paypal/android/MEP/b/a;->f:Z

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    invoke-virtual {v0, v3}, Lcom/paypal/android/a/a;->a(I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/a;->a(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    sget-boolean v0, Lcom/paypal/android/MEP/b/a;->s:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/paypal/android/MEP/b/a;->t:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->p:Lcom/paypal/android/MEP/a/a;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/a/a;->c()V

    :cond_1
    invoke-super {p0, p1}, Lcom/paypal/android/c/j;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/paypal/android/MEP/b/a;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->j:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
