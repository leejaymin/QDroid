.class public Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;
.super Lcom/rubycell/pianisthd/DoubleRowActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rubycell/pianisthd/DoubleRowActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    const v6, 0x7f0a001f

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->setContentView(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->z:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->z:Ljava/util/ArrayList;

    sget v1, Lcom/rubycell/pianisthd/d/b;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->z:Ljava/util/ArrayList;

    sget v1, Lcom/rubycell/pianisthd/d/b;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->y:Landroid/content/Context;

    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/CustomScrollView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->a:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/MiniPianoView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->b:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/PianoView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->c:Lcom/rubycell/pianisthd/ui/PianoView;

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->b:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->a:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->setScrollView(Lcom/rubycell/pianisthd/ui/CustomScrollView;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->c:Lcom/rubycell/pianisthd/ui/PianoView;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->a:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->setScrollView(Lcom/rubycell/pianisthd/ui/CustomScrollView;)V

    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/CustomScrollView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->d:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/MiniPianoView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->e:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/PianoView;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->f:Lcom/rubycell/pianisthd/ui/PianoView;

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->e:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->d:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->setScrollView(Lcom/rubycell/pianisthd/ui/CustomScrollView;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->f:Lcom/rubycell/pianisthd/ui/PianoView;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->d:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/PianoView;->setScrollView(Lcom/rubycell/pianisthd/ui/CustomScrollView;)V

    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v6}, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    invoke-virtual {v0, v2}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setMirror(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->f:Lcom/rubycell/pianisthd/ui/PianoView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setPianoViewDown(Lcom/rubycell/pianisthd/ui/PianoView;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->c:Lcom/rubycell/pianisthd/ui/PianoView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setPianoViewUp(Lcom/rubycell/pianisthd/ui/PianoView;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->d:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setScrollViewDown(Lcom/rubycell/pianisthd/ui/CustomScrollView;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->a:Lcom/rubycell/pianisthd/ui/CustomScrollView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setScrollViewUp(Lcom/rubycell/pianisthd/ui/CustomScrollView;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->e:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setMiniDown(Lcom/rubycell/pianisthd/ui/MiniPianoView;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->b:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setMiniUp(Lcom/rubycell/pianisthd/ui/MiniPianoView;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setMenuDownLayout(Landroid/widget/RelativeLayout;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->g:Lcom/rubycell/pianisthd/ui/CustomLinearLayout;

    iget-object v1, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/CustomLinearLayout;->setMenuUpLayout(Landroid/widget/RelativeLayout;)V

    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v6}, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->h:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->c:Lcom/rubycell/pianisthd/ui/PianoView;

    invoke-virtual {v0, v4, v2}, Lcom/rubycell/pianisthd/ui/PianoView;->setType(IZ)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->f:Lcom/rubycell/pianisthd/ui/PianoView;

    invoke-virtual {v0, v5, v3}, Lcom/rubycell/pianisthd/ui/PianoView;->setType(IZ)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->b:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    invoke-virtual {v0, v4, v2}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->setType(IZ)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->e:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    invoke-virtual {v0, v5, v3}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->setType(IZ)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->e:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    new-instance v1, Lcom/rubycell/pianisthd/b;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/b;-><init>(Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;)V

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->b:Lcom/rubycell/pianisthd/ui/MiniPianoView;

    new-instance v1, Lcom/rubycell/pianisthd/c;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/c;-><init>(Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;)V

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/ui/MiniPianoView;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/DoubleMirrorRowActivity;->b()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/rubycell/pianisthd/DoubleRowActivity;->onResume()V

    return-void
.end method
