.class public Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;
.super Ljava/lang/Object;
.source "CustomItemList.java"


# instance fields
.field public bm:Landroid/graphics/Bitmap;

.field public tag:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .parameter "mText"
    .parameter "mBm"
    .parameter "mTag"

    .prologue
    const-string v1, ""

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;->text:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;->bm:Landroid/graphics/Bitmap;

    .line 8
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;->tag:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;->text:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;->bm:Landroid/graphics/Bitmap;

    .line 14
    iput-object p3, p0, Lcom/nix/apps/androlib/wallpapers/utils/CustomItemList;->tag:Ljava/lang/String;

    .line 15
    return-void
.end method
