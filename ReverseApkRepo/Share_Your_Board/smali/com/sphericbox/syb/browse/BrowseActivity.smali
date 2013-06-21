.class public Lcom/sphericbox/syb/browse/BrowseActivity;
.super Lcom/sphericbox/syb/ui/ActionActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sphericbox/syb/b/e;


# instance fields
.field private T:Lcom/sphericbox/syb/h;

.field private X:[Lcom/sphericbox/syb/b;

.field private aM:Lcom/sphericbox/syb/b/h;

.field private aN:Landroid/widget/ImageSwitcher;

.field private aO:Landroid/widget/Gallery;

.field private aP:Landroid/view/View;

.field private aQ:Lcom/sphericbox/syb/browse/p;

.field private aR:Landroid/widget/TextView;

.field private aS:Landroid/widget/TextView;

.field private aT:Landroid/widget/TextView;

.field private aU:Landroid/view/View;

.field private aV:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sphericbox/syb/ui/ActionActivity;-><init>()V

    .line 392
    return-void
.end method

.method static synthetic a(Lcom/sphericbox/syb/browse/BrowseActivity;)Lcom/sphericbox/syb/browse/p;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aQ:Lcom/sphericbox/syb/browse/p;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const-string v3, "BrowseActivity"

    .line 121
    const-string v0, "BrowseActivity"

    const-string v0, "selectItem()"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "BrowseActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v1, "BrowseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-eqz v0, :cond_1

    .line 128
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 129
    const-string v1, "BrowseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->X:[Lcom/sphericbox/syb/b;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->X:[Lcom/sphericbox/syb/b;

    aget-object v2, v2, v1

    .line 132
    invoke-virtual {v2}, Lcom/sphericbox/syb/b;->getId()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 133
    const-string v3, "BrowseActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v2, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aO:Landroid/widget/Gallery;

    invoke-virtual {v2, v1}, Landroid/widget/Gallery;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 141
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/sphericbox/syb/browse/BrowseActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aV:Z

    return p1
.end method

.method static synthetic b(Lcom/sphericbox/syb/browse/BrowseActivity;)Landroid/widget/ImageSwitcher;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aN:Landroid/widget/ImageSwitcher;

    return-object v0
.end method

.method static synthetic c(Lcom/sphericbox/syb/browse/BrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sphericbox/syb/browse/BrowseActivity;->x()V

    return-void
.end method

.method static synthetic d(Lcom/sphericbox/syb/browse/BrowseActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aU:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/sphericbox/syb/browse/BrowseActivity;)[Lcom/sphericbox/syb/b;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->X:[Lcom/sphericbox/syb/b;

    return-object v0
.end method

.method static synthetic f(Lcom/sphericbox/syb/browse/BrowseActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aV:Z

    return v0
.end method

.method static synthetic g(Lcom/sphericbox/syb/browse/BrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sphericbox/syb/browse/BrowseActivity;->u()V

    return-void
.end method

.method static synthetic h(Lcom/sphericbox/syb/browse/BrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sphericbox/syb/browse/BrowseActivity;->v()V

    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aP:Landroid/view/View;

    iget-boolean v1, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aV:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    return-void

    .line 175
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private v()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 226
    invoke-direct {p0}, Lcom/sphericbox/syb/browse/BrowseActivity;->w()V

    .line 227
    new-instance v0, Lcom/sphericbox/syb/browse/p;

    invoke-direct {v0, p0}, Lcom/sphericbox/syb/browse/p;-><init>(Lcom/sphericbox/syb/browse/BrowseActivity;)V

    iput-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aQ:Lcom/sphericbox/syb/browse/p;

    .line 229
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aO:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aQ:Lcom/sphericbox/syb/browse/p;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 231
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->X:[Lcom/sphericbox/syb/b;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/sphericbox/syb/b/h;

    invoke-direct {v0, p0, v2}, Lcom/sphericbox/syb/b/h;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;Z)V

    invoke-virtual {v0}, Lcom/sphericbox/syb/b/h;->run()V

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/sphericbox/syb/browse/BrowseActivity;->x()V

    .line 235
    const v0, 0x7f080027

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 236
    const/16 v1, 0x35

    const/16 v2, -0x19

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 237
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->T:Lcom/sphericbox/syb/h;

    invoke-virtual {v0}, Lcom/sphericbox/syb/h;->A()[Lcom/sphericbox/syb/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->X:[Lcom/sphericbox/syb/b;

    .line 243
    return-void
.end method

.method private x()V
    .locals 4

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/sphericbox/syb/browse/BrowseActivity;->w()V

    .line 248
    :try_start_0
    invoke-virtual {p0}, Lcom/sphericbox/syb/browse/BrowseActivity;->z()Lcom/sphericbox/syb/b;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aS:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sphericbox/syb/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aR:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sphericbox/syb/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {v0}, Lcom/sphericbox/syb/b;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/sphericbox/syb/b;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aT:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aT:Landroid/widget/TextView;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    const-string v1, "BrowseActivity"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/sphericbox/syb/ui/ActionActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 211
    const v0, 0x2154c5a

    if-ne p1, v0, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/sphericbox/syb/browse/BrowseActivity;->x()V

    .line 213
    iget-boolean v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aV:Z

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aV:Z

    .line 215
    invoke-direct {p0}, Lcom/sphericbox/syb/browse/BrowseActivity;->u()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-static {p0, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/sphericbox/syb/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 221
    invoke-virtual {p0, v1}, Lcom/sphericbox/syb/browse/BrowseActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/sphericbox/syb/ui/ActionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-string v0, "BrowseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->requestWindowFeature(I)Z

    .line 57
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->setDefaultKeyMode(I)V

    .line 59
    new-instance v0, Lcom/sphericbox/syb/b/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sphericbox/syb/b/h;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;Z)V

    iput-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aM:Lcom/sphericbox/syb/b/h;

    .line 61
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/sphericbox/syb/browse/BrowseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x7

    const v2, 0x7f030002

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 64
    new-instance v0, Lcom/sphericbox/syb/h;

    invoke-direct {v0, p0}, Lcom/sphericbox/syb/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->T:Lcom/sphericbox/syb/h;

    .line 66
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sphericbox/syb/ui/b;

    const/4 v1, 0x0

    new-instance v2, Lcom/sphericbox/syb/b/f;

    invoke-direct {v2, p0, p0}, Lcom/sphericbox/syb/b/f;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;Lcom/sphericbox/syb/b/e;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sphericbox/syb/b/g;

    invoke-direct {v2, p0, p0}, Lcom/sphericbox/syb/b/g;-><init>(Lcom/sphericbox/syb/browse/BrowseActivity;Lcom/sphericbox/syb/b/e;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/sphericbox/syb/browse/i;

    iget-object v3, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->T:Lcom/sphericbox/syb/h;

    invoke-direct {v2, p0, p0, v3, p0}, Lcom/sphericbox/syb/browse/i;-><init>(Lcom/sphericbox/syb/browse/BrowseActivity;Lcom/sphericbox/syb/ui/ActionActivity;Lcom/sphericbox/syb/h;Lcom/sphericbox/syb/b/e;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aM:Lcom/sphericbox/syb/b/h;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/sphericbox/syb/browse/l;

    invoke-direct {v2, p0}, Lcom/sphericbox/syb/browse/l;-><init>(Lcom/sphericbox/syb/browse/BrowseActivity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/sphericbox/syb/b/b;

    invoke-direct {v2, p0}, Lcom/sphericbox/syb/b/b;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->addMenuActions([Lcom/sphericbox/syb/ui/b;)V

    .line 73
    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aN:Landroid/widget/ImageSwitcher;

    .line 74
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aN:Landroid/widget/ImageSwitcher;

    new-instance v1, Lcom/sphericbox/syb/browse/j;

    invoke-direct {v1, p0}, Lcom/sphericbox/syb/browse/j;-><init>(Lcom/sphericbox/syb/browse/BrowseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 76
    const/high16 v0, 0x10a

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 77
    const v1, 0x10a0001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aN:Landroid/widget/ImageSwitcher;

    invoke-virtual {v2, v0}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 79
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aN:Landroid/widget/ImageSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 81
    const v0, 0x7f090007

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aO:Landroid/widget/Gallery;

    .line 82
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aO:Landroid/widget/Gallery;

    new-instance v1, Lcom/sphericbox/syb/browse/f;

    invoke-direct {v1, p0}, Lcom/sphericbox/syb/browse/f;-><init>(Lcom/sphericbox/syb/browse/BrowseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 84
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aR:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aS:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f090006

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aT:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aP:Landroid/view/View;

    .line 90
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aU:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aU:Landroid/view/View;

    const v1, 0x7f040001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 92
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aU:Landroid/view/View;

    new-instance v1, Lcom/sphericbox/syb/browse/m;

    invoke-direct {v1, p0}, Lcom/sphericbox/syb/browse/m;-><init>(Lcom/sphericbox/syb/browse/BrowseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aO:Landroid/widget/Gallery;

    const-string v1, "POSITION_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    .line 96
    const-string v0, "SHOW_INFO_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aV:Z

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/sphericbox/syb/browse/BrowseActivity;->v()V

    .line 100
    invoke-direct {p0}, Lcom/sphericbox/syb/browse/BrowseActivity;->u()V

    .line 102
    invoke-virtual {p0}, Lcom/sphericbox/syb/browse/BrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-static {p0, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/sphericbox/syb/e;

    invoke-direct {v1, p0, v4, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 106
    invoke-virtual {p0, v1}, Lcom/sphericbox/syb/browse/BrowseActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aO:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 146
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aU:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->T:Lcom/sphericbox/syb/h;

    invoke-virtual {v0}, Lcom/sphericbox/syb/h;->release()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->T:Lcom/sphericbox/syb/h;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    invoke-super {p0}, Lcom/sphericbox/syb/ui/ActionActivity;->onDestroy()V

    .line 156
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-static {p0, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/sphericbox/syb/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 153
    invoke-virtual {p0, v1}, Lcom/sphericbox/syb/browse/BrowseActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 161
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aM:Lcom/sphericbox/syb/b/h;

    invoke-virtual {v0}, Lcom/sphericbox/syb/b/h;->run()V

    move v0, v3

    .line 171
    :goto_0
    return v0

    .line 165
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sphericbox/syb/ui/ActionActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-static {p0, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Lcom/sphericbox/syb/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 169
    invoke-virtual {p0, v1}, Lcom/sphericbox/syb/browse/BrowseActivity;->showDialog(Landroid/app/Dialog;)V

    move v0, v3

    .line 171
    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 112
    const-string v0, "BrowseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0, p1}, Lcom/sphericbox/syb/ui/ActionActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/sphericbox/syb/browse/BrowseActivity;->a(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 194
    :try_start_0
    invoke-super {p0, p1}, Lcom/sphericbox/syb/ui/ActionActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 195
    if-eqz p1, :cond_0

    .line 196
    const-string v0, "POSITION_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aO:Landroid/widget/Gallery;

    invoke-virtual {v1, v0}, Landroid/widget/Gallery;->setSelection(I)V

    .line 198
    const-string v0, "SHOW_INFO_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aV:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-static {p0, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Lcom/sphericbox/syb/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 203
    invoke-virtual {p0, v1}, Lcom/sphericbox/syb/browse/BrowseActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 181
    :try_start_0
    invoke-super {p0, p1}, Lcom/sphericbox/syb/ui/ActionActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 182
    const-string v0, "POSITION_KEY"

    iget-object v1, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aO:Landroid/widget/Gallery;

    invoke-virtual {v1}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    const-string v0, "SHOW_INFO_KEY"

    iget-boolean v1, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aV:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-static {p0, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/sphericbox/syb/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 187
    invoke-virtual {p0, v1}, Lcom/sphericbox/syb/browse/BrowseActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public y()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aO:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public z()Lcom/sphericbox/syb/b;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->aO:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v0

    .line 270
    if-ltz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/sphericbox/syb/browse/BrowseActivity;->X:[Lcom/sphericbox/syb/b;

    aget-object v0, v1, v0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
