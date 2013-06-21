.class public Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "RSSHandler.java"


# instance fields
.field public PageLink:Ljava/lang/String;

.field public PageSize:I

.field public TotalResults:I

.field public WallpapersFound:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;",
            ">;"
        }
    .end annotation
.end field

.field private currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

.field private inAuthorID:Z

.field private inCategory:Z

.field private inCategoryID:Z

.field private inCategoryLink:Z

.field private inChannelLink:Z

.field private inCreator:Z

.field private inDescription:Z

.field private inGlobalRating:Z

.field private inImageMax:Z

.field private inImageMedium:Z

.field private inImageMini:Z

.field private inIsFav:Z

.field private inItem:Z

.field private inLink:Z

.field private inPageSize:Z

.field private inPubDate:Z

.field private inRatingCount:Z

.field private inTitle:Z

.field private inTotal:Z

.field private inUserRating:Z

.field private inWallPaperId:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inTotal:Z

    .line 26
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inPageSize:Z

    .line 27
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inItem:Z

    .line 28
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inTitle:Z

    .line 29
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inDescription:Z

    .line 30
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inLink:Z

    .line 31
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inWallPaperId:Z

    .line 32
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inPubDate:Z

    .line 33
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inCategory:Z

    .line 34
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inCategoryLink:Z

    .line 35
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inCreator:Z

    .line 36
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inAuthorID:Z

    .line 37
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inCategoryID:Z

    .line 38
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inImageMini:Z

    .line 39
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inImageMax:Z

    .line 40
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inImageMedium:Z

    .line 41
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inGlobalRating:Z

    .line 42
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inUserRating:Z

    .line 43
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inRatingCount:Z

    .line 44
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inIsFav:Z

    .line 46
    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inChannelLink:Z

    .line 48
    new-instance v0, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    invoke-direct {v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;-><init>()V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->WallpapersFound:Ljava/util/ArrayList;

    .line 51
    iput v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->TotalResults:I

    .line 52
    iput v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageSize:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageLink:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 127
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 130
    .local v0, chars:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inItem:Z

    if-nez v1, :cond_3

    .line 133
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inTotal:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->TotalResults:I

    .line 134
    :cond_0
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inPageSize:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageSize:I

    .line 135
    :cond_1
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inChannelLink:Z

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageLink:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageLink:Ljava/lang/String;

    .line 158
    :cond_2
    :goto_0
    return-void

    .line 138
    :cond_3
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inTitle:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Title:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Title:Ljava/lang/String;

    .line 139
    :cond_4
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inDescription:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Description:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Description:Ljava/lang/String;

    .line 140
    :cond_5
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inLink:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Link:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Link:Ljava/lang/String;

    .line 141
    :cond_6
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inWallPaperId:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->WallpaperID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->WallpaperID:Ljava/lang/String;

    .line 142
    :cond_7
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inPubDate:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->PubDate:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->PubDate:Ljava/lang/String;

    .line 143
    :cond_8
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inCategory:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Category:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Category:Ljava/lang/String;

    .line 144
    :cond_9
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inCategoryLink:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->CategoryLink:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->CategoryLink:Ljava/lang/String;

    .line 145
    :cond_a
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inCreator:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Creator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Creator:Ljava/lang/String;

    .line 146
    :cond_b
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inAuthorID:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->AuthorID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->AuthorID:Ljava/lang/String;

    .line 147
    :cond_c
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inCategoryID:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->CategoryID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->CategoryID:Ljava/lang/String;

    .line 148
    :cond_d
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inImageMini:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->ImageMini:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->ImageMini:Ljava/lang/String;

    .line 149
    :cond_e
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inImageMax:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->ImageMax:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->ImageMax:Ljava/lang/String;

    .line 150
    :cond_f
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inImageMedium:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->ImageMedium:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->ImageMedium:Ljava/lang/String;

    .line 151
    :cond_10
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inGlobalRating:Z

    if-eqz v1, :cond_11

    .line 152
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->GlobalRating:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->GlobalRating:Ljava/lang/String;

    .line 153
    :cond_11
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inUserRating:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->UserRating:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->UserRating:Ljava/lang/String;

    .line 154
    :cond_12
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inRatingCount:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->RatingCount:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->RatingCount:Ljava/lang/String;

    .line 155
    :cond_13
    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inIsFav:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->IsFav:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->IsFav:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "uri"
    .parameter "name"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x28

    const/16 v5, 0x14

    const/4 v4, 0x0

    const-string v2, "item"

    const-string v7, "..."

    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, tname:Ljava/lang/String;
    const-string v1, "item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inItem:Z

    .line 106
    :cond_0
    :goto_0
    const-string v1, "item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v1, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_16

    .line 109
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Description:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->DescriptionShort:Ljava/lang/String;

    .line 113
    :goto_1
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v1, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_17

    .line 115
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v3, v3, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Title:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->TitleShort:Ljava/lang/String;

    .line 120
    :goto_2
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->WallpapersFound:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    invoke-direct {v1}, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;-><init>()V

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    .line 123
    :cond_1
    return-void

    .line 84
    :cond_2
    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inTitle:Z

    goto :goto_0

    .line 85
    :cond_3
    const-string v1, "description"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inDescription:Z

    goto :goto_0

    .line 86
    :cond_4
    const-string v1, "link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inItem:Z

    if-eqz v1, :cond_5

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inLink:Z

    goto/16 :goto_0

    .line 87
    :cond_5
    const-string v1, "wallpaperid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inWallPaperId:Z

    goto/16 :goto_0

    .line 88
    :cond_6
    const-string v1, "pubDate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inPubDate:Z

    goto/16 :goto_0

    .line 89
    :cond_7
    const-string v1, "category"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inCategory:Z

    goto/16 :goto_0

    .line 90
    :cond_8
    const-string v1, "categorylink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inCategoryLink:Z

    goto/16 :goto_0

    .line 91
    :cond_9
    const-string v1, "creator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inCreator:Z

    goto/16 :goto_0

    .line 92
    :cond_a
    const-string v1, "authorid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inAuthorID:Z

    goto/16 :goto_0

    .line 93
    :cond_b
    const-string v1, "categoryid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inCategoryID:Z

    goto/16 :goto_0

    .line 94
    :cond_c
    const-string v1, "imagemini"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inImageMini:Z

    goto/16 :goto_0

    .line 95
    :cond_d
    const-string v1, "imagemax"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inImageMax:Z

    goto/16 :goto_0

    .line 96
    :cond_e
    const-string v1, "imagemedium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inImageMedium:Z

    goto/16 :goto_0

    .line 97
    :cond_f
    const-string v1, "globalrating"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inGlobalRating:Z

    goto/16 :goto_0

    .line 98
    :cond_10
    const-string v1, "userrating"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inUserRating:Z

    goto/16 :goto_0

    .line 99
    :cond_11
    const-string v1, "ratingcount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inRatingCount:Z

    goto/16 :goto_0

    .line 100
    :cond_12
    const-string v1, "isfav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inIsFav:Z

    goto/16 :goto_0

    .line 101
    :cond_13
    const-string v1, "total"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inTotal:Z

    goto/16 :goto_0

    .line 102
    :cond_14
    const-string v1, "pagesize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inPageSize:Z

    goto/16 :goto_0

    .line 103
    :cond_15
    const-string v1, "link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inItem:Z

    if-nez v1, :cond_0

    iput-boolean v4, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inChannelLink:Z

    goto/16 :goto_0

    .line 111
    :cond_16
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Description:Ljava/lang/String;

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->DescriptionShort:Ljava/lang/String;

    goto/16 :goto_1

    .line 117
    :cond_17
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->currentArticle:Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;

    iget-object v2, v2, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->Title:Ljava/lang/String;

    iput-object v2, v1, Lcom/nix/apps/androlib/wallpapers/datamanager/wallpaper;->TitleShort:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public getFeed(Landroid/content/Context;Ljava/net/URL;)Z
    .locals 1
    .parameter "ctx"
    .parameter "url"

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->getFeed(Landroid/content/Context;Ljava/net/URL;Z)Z

    move-result v0

    return v0
.end method

.method public getFeed(Landroid/content/Context;Ljava/net/URL;Z)Z
    .locals 11
    .parameter "ctx"
    .parameter "url"
    .parameter "firstTry"

    .prologue
    const/4 v10, 0x0

    const-string v7, ""

    .line 164
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->WallpapersFound:Ljava/util/ArrayList;

    .line 165
    const-string v6, ""

    iput-object v7, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->PageLink:Ljava/lang/String;

    .line 167
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 168
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 170
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 171
    .local v5, xr:Lorg/xml/sax/XMLReader;
    invoke-interface {v5, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 172
    sget-object v6, Lcom/nix/apps/androlib/wallpapers/modCommon;->dhttp:Lcom/nix/apps/androlib/wallpapers/DataHttpClient;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/nix/apps/androlib/wallpapers/DataHttpClient;->GetXMLGzip(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, content:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 175
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 176
    .local v2, input:Lorg/xml/sax/InputSource;
    if-eqz v2, :cond_0

    .line 177
    invoke-interface {v5, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 181
    .end local v2           #input:Lorg/xml/sax/InputSource;
    :cond_0
    const/4 v6, 0x1

    .line 211
    .end local v0           #content:Ljava/lang/String;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v4           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return v6

    .line 182
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 184
    .local v1, e:Ljava/io/IOException;
    if-eqz p3, :cond_1

    .line 186
    invoke-virtual {p0, p1, p2, v10}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->getFeed(Landroid/content/Context;Ljava/net/URL;Z)Z

    move-result v6

    goto :goto_0

    :cond_1
    move v6, v10

    .line 188
    goto :goto_0

    .line 190
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 192
    .local v1, e:Lorg/xml/sax/SAXException;
    if-eqz p3, :cond_2

    .line 194
    invoke-virtual {p0, p1, p2, v10}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->getFeed(Landroid/content/Context;Ljava/net/URL;Z)Z

    move-result v6

    goto :goto_0

    :cond_2
    move v6, v10

    .line 196
    goto :goto_0

    .line 198
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 200
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    if-eqz p3, :cond_3

    .line 202
    invoke-virtual {p0, p1, p2, v10}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->getFeed(Landroid/content/Context;Ljava/net/URL;Z)Z

    move-result v6

    goto :goto_0

    :cond_3
    move v6, v10

    .line 204
    goto :goto_0

    .line 206
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v6

    move-object v1, v6

    .line 207
    .local v1, e:Ljava/lang/Exception;
    if-eqz p3, :cond_4

    .line 209
    invoke-virtual {p0, p1, p2, v10}, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->getFeed(Landroid/content/Context;Ljava/net/URL;Z)Z

    move-result v6

    goto :goto_0

    :cond_4
    move v6, v10

    .line 211
    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "uri"
    .parameter "name"
    .parameter "qName"
    .parameter "atts"

    .prologue
    const/4 v2, 0x1

    const-string v3, "link"

    .line 56
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, tname:Ljava/lang/String;
    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inItem:Z

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inTitle:Z

    goto :goto_0

    .line 59
    :cond_2
    const-string v1, "description"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inDescription:Z

    goto :goto_0

    .line 60
    :cond_3
    const-string v1, "link"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inItem:Z

    if-eqz v1, :cond_4

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inLink:Z

    goto :goto_0

    .line 61
    :cond_4
    const-string v1, "wallpaperid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inWallPaperId:Z

    goto :goto_0

    .line 62
    :cond_5
    const-string v1, "pubDate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inPubDate:Z

    goto :goto_0

    .line 63
    :cond_6
    const-string v1, "category"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inCategory:Z

    goto :goto_0

    .line 64
    :cond_7
    const-string v1, "categorylink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inCategoryLink:Z

    goto :goto_0

    .line 65
    :cond_8
    const-string v1, "creator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inCreator:Z

    goto :goto_0

    .line 66
    :cond_9
    const-string v1, "authorid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inAuthorID:Z

    goto :goto_0

    .line 67
    :cond_a
    const-string v1, "categoryid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inCategoryID:Z

    goto :goto_0

    .line 68
    :cond_b
    const-string v1, "imagemini"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inImageMini:Z

    goto :goto_0

    .line 69
    :cond_c
    const-string v1, "imagemax"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inImageMax:Z

    goto/16 :goto_0

    .line 70
    :cond_d
    const-string v1, "imagemedium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inImageMedium:Z

    goto/16 :goto_0

    .line 71
    :cond_e
    const-string v1, "globalrating"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inGlobalRating:Z

    goto/16 :goto_0

    .line 72
    :cond_f
    const-string v1, "userrating"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inUserRating:Z

    goto/16 :goto_0

    .line 73
    :cond_10
    const-string v1, "ratingcount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inRatingCount:Z

    goto/16 :goto_0

    .line 74
    :cond_11
    const-string v1, "isfav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inIsFav:Z

    goto/16 :goto_0

    .line 75
    :cond_12
    const-string v1, "total"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inTotal:Z

    goto/16 :goto_0

    .line 76
    :cond_13
    const-string v1, "pagesize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inPageSize:Z

    goto/16 :goto_0

    .line 77
    :cond_14
    const-string v1, "link"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inItem:Z

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->inChannelLink:Z

    goto/16 :goto_0
.end method
