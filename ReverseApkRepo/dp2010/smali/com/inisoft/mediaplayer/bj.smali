.class public final Lcom/inisoft/mediaplayer/bj;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/inisoft/mediaplayer/bs;

.field private static d:Lcom/inisoft/mediaplayer/bp;

.field private static synthetic f:[I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/AlertDialog$Builder;

.field private e:Lcom/inisoft/mediaplayer/bo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bj;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bj;->b:Landroid/app/AlertDialog$Builder;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/bj;->e:Lcom/inisoft/mediaplayer/bo;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/bj;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    return v0

    :cond_2
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/bj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bj;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Lcom/inisoft/mediaplayer/bs;
    .locals 1

    sget-object v0, Lcom/inisoft/mediaplayer/bj;->c:Lcom/inisoft/mediaplayer/bs;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/inisoft/mediaplayer/bp;Lcom/inisoft/mediaplayer/bs;Lcom/inisoft/mediaplayer/bo;)V
    .locals 19

    sput-object p1, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    sput-object p2, Lcom/inisoft/mediaplayer/bj;->c:Lcom/inisoft/mediaplayer/bs;

    new-instance v3, Lcom/inisoft/mediaplayer/bj;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/inisoft/mediaplayer/bj;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p3

    iput-object v0, v3, Lcom/inisoft/mediaplayer/bj;->e:Lcom/inisoft/mediaplayer/bo;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, v3, Lcom/inisoft/mediaplayer/bj;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, v3, Lcom/inisoft/mediaplayer/bj;->b:Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/inisoft/mediaplayer/bj;->c:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/bs;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Lcom/inisoft/mediaplayer/bj;->b:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, v3, Lcom/inisoft/mediaplayer/bj;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, v3, Lcom/inisoft/mediaplayer/bj;->a:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f030019

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v4, v3, Lcom/inisoft/mediaplayer/bj;->b:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-object v13, v2

    :goto_0
    const v2, 0x7f050031

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v2, 0x7f050032

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    const v2, 0x7f050034

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    const v2, 0x7f050035

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    const v2, 0x7f050037

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    const v2, 0x7f050038

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v2, 0x7f050039

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    const v2, 0x7f05003a

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v2, 0x7f05003b

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    const v2, 0x7f05003d

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    const v2, 0x7f05003e

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Spinner;

    const v2, 0x7f05003c

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    const v2, 0x7f050036

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x81

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setInputType(I)V

    :goto_1
    new-instance v2, Lcom/inisoft/mediaplayer/bk;

    invoke-direct {v2, v3, v7}, Lcom/inisoft/mediaplayer/bk;-><init>(Lcom/inisoft/mediaplayer/bj;Landroid/widget/EditText;)V

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, v3, Lcom/inisoft/mediaplayer/bj;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/hw;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    new-instance v13, Landroid/widget/ArrayAdapter;

    iget-object v0, v3, Lcom/inisoft/mediaplayer/bj;->a:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x1090008

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v13, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v2, 0x1090009

    invoke-virtual {v13, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v15, v13}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->c:Ljava/lang/String;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->c:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->d:Ljava/lang/String;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->d:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->e:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->f:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/bp;->f:Ljava/lang/String;

    iget-object v13, v3, Lcom/inisoft/mediaplayer/bj;->a:Landroid/content/Context;

    invoke-static {v13, v2}, Lcom/inisoft/mediaplayer/hw;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v2, v3, Lcom/inisoft/mediaplayer/bj;->a:Landroid/content/Context;

    const v13, 0x7f0a00a4

    const-string v17, "Default"

    move-object/from16 v0, v17

    invoke-static {v2, v13, v0}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-direct {v3, v2}, Lcom/inisoft/mediaplayer/bj;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_2
    sget-object v2, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    iget-boolean v2, v2, Lcom/inisoft/mediaplayer/bp;->g:Z

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_4
    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_3
    new-instance v2, Lcom/inisoft/mediaplayer/bl;

    invoke-direct/range {v2 .. v8}, Lcom/inisoft/mediaplayer/bl;-><init>(Lcom/inisoft/mediaplayer/bj;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    invoke-virtual {v11, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {}, Lcom/inisoft/mediaplayer/bj;->b()[I

    move-result-object v2

    sget-object v13, Lcom/inisoft/mediaplayer/bj;->c:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v13}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v13

    aget v2, v2, v13

    packed-switch v2, :pswitch_data_0

    :goto_5
    :pswitch_0
    iget-object v2, v3, Lcom/inisoft/mediaplayer/bj;->b:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0a00a5

    new-instance v8, Lcom/inisoft/mediaplayer/bm;

    move-object v9, v3

    move-object v12, v5

    move-object v13, v7

    invoke-direct/range {v8 .. v16}, Lcom/inisoft/mediaplayer/bm;-><init>(Lcom/inisoft/mediaplayer/bj;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v4, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, v3, Lcom/inisoft/mediaplayer/bj;->b:Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/inisoft/mediaplayer/bn;

    invoke-direct {v4, v3}, Lcom/inisoft/mediaplayer/bn;-><init>(Lcom/inisoft/mediaplayer/bj;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, v3, Lcom/inisoft/mediaplayer/bj;->b:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_4
    const v4, 0x7f030018

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v4, v3, Lcom/inisoft/mediaplayer/bj;->b:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-object v13, v2

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "21"

    invoke-virtual {v14, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    :cond_8
    const-string v2, "21"

    invoke-virtual {v14, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_4

    :pswitch_1
    const-string v2, "ex)192.168.0.2 or 192.168.0.2/shared"

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_5

    :pswitch_2
    const-string v2, "FTP Host server"

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_3
    const-string v2, "Http URL"

    invoke-virtual {v10, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/bj;Lcom/inisoft/mediaplayer/bp;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bj;->e:Lcom/inisoft/mediaplayer/bo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inisoft/mediaplayer/bj;->d:Lcom/inisoft/mediaplayer/bp;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bj;->e:Lcom/inisoft/mediaplayer/bo;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/bo;->a(Lcom/inisoft/mediaplayer/bp;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/bj;->e:Lcom/inisoft/mediaplayer/bo;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/bo;->b(Lcom/inisoft/mediaplayer/bp;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/bj;)Lcom/inisoft/mediaplayer/bo;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bj;->e:Lcom/inisoft/mediaplayer/bo;

    return-object v0
.end method

.method private static synthetic b()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/bj;->f:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/bs;->values()[Lcom/inisoft/mediaplayer/bs;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->g:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->d:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->f:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->h:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->e:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->c:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/inisoft/mediaplayer/bs;->a:Lcom/inisoft/mediaplayer/bs;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/bs;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/inisoft/mediaplayer/bj;->f:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method
