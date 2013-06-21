.class Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter$InViteCel;
.super Ljava/lang/Object;
.source "UltraMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InViteCel"
.end annotation


# instance fields
.field public cellBG:Landroid/widget/LinearLayout;

.field public mName:Landroid/widget/TextView;

.field final synthetic this$1:Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;


# direct methods
.method public constructor <init>(Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "aConvertView"

    .prologue
    .line 208
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter$InViteCel;->this$1:Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    sget v0, Lkr/co/medinbiz/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter$InViteCel;->mName:Landroid/widget/TextView;

    .line 210
    sget v0, Lkr/co/medinbiz/R$id;->menu01:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter$InViteCel;->cellBG:Landroid/widget/LinearLayout;

    .line 211
    return-void
.end method
