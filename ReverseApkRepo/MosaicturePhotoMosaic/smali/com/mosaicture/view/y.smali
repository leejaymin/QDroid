.class public final Lcom/mosaicture/view/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/markupartist/android/widget/b;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/TabGalleryActivity;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/TabGalleryActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/mosaicture/view/y;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mosaicture/view/y;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/mosaicture/view/y;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f02000e

    return v0
.end method

.method public final b()V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mosaicture/view/y;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v0}, Lcom/mosaicture/view/TabGalleryActivity;->a(Lcom/mosaicture/view/TabGalleryActivity;)[Z

    move-result-object v3

    array-length v4, v3

    move v1, v2

    move v0, v2

    :goto_0
    if-lt v1, v4, :cond_1

    if-lez v0, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/mosaicture/view/y;->b:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/mosaicture/view/y;->a:Lcom/mosaicture/view/TabGalleryActivity;

    const v3, 0x7f070023

    invoke-virtual {v0, v3}, Lcom/mosaicture/view/TabGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/mosaicture/view/y;->a:Lcom/mosaicture/view/TabGalleryActivity;

    const v4, 0x7f070020

    invoke-virtual {v3, v4}, Lcom/mosaicture/view/TabGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/view/y;->a:Lcom/mosaicture/view/TabGalleryActivity;

    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Lcom/mosaicture/view/TabGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mosaicture/view/y;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v2}, Lcom/mosaicture/view/TabGalleryActivity;->i(Lcom/mosaicture/view/TabGalleryActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/view/y;->a:Lcom/mosaicture/view/TabGalleryActivity;

    const v2, 0x7f070022

    invoke-virtual {v1, v2}, Lcom/mosaicture/view/TabGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mosaicture/view/y;->a:Lcom/mosaicture/view/TabGalleryActivity;

    invoke-static {v2}, Lcom/mosaicture/view/TabGalleryActivity;->i(Lcom/mosaicture/view/TabGalleryActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void

    :cond_1
    aget-boolean v5, v3, v1

    if-eqz v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/mosaicture/view/y;->a:Lcom/mosaicture/view/TabGalleryActivity;

    const v4, 0x7f070024

    invoke-virtual {v3, v4}, Lcom/mosaicture/view/TabGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
