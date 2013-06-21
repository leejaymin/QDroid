.class final Limoblife/toolbox/full/ui/z;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ACommunication;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/ACommunication;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/z;->a:Limoblife/toolbox/full/ui/ACommunication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Limoblife/toolbox/full/ui/z;->b:I

    iput p3, p0, Limoblife/toolbox/full/ui/z;->c:I

    iput-object p5, p0, Limoblife/toolbox/full/ui/z;->g:Ljava/lang/String;

    iput-object p6, p0, Limoblife/toolbox/full/ui/z;->f:Ljava/lang/String;

    iput p7, p0, Limoblife/toolbox/full/ui/z;->d:I

    iput-object p4, p0, Limoblife/toolbox/full/ui/z;->h:Ljava/lang/String;

    return-void
.end method

.method private a(Limoblife/toolbox/full/ui/aa;)V
    .locals 3

    iget-object v0, p1, Limoblife/toolbox/full/ui/aa;->a:Landroid/widget/ImageView;

    iget v1, p0, Limoblife/toolbox/full/ui/z;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Limoblife/toolbox/full/ui/aa;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Limoblife/toolbox/full/ui/z;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Limoblife/toolbox/full/ui/z;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Limoblife/toolbox/full/ui/aa;->c:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Limoblife/toolbox/full/ui/z;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/view/View;
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/z;->a:Limoblife/toolbox/full/ui/ACommunication;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ACommunication;->a(Limoblife/toolbox/full/ui/ACommunication;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v1, Limoblife/toolbox/full/ui/aa;

    iget-object v0, p0, Limoblife/toolbox/full/ui/z;->a:Limoblife/toolbox/full/ui/ACommunication;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Limoblife/toolbox/full/ui/aa;-><init>(Limoblife/toolbox/full/ui/ACommunication;B)V

    const v0, 0x7f08005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/aa;->a:Landroid/widget/ImageView;

    const v0, 0x7f080060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/aa;->b:Landroid/widget/TextView;

    const v0, 0x7f080062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Limoblife/toolbox/full/ui/aa;->c:Landroid/widget/CheckBox;

    invoke-direct {p0, v1}, Limoblife/toolbox/full/ui/z;->a(Limoblife/toolbox/full/ui/aa;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/aa;

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/z;->a(Limoblife/toolbox/full/ui/aa;)V

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/z;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Limoblife/toolbox/full/ui/z;->e:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/z;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/z;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Limoblife/toolbox/full/ui/z;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/z;->e:Z

    return v0
.end method
