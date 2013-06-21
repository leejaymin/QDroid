.class public Lcom/rubycell/pianisthd/DoubleRowActivity;
.super Landroid/app/Activity;


# instance fields
.field A:Landroid/graphics/drawable/AnimationDrawable;

.field B:Landroid/graphics/drawable/AnimationDrawable;

.field C:Z

.field D:Z

.field E:Landroid/media/AudioManager;

.field private F:Lcom/rubycell/moregame/center/n;

.field a:Lcom/rubycell/pianisthd/ui/CustomScrollView;

.field b:Lcom/rubycell/pianisthd/ui/MiniPianoView;

.field c:Lcom/rubycell/pianisthd/ui/PianoView;

.field d:Lcom/rubycell/pianisthd/ui/CustomScrollView;

.field e:Lcom/rubycell/pianisthd/ui/MiniPianoView;

.field f:Lcom/rubycell/pianisthd/ui/PianoView;

.field g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

.field h:Landroid/widget/RelativeLayout;

.field i:Landroid/widget/RelativeLayout;

.field j:Landroid/widget/ImageButton;

.field k:Landroid/widget/ImageButton;

.field l:Landroid/widget/ImageButton;

.field m:Landroid/widget/ImageButton;

.field n:Landroid/widget/ImageButton;

.field o:Landroid/widget/ImageButton;

.field p:Landroid/widget/ImageView;

.field q:Landroid/widget/ImageButton;

.field r:Landroid/widget/ImageButton;

.field s:Landroid/widget/ImageButton;

.field t:Landroid/widget/ImageButton;

.field u:Landroid/widget/ImageButton;

.field v:Landroid/widget/ImageButton;

.field w:Landroid/widget/ImageButton;

.field x:Landroid/widget/ImageView;

.field y:Landroid/content/Context;

