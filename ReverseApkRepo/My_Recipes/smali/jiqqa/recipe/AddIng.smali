.class public Ljiqqa/recipe/AddIng;
.super Landroid/app/Activity;
.source "AddIng.java"


# instance fields
.field amount:Landroid/widget/TextView;

.field btnCancel:Landroid/widget/Button;

.field btnOk:Landroid/widget/Button;

.field ingredient:Landroid/widget/TextView;

.field measurement:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x4

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Ljiqqa/recipe/AddIng;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 27
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Ljiqqa/recipe/AddIng;->setContentView(I)V

    .line 29
    const v1, 0x7f0a0003

    invoke-virtual {p0, v1}, Ljiqqa/recipe/AddIng;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ljiqqa/recipe/AddIng;->ingredient:Landroid/widget/TextView;

    .line 30
    const v1, 0x7f0a0006

    invoke-virtual {p0, v1}, Ljiqqa/recipe/AddIng;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ljiqqa/recipe/AddIng;->amount:Landroid/widget/TextView;

    .line 31
    const v1, 0x7f0a0007

    invoke-virtual {p0, v1}, Ljiqqa/recipe/AddIng;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Ljiqqa/recipe/AddIng;->measurement:Landroid/widget/Spinner;

    .line 32
    const v1, 0x7f0a0009

    invoke-virtual {p0, v1}, Ljiqqa/recipe/AddIng;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ljiqqa/recipe/AddIng;->btnCancel:Landroid/widget/Button;

    .line 33
    const v1, 0x7f0a000a

    invoke-virtual {p0, v1}, Ljiqqa/recipe/AddIng;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ljiqqa/recipe/AddIng;->btnOk:Landroid/widget/Button;

    .line 36
    const/high16 v1, 0x7f06

    const v2, 0x1090008

    .line 35
    invoke-static {p0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 37
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 38
    iget-object v1, p0, Ljiqqa/recipe/AddIng;->measurement:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 41
    iget-object v1, p0, Ljiqqa/recipe/AddIng;->btnOk:Landroid/widget/Button;

    new-instance v2, Ljiqqa/recipe/AddIng$1;

    invoke-direct {v2, p0}, Ljiqqa/recipe/AddIng$1;-><init>(Ljiqqa/recipe/AddIng;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v1, p0, Ljiqqa/recipe/AddIng;->btnCancel:Landroid/widget/Button;

    new-instance v2, Ljiqqa/recipe/AddIng$2;

    invoke-direct {v2, p0}, Ljiqqa/recipe/AddIng$2;-><init>(Ljiqqa/recipe/AddIng;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "i"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 75
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "returnStatus"

    const-string v3, "CANCEL"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v1, mIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v4, v1}, Ljiqqa/recipe/AddIng;->setResult(ILandroid/content/Intent;)V

    .line 82
    invoke-virtual {p0}, Ljiqqa/recipe/AddIng;->finish()V

    .line 85
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_0
    return v4
.end method
