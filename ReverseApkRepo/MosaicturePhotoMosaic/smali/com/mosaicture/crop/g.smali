.class public final Lcom/mosaicture/crop/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/markupartist/android/widget/b;


# instance fields
.field final synthetic a:Lcom/mosaicture/crop/CropImage;


# direct methods
.method public constructor <init>(Lcom/mosaicture/crop/CropImage;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/crop/g;->a:Lcom/mosaicture/crop/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f02000b

    return v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/mosaicture/crop/g;->a:Lcom/mosaicture/crop/CropImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mosaicture/crop/CropImage;->setResult(I)V

    iget-object v0, p0, Lcom/mosaicture/crop/g;->a:Lcom/mosaicture/crop/CropImage;

    invoke-virtual {v0}, Lcom/mosaicture/crop/CropImage;->finish()V

    return-void
.end method
