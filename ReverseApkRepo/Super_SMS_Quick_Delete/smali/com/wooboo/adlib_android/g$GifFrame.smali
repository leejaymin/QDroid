.class Lcom/wooboo/adlib_android/g$GifFrame;
.super Ljava/lang/Object;
.source "g.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wooboo/adlib_android/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifFrame"
.end annotation


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "im"
    .parameter "del"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/wooboo/adlib_android/g$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 79
    iput p2, p0, Lcom/wooboo/adlib_android/g$GifFrame;->delay:I

    .line 80
    return-void
.end method
