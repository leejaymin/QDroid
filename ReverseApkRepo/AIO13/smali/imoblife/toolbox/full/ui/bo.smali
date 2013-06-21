.class public final Limoblife/toolbox/full/ui/bo;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/graphics/drawable/Drawable;

.field d:I

.field final synthetic e:Limoblife/toolbox/full/ui/AStartup;

.field private f:Z


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/AStartup;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Limoblife/toolbox/full/ui/bo;->e:Limoblife/toolbox/full/ui/AStartup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Limoblife/toolbox/full/ui/bo;->d:I

    iput-object p2, p0, Limoblife/toolbox/full/ui/bo;->c:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Limoblife/toolbox/full/ui/bo;->b:Ljava/lang/String;

    iput-object p4, p0, Limoblife/toolbox/full/ui/bo;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/bo;)Z
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/bo;->f:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/bo;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Limoblife/toolbox/full/ui/bo;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Limoblife/toolbox/full/ui/bo;->e:Limoblife/toolbox/full/ui/AStartup;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AStartup;->a(Limoblife/toolbox/full/ui/AStartup;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080003

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/bo;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/bo;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080011

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v2, p0, Limoblife/toolbox/full/ui/bo;->f:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object v1
.end method
