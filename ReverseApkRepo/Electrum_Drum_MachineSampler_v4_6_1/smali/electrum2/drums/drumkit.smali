.class public Lelectrum2/drums/drumkit;
.super Landroid/app/Activity;
.source "drumkit.java"


# instance fields
.field private btnOkClick:Landroid/view/View$OnClickListener;

.field drumkitspin:Landroid/widget/Spinner;

.field okbutton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-instance v0, Lelectrum2/drums/drumkit$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/drumkit$1;-><init>(Lelectrum2/drums/drumkit;)V

    iput-object v0, p0, Lelectrum2/drums/drumkit;->btnOkClick:Landroid/view/View$OnClickListener;

    .line 13
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lelectrum2/drums/drumkit;->setContentView(I)V

    .line 29
    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lelectrum2/drums/drumkit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lelectrum2/drums/drumkit;->drumkitspin:Landroid/widget/Spinner;

    .line 31
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 32
    const v1, 0x7f03000a

    .line 33
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "808 Kit"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Rock Kit"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "909 Kit"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Orchestral Kit"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "HipHop"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Human BeatBox"

    aput-object v4, v2, v3

    .line 31
    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 35
    .local v0, spinnerArrayAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lelectrum2/drums/drumkit;->drumkitspin:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 38
    const v1, 0x7f070028

    invoke-virtual {p0, v1}, Lelectrum2/drums/drumkit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lelectrum2/drums/drumkit;->okbutton:Landroid/widget/Button;

    .line 41
    iget-object v1, p0, Lelectrum2/drums/drumkit;->okbutton:Landroid/widget/Button;

    iget-object v2, p0, Lelectrum2/drums/drumkit;->btnOkClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
