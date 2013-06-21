.class Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds$1;
.super Ljava/lang/Thread;
.source "GoogleAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds;->SetViewThreaded(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$imageOnly:Z

.field private final synthetic val$keywords:Ljava/lang/String;

.field private final synthetic val$view:Landroid/view/View;

.field private final synthetic val$weburlequivalent:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds$1;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds$1;->val$weburlequivalent:Ljava/lang/String;

    iput-object p3, p0, Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds$1;->val$keywords:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds$1;->val$imageOnly:Z

    .line 56
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds$1;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds$1;->val$weburlequivalent:Ljava/lang/String;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds$1;->val$keywords:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds$1;->val$imageOnly:Z

    invoke-static {v0, v1, v2, v3}, Lcom/nix/apps/androlib/wallpapers/utils/ads/GoogleAds;->setView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    return-void
.end method
