.class Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;
.super Landroid/widget/TableLayout;
.source "AppChoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/AppChoiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessDetailView"
.end annotation


# instance fields
.field private IconField:Landroid/widget/ImageView;

.field private NameField:Landroid/widget/TextView;

.field private PIDField:Landroid/widget/TextView;

.field private TitleRow:Landroid/widget/TableRow;

.field final synthetic this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;


# direct methods
.method public constructor <init>(Ledu/umich/PowerTutor/ui/AppChoiceView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;IILjava/lang/String;I)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "Icon"
    .parameter "PID"
    .parameter "UID"
    .parameter "Name"
    .parameter "position"

    .prologue
    const/4 v3, 0x3

    .line 307
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->this$0:Ledu/umich/PowerTutor/ui/AppChoiceView;

    .line 308
    invoke-direct {p0, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 309
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->setColumnStretchable(IZ)V

    .line 313
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->PIDField:Landroid/widget/TextView;

    .line 314
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->IconField:Landroid/widget/ImageView;

    .line 315
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->NameField:Landroid/widget/TextView;

    .line 317
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->PIDField:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->IconField:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->IconField:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 322
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->NameField:Landroid/widget/TextView;

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->PIDField:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 325
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->PIDField:Landroid/widget/TextView;

    const/4 v1, 0x5

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 327
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->NameField:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 328
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->NameField:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 329
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->NameField:Landroid/widget/TextView;

    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->getWidth()I

    move-result v1

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->IconField:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 336
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p2}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->TitleRow:Landroid/widget/TableRow;

    .line 337
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->TitleRow:Landroid/widget/TableRow;

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->PIDField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 338
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->TitleRow:Landroid/widget/TableRow;

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->IconField:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 339
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->TitleRow:Landroid/widget/TableRow;

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->NameField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 340
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->TitleRow:Landroid/widget/TableRow;

    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->addView(Landroid/view/View;)V

    .line 343
    rem-int/lit8 v0, p7, 0x2

    if-nez v0, :cond_0

    .line 344
    const v0, -0x7fbbbbbc

    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->setBackgroundColor(I)V

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    const/high16 v0, -0x8000

    invoke-virtual {p0, v0}, Ledu/umich/PowerTutor/ui/AppChoiceView$ProcessDetailView;->setBackgroundColor(I)V

    goto :goto_0
.end method