.field z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 1

    const v0, 0x7f0200ed

    sparse-switch p0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const v0, 0x7f0200e5

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0200e1

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0200f4

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0200dd

    goto :goto_0

    :sswitch_5
    const v0, 0x7f0200e9

    goto :goto_0

    :sswitch_6
    const v0, 0x7f0200eb

    goto :goto_0

    :sswitch_7
    const v0, 0x7f0200e3

    goto :goto_0

    :sswitch_8
    const v0, 0x7f0200ef

    goto :goto_0

    :sswitch_9
    const v0, 0x7f0200e7

    goto :goto_0

    :sswitch_a
    const v0, 0x7f0200df

    goto :goto_0

    :sswitch_b
    const v0, 0x7f0200f2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x11 -> :sswitch_6
        0x16 -> :sswitch_9
        0x18 -> :sswitch_7
        0x20 -> :sswitch_4
        0x28 -> :sswitch_3
        0x38 -> :sswitch_b
        0x40 -> :sswitch_8
        0x70 -> :sswitch_a
        0x72 -> :sswitch_5
        0x74 -> :sswitch_1
        0x76 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected a()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->setContentView(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->z:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->z:Ljava/util/ArrayList;

    sget v1, Lcom/rubycell/pianisthd/d/b;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->z:Ljava/util/ArrayList;

    sget v1, Lcom/rubycell/pianisthd/d/b;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/CustomScrollView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->a:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/MiniPianoView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->b:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/PianoView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->c:Lcom/rubycell/pianisthd/ui/PianoView;

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->b:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->a:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->setScrollView(Lcom/rubycell/pianisthd/ui/CustomScrollView;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->c:Lcom/rubycell/pianisthd/ui/PianoView;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->a:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->setScrollView(Lcom/rubycell/pianisthd/ui/CustomScrollView;)V

    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/CustomScrollView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->d:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/MiniPianoView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->e:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/PianoView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->f:Lcom/rubycell/pianisthd/ui/PianoView;

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->e:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->d:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->setScrollView(Lcom/rubycell/pianisthd/ui/CustomScrollView;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->f:Lcom/rubycell/pianisthd/ui/PianoView;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->d:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->setScrollView(Lcom/rubycell/pianisthd/ui/CustomScrollView;)V

    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->i:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->f:Lcom/rubycell/pianisthd/ui/PianoView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setPianoViewDown(Lcom/rubycell/pianisthd/ui/PianoView;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->c:Lcom/rubycell/pianisthd/ui/PianoView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setPianoViewUp(Lcom/rubycell/pianisthd/ui/PianoView;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->d:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setScrollViewDown(Lcom/rubycell/pianisthd/ui/CustomScrollView;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->a:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setScrollViewUp(Lcom/rubycell/pianisthd/ui/CustomScrollView;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->e:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setMiniDown(Lcom/rubycell/pianisthd/ui/MiniPianoView;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->b:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setMiniUp(Lcom/rubycell/pianisthd/ui/MiniPianoView;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setMenuDownLayout(Landroid/widget/RelativeLayout;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setMenuUpLayout(Landroid/widget/RelativeLayout;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->c:Lcom/rubycell/pianisthd/ui/PianoView;

    invoke-virtual {v0, v3, v2}, Lcom/rubycell/pianisthd/ui/PianoView;->setType(IZ)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->f:Lcom/rubycell/pianisthd/ui/PianoView;

    invoke-virtual {v0, v4, v2}, Lcom/rubycell/pianisthd/ui/PianoView;->setType(IZ)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->b:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    invoke-virtual {v0, v3, v2}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->setType(IZ)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->e:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    invoke-virtual {v0, v4, v2}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->setType(IZ)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->e:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    new-instance v1, Lcom/rubycell/pianisthd/d;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/d;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->b:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    new-instance v1, Lcom/rubycell/pianisthd/o;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/o;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->b()V

    return-void
.end method

.method public final b()V
    .locals 2

    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->m:Landroid/widget/ImageButton;

    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->l:Landroid/widget/ImageButton;

    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->k:Landroid/widget/ImageButton;

    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->j:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->j:Landroid/widget/ImageButton;

    sget v1, Lcom/rubycell/pianisthd/d/b;->t:I

    invoke-static {v1}, Lcom/rubycell/pianisthd/DoubleRowActivity;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->n:Landroid/widget/ImageButton;

    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->o:Landroid/widget/ImageButton;

    const v0, 0x7f0a0033

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->p:Landroid/widget/ImageView;

    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->u:Landroid/widget/ImageButton;

    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->v:Landroid/widget/ImageButton;

    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->r:Landroid/widget/ImageButton;

    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->q:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->q:Landroid/widget/ImageButton;

    sget v1, Lcom/rubycell/pianisthd/d/b;->s:I

    invoke-static {v1}, Lcom/rubycell/pianisthd/DoubleRowActivity;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->t:Landroid/widget/ImageButton;

    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->s:Landroid/widget/ImageButton;

    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->w:Landroid/widget/ImageButton;

    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->x:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->j:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/p;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/p;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->k:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/q;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/q;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->l:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/r;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/r;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/s;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/s;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/t;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/t;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/u;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/u;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->p:Landroid/widget/ImageView;

    new-instance v1, Lcom/rubycell/pianisthd/v;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/v;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->q:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/e;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/e;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->r:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/f;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/f;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->s:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/g;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/g;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->t:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/h;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/h;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->u:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/i;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/i;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->v:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/j;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/j;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->w:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rubycell/pianisthd/k;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/k;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->x:Landroid/widget/ImageView;

    new-instance v1, Lcom/rubycell/pianisthd/l;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/l;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->finish()V

    return-void
.end method

.method public final d()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Save your record as:"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Save"

    new-instance v3, Lcom/rubycell/pianisthd/m;

    invoke-direct {v3, p0, v1}, Lcom/rubycell/pianisthd/m;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Cancel"

    new-instance v2, Lcom/rubycell/pianisthd/n;

    invoke-direct {v2, p0}, Lcom/rubycell/pianisthd/n;-><init>(Lcom/rubycell/pianisthd/DoubleRowActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const v0, 0xf4240

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->F:Lcom/rubycell/moregame/center/n;

    invoke-static {}, Lcom/rubycell/moregame/center/n;->e()V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/rubycell/adcenter/a;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xf4240
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x1000

    const/16 v4, 0x400

    const/16 v3, 0x80

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/rubycell/pianisthd/DoubleRowActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setFormat(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->setVolumeControlStream(I)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->E:Landroid/media/AudioManager;

    iput-object p0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->y:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->C:Z

    iput-boolean v1, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->D:Z

    new-instance v0, Lcom/rubycell/moregame/center/n;

    invoke-direct {v0, p0}, Lcom/rubycell/moregame/center/n;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->F:Lcom/rubycell/moregame/center/n;

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->F:Lcom/rubycell/moregame/center/n;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/n;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->a()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/rubycell/pianisthd/ui/d;

    invoke-direct {v0, p0}, Lcom/rubycell/pianisthd/ui/d;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->e:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->e()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->b:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->e()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->f:Lcom/rubycell/pianisthd/ui/PianoView;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/PianoView;->a()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->c:Lcom/rubycell/pianisthd/ui/PianoView;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/PianoView;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/rubycell/pianisthd/d/e;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->F:Lcom/rubycell/moregame/center/n;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/n;->b()V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->F:Lcom/rubycell/moregame/center/n;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/n;->a()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->j:Landroid/widget/ImageButton;

    sget v1, Lcom/rubycell/pianisthd/d/b;->t:I

    invoke-static {v1}, Lcom/rubycell/pianisthd/DoubleRowActivity;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->q:Landroid/widget/ImageButton;

    sget v1, Lcom/rubycell/pianisthd/d/b;->s:I

    invoke-static {v1}, Lcom/rubycell/pianisthd/DoubleRowActivity;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->f:Lcom/rubycell/pianisthd/ui/PianoView;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/PianoView;->b()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->c:Lcom/rubycell/pianisthd/ui/PianoView;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/PianoView;->b()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->F:Lcom/rubycell/moregame/center/n;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/n;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v2, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->C:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->A:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->A:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->p:Landroid/widget/ImageView;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    invoke-static {}, Lorg/cocos2d/j/a;->a()Lorg/cocos2d/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/j/a;->c()V

    invoke-static {}, Lcom/rubycell/pianisthd/d/g;->b()V

    iput-boolean v2, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->D:Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->B:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->B:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleRowActivity;->x:Landroid/widget/ImageView;

    const v1, 0x7f020169

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
