.class public final Les;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lel;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 211
    const v0, 0x103000b

    invoke-direct {p0, p1, v0}, Les;-><init>(Landroid/content/Context;I)V

    .line 212
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Lel;

    invoke-direct {v0, p1}, Lel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Les;->a:Lel;

    .line 220
    const v0, 0x103000b

    iput v0, p0, Les;->b:I

    .line 221
    return-void
.end method


# virtual methods
.method public final a()Ler;
    .locals 3

    .prologue
    .line 772
    new-instance v0, Ler;

    iget-object v1, p0, Les;->a:Lel;

    iget-object v1, v1, Lel;->a:Landroid/content/Context;

    iget v2, p0, Les;->b:I

    invoke-direct {v0, v1, v2}, Ler;-><init>(Landroid/content/Context;I)V

    .line 773
    iget-object v1, p0, Les;->a:Lel;

    invoke-static {v0}, Ler;->a(Ler;)Lcom/kms/gui/dialog/AlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lel;->a(Lcom/kms/gui/dialog/AlertController;)V

    .line 774
    iget-object v1, p0, Les;->a:Lel;

    iget-boolean v1, v1, Lel;->i:Z

    invoke-virtual {v0, v1}, Ler;->setCancelable(Z)V

    .line 775
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ler;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 776
    return-object v0
.end method

.method public final a(I)Les;
    .locals 2
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Les;->a:Lel;

    iget-object v1, p0, Les;->a:Lel;

    iget-object v1, v1, Lel;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lel;->c:Ljava/lang/CharSequence;

    .line 230
    return-object p0
.end method

.method public final a(IIILet;)Les;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 605
    iget-object v0, p0, Les;->a:Lel;

    iget-object v1, p0, Les;->a:Lel;

    iget-object v1, v1, Lel;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lel;->j:[Ljava/lang/CharSequence;

    .line 606
    iget-object v0, p0, Les;->a:Lel;

    iget-object v1, p0, Les;->a:Lel;

    iget-object v1, v1, Lel;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lel;->k:[Ljava/lang/CharSequence;

    .line 607
    iget-object v0, p0, Les;->a:Lel;

    iput-object p4, v0, Lel;->m:Let;

    .line 608
    iget-object v0, p0, Les;->a:Lel;

    iput p3, v0, Lel;->w:I

    .line 609
    iget-object v0, p0, Les;->a:Lel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lel;->v:Z

    .line 610
    return-object p0
.end method

.method public final a(IILandroid/content/DialogInterface$OnClickListener;)Les;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 580
    iget-object v0, p0, Les;->a:Lel;

    iget-object v1, p0, Les;->a:Lel;

    iget-object v1, v1, Lel;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lel;->j:[Ljava/lang/CharSequence;

    .line 581
    iget-object v0, p0, Les;->a:Lel;

    iput-object p3, v0, Lel;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 582
    iget-object v0, p0, Les;->a:Lel;

    iput p2, v0, Lel;->w:I

    .line 583
    iget-object v0, p0, Les;->a:Lel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lel;->v:Z

    .line 584
    return-object p0
.end method

.method public final a(ILandroid/content/DialogInterface$OnClickListener;)Les;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Les;->a:Lel;

    iget-object v1, p0, Les;->a:Lel;

    iget-object v1, v1, Lel;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lel;->e:Ljava/lang/CharSequence;

    .line 308
    iget-object v0, p0, Les;->a:Lel;

    iput-object p2, v0, Lel;->f:Landroid/content/DialogInterface$OnClickListener;

    .line 309
    return-object p0
.end method

.method public final a(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Les;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Les;->a:Lel;

    iget-object v1, p0, Les;->a:Lel;

    iget-object v1, v1, Lel;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lel;->j:[Ljava/lang/CharSequence;

    .line 502
    iget-object v0, p0, Les;->a:Lel;

    iput-object p3, v0, Lel;->x:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 503
    iget-object v0, p0, Les;->a:Lel;

    iput-object p2, v0, Lel;->t:[Z

    .line 504
    iget-object v0, p0, Les;->a:Lel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lel;->u:Z

    .line 505
    return-object p0
.end method

.method public final a(Landroid/view/View;IIII)Les;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 734
    iget-object v0, p0, Les;->a:Lel;

    iput-object p1, v0, Lel;->n:Landroid/view/View;

    .line 735
    iget-object v0, p0, Les;->a:Lel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lel;->s:Z

    .line 736
    iget-object v0, p0, Les;->a:Lel;

    iput p2, v0, Lel;->o:I

    .line 737
    iget-object v0, p0, Les;->a:Lel;

    iput p3, v0, Lel;->p:I

    .line 738
    iget-object v0, p0, Les;->a:Lel;

    iput p4, v0, Lel;->q:I

    .line 739
    iget-object v0, p0, Les;->a:Lel;

    iput p5, v0, Lel;->r:I

    .line 740
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Les;
    .locals 1
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Les;->a:Lel;

    iput-object p1, v0, Lel;->d:Ljava/lang/CharSequence;

    .line 276
    return-object p0
.end method

.method public final b()Ler;
    .locals 1

    .prologue
    .line 787
    invoke-virtual {p0}, Les;->a()Ler;

    move-result-object v0

    .line 788
    invoke-virtual {v0}, Ler;->show()V

    .line 789
    return-object v0
.end method

.method public final b(I)Les;
    .locals 2
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Les;->a:Lel;

    iget-object v1, p0, Les;->a:Lel;

    iget-object v1, v1, Lel;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lel;->d:Ljava/lang/CharSequence;

    .line 266
    return-object p0
.end method

.method public final b(ILandroid/content/DialogInterface$OnClickListener;)Les;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Les;->a:Lel;

    iget-object v1, p0, Les;->a:Lel;

    iget-object v1, v1, Lel;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lel;->g:Ljava/lang/CharSequence;

    .line 334
    iget-object v0, p0, Les;->a:Lel;

    iput-object p2, v0, Lel;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 335
    return-object p0
.end method

.method public final c(ILandroid/content/DialogInterface$OnClickListener;)Les;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Les;->a:Lel;

    iget-object v1, p0, Les;->a:Lel;

    iget-object v1, v1, Lel;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lel;->j:[Ljava/lang/CharSequence;

    .line 416
    iget-object v0, p0, Les;->a:Lel;

    iput-object p2, v0, Lel;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 417
    return-object p0
.end method
