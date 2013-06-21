.class public Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BudgetReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/BudgetReport$ReportAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field balance:Landroid/widget/TextView;

.field budget:Landroid/widget/TextView;

.field category:Landroid/widget/TextView;

.field percent:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/wareone/tappmt/BudgetReport$ReportAdapter;

.field used:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/wareone/tappmt/BudgetReport$ReportAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/wareone/tappmt/BudgetReport$ReportAdapter$ViewHolder;->this$1:Lcom/wareone/tappmt/BudgetReport$ReportAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
