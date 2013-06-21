.class Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;
.super Ljava/lang/Object;
.source "PhotoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoCell"
.end annotation


# instance fields
.field cellBackground:Landroid/widget/LinearLayout;

.field date1View:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$1:Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;

.field titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "aConvertView"

    .prologue
    .line 249
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;->this$1:Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    sget v0, Lkr/co/medinbiz/R$id;->image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;->imageView:Landroid/widget/ImageView;

    .line 251
    sget v0, Lkr/co/medinbiz/R$id;->where:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;->titleView:Landroid/widget/TextView;

    .line 252
    sget v0, Lkr/co/medinbiz/R$id;->date:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;->date1View:Landroid/widget/TextView;

    .line 254
    sget v0, Lkr/co/medinbiz/R$id;->linear:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 253
    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$PhotoListAdapter$PhotoCell;->cellBackground:Landroid/widget/LinearLayout;

    .line 255
    return-void
.end method
