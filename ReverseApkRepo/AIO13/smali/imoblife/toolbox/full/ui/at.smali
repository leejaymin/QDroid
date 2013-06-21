.class public final Limoblife/toolbox/full/ui/at;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/AInstaller;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:J

.field private g:Z

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/AInstaller;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Limoblife/toolbox/full/ui/at;->a:Limoblife/toolbox/full/ui/AInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Limoblife/toolbox/full/ui/at;->c:Ljava/lang/String;

    iput-object p3, p0, Limoblife/toolbox/full/ui/at;->b:Ljava/lang/String;

    iput-object p3, p0, Limoblife/toolbox/full/ui/at;->b:Ljava/lang/String;

    iput-object p4, p0, Limoblife/toolbox/full/ui/at;->d:Ljava/lang/String;

    iput-object p5, p0, Limoblife/toolbox/full/ui/at;->e:Landroid/graphics/drawable/Drawable;

    iput-wide p6, p0, Limoblife/toolbox/full/ui/at;->f:J

    iput p8, p0, Limoblife/toolbox/full/ui/at;->i:I

    iput-object p9, p0, Limoblife/toolbox/full/ui/at;->j:Ljava/lang/String;

    invoke-direct {p0, p3, p8}, Limoblife/toolbox/full/ui/at;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Limoblife/toolbox/full/ui/at;->h:I

    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    iget-object v1, p0, Limoblife/toolbox/full/ui/at;->a:Limoblife/toolbox/full/ui/AInstaller;

    invoke-virtual {v1}, Limoblife/toolbox/full/ui/AInstaller;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v1, p2, v1

    if-gtz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    const v1, 0x7f070144

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/at;->a:Limoblife/toolbox/full/ui/AInstaller;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/AInstaller;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Invailed"

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/at;->a:Limoblife/toolbox/full/ui/AInstaller;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/AInstaller;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Limoblife/toolbox/full/ui/at;->a:Limoblife/toolbox/full/ui/AInstaller;

    const v1, 0x7f070145

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/AInstaller;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Limoblife/toolbox/full/ui/at;->a:Limoblife/toolbox/full/ui/AInstaller;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/AInstaller;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/view/View;
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/at;->a:Limoblife/toolbox/full/ui/AInstaller;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AInstaller;->a(Limoblife/toolbox/full/ui/AInstaller;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v1, Limoblife/toolbox/full/ui/aw;

    iget-object v0, p0, Limoblife/toolbox/full/ui/at;->a:Limoblife/toolbox/full/ui/AInstaller;

    invoke-direct {v1, v0}, Limoblife/toolbox/full/ui/aw;-><init>(Limoblife/toolbox/full/ui/AInstaller;)V

    const v0, 0x7f080003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/aw;->a:Landroid/widget/ImageView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/aw;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/at;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/aw;->b:Landroid/widget/TextView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/aw;->b:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/at;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/aw;->c:Landroid/widget/TextView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/aw;->c:Landroid/widget/TextView;

    invoke-static {}, Lutil/a/a;->a()Lutil/a/a;

    iget-wide v2, p0, Limoblife/toolbox/full/ui/at;->f:J

    invoke-static {v2, v3}, Lutil/a/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/aw;->d:Landroid/widget/TextView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/aw;->d:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/at;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/aw;->e:Landroid/widget/TextView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/aw;->e:Landroid/widget/TextView;

    iget v2, p0, Limoblife/toolbox/full/ui/at;->h:I

    invoke-direct {p0, v2}, Limoblife/toolbox/full/ui/at;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Limoblife/toolbox/full/ui/aw;->f:Landroid/widget/CheckBox;

    iget-object v0, v1, Limoblife/toolbox/full/ui/aw;->f:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Limoblife/toolbox/full/ui/at;->g:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/aw;

    iget-object v1, v0, Limoblife/toolbox/full/ui/aw;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/at;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/aw;->b:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/at;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/aw;->c:Landroid/widget/TextView;

    invoke-static {}, Lutil/a/a;->a()Lutil/a/a;

    iget-wide v2, p0, Limoblife/toolbox/full/ui/at;->f:J

    invoke-static {v2, v3}, Lutil/a/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/aw;->d:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/at;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/aw;->e:Landroid/widget/TextView;

    iget v2, p0, Limoblife/toolbox/full/ui/at;->h:I

    invoke-direct {p0, v2}, Limoblife/toolbox/full/ui/at;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Limoblife/toolbox/full/ui/aw;->f:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Limoblife/toolbox/full/ui/at;->g:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/at;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Limoblife/toolbox/full/ui/at;->g:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/at;->g:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/at;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/at;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Limoblife/toolbox/full/ui/at;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
