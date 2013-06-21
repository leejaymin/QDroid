.class public Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;
.super Ljava/lang/Object;
.source "WallpaperItem.java"


# instance fields
.field public AuthorID:Ljava/lang/String;

.field public Category:Ljava/lang/String;

.field public CategoryID:Ljava/lang/String;

.field public CategoryLink:Ljava/lang/String;

.field public Creator:Ljava/lang/String;

.field public Description:Ljava/lang/String;

.field public DescriptionShort:Ljava/lang/String;

.field public FavsCount:I

.field public GlobalRating:Ljava/lang/String;

.field public ImageMax:Ljava/lang/String;

.field public ImageMedium:Ljava/lang/String;

.field public ImageMini:Ljava/lang/String;

.field public IsFav:Ljava/lang/String;

.field public Link:Ljava/lang/String;

.field public PubDate:Ljava/lang/String;

.field public RatingCount:Ljava/lang/String;

.field public Score:I

.field public Title:Ljava/lang/String;

.field public TitleShort:Ljava/lang/String;

.field public UserRating:Ljava/lang/String;

.field public WallpaperID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v1, ""

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Title:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->TitleShort:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Description:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->DescriptionShort:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Link:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->PubDate:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Category:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->CategoryLink:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Creator:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->AuthorID:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->CategoryID:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->ImageMini:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->ImageMax:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->ImageMedium:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->WallpaperID:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->GlobalRating:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->UserRating:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->RatingCount:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->IsFav:Ljava/lang/String;

    .line 23
    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->Score:I

    .line 24
    iput v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/WallpaperItem;->FavsCount:I

    .line 3
    return-void
.end method
