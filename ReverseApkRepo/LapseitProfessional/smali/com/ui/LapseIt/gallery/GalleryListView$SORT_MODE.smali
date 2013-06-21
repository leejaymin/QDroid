.class final enum Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;
.super Ljava/lang/Enum;
.source "GalleryListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/gallery/GalleryListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SORT_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BEST_RATED:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

.field private static final synthetic ENUM$VALUES:[Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

.field public static final enum FROM_USER:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

.field public static final enum MOST_VIEWED:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

.field public static final enum RECENTLY_ADDED:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;


# instance fields
.field private mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    const-string v1, "BEST_RATED"

    const v2, 0x7f0800af

    invoke-direct {v0, v1, v3, v2}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->BEST_RATED:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    .line 43
    new-instance v0, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    const-string v1, "MOST_VIEWED"

    const v2, 0x7f0800b0

    invoke-direct {v0, v1, v4, v2}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->MOST_VIEWED:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    .line 44
    new-instance v0, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    const-string v1, "RECENTLY_ADDED"

    const v2, 0x7f0800b1

    invoke-direct {v0, v1, v5, v2}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->RECENTLY_ADDED:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    .line 45
    new-instance v0, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    const-string v1, "FROM_USER"

    const v2, 0x7f0800b2

    invoke-direct {v0, v1, v6, v2}, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->FROM_USER:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->BEST_RATED:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->MOST_VIEWED:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->RECENTLY_ADDED:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->FROM_USER:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->ENUM$VALUES:[Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "titleId"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->mTitleId:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    return-object v0
.end method

.method public static values()[Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->ENUM$VALUES:[Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    array-length v1, v0

    new-array v2, v1, [Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method getTitleId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->mTitleId:I

    return v0
.end method
