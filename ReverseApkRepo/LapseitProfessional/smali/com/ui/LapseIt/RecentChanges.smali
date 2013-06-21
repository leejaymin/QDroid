.class public Lcom/ui/LapseIt/RecentChanges;
.super Ljava/lang/Object;
.source "RecentChanges.java"


# static fields
.field private static changesContainer:Landroid/widget/LinearLayout;

.field private static changesContainerToggle:Landroid/view/View$OnClickListener;

.field private static changesToggle:Landroid/widget/RelativeLayout;

.field private static firstChange:Landroid/widget/TextView;

.field private static fourthChange:Landroid/widget/TextView;

.field private static secChange:Landroid/widget/TextView;

.field private static thirdChange:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/ui/LapseIt/RecentChanges$1;

    invoke-direct {v0}, Lcom/ui/LapseIt/RecentChanges$1;-><init>()V

    sput-object v0, Lcom/ui/LapseIt/RecentChanges;->changesContainerToggle:Landroid/view/View$OnClickListener;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/ui/LapseIt/RecentChanges;->changesToggle:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private static setRecentChanges(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "changesToggle"

    .prologue
    .line 31
    const-string v0, "firstChange"

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/ui/LapseIt/RecentChanges;->firstChange:Landroid/widget/TextView;

    .line 32
    const-string v0, "secChange"

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/ui/LapseIt/RecentChanges;->secChange:Landroid/widget/TextView;

    .line 33
    const-string v0, "thirdChange"

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/ui/LapseIt/RecentChanges;->thirdChange:Landroid/widget/TextView;

    .line 34
    const-string v0, "fourthChange"

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/ui/LapseIt/RecentChanges;->fourthChange:Landroid/widget/TextView;

    .line 36
    sget-object v0, Lcom/ui/LapseIt/RecentChanges;->firstChange:Landroid/widget/TextView;

    const-string v1, "\u2022 Jelly Bean compatibility"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    sget-object v0, Lcom/ui/LapseIt/RecentChanges;->secChange:Landroid/widget/TextView;

    const-string v1, "\u2022 Interval in millisecs"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    sget-object v0, Lcom/ui/LapseIt/RecentChanges;->thirdChange:Landroid/widget/TextView;

    const-string v1, "\u2022 Improved UI design"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    sget-object v0, Lcom/ui/LapseIt/RecentChanges;->fourthChange:Landroid/widget/TextView;

    const-string v1, "\u2022 Issues fixed and more ..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method static setupRecentChanges(Lcom/ui/LapseIt/StartView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 22
    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/StartView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/ui/LapseIt/RecentChanges;->changesContainer:Landroid/widget/LinearLayout;

    .line 23
    sget-object v0, Lcom/ui/LapseIt/RecentChanges;->changesContainer:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/ui/LapseIt/RecentChanges;->changesContainerToggle:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    sget-object v0, Lcom/ui/LapseIt/RecentChanges;->changesContainer:Landroid/widget/LinearLayout;

    const-string v1, "toggleContainer"

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sput-object v0, Lcom/ui/LapseIt/RecentChanges;->changesToggle:Landroid/widget/RelativeLayout;

    .line 27
    sget-object v0, Lcom/ui/LapseIt/RecentChanges;->changesToggle:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/ui/LapseIt/RecentChanges;->setRecentChanges(Landroid/view/ViewGroup;)V

    .line 28
    return-void
.end method
