.class public final Lcom/inisoft/mediaplayer/b/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/b/ai;


# instance fields
.field private A:Lcom/inisoft/mediaplayer/b/aj;

.field private a:Landroid/content/Context;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Spinner;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/Spinner;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/Spinner;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/Spinner;

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Landroid/content/res/ColorStateList;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/b/w;->r:Z

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/b/w;->s:Z

    const/16 v0, 0xc

    iput v0, p0, Lcom/inisoft/mediaplayer/b/w;->t:I

    iput v1, p0, Lcom/inisoft/mediaplayer/b/w;->u:I

    iput v1, p0, Lcom/inisoft/mediaplayer/b/w;->v:I

    const-string v0, "500"

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->w:Ljava/lang/String;

    const-string v0, "Default"

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->x:Ljava/lang/String;

    iput v1, p0, Lcom/inisoft/mediaplayer/b/w;->z:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->A:Lcom/inisoft/mediaplayer/b/aj;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    const-string v0, "DICE_SETTINGS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    const-string v1, "subtitle"

    iget-boolean v2, p0, Lcom/inisoft/mediaplayer/b/w;->r:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/b/w;->r:Z

    const-string v1, "embeddedSubtitle"

    iget-boolean v2, p0, Lcom/inisoft/mediaplayer/b/w;->s:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/b/w;->s:Z

    const-string v1, "subtitle_order"

    iget v2, p0, Lcom/inisoft/mediaplayer/b/w;->t:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/b/w;->t:I

    const-string v1, "subtitle_save_position"

    iget v2, p0, Lcom/inisoft/mediaplayer/b/w;->u:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/b/w;->u:I

    const-string v1, "subtitle_gravity"

    iget v2, p0, Lcom/inisoft/mediaplayer/b/w;->v:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/b/w;->v:I

    const-string v1, "subtitle_synctimes"

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/w;->w:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->w:Ljava/lang/String;

    const-string v1, "subtitle_encodings"

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/w;->x:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->x:Ljava/lang/String;

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00a4

    const-string v1, "Default"

    invoke-static {p1, v0, v1}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->x:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    return v0

    :cond_2
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget v1, p0, Lcom/inisoft/mediaplayer/b/w;->t:I

    div-int/lit8 v1, v1, 0x64

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/inisoft/mediaplayer/b/w;->t:I

    rem-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0xa

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/inisoft/mediaplayer/b/w;->t:I

    rem-int/lit8 v1, v1, 0xa

    aget-object v0, v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/b/w;->r:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->j:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->l:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->o:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->q:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    :goto_0
    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/b/w;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/b/w;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/b/w;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/b/w;->r:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/inisoft/mediaplayer/b/w;->z:I

    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/b/w;->b(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->j:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->l:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->o:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->q:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/b/w;->a()V

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/w;I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/b/w;->z:I

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/w;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/b/w;->r:Z

    const-string v1, "subtitle"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->A:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->A:Lcom/inisoft/mediaplayer/b/aj;

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/b/w;->r:Z

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/aj;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(I)V
    .locals 3

    const v2, -0xff0100

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/b/w;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/b/w;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/b/w;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/b/w;->s:Z

    const-string v1, "embeddedSubtitle"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->A:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->A:Lcom/inisoft/mediaplayer/b/aj;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/b/aj;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/b/w;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v0, p0, Lcom/inisoft/mediaplayer/b/w;->t:I

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/inisoft/mediaplayer/b/w;->t:I

    rem-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/inisoft/mediaplayer/b/w;->t:I

    rem-int/lit8 v2, v2, 0xa

    iget v3, p0, Lcom/inisoft/mediaplayer/b/w;->z:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "subtitle_order"

    iget v2, p0, Lcom/inisoft/mediaplayer/b/w;->t:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->A:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->A:Lcom/inisoft/mediaplayer/b/aj;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/w;->t:I

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/aj;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    if-ne p1, v4, :cond_0

    mul-int/lit8 v1, v1, 0x64

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/inisoft/mediaplayer/b/w;->t:I

    iput v4, p0, Lcom/inisoft/mediaplayer/b/w;->z:I

    goto :goto_0

    :pswitch_1
    if-nez p1, :cond_2

    mul-int/lit8 v1, v1, 0x64

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/inisoft/mediaplayer/b/w;->t:I

    iput v5, p0, Lcom/inisoft/mediaplayer/b/w;->z:I

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x64

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/inisoft/mediaplayer/b/w;->t:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/inisoft/mediaplayer/b/w;->z:I

    goto :goto_0

    :pswitch_2
    if-nez p1, :cond_0

    mul-int/lit8 v0, v0, 0x64

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/inisoft/mediaplayer/b/w;->t:I

    iput v4, p0, Lcom/inisoft/mediaplayer/b/w;->z:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/b/w;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput p1, p0, Lcom/inisoft/mediaplayer/b/w;->u:I

    const-string v1, "subtitle_save_position"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->A:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->A:Lcom/inisoft/mediaplayer/b/aj;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/w;->u:I

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/aj;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/b/w;I)V
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    const-string v2, "DICE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput v0, p0, Lcom/inisoft/mediaplayer/b/w;->v:I

    const-string v2, "subtitle_gravity"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->A:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->A:Lcom/inisoft/mediaplayer/b/aj;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/w;->v:I

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/aj;->e(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    const/16 v0, 0x11

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic f(Lcom/inisoft/mediaplayer/b/w;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->w:Ljava/lang/String;

    const-string v1, "subtitle_synctimes"

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/w;->w:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->A:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->A:Lcom/inisoft/mediaplayer/b/aj;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->w:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/aj;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/inisoft/mediaplayer/b/w;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/b/w;->x:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/inisoft/mediaplayer/hw;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "Default"

    :cond_0
    const-string v2, "subtitle_encodings"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->A:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->A:Lcom/inisoft/mediaplayer/b/aj;

    invoke-interface {v1, v0}, Lcom/inisoft/mediaplayer/b/aj;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const v5, 0x1090009

    const v4, 0x1090008

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f03002d

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const v0, 0x7f050068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v1, 0x7f050069

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->b:Landroid/widget/CheckBox;

    const v1, 0x7f05006f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->c:Landroid/widget/TextView;

    const v1, 0x7f050070

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->d:Landroid/widget/TextView;

    const v1, 0x7f050071

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->e:Landroid/widget/TextView;

    const v1, 0x7f050072

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->f:Landroid/widget/TextView;

    const v1, 0x7f050073

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->g:Landroid/widget/ImageButton;

    const v1, 0x7f050074

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->h:Landroid/widget/ImageButton;

    const v1, 0x7f05006c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->i:Landroid/widget/TextView;

    const v1, 0x7f05006d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->j:Landroid/widget/Spinner;

    const v1, 0x7f05006a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->k:Landroid/widget/TextView;

    const v1, 0x7f05006b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->l:Landroid/widget/Spinner;

    const v1, 0x7f05006e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->m:Landroid/widget/ImageView;

    const v1, 0x7f050075

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->n:Landroid/widget/TextView;

    const v1, 0x7f050076

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->o:Landroid/widget/Spinner;

    const v1, 0x7f050077

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->p:Landroid/widget/TextView;

    const v1, 0x7f050078

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->q:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->g:Landroid/widget/ImageButton;

    const v3, 0x7f020056

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->h:Landroid/widget/ImageButton;

    const v3, 0x7f020055

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->y:Landroid/content/res/ColorStateList;

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/b/w;->r:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/inisoft/mediaplayer/b/x;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/x;-><init>(Lcom/inisoft/mediaplayer/b/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->b:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/b/w;->s:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->b:Landroid/widget/CheckBox;

    new-instance v1, Lcom/inisoft/mediaplayer/b/aa;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/aa;-><init>(Lcom/inisoft/mediaplayer/b/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/inisoft/mediaplayer/b/ab;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/ab;-><init>(Lcom/inisoft/mediaplayer/b/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/inisoft/mediaplayer/b/ac;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/ac;-><init>(Lcom/inisoft/mediaplayer/b/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/inisoft/mediaplayer/b/ad;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/ad;-><init>(Lcom/inisoft/mediaplayer/b/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/inisoft/mediaplayer/b/ae;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/ae;-><init>(Lcom/inisoft/mediaplayer/b/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->h:Landroid/widget/ImageButton;

    new-instance v1, Lcom/inisoft/mediaplayer/b/af;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/af;-><init>(Lcom/inisoft/mediaplayer/b/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    invoke-direct {v1, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->j:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->j:Landroid/widget/Spinner;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/w;->u:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->j:Landroid/widget/Spinner;

    new-instance v1, Lcom/inisoft/mediaplayer/b/ag;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/ag;-><init>(Lcom/inisoft/mediaplayer/b/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    invoke-direct {v1, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->l:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget v0, p0, Lcom/inisoft/mediaplayer/b/w;->v:I

    sparse-switch v0, :sswitch_data_0

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->l:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->l:Landroid/widget/Spinner;

    new-instance v1, Lcom/inisoft/mediaplayer/b/ah;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/ah;-><init>(Lcom/inisoft/mediaplayer/b/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->o:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->o:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->w:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/inisoft/mediaplayer/b/w;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->o:Landroid/widget/Spinner;

    new-instance v1, Lcom/inisoft/mediaplayer/b/y;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/y;-><init>(Lcom/inisoft/mediaplayer/b/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hw;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/w;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/w;->q:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/w;->q:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/w;->x:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/b/w;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/w;->q:Landroid/widget/Spinner;

    new-instance v1, Lcom/inisoft/mediaplayer/b/z;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/z;-><init>(Lcom/inisoft/mediaplayer/b/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/b/w;->a()V

    :cond_1
    return-object p1

    :cond_2
    const v1, 0x7f03002e

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_0

    :sswitch_0
    move v0, v2

    goto :goto_1

    :sswitch_1
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Lcom/inisoft/mediaplayer/b/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/w;->A:Lcom/inisoft/mediaplayer/b/aj;

    return-void
.end method
