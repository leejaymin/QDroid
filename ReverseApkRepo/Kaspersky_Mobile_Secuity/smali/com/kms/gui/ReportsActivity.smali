.class public Lcom/kms/gui/ReportsActivity;
.super Lcom/kms/gui/KMSBaseListActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final c:[I


# instance fields
.field public a:Landroid/widget/Button;

.field public b:[Ljava/lang/CharSequence;

.field private d:Ljava/util/Vector;

.field private e:Landroid/view/LayoutInflater;

.field private f:I

.field private g:LdW;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kms/gui/ReportsActivity;->c:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseListActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/kms/gui/ReportsActivity;->f:I

    .line 177
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/ReportsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/kms/gui/ReportsActivity;->f:I

    return v0
.end method

.method public static synthetic a(Lcom/kms/gui/ReportsActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/kms/gui/ReportsActivity;->f:I

    return p1
.end method

.method public static synthetic a(Lcom/kms/gui/ReportsActivity;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/kms/gui/ReportsActivity;->d:Ljava/util/Vector;

    return-object p1
.end method

.method public static synthetic b(Lcom/kms/gui/ReportsActivity;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kms/gui/ReportsActivity;->d:Ljava/util/Vector;

    return-object v0
.end method

.method public static synthetic c(Lcom/kms/gui/ReportsActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kms/gui/ReportsActivity;->e:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public static synthetic c()[I
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/kms/gui/ReportsActivity;->c:[I

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/kms/gui/ReportsActivity;->c:[I

    iget v1, p0, Lcom/kms/gui/ReportsActivity;->f:I

    aget v0, v0, v1

    .line 115
    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->removeAll()V

    .line 119
    :goto_0
    invoke-static {v0}, Lcom/kms/kmsshared/reports/Reports;->getFilteredEventsInVector(I)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/ReportsActivity;->d:Ljava/util/Vector;

    .line 120
    invoke-virtual {p0}, Lcom/kms/gui/ReportsActivity;->b()V

    .line 121
    return-void

    .line 118
    :cond_0
    invoke-static {v0}, Lcom/kms/kmsshared/reports/Reports;->removeGroup(I)V

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/kms/gui/ReportsActivity;->g:LdW;

    invoke-virtual {v0}, LdW;->a()V

    .line 125
    invoke-virtual {p0}, Lcom/kms/gui/ReportsActivity;->onContentChanged()V

    .line 126
    return-void
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f060022

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/kms/gui/ReportsActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kms/gui/ReportsActivity;->showDialog(I)V

    .line 175
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f030039

    const v1, 0x7f0b002e

    invoke-virtual {p0, v0, v1}, Lcom/kms/gui/ReportsActivity;->a(II)V

    .line 64
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/kms/gui/ReportsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/kms/gui/ReportsActivity;->e:Landroid/view/LayoutInflater;

    .line 66
    sget-object v0, Lcom/kms/gui/ReportsActivity;->c:[I

    iget v1, p0, Lcom/kms/gui/ReportsActivity;->f:I

    aget v0, v0, v1

    invoke-static {v0}, Lcom/kms/kmsshared/reports/Reports;->getFilteredEventsInVector(I)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/ReportsActivity;->d:Ljava/util/Vector;

    .line 68
    new-instance v0, LdW;

    invoke-direct {v0, p0}, LdW;-><init>(Lcom/kms/gui/ReportsActivity;)V

    iput-object v0, p0, Lcom/kms/gui/ReportsActivity;->g:LdW;

    .line 69
    iget-object v0, p0, Lcom/kms/gui/ReportsActivity;->g:LdW;

    invoke-virtual {p0, v0}, Lcom/kms/gui/ReportsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    invoke-virtual {p0}, Lcom/kms/gui/ReportsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/ReportsActivity;->b:[Ljava/lang/CharSequence;

    .line 72
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/gui/ReportsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/gui/ReportsActivity;->a:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/kms/gui/ReportsActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kms/gui/ReportsActivity;->b:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/kms/gui/ReportsActivity;->f:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/kms/gui/ReportsActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    .line 131
    packed-switch p1, :pswitch_data_0

    .line 166
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 134
    :pswitch_0
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0802c1

    invoke-virtual {v0, v1}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f0802c2

    new-instance v2, LdV;

    invoke-direct {v2, p0}, LdV;-><init>(Lcom/kms/gui/ReportsActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f070021

    const v2, 0x7f070022

    iget v3, p0, Lcom/kms/gui/ReportsActivity;->f:I

    new-instance v4, LdU;

    invoke-direct {v4, p0}, LdU;-><init>(Lcom/kms/gui/ReportsActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Les;->a(IIILet;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/kms/gui/ReportsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 80
    const v1, 0x7f0a0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 82
    iget-object v0, p0, Lcom/kms/gui/ReportsActivity;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const v0, 0x7f0b0145

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 88
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 100
    packed-switch v0, :pswitch_data_0

    .line 110
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 102
    :pswitch_0
    invoke-direct {p0}, Lcom/kms/gui/ReportsActivity;->d()V

    .line 103
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x7f0b0145
        :pswitch_0
    .end packed-switch
.end method
