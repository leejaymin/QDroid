.class final Lep;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/DialogInterface;

.field private b:Landroid/widget/RadioButton;

.field private synthetic c:Lel;


# direct methods
.method public constructor <init>(Lel;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 902
    iput-object p1, p0, Lep;->c:Lel;

    .line 903
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 904
    iput-object p2, p0, Lep;->a:Landroid/content/DialogInterface;

    .line 906
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lep;->c:Lel;

    iget-object v0, v0, Lel;->j:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 916
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 922
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 929
    if-eqz p2, :cond_1

    .line 938
    :goto_0
    const v0, 0x7f0b011d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 939
    iget-object v1, p0, Lep;->c:Lel;

    iget-object v1, v1, Lel;->j:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    const v0, 0x7f0b011e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 941
    iget-object v1, p0, Lep;->c:Lel;

    iget-object v1, v1, Lel;->k:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 942
    const v0, 0x7f0b011f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 943
    if-eqz v0, :cond_0

    .line 944
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 945
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    iget-object v1, p0, Lep;->c:Lel;

    iget v1, v1, Lel;->w:I

    if-ne p1, v1, :cond_2

    .line 947
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 948
    iget-object v1, p0, Lep;->b:Landroid/widget/RadioButton;

    if-nez v1, :cond_0

    .line 949
    iput-object v0, p0, Lep;->b:Landroid/widget/RadioButton;

    .line 956
    :cond_0
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 957
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 959
    return-object p2

    .line 935
    :cond_1
    iget-object v0, p0, Lep;->c:Lel;

    iget-object v0, v0, Lel;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030041

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 952
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0b011f

    .line 966
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    .line 968
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    move-object p1, v0

    .line 970
    :cond_0
    if-nez p1, :cond_2

    .line 990
    :cond_1
    :goto_0
    return-void

    .line 974
    :cond_2
    iget-object v0, p0, Lep;->b:Landroid/widget/RadioButton;

    if-eq p1, v0, :cond_4

    .line 975
    iget-object v1, p0, Lep;->c:Lel;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lel;->w:I

    .line 976
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 977
    if-eqz v0, :cond_4

    .line 978
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 979
    iget-object v1, p0, Lep;->b:Landroid/widget/RadioButton;

    if-eqz v1, :cond_3

    .line 980
    iget-object v1, p0, Lep;->b:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 982
    :cond_3
    iput-object v0, p0, Lep;->b:Landroid/widget/RadioButton;

    .line 986
    :cond_4
    iget-object v0, p0, Lep;->c:Lel;

    iget-object v0, v0, Lel;->m:Let;

    if-eqz v0, :cond_1

    .line 987
    iget-object v0, p0, Lep;->c:Lel;

    iget-object v1, v0, Lel;->m:Let;

    iget-object v2, p0, Lep;->a:Landroid/content/DialogInterface;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Let;->a(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method
