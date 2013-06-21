.class public Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WallpapersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field imgNews:Lcom/nix/apps/androlib/wallpapers/ImageViewEx;

.field rating:Landroid/widget/RatingBar;

.field txtNews:Landroid/widget/TextView;

.field txtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
