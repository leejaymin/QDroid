.class abstract Ledu/umich/PowerTutor/ui/MiscView$InfoItem;
.super Ljava/lang/Object;
.source "MiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/MiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "InfoItem"
.end annotation


# instance fields
.field protected summary:Landroid/widget/TextView;

.field final synthetic this$0:Ledu/umich/PowerTutor/ui/MiscView;

.field protected title:Landroid/widget/TextView;

.field protected txt:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$InfoItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;)V

    return-void
.end method


# virtual methods
.method public abstract available()Z
.end method

.method public initViews(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 2
    .parameter "title"
    .parameter "summary"
    .parameter "widgetGroup"

    .prologue
    .line 223
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;->title:Landroid/widget/TextView;

    .line 224
    iput-object p2, p0, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;->summary:Landroid/widget/TextView;

    .line 225
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;->txt:Landroid/widget/TextView;

    .line 226
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;->txt:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    return-void
.end method

.method public abstract setupView()V
.end method
