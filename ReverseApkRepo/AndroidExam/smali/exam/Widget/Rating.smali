.class public Lexam/Widget/Rating;
.super Landroid/app/Activity;
.source "Rating.java"


# instance fields
.field mRateText:Landroid/widget/TextView;

.field mRating:Landroid/widget/RatingBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f03007d

    invoke-virtual {p0, v0}, Lexam/Widget/Rating;->setContentView(I)V

    .line 15
    const v0, 0x7f0c0096

    invoke-virtual {p0, v0}, Lexam/Widget/Rating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lexam/Widget/Rating;->mRating:Landroid/widget/RatingBar;

    .line 16
    const v0, 0x7f0c0097

    invoke-virtual {p0, v0}, Lexam/Widget/Rating;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lexam/Widget/Rating;->mRateText:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lexam/Widget/Rating;->mRating:Landroid/widget/RatingBar;

    new-instance v1, Lexam/Widget/Rating$1;

    invoke-direct {v1, p0}, Lexam/Widget/Rating$1;-><init>(Lexam/Widget/Rating;)V

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 23
    return-void
.end method
