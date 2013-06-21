.class Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu$1;
.super Ljava/lang/Object;
.source "PregnancyMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->chagePage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;

.field private final synthetic val$position:I

.field private final synthetic val$sect:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu$1;->this$0:Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;

    iput-object p2, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu$1;->val$sect:Ljava/lang/String;

    iput p3, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu$1;->val$position:I

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 188
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu$1;->val$sect:Ljava/lang/String;

    const-string v1, "baby"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu$1;->this$0:Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;

    iget v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu$1;->val$position:I

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->setBabyWidget(I)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu$1;->val$sect:Ljava/lang/String;

    const-string v1, "imsin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu$1;->this$0:Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;

    iget v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu$1;->val$position:I

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/widget/pregnancy/PregnancyMenu;->setPregWidget(I)V

    goto :goto_0
.end method
