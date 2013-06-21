.class Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter$MovieCell;
.super Ljava/lang/Object;
.source "VidioListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MovieCell"
.end annotation


# instance fields
.field cellBackground:Landroid/widget/LinearLayout;

.field date1View:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$1:Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;

.field titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "aConvertView"

    .prologue
    .line 266
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter$MovieCell;->this$1:Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    sget v0, Lkr/co/medinbiz/R$id;->image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter$MovieCell;->imageView:Landroid/widget/ImageView;

    .line 270
    sget v0, Lkr/co/medinbiz/R$id;->where:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter$MovieCell;->titleView:Landroid/widget/TextView;

    .line 271
    sget v0, Lkr/co/medinbiz/R$id;->date:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter$MovieCell;->date1View:Landroid/widget/TextView;

    .line 273
    sget v0, Lkr/co/medinbiz/R$id;->linear:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 272
    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$MovieListAdapter$MovieCell;->cellBackground:Landroid/widget/LinearLayout;

    .line 274
    return-void
.end method
