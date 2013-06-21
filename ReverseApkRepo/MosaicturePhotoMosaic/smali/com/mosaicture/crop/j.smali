.class public final Lcom/mosaicture/crop/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/markupartist/android/widget/b;


# instance fields
.field final synthetic a:Lcom/mosaicture/crop/CropImage;


# direct methods
.method public constructor <init>(Lcom/mosaicture/crop/CropImage;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/crop/j;->a:Lcom/mosaicture/crop/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f020010

    return v0
.end method

.method public final b()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "imagePath"

    iget-object v2, p0, Lcom/mosaicture/crop/j;->a:Lcom/mosaicture/crop/CropImage;

    invoke-static {v2}, Lcom/mosaicture/crop/CropImage;->h(Lcom/mosaicture/crop/CropImage;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mosaicture/crop/j;->a:Lcom/mosaicture/crop/CropImage;

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/mosaicture/crop/CropImage;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/mosaicture/crop/j;->a:Lcom/mosaicture/crop/CropImage;

    invoke-virtual {v0}, Lcom/mosaicture/crop/CropImage;->finish()V

    return-void
.end method
