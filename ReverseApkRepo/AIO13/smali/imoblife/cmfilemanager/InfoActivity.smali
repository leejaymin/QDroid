.class public Limoblife/cmfilemanager/InfoActivity;
.super Limoblife/cmfilemanager/DistributionLibraryListActivity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field protected b:[I

.field protected c:[Ljava/lang/String;

.field protected d:[I

.field protected e:[Ljava/lang/String;

.field protected f:[I

.field protected g:[Ljava/lang/String;

.field protected h:[Ljava/lang/String;

.field protected i:[Ljava/lang/String;

.field private j:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Limoblife/cmfilemanager/DistributionLibraryListActivity;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Limoblife/cmfilemanager/InfoActivity;->b:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Limoblife/cmfilemanager/InfoActivity;->c:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Limoblife/cmfilemanager/InfoActivity;->d:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Limoblife/cmfilemanager/InfoActivity;->e:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Limoblife/cmfilemanager/InfoActivity;->f:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Limoblife/cmfilemanager/InfoActivity;->g:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Limoblife/cmfilemanager/InfoActivity;->h:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Limoblife/cmfilemanager/InfoActivity;->i:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Limoblife/cmfilemanager/InfoActivity;->h:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Limoblife/cmfilemanager/InfoActivity;->h:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Limoblife/cmfilemanager/InfoActivity;->c:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Limoblife/cmfilemanager/InfoActivity;->i:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Limoblife/cmfilemanager/InfoActivity;->c:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Limoblife/cmfilemanager/InfoActivity;->i:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/InfoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Limoblife/cmfilemanager/InfoActivity;->i:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Limoblife/cmfilemanager/InfoActivity;->i:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    sget v0, Limoblife/cmfilemanager/ao;->ac:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Limoblife/cmfilemanager/DistributionLibraryListActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Limoblife/cmfilemanager/am;->f:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/InfoActivity;->setContentView(I)V

    iget-object v0, p0, Limoblife/cmfilemanager/InfoActivity;->b:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Limoblife/cmfilemanager/InfoActivity;->j:[Ljava/lang/String;

    move v0, v1

    :goto_0
    iget-object v2, p0, Limoblife/cmfilemanager/InfoActivity;->b:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    new-instance v0, Limoblife/cmfilemanager/ah;

    iget-object v2, p0, Limoblife/cmfilemanager/InfoActivity;->j:[Ljava/lang/String;

    invoke-direct {v0, p0, p0, v2}, Limoblife/cmfilemanager/ah;-><init>(Limoblife/cmfilemanager/InfoActivity;Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/InfoActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Limoblife/cmfilemanager/InfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {p0}, Limoblife/a/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget v2, Limoblife/cmfilemanager/ao;->Y:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-virtual {p0, v2, v3}, Limoblife/cmfilemanager/InfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v0, Limoblife/cmfilemanager/al;->y:I

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v2, p0, Limoblife/cmfilemanager/InfoActivity;->j:[Ljava/lang/String;

    iget-object v3, p0, Limoblife/cmfilemanager/InfoActivity;->b:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Limoblife/cmfilemanager/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/16 v1, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Limoblife/cmfilemanager/DistributionLibraryListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ltz p1, :cond_2

    if-ge p1, v1, :cond_2

    add-int/lit8 v0, p1, 0x0

    iget-object v1, p0, Limoblife/cmfilemanager/InfoActivity;->f:[I

    aget v1, v1, v0

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Limoblife/cmfilemanager/InfoActivity;->j:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Limoblife/cmfilemanager/InfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Limoblife/cmfilemanager/ao;->aa:I

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Limoblife/cmfilemanager/InfoActivity;->j:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Limoblife/cmfilemanager/InfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x108009b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Limoblife/cmfilemanager/ao;->Z:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Limoblife/cmfilemanager/ag;

    invoke-direct {v3, p0, v0}, Limoblife/cmfilemanager/ag;-><init>(Limoblife/cmfilemanager/InfoActivity;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-lt p1, v1, :cond_0

    const/16 v1, 0xc8

    if-ge p1, v1, :cond_0

    add-int/lit8 v1, p1, -0x64

    invoke-static {p0}, Limoblife/a/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget v2, Limoblife/cmfilemanager/ao;->ab:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    iget-object v0, p0, Limoblife/cmfilemanager/InfoActivity;->j:[Ljava/lang/String;

    aget-object v0, v0, v1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget-object v4, p0, Limoblife/cmfilemanager/InfoActivity;->e:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v3}, Limoblife/cmfilemanager/InfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Limoblife/cmfilemanager/InfoActivity;->b:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Limoblife/cmfilemanager/e;

    iget-object v4, p0, Limoblife/cmfilemanager/InfoActivity;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Limoblife/cmfilemanager/InfoActivity;->g:[Ljava/lang/String;

    aget-object v5, v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Limoblife/cmfilemanager/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Limoblife/cmfilemanager/InfoActivity;->c:[Ljava/lang/String;

    aget-object v0, v0, p3

    iget-object v1, p0, Limoblife/cmfilemanager/InfoActivity;->d:[I

    aget v1, v1, p3

    invoke-static {p0, v0, v1}, Limoblife/a/c;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p3, 0x0

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/InfoActivity;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p3, 0x64

    invoke-virtual {p0, v0}, Limoblife/cmfilemanager/InfoActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    const/16 v0, 0x64

    invoke-super {p0, p1, p2}, Limoblife/cmfilemanager/DistributionLibraryListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    const v0, 0x1020019

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lt p1, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    invoke-static {p0, p2}, Limoblife/cmfilemanager/e;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_0
.end method
