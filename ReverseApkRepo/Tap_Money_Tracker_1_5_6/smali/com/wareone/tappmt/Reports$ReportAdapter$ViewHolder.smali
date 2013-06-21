.class public Lcom/wareone/tappmt/Reports$ReportAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "Reports.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/Reports$ReportAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field amount:Landroid/widget/TextView;

.field category:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/wareone/tappmt/Reports$ReportAdapter;


# direct methods
.method public constructor <init>(Lcom/wareone/tappmt/Reports$ReportAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/wareone/tappmt/Reports$ReportAdapter$ViewHolder;->this$1:Lcom/wareone/tappmt/Reports$ReportAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
