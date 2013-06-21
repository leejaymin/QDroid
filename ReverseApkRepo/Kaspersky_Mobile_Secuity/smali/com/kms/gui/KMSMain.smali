.class public Lcom/kms/gui/KMSMain;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static e:Landroid/widget/Button;

.field private static f:Landroid/widget/Button;

.field private static g:Landroid/widget/Button;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private final b:[[I

.field private c:Z

.field private d:LaV;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 73
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/kms/gui/KMSMain;->b:[[I

    .line 870
    return-void

    .line 81
    :array_0
    .array-data 0x4
        0xaat 0x0t 0xbt 0x7ft
        0xa6t 0x0t 0xbt 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0xbt 0x7ft
        0xa3t 0x0t 0xbt 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xa9t 0x0t 0xbt 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xb7t 0x0t 0xbt 0x7ft
        0xb3t 0x0t 0xbt 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xaft 0x0t 0xbt 0x7ft
        0xb0t 0x0t 0xbt 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0xbt 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0xc5t 0x0t 0xbt 0x7ft
        0xc1t 0x0t 0xbt 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xbdt 0x0t 0xbt 0x7ft
        0xbet 0x0t 0xbt 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xc4t 0x0t 0xbt 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xd6t 0x0t 0xbt 0x7ft
        0xd2t 0x0t 0xbt 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xcet 0x0t 0xbt 0x7ft
        0xcft 0x0t 0xbt 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0xbt 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0xe6t 0x0t 0xbt 0x7ft
        0xe2t 0x0t 0xbt 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xdet 0x0t 0xbt 0x7ft
        0xdft 0x0t 0xbt 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0xe5t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public static synthetic a(Lcom/kms/gui/KMSMain;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/kms/gui/KMSMain;->f()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v0, v0, p1

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 121
    invoke-virtual {p0}, Lcom/kms/gui/KMSMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 123
    invoke-virtual {v0}, Landroid/view/ViewGroup;->startLayoutAnimation()V

    .line 124
    invoke-virtual {v1}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Ldw;

    invoke-direct {v2, p0, v0}, Ldw;-><init>(Lcom/kms/gui/KMSMain;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 147
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v0, v0, p1

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 148
    return-void
.end method

.method private a(IZ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x5

    .line 152
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v1, v1, p1

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 158
    const/high16 v5, 0x4110

    invoke-virtual {p0}, Lcom/kms/gui/KMSMain;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v7, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    .line 159
    if-eqz p2, :cond_1

    iget-object v6, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v6, v6, p1

    aget v6, v6, v8

    if-nez v6, :cond_1

    .line 161
    iget-object v6, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v6, v6, p1

    aput v7, v6, v8

    .line 162
    add-int/2addr v1, v5

    add-int/2addr v2, v5

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    if-nez p2, :cond_0

    iget-object v6, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v6, v6, p1

    aget v6, v6, v8

    if-ne v6, v7, :cond_0

    .line 166
    iget-object v6, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v6, v6, p1

    const/4 v7, 0x0

    aput v7, v6, v8

    .line 167
    sub-int/2addr v1, v5

    sub-int/2addr v2, v5

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/kms/gui/KMSMain;->c:Z

    if-nez v0, :cond_0

    .line 835
    :goto_0
    return-void

    .line 794
    :cond_0
    const v0, 0x7f0b00a3

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 817
    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 819
    const v0, 0x7f0b00b0

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 820
    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 822
    const v0, 0x7f0b00be

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 823
    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 825
    const v0, 0x7f0b00cf

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 826
    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 828
    const v0, 0x7f0b00ef

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 829
    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 831
    const v0, 0x7f0b00df

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 832
    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 833
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/gui/KMSMain;->c:Z

    goto :goto_0
.end method

.method public static synthetic a(Lcom/kms/gui/KMSMain;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/kms/gui/KMSMain;->b(I)Z

    move-result v0

    return v0
.end method

.method private b(I)Z
    .locals 3
    .parameter

    .prologue
    .line 782
    invoke-static {p1}, Lgj;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 783
    :goto_0
    if-eqz v0, :cond_0

    .line 784
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kms/gui/LicenseExpiredInfoActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 785
    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSMain;->startActivity(Landroid/content/Intent;)V

    .line 787
    :cond_0
    return v0

    .line 782
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic d()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/kms/gui/KMSMain;->e:Landroid/widget/Button;

    return-object v0
.end method

.method private f()Landroid/widget/Button;
    .locals 11

    .prologue
    const v7, 0x7f0802d7

    const/16 v4, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 251
    const v0, 0x7f0b00eb

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 252
    const v1, 0x7f0b00ec

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 253
    const v2, 0x7f0b00ea

    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 254
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 255
    const v3, 0x7f0b00e9

    invoke-virtual {p0, v3}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 256
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    invoke-static {}, LfS;->a()LfS;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, LfS;->a(I)LfV;

    move-result-object v4

    check-cast v4, LfX;

    .line 261
    const v5, 0x7f0b00e3

    invoke-virtual {p0, v5}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 263
    invoke-virtual {v4}, LfX;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 264
    const v4, 0x7f0802d5

    invoke-virtual {p0, v4}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 265
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " <b>%s</b>"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    const v4, 0x7f0200ad

    invoke-virtual {v0, v9, v9, v4, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 270
    invoke-direct {p0}, Lcom/kms/gui/KMSMain;->h()Lan;

    move-result-object v4

    .line 271
    iget v5, v4, Lan;->d:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lan;->b:Ljava/lang/String;

    iget-object v6, v4, Lan;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 274
    :cond_0
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 275
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    const-string v2, " <b>%s</b>"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v4, v4, Lan;->b:Ljava/lang/String;

    aput-object v4, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-virtual {p0}, Lcom/kms/gui/KMSMain;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0802dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 295
    :goto_0
    return-object v0

    .line 282
    :cond_1
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 286
    :cond_2
    const v2, 0x7f0200ab

    invoke-virtual {v0, v9, v9, v2, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 288
    const v2, 0x7f0802d6

    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <b><font color=\"#ff8080\">%s</font></b>"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private g()V
    .locals 8

    .prologue
    const v7, 0x7f080011

    const/4 v6, 0x1

    const/4 v5, -0x1

    const v3, -0x4d4d4e

    const/4 v4, 0x0

    .line 300
    const v0, 0x7f0b00b4

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 301
    invoke-static {}, LfS;->a()LfS;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, LfS;->a(I)LfV;

    move-result-object v1

    check-cast v1, Lgf;

    .line 303
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kms/privacyprotection/PPItemsStorage;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lgf;->b:Z

    if-nez v2, :cond_0

    .line 305
    sget-object v1, Lcom/kms/gui/KMSMain;->e:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 306
    sget-object v1, Lcom/kms/gui/KMSMain;->e:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 307
    sget-object v1, Lcom/kms/gui/KMSMain;->g:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 308
    sget-object v1, Lcom/kms/gui/KMSMain;->g:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 309
    sget-object v1, Lcom/kms/gui/KMSMain;->e:Landroid/widget/Button;

    const v2, 0x7f0200ac

    invoke-virtual {v1, v4, v4, v2, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 310
    sget-object v1, Lcom/kms/gui/KMSMain;->g:Landroid/widget/Button;

    const v2, 0x7f020072

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 311
    invoke-virtual {p0, v7}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :goto_0
    return-void

    .line 316
    :cond_0
    sget-object v2, Lcom/kms/gui/KMSMain;->e:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 317
    sget-object v2, Lcom/kms/gui/KMSMain;->g:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 318
    sget-object v2, Lcom/kms/gui/KMSMain;->g:Landroid/widget/Button;

    const v3, 0x7f020071

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 319
    sget-object v2, Lcom/kms/gui/KMSMain;->e:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 320
    sget-object v2, Lcom/kms/gui/KMSMain;->g:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 324
    iget-boolean v1, v1, Lgf;->b:Z

    if-eqz v1, :cond_1

    .line 326
    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    sget-object v0, Lcom/kms/gui/KMSMain;->e:Landroid/widget/Button;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {p0, v7}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    sget-object v0, Lcom/kms/gui/KMSMain;->e:Landroid/widget/Button;

    const v1, 0x7f0200ab

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method private h()Lan;
    .locals 2

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/kms/gui/KMSMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 778
    invoke-virtual {p0}, Lcom/kms/gui/KMSMain;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lan;->a(Landroid/content/pm/PackageManager;Landroid/content/Context;)Lan;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final b_()I
    .locals 1

    .prologue
    .line 902
    const v0, 0x7f06001c

    return v0
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 920
    invoke-direct {p0}, Lcom/kms/gui/KMSMain;->h()Lan;

    move-result-object v0

    iget v0, v0, Lan;->d:I

    .line 921
    if-ne v0, v1, :cond_1

    .line 922
    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSMain;->showDialog(I)V

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 924
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->showDialog(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 513
    packed-switch p1, :pswitch_data_0

    .line 520
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/kms/gui/KMSBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 521
    return-void

    .line 516
    :pswitch_0
    sget-object v0, Lcom/kms/gui/KMSMain;->e:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f020046

    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 176
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v0, v0, v4

    aget v0, v0, v7

    if-nez v0, :cond_6

    .line 181
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v1, v1, v4

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 182
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v0, v0, v4

    aget v0, v0, v8

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 184
    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v1, v1, v4

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 186
    invoke-virtual {p0}, Lcom/kms/gui/KMSMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    .line 188
    invoke-direct {p0, v4, v3}, Lcom/kms/gui/KMSMain;->a(IZ)V

    .line 190
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 192
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 193
    const/4 v0, 0x4

    if-ne v0, v4, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/kms/gui/KMSMain;->f()Landroid/widget/Button;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v0, v0, v4

    aput v6, v0, v7

    move v2, v3

    move v1, v3

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->b:[[I

    array-length v0, v0

    if-ge v2, v0, :cond_4

    .line 200
    if-eq v2, v4, :cond_3

    .line 201
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v0, v0, v2

    aget v0, v0, v7

    if-ne v0, v6, :cond_2

    .line 204
    if-ge v2, v4, :cond_1

    .line 206
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->a:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v5, v5, v2

    aget v5, v5, v3

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    .line 208
    :cond_1
    invoke-direct {p0, v2}, Lcom/kms/gui/KMSMain;->a(I)V

    .line 209
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v0, v0, v2

    aput v3, v0, v7

    .line 210
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v0, v0, v2

    aget v0, v0, v8

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->a:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v5, v5, v2

    aget v5, v5, v6

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 213
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 214
    invoke-direct {p0, v2, v6}, Lcom/kms/gui/KMSMain;->a(IZ)V

    :cond_3
    move v0, v1

    .line 198
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 217
    :cond_4
    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 219
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 221
    new-instance v2, LdH;

    invoke-direct {v2, p0, v0, v1}, LdH;-><init>(Lcom/kms/gui/KMSMain;Landroid/widget/ScrollView;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 248
    :cond_5
    return-void

    .line 234
    :cond_6
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v0, v0, v4

    aget v0, v0, v7

    if-ne v0, v6, :cond_5

    .line 237
    invoke-direct {p0, v4, v3}, Lcom/kms/gui/KMSMain;->a(IZ)V

    .line 238
    invoke-direct {p0, v4}, Lcom/kms/gui/KMSMain;->a(I)V

    .line 239
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v0, v0, v4

    aget v0, v0, v8

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 240
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    move v1, v3

    .line 241
    :goto_1
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->b:[[I

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 243
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v2, v2, v1

    aget v2, v2, v6

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 244
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 245
    invoke-direct {p0, v1, v3}, Lcom/kms/gui/KMSMain;->a(IZ)V

    .line 241
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 527
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 528
    const v0, 0x7f03002a

    const v1, 0x7f0b003b

    invoke-virtual {p0, v0, v1}, Lcom/kms/gui/KMSMain;->a(II)V

    .line 530
    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kms/gui/KMSMain;->a:Landroid/widget/LinearLayout;

    .line 532
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->b:[[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v0, v0, v1

    const/4 v2, 0x3

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 535
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 536
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 541
    :cond_0
    const v0, 0x7f0b00ee

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, LdJ;

    invoke-direct {v1, p0}, LdJ;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 554
    new-instance v1, LdK;

    invoke-direct {v1, p0}, LdK;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    const v0, 0x7f0b00ad

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 567
    new-instance v1, LdL;

    invoke-direct {v1, p0}, LdL;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    const v0, 0x7f0b00ae

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 591
    new-instance v1, LdM;

    invoke-direct {v1, p0}, LdM;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    const v0, 0x7f0b00b9

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 604
    sput-object v0, Lcom/kms/gui/KMSMain;->e:Landroid/widget/Button;

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 605
    sget-object v0, Lcom/kms/gui/KMSMain;->e:Landroid/widget/Button;

    new-instance v1, LdN;

    invoke-direct {v1, p0}, LdN;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 625
    sput-object v0, Lcom/kms/gui/KMSMain;->f:Landroid/widget/Button;

    new-instance v1, LdO;

    invoke-direct {v1, p0}, LdO;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 638
    sput-object v0, Lcom/kms/gui/KMSMain;->g:Landroid/widget/Button;

    new-instance v1, LdP;

    invoke-direct {v1, p0}, LdP;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    const v0, 0x7f0b00c7

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 650
    new-instance v1, Ldx;

    invoke-direct {v1, p0}, Ldx;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    const v0, 0x7f0b00c8

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 657
    new-instance v1, Ldy;

    invoke-direct {v1, p0}, Ldy;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    const v0, 0x7f0b00c9

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 664
    new-instance v1, Ldz;

    invoke-direct {v1, p0}, Ldz;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 671
    new-instance v1, LdA;

    invoke-direct {v1, p0}, LdA;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    const v0, 0x7f0b00cb

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 681
    new-instance v1, LdB;

    invoke-direct {v1, p0}, LdB;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    const v0, 0x7f0b00d9

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 691
    new-instance v1, LdC;

    invoke-direct {v1, p0}, LdC;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    const v0, 0x7f0b00da

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 704
    new-instance v1, LdD;

    invoke-direct {v1, p0}, LdD;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    const v0, 0x7f0b00db

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 718
    new-instance v1, LdE;

    invoke-direct {v1, p0}, LdE;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 732
    const v1, 0x7f0b00ec

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 733
    new-instance v2, LdF;

    invoke-direct {v2, p0}, LdF;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    const v1, 0x7f0b00ea

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 743
    new-instance v2, LdG;

    invoke-direct {v2, p0}, LdG;-><init>(Lcom/kms/gui/KMSMain;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    invoke-direct {p0}, Lcom/kms/gui/KMSMain;->f()Landroid/widget/Button;

    move-result-object v1

    .line 754
    new-instance v2, LdI;

    invoke-direct {v2, p0, v0}, LdI;-><init>(Lcom/kms/gui/KMSMain;Lcom/kms/kmsshared/KMSApplication;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 774
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 840
    packed-switch p1, :pswitch_data_0

    .line 866
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 843
    :pswitch_0
    new-instance v0, LdQ;

    invoke-direct {v0, p0}, LdQ;-><init>(Lcom/kms/gui/KMSMain;)V

    .line 845
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Les;->a(I)Les;

    move-result-object v1

    const/high16 v2, 0x7f07

    invoke-virtual {v1, v2, v0}, Les;->c(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    const v2, 0x7f08000e

    invoke-virtual {v1, v2, v0}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 854
    :pswitch_1
    new-instance v0, LaV;

    invoke-direct {v0}, LaV;-><init>()V

    iput-object v0, p0, Lcom/kms/gui/KMSMain;->d:LaV;

    .line 855
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/kms/gui/KMSMain;->d:LaV;

    invoke-static {p0, v0, v1}, LaW;->a(Landroid/content/Context;ILaZ;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 860
    :pswitch_2
    new-instance v0, LaV;

    invoke-direct {v0}, LaV;-><init>()V

    iput-object v0, p0, Lcom/kms/gui/KMSMain;->d:LaV;

    .line 861
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/kms/gui/KMSMain;->d:LaV;

    invoke-static {p0, v0, v1}, LaW;->a(Landroid/content/Context;ILaZ;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 99
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    move v1, v0

    .line 102
    :goto_0
    iget-object v2, p0, Lcom/kms/gui/KMSMain;->b:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v2, v2, v1

    const/4 v4, 0x2

    aget v2, v2, v4

    if-ne v2, v3, :cond_2

    .line 106
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->b:[[I

    aget-object v0, v0, v1

    const/4 v2, 0x3

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->onClick(Landroid/view/View;)V

    move v2, v3

    .line 102
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 110
    :cond_0
    if-eqz v0, :cond_1

    .line 115
    :goto_2
    return v3

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->d:LaV;

    if-eqz v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/kms/gui/KMSMain;->d:LaV;

    invoke-virtual {v0}, LaV;->a()I

    move-result v0

    .line 910
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 912
    invoke-virtual {p0}, Lcom/kms/gui/KMSMain;->c()V

    .line 914
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/gui/KMSMain;->d:LaV;

    .line 916
    :cond_1
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onResume()V

    .line 917
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 13
    .parameter

    .prologue
    .line 341
    if-eqz p1, :cond_2

    .line 344
    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 345
    const v1, 0x7f0b004e

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 347
    invoke-static {}, Lcom/kavsdk/antivirus/BasesStorage;->a()Lcom/kavsdk/antivirus/BasesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kavsdk/antivirus/BasesStorage;->d()Lav;

    move-result-object v2

    .line 348
    invoke-virtual {v2}, Lav;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 350
    invoke-virtual {v2}, Lav;->a()J

    move-result-wide v3

    const/16 v5, 0x15

    invoke-static {p0, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    invoke-virtual {v2}, Lav;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :goto_0
    const v0, 0x7f0b00a7

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 363
    invoke-static {}, LfS;->a()LfS;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, LfS;->a(I)LfV;

    move-result-object v1

    check-cast v1, Lge;

    .line 366
    invoke-static {}, LfS;->a()LfS;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LfS;->a(I)LfV;

    move-result-object v2

    check-cast v2, Lga;

    .line 367
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 368
    if-eqz v3, :cond_4

    const v2, 0x7f080284

    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 369
    :goto_1
    const-class v4, Lge;

    monitor-enter v4

    .line 371
    :try_start_0
    invoke-virtual {v1}, Lge;->a()V

    .line 372
    iget v1, v1, Lge;->a:I

    .line 373
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    if-nez v1, :cond_5

    .line 376
    const v1, 0x7f080005

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 377
    const-string v1, " <b><font color=\"#ff8080\">%s</font></b>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f080006

    invoke-virtual {p0, v5}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 392
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-direct {p0}, Lcom/kms/gui/KMSMain;->g()V

    .line 399
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 400
    const v1, 0x7f0b00c7

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 401
    const v2, 0x7f0b00c8

    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 402
    const v3, 0x7f0b00c9

    invoke-virtual {p0, v3}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 403
    const v4, 0x7f0b00ca

    invoke-virtual {p0, v4}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 404
    const v5, 0x7f0b00c2

    invoke-virtual {p0, v5}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 405
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 406
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 407
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 408
    const/16 v6, 0x9

    invoke-virtual {v0, v6}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 409
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 410
    const-string v0, ""

    .line 411
    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    if-eqz v11, :cond_9

    if-eqz v12, :cond_9

    const/4 v6, 0x1

    move v7, v6

    .line 413
    :goto_3
    if-nez v8, :cond_a

    if-nez v9, :cond_a

    if-nez v10, :cond_a

    if-nez v11, :cond_a

    if-nez v12, :cond_a

    const/4 v6, 0x1

    .line 416
    :goto_4
    if-eqz v7, :cond_b

    .line 418
    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 457
    :cond_0
    :goto_5
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    if-eqz v8, :cond_14

    .line 459
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0800ee

    invoke-virtual {p0, v7}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 463
    :goto_6
    if-nez v9, :cond_1

    if-eqz v12, :cond_15

    .line 464
    :cond_1
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0800ee

    invoke-virtual {p0, v6}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 468
    :goto_7
    if-eqz v10, :cond_16

    .line 469
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v5, 0x7f0800ee

    invoke-virtual {p0, v5}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :goto_8
    if-eqz v11, :cond_17

    .line 474
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f0800ee

    invoke-virtual {p0, v3}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 481
    :goto_9
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfY;

    .line 482
    const v1, 0x7f0b00d9

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 483
    const v2, 0x7f0b00d3

    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 484
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, LfY;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 485
    invoke-virtual {p0}, Lcom/kms/gui/KMSMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    .line 486
    if-nez v0, :cond_18

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f080023

    invoke-virtual {p0, v4}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " <b><font color=\"#ff8080\">%s</font></b>"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    :goto_a
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 499
    invoke-direct {p0}, Lcom/kms/gui/KMSMain;->f()Landroid/widget/Button;

    .line 502
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 503
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 504
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kms/gui/KMSMain;->a(Z)V

    .line 506
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onWindowFocusChanged(Z)V

    .line 508
    :cond_2
    return-void

    .line 358
    :cond_3
    const v2, 0x7f0800b1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 359
    const v0, 0x7f0800b1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 368
    :cond_4
    const v2, 0x7f080005

    invoke-virtual {p0, v2}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 379
    :cond_5
    invoke-static {}, Lfp;->j()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 381
    const-string v1, " <b><font color=\"#ff8080\">%s</font></b>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f080009

    invoke-virtual {p0, v4}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 382
    const-string v2, ""

    goto/16 :goto_2

    .line 384
    :cond_6
    const/4 v4, 0x1

    if-ne v1, v4, :cond_7

    .line 385
    const-string v1, " <b>%s</b>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0x7f080007

    invoke-virtual {p0, v5}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 388
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " <b>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v3, :cond_8

    const v1, 0x7f080286

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</b>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_8
    const v1, 0x7f080285

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 411
    :cond_9
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_3

    .line 413
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 420
    :cond_b
    if-eqz v6, :cond_c

    .line 422
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 426
    :cond_c
    if-eqz v8, :cond_d

    .line 428
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v6, 0x7f080019

    invoke-virtual {p0, v6}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    :cond_d
    if-nez v9, :cond_e

    if-eqz v12, :cond_10

    .line 433
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_f

    .line 435
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v6, 0x7f08001a

    invoke-virtual {p0, v6}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    :cond_10
    if-eqz v10, :cond_12

    .line 441
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_11

    .line 443
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    :cond_11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v6, 0x7f08001b

    invoke-virtual {p0, v6}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    :cond_12
    if-eqz v11, :cond_0

    .line 449
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_13

    .line 451
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v6, 0x7f08001c

    invoke-virtual {p0, v6}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 461
    :cond_14
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f0800ef

    invoke-virtual {p0, v7}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 466
    :cond_15
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0800ef

    invoke-virtual {p0, v6}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 471
    :cond_16
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v5, 0x7f0800ef

    invoke-virtual {p0, v5}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 476
    :cond_17
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f0800ef

    invoke-virtual {p0, v3}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 493
    :cond_18
    const-string v0, " <b>%s</b>"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 494
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f080023

    invoke-virtual {p0, v5}, Lcom/kms/gui/KMSMain;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a
.end method
